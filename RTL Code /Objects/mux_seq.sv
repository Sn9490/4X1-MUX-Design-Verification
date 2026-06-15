class mux_sequence extends uvm_sequence #(mux_seq_item);

    `uvm_object_utils(mux_sequence)
    function new(string name = "mux_sequence");
        super.new(name);
    endfunction

    mux_seq_item si;    
        
    task body();
        si  =   mux_seq_item::type_id::create("si");

        repeat(10) begin
         //`uvm_do(si)

        //2. Waiting grant permission from driver
        wait_for_grant();
         
        //3. randomizing the sequence item 
        if(!si.randomize())
            `uvm_error("[sequence1]","RANDOMIZATION FAILURES")
        //4. sending seq item from sequence to sequencer
        send_request(si);

        //5. after sending items to sequencer, sequence was waiting for response the item is reach to seqr or not
        wait_for_item_done();

        
        //`uvm_info("SEQ","FROM SEQUENCE",UVM_NONE)
            //si.print();
        #10;
        end
    endtask



endclass:mux_sequence
