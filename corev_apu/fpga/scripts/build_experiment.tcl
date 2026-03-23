# -------------------------------------------------------------------------
# build_experiment.tcl
# Usage: vivado -mode batch -source corev_apu/fpga/scripts/build_experiment.tcl
# -------------------------------------------------------------------------

# =========================================================================
# 1. SETUP PATHS
# =========================================================================
set project_dir    "corev_apu/fpga"
set project_name   "ariane"
set config_file    "core/include/cv64a6_imafdch_sv39_config_pkg.sv"
set output_base    "/home/han4n/cva6_experiments/bitstreams"

# =========================================================================
# 2. PARSE CONFIGURATION (Generate Filename)
# =========================================================================
puts "\[EXP] Parsing config file: $config_file"
set ic_size "err"; set ic_assoc "err"; set ic_line "err"
set dc_size "err"; set dc_assoc "err"; set dc_line "err"
set btb "err";     set bht "err";      set ras "err"
set itlb "err";    set dtlb "err"

if {[file exists $config_file]} {
    set fp [open $config_file r]
    set data [read $fp]
    close $fp

    if {[regexp {CVA6ConfigIcacheByteSize\s*=\s*([0-9]+)} $data match val]}  { set ic_size $val }
    if {[regexp {CVA6ConfigIcacheSetAssoc\s*=\s*([0-9]+)} $data match val]}  { set ic_assoc $val }
    if {[regexp {CVA6ConfigIcacheLineWidth\s*=\s*([0-9]+)} $data match val]} { set ic_line $val }

    if {[regexp {CVA6ConfigDcacheByteSize\s*=\s*([0-9]+)} $data match val]}  { set dc_size $val }
    if {[regexp {CVA6ConfigDcacheSetAssoc\s*=\s*([0-9]+)} $data match val]}  { set dc_assoc $val }
    if {[regexp {CVA6ConfigDcacheLineWidth\s*=\s*([0-9]+)} $data match val]} { set dc_line $val }

    if {[regexp {CVA6ConfigBTBEntries\s*=\s*([0-9]+)} $data match val]} { set btb $val }
    if {[regexp {CVA6ConfigBHTEntries\s*=\s*([0-9]+)} $data match val]} { set bht $val }
    if {[regexp {CVA6ConfigRASDepth\s*=\s*([0-9]+)}    $data match val]} { set ras $val }

    if {[regexp {InstrTlbEntries:\s*int'\(([0-9]+)\)} $data match val]} { set itlb $val }
    if {[regexp {DataTlbEntries:\s*int'\(([0-9]+)\)}  $data match val]} { set dtlb $val }
} else {
    puts "\[EXP] ERROR: Config file not found at $config_file"
    exit 1
}

if { $ic_size >= 1024 } { set ic_lbl [expr $ic_size / 1024]k } else { set ic_lbl $ic_size }
if { $dc_size >= 1024 } { set dc_lbl [expr $dc_size / 1024]k } else { set dc_lbl $dc_size }

set experiment_tag "ariane_IC${ic_lbl}_${ic_assoc}w_${ic_line}L_DC${dc_lbl}_${dc_assoc}w_${dc_line}L_BTB${btb}_BHT${bht}_RAS${ras}_ITLB${itlb}_DTLB${dtlb}"
puts "\[EXP] Target: $experiment_tag"

# =========================================================================
# 3. OPEN PROJECT
# =========================================================================
puts "\[EXP] Opening Project..."
open_project "$project_dir/$project_name.xpr"
set_param general.maxThreads 12

# =========================================================================
# 4.REGENERATE IP TARGETS
# =========================================================================
# This forces Vivado to re-read your modified source file and update
# the internal "Out-of-Context" copies. This mimics the GUI "Refresh".
# =========================================================================
puts "\[EXP] Regenerating Block Design targets to capture config changes..."

set bd_file [get_files "*SoC.bd"]

# 1. Clear old generated files (the "Stale Cache")
reset_target all $bd_file

# 2. Generate new files (Copies your edited config into the IP folder)
generate_target all $bd_file

# 3. Ensure the file list is synced
export_ip_user_files -of_objects $bd_file -no_script -sync -force -quiet

puts "\[EXP] IP Generation Complete."

# =========================================================================
# 5. RESET SYNTHESIS & BUILD
# =========================================================================
# Reset the specific CPU synthesis run to force recompilation
set cpu_run "SoC_cpu_0_0_synth_1"
if {[get_runs -quiet $cpu_run] != ""} {
    puts "\[EXP] Resetting CPU submodule run: $cpu_run"
    reset_run $cpu_run
}

# Reset Top Level
reset_run synth_1

puts "\[EXP] Starting Synthesis..."
launch_runs synth_1 -jobs 12
wait_on_run synth_1

if {[get_property PROGRESS [get_runs synth_1]] != "100%"} {
    puts "\[EXP] Synthesis Failed!"
    exit 1
}

puts "\[EXP] Starting Implementation..."
launch_runs impl_1 -to_step write_bitstream -jobs 12
wait_on_run impl_1 if {[get_property PROGRESS [get_runs impl_1]] != "100%"} {
    puts "\[EXP] Implementation Failed!"
    exit 1
}

# =========================================================================
# 6. REPORTS & EXPORT
# =========================================================================
puts "\[EXP] Generating Reports..."
open_run impl_1

file mkdir "$output_base/reports/full"
file mkdir "$output_base/reports/power"
file mkdir "$output_base/reports/timing"

report_utilization -hierarchical -file "$output_base/reports/full/util_${experiment_tag}.rpt"
report_power -file "$output_base/reports/power/power_${experiment_tag}.rpt"
report_timing_summary -file "$output_base/reports/timing/timing_${experiment_tag}.rpt"

set impl_dir "$project_dir/$project_name.runs/impl_1"
set final_bit_file "$output_base/${experiment_tag}.bit"
set impl_bit_file "$impl_dir/SoC_wrapper.bit"

if {[file exists $impl_bit_file]} {
    file copy -force $impl_bit_file $final_bit_file
    puts "\[EXP] SUCCESS! Bitstream saved."
} else {
    puts "\[EXP] ERROR: Bitstream not found."
    exit 1
}

exit 0
