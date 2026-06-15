class mux_seq_item extends uvm_sequence_item;
    
    randc bit[7:0]  a;
    randc bit[7:0]  b;
    randc bit       sel;
         bit[3:0] y;
    
    //factory registration by using utility macros
    `uvm_object_utils_begin(mux_seq_item)
        `uvm_field_int(a,   UVM_ALL_ON | UVM_DEC)
        `uvm_field_int(b,   UVM_ALL_ON | UVM_DEC)
        `uvm_field_int(sel, UVM_ALL_ON | UVM_DEC)
        `uvm_field_int(y,   UVM_ALL_ON | UVM_DEC)
    `uvm_object_utils_end

    function new(string name = "mux_seq_item");
        super.new(name);
    endfunction
    
    constraint con{a!=b;
                    a!=0;
                    b!=0;}
endclass

