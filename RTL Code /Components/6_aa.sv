class mux_agent1 extends uvm_agent;
  
    `uvm_component_utils(mux_agent1)
    
    function new(string name = "mux_agent1",uvm_component parent);
        super.new(name,parent);
    endfunction

    mux_seqr        sqr;
    mux_driver      dri;
    mux_mon1        mon1;

    //build_phase
    function void build_phase(uvm_phase phase);
        sqr =   mux_seqr    ::type_id::create("sqr",this);
        dri =   mux_driver  ::type_id::create("dri",this);
        mon1=   mux_mon1    ::type_id::create("mon1",this);
    endfunction

    //connect_phase
    function void connect_phase(uvm_phase phase);
        dri.seq_item_port.connect(sqr.seq_item_export);
        //dri.seq_item_port.connect(sqr.seq_item_import);
    endfunction
endclass
