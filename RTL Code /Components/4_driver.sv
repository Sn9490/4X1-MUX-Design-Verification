class mux_driver extends uvm_driver #(mux_seq_item);
  
    `uvm_component_utils(mux_driver)
    
    function new(string name = "mux_driver",uvm_component parent);
        super.new(name,parent);
    endfunction

    mux_seq_item si;
    
    virtual mux_in vif;

    function void connect_phase(uvm_phase phase);
            if(!uvm_config_db#(virtual mux_in)::get(this,"*","mux_interface",vif))
                begin
                    `uvm_fatal("[CONFIGERR_DRV]","VIRTUAL INTERFACE NOT RETRIVED")
                    uvm_report_error("[CONFIGERR_DRV]","UNABLE RETRIVE THE VIRTUAL INTERFACE");
                end
            else
                `uvm_info(get_full_name(),"CONFIG RETRIVED SUCCESSFULLY",UVM_NONE)
    endfunction

    task run_phase(uvm_phase phase);
            si  =   mux_seq_item::type_id::create("si");
            
            forever begin
                seq_item_port.get_next_item(si); 
                `uvm_info("DRI","DRIVER DATA",UVM_NONE)
                //converting packet level data into pin level data
                
                drive();
                
                seq_item_port.item_done();
                
               // si.print();
            end
    endtask

    task drive();
                vif.a   =   si.a;
                vif.b   =   si.b;
                vif.sel =   si.sel;

        
    endtask
endclass
