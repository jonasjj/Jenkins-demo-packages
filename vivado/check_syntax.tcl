# Check for syntax errors
# Return exit code 1 on error, else 0

open_proj packages.xpr

set msg [check_syntax -fileset sim_1 -return_string]
set ret_val 0

if {$msg != ""} {
  set ret_val 1
}

puts $msg
exit $ret_val