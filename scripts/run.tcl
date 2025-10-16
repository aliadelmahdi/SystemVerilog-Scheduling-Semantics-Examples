vlib work
vlog -f "scripts/list.f" -mfcu +cover -covercells
vsim -voptargs=+acc work.mini_regions
vcd file waves/waves.vcd
vcd add -r /* 
run -all
quit -sim