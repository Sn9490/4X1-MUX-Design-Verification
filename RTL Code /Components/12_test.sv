class test1 extends uvm_test;

    `uvm_component_utils(test1)
          
    function new(string name = "test1",uvm_component parent);
        super.new(name,parent);
    endfunction
       
    environment env;
    mux_sequence seq1; 
    //build_phase
    function void build_phase(uvm_phase phase);
        env   =  environment::type_id::create("env",this);
        
    endfunction

    //end of elaboration phase
    function void end_of_elaboration_phase(uvm_phase phase);

        uvm_top.print_topology();

    endfunction:end_of_elaboration_phase
    
    //run_phase
    task run_phase(uvm_phase phase);
        seq1    =   mux_sequence::type_id::create("seq1");

        phase.raise_objection(this);
        //start method
        seq1.start(env.a1.sqr);
        //#200;
        phase.drop_objection(this);

    endtask
    
endclass

