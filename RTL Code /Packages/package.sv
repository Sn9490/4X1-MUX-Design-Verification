`include "../DUT/mux_dut.v"

`include "../Interface/mux_in.sv"


package my_pkg;
    `include "uvm_macros.svh"
    import uvm_pkg::*;

    `include "../Objects/mux_seq_item.sv"
    `include "../Objects/mux_seq.sv"
    `include "../Comps/3_sequencer.sv"
    `include "../Comps/4_driver.sv"
    `include "../Comps/5_mon1.sv"
    `include "../Comps/6_aa.sv"
    `include "../Comps/7_mon2.sv"
    `include "../Comps/8_pa.sv"
    `include "../Comps/9_scoreboard.sv"
    `include "../Comps/10_subscriber.sv"
    `include "../Comps/11_env.sv"
    `include "../Comps/12_test.sv"

endpackage
