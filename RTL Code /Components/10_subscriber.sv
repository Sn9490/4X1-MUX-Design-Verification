class subscriber extends uvm_subscriber #(mux_seq_item);

    `uvm_component_utils(subscriber)
    mux_seq_item si;
    covergroup cg;
        cp_for_a  :   coverpoint si.a ;
        cp_for_b  :   coverpoint si.b;
        cp_for_sel:   coverpoint si.sel;

    endgroup:cg  

    covergroup coverage;

        cp_for_sel: coverpoint si.sel{option.auto_bin_max = 2;}


        cp_for_a:coverpoint si.a{option.auto_bin_max=15;}
        cp_for_b:coverpoint si.b{option.auto_bin_max=15;}
    endgroup



    uvm_analysis_imp #(mux_seq_item,subscriber) sub_port;
    function new(string name = "subscriber",uvm_component parent);  
        super.new(name,parent);
        cg       =  new();
        coverage =  new();
        sub_port =  new("sub_port",this);
    endfunction
     

    
    function void write(mux_seq_item t);
        si  =   t;
        cg.sample();
        coverage.sample();
    endfunction
endclass
