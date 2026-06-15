`uvm_blocking_put_imp_decl(_mux_1)    //monitor1 of mux
`uvm_blocking_put_imp_decl(_mux_2)    //monitor2 of mux


class scoreboard extends uvm_scoreboard;
 
    `uvm_component_utils(scoreboard)
    
    function new(string name = "scoreboard",uvm_component parent);
        super.new(name,parent);
    endfunction
    
    
    mux_seq_item mu1;
    mux_seq_item mu2;

    int t_pass,t_fail;


    //uvm_blocking_put_imp_mux_1#(mux_seq_item,scoreboard) p1_put_imp;
    uvm_analysis_imp #(mux_seq_item,scoreboard) p1_put_imp;
    uvm_blocking_put_imp_mux_2#(mux_seq_item,scoreboard) p2_put_imp;

    
    //build_phase
    function void build_phase(uvm_phase phase);
            p1_put_imp  =   new("p1_put_imp",this);
            p2_put_imp  =   new("p2_put_imp",this);

    endfunction

    //run_phase
    task run_phase(uvm_phase phase);
        mu1     =mux_seq_item::type_id::create("mu1");
        mu2  =mux_seq_item::type_id::create("mu2");

        
        forever begin
            @(mu1.y,mu2.y)
            if( mu1.compare(mu2))
                begin
                    `uvm_info("[SCB]","**********************************TEST PASSED************************************",UVM_NONE)
                    `uvm_info("REF DATA","REFERENCE DATA OF MUX",UVM_NONE)
                    mu1.print();
                    `uvm_info("ACT DATA","ACTUAL DATA OF MUX",UVM_NONE)
                    mu2.print();

                    t_pass  =   t_pass + 1;
                end
            else
                begin
                    `uvm_warning("[SCB]","**********************************TEST FAILED************************************")
                    `uvm_info("REF DATA","REFERENCE DATA OF MUX",UVM_NONE)
                    mu1.print();
                    `uvm_info("ACT DATA","ACTUAL DATA OF MUX",UVM_NONE)
                    mu2.print();

                    t_fail  =   t_fail  +   1;
                end

        end
    endtask
    
    function void final_phase(uvm_phase phase);
        `uvm_info("[SCB]",$psprintf("TEST PASSED -->  %0d",t_pass),UVM_NONE)
        `uvm_info("[SCB]",$psprintf("TEST FAILED -->  %0d",t_fail),UVM_NONE)
    endfunction


    task write(input mux_seq_item si);
        mu1 =   si;
    endtask

    //put () for mon2 to sc
    task put_mux_2(input mux_seq_item s2);
        mu2     =   s2;
    endtask

endclass:scoreboard
