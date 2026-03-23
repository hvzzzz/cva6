#!/bin/bash

# ==============================================================================
# SENSITIVITY ANALYSIS RUNNER: EXPANSION PACK
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
# HELPER: Reset to Baseline (CONTROL GROUP)
# ------------------------------------------------------------------------------
reset_to_baseline() {
	echo "  [Resetting to Baseline Config...]"
	# Baseline: 4KB, 4-Way, 16 BTB, 16 BHT
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

echo "========================================================"
echo "STARTING EXPANSION SWEEP (Higher Limits)"
echo "========================================================"

# ------------------------------------------------------------------------------
# EXPERIMENT A: CACHE SIZE (Adding 64KB, 128KB)
# ------------------------------------------------------------------------------
echo ""
# echo ">>> [EXP A] SWEEPING CACHE SIZE: 2KB, 8KB, 16KB, 32KB, 64KB, 128KB 256KB"
# for size in 2048 8192 16384 32768 65536 131072 262144; do
#     reset_to_baseline
#     echo "    Target: ${size} Bytes"
#     update_param "CVA6ConfigIcacheByteSize" $size
#     # update_param "CVA6ConfigDcacheByteSize" $size
#     vivado -mode batch -source $BUILD_SCRIPT
# done

# echo ">>> [EXP A.1] SWEEPING CACHE SIZE: 2KB, 8KB, 16KB, 32KB, 64KB, 128KB 256KB"
# for size in 2048 8192 16384 32768 65536 131072 262144; do
# 	reset_to_baseline
# 	echo "    Target: ${size} Bytes"
# 	# update_param "CVA6ConfigIcacheByteSize" $size
# 	update_param "CVA6ConfigDcacheByteSize" $size
# 	vivado -mode batch -source $BUILD_SCRIPT
# done

echo ">>> [EXP A.1] SWEEPING CACHE SIZE: 1, 2, 4, 8, 16, 32 ,64 ,128 ,256 ,512 ,1KB"
for size in 1 2 4 8 16 32 64 128 256 512 1024; do
	reset_to_baseline
	echo "    Target: ${size} Bytes"
	# update_param "CVA6ConfigIcacheByteSize" $size
	update_param "CVA6ConfigDcacheByteSize" $size
	vivado -mode batch -source $BUILD_SCRIPT
done

# ------------------------------------------------------------------------------
# EXPERIMENT B: ASSOCIATIVITY (Adding 16-Way)
# ------------------------------------------------------------------------------
# echo ""
# echo ">>> [EXP B] SWEEPING ASSOCIATIVITY: 16-Way"
# for ways in 16; do
#     reset_to_baseline
#     echo "    Target: ${ways}-Way"
#     update_param "CVA6ConfigIcacheSetAssoc" $ways
#     update_param "CVA6ConfigDcacheSetAssoc" $ways
#     vivado -mode batch -source $BUILD_SCRIPT
# done

# ------------------------------------------------------------------------------
# EXPERIMENT C: BTB ENTRIES (Adding 128, 256, 512, 32k)
# ------------------------------------------------------------------------------

# echo ""
# echo ">>> [EXP C] 1024 2048 4096 8192 16384"
# for btb in 1024 2048 4096 8192 16384; do
#     reset_to_baseline
#     echo "    Target: ${btb} Entries"
#     update_param "CVA6ConfigBTBEntries" $btb
#     vivado -mode batch -source $BUILD_SCRIPT
# done

# ------------------------------------------------------------------------------
# EXPERIMENT D: BHT ENTRIES (Adding 256, 512, 1024, 16k)
# ------------------------------------------------------------------------------
# echo ""
# echo ">>> [EXP D] SWEEPING BHT: 2048 4096 8192"
# for bht in 2048 4096 8192; do
#     reset_to_baseline
#     echo "    Target: ${bht} Entries"
#     update_param "CVA6ConfigBHTEntries" $bht
#     vivado -mode batch -source $BUILD_SCRIPT
# done

echo ""
echo "========================================================"
echo "EXPANSION SWEEP COMPLETE"
echo "========================================================"
