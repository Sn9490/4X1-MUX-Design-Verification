.main clear
vlog ../Top/top.sv +acc +UVM_NO_RELNOTES
vsim -sv_seed random  -solvefaildebug=2 top 
add wave /top/in/*
run -all
