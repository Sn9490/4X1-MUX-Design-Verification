class mux_mon1 extends uvm_monitor;
  
    `uvm_component_utils(mux_mon1)
    
    function new(string name = "mux_mon1",uvm_component parent);
        super.new(name,parent);
    endfunction

    mux_seq_item si;
    virtual mux_in vif;
    
    uvm_analysis_port #(mux_seq_item) p1_put_port;//monitor1 to sb port

    //build_phase
    function void build_phase(uvm_phase phase);
            p1_put_port =   new("p1_put_port",this);
    
    endfunction

    //connect_phase
    function void connect_phase(uvm_phase phase);
            if(!uvm_config_db#(virtual mux_in)::get(this,"*","mux_interface",vif))
                begin
                    `uvm_fatal("[CONFIGERR_MON_1]","VIRTUAL INTERFACE NOT RETRIVED")
                    uvm_report_error("[CONFIGERR_MON_1]","UNABLE RETRIVE THE VIRTUAL INTERFACE");
                end
            else
                `uvm_info(get_full_name(),"CONFIG RETRIVED SUCCESSFULLY",UVM_NONE)

    endfunction

    //run_phase
    task run_phase(uvm_phase phase);
            si  =   mux_seq_item::type_id::create("si");
            
            forever begin
                @(vif.a,vif.b,vif.sel);
                si.a    =   vif.a;
                si.b    =   vif.b;
                si.sel  =   vif.sel;
                
                bfm();
                p1_put_port.write(si);
               // `uvm_info("MON1","MONITOR1 DATA READY TO TAKE OFF",UVM_NONE)
                //si.print();
            end
    endtask
    
    task bfm();
        
                //bfm logic  
                si.y    =   si.sel? si.b :si.a ;
    endtask
endclass
