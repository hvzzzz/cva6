#!/bin/bash

# ==============================================================================
# SENSITIVITY ANALYSIS RUNNER
# ==============================================================================

# Paths
REPO_ROOT="/home/han4n/cva6"
CONFIG_FILE="$REPO_ROOT/core/include/cv64a6_imafdch_sv39_config_pkg.sv"
BUILD_SCRIPT="corev_apu/fpga/scripts/build_experiment.tcl"

# ------------------------------------------------------------------------------
# HELPER: Update a Parameter in SystemVerilog
# ------------------------------------------------------------------------------
update_param() {
	local param_name=$1
	local new_value=$2
	# Safe sed replacement for "localparam Name = Value;"
	sed -i "s/\($param_name\s*=\s*\)[0-9]\+/\1$new_value/" $CONFIG_FILE
}

# ------------------------------------------------------------------------------
# HELPER: Reset to Baseline (YOUR DEFINED VALUES)
# ------------------------------------------------------------------------------
reset_to_baseline() {
	echo "  [Resetting to Baseline Config...]"

	# Caches: 4KB, 4-Way, 128-bit Line
	update_param "CVA6ConfigIcacheByteSize" 4096
	update_param "CVA6ConfigDcacheByteSize" 4096
	update_param "CVA6ConfigIcacheSetAssoc" 4
	update_param "CVA6ConfigDcacheSetAssoc" 4

	update_param "CVA6ConfigBTBEntries" 16
	update_param "CVA6ConfigBHTEntries" 16
	update_param "CVA6ConfigRASDepth" 2

}

# ------------------------------------------------------------------------------
# MAIN EXECUTION LOOP
# ------------------------------------------------------------------------------

# 1. Source Environment
cd $REPO_ROOT
source set-env.sh

# 2. Run Baseline First
echo "========================================================"
echo "RUNNING BASELINE (Control Experiment)"
echo "Config: 4KB Cache, 4-Way, BTB=16, BHT=16, RAS=2"
echo "========================================================"
reset_to_baseline
vivado -mode batch -source $BUILD_SCRIPT

# 3. SWEEP CACHE SIZE (Bytes)
echo "========================================================"
echo "EXPERIMENT A: SWEEPING CACHE SIZE"
echo "Baseline: 4096 | Sweeping: 2048 8192 16384 32768 65536 131072"
echo "========================================================"

# for size in 2048 8192 16384 32768; do
for size in 2048 8192 16384 32768 65536 131072; do
	reset_to_baseline
	echo ">>> Testing Cache Size: $size"
	update_param "CVA6ConfigIcacheByteSize" $size
	update_param "CVA6ConfigDcacheByteSize" $size
	vivado -mode batch -source $BUILD_SCRIPT
done

# # 4. SWEEP ASSOCIATIVITY (Ways)
# echo "========================================================"
# echo "EXPERIMENT B: SWEEPING ASSOCIATIVITY"
# echo "Baseline: 4-Way | Sweeping: 1 2 8 16"
# echo "========================================================"
#
# for ways in 1 2 8 16; do
#     reset_to_baseline
#     echo ">>> Testing Associativity: $ways-Way"
#     update_param "CVA6ConfigIcacheSetAssoc" $ways
#     update_param "CVA6ConfigDcacheSetAssoc" $ways
#     vivado -mode batch -source $BUILD_SCRIPT
# done

# # 5. SWEEP BTB ENTRIES
# echo "========================================================"
# echo "EXPERIMENT C: SWEEPING BTB ENTRIES"
# echo "Baseline: 16 | Sweeping: 8 32 64 128 256 512 1024 2048 4096 8192 16384 32768"
# echo "========================================================"
#
# for btb in 8 32 64 128 256 512 1024 2048 4096 8192 16384 32768; do
#     reset_to_baseline
#     echo ">>> Testing BTB Size: $btb"
#     update_param "CVA6ConfigBTBEntries" $btb
#     vivado -mode batch -source $BUILD_SCRIPT
# done
#
# # 6. SWEEP BHT ENTRIES
# echo "========================================================"
# echo "EXPERIMENT D: SWEEPING BHT ENTRIES"
# echo "Baseline: 16 | Sweeping: 32 64 128 256 512 1024 2048 4096 8192 16384"
# echo "========================================================"
#
# for bht in 32 64 128 256 512 1024 2048 4096 8192 16384; do
#     reset_to_baseline
#     echo ">>> Testing BHT Size: $bht"
#     update_param "CVA6ConfigBHTEntries" $bht
#     vivado -mode batch -source $BUILD_SCRIPT
# done
#
echo "Done. All sensitivity analyses complete."
