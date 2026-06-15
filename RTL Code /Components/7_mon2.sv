class mux_mon2 extends uvm_monitor;
  
    `uvm_component_utils(mux_mon2)
    
    function new(string name = "mux_mon2",uvm_component parent);
        super.new(name,parent);
    endfunction

    mux_seq_item si;

    virtual mux_in vif;
    
    uvm_blocking_put_port #(mux_seq_item) p2_put_port;//monitor2 to sb port

    //build_phase
    function void build_phase(uvm_phase phase);
            p2_put_port =   new("p2_put_port",this);
    
    endfunction

    //connect_phase
    function void connect_phase(uvm_phase phase);
            if(!uvm_config_db#(virtual mux_in)::get(this,"*","mux_interface",vif))
                begin
                    `uvm_fatal("[CONFIGERR_MON_2]","VIRTUAL INTERFACE NOT RETRIVED")
                    uvm_report_error("[CONFIGERR_MON_2]","UNABLE RETRIVE THE VIRTUAL INTERFACE");
                end
            else
                `uvm_info(get_full_name(),"CONFIG RETRIVED SUCCESSFULLY",UVM_NONE)

    endfunction

    //run_phase
    task run_phase(uvm_phase phase);
            si  =   mux_seq_item::type_id::create("si");
            
            forever begin
                @(vif.a,vif.b,vif.sel);
                    convert();
                    p2_put_port.put(si);
                   // `uvm_info("MON2","MONITOR2 DATA FROM MUX",UVM_NONE)
                   // si.print();

            end
    endtask
    
    task convert();
////////////////////////////////////////////convert pin level -> packet leve/////////////////////////////////////////////////////////////////
                    si.a    =   vif.a;
                    si.b    =   vif.b;
                    si.sel  =   vif.sel;
                    si.y    =   vif.y;
   
    endtask

endclass
