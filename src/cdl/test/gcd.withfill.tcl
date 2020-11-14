source ../../../test/helpers.tcl
source cdl_test.tcl

if {![file exists results]} {
  file mkdir results
}

read_lef ../../../test/Nangate45/Nangate45.lef
dummy_cdl dummy_cdl_masters results/NangateOpenCellLibrary.dummy.cdl

read_def gcd/gcd.def

cdl read_masters results/NangateOpenCellLibrary.dummy.cdl
cdl out -include_fillers results/gcd.withfill.cdl

diff_files results/gcd.withfill.cdl gcd/gcd.withfill.result.ok
 