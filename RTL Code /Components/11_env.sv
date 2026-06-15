class environment extends uvm_env;

    `uvm_component_utils(environment)
    
    function new(string name = "environment",uvm_component parent);
        super.new(name,parent);
    endfunction
    //agents of mux
    mux_agent1  a1;
    mux_agent2  a2;

    //handle of scoreboard
    scoreboard  sb;
    subscriber  sub; 
    //build_phase
    function void build_phase(uvm_phase phase);
        a1  =   mux_agent1  ::type_id::create("a1",this);
        a2  =   mux_agent2  ::type_id::create("a2",this);
        sb  =   scoreboard  ::type_id::create("sb",this);
        sub =   subscriber  ::type_id::create("sub",this);
    endfunction
    
    //connect_phase
    function void connect_phase(uvm_phase phase);

        a1.mon1.p1_put_port.connect(sb.p1_put_imp);
        a2.mon2.p2_put_port.connect(sb.p2_put_imp);

        a1.mon1.p1_put_port.connect(sub.sub_port);
    endfunction
    
endclass:environment
