//including libs
`include "uvm_macros.svh"
`include "../Packages/package.sv"

//importing pkgs
import uvm_pkg::*;
import my_pkg::*;

module top;
    //Instance of Interface
    mux_in in();

    //Instance of DUT
    mux m1(
          .a(in.a),   
          .b(in.b),
          .sel(in.sel),
          .y(in.y)
          );
    initial run_test("test1");

    initial uvm_config_db#(virtual mux_in)::set(null,"*","mux_interface",in);
    
endmodule
