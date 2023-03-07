`ifndef BASE_TEST__SV
`define BASE_TEST__SV

class eth_test extends uvm_test;
    nic_enviroment       nic_env;
    
    Ring_Manager         ring_m;

    base_vsequence        base_seq;

    function new(string name = "base_test", uvm_component parent = null);
        super.new(name,parent);
    endfunction


    extern virtual function void build_phase(uvm_phase phase);
    extern virtual function void connect_phase(uvm_phase phase);
    extern task main_phase(uvm_phase phase);
    extern function void push_db_to_vseq();

    `uvm_component_utils(base_test)
endclass


function void base_test::build_phase(uvm_phase phase);
    super.build_phase(phase);
    nic_env  =  nic_enviroment::type_id::create("nic_env", this); 
    base_seq = base_vsequence::type_id::create("base_seq", this);
    if(!uvm_config_db#(Ring_Manager)::get(this, "", "ring_m", ring_m))
        `uvm_fatal("base_test", "ring_m must be set for ring_m!!!")
endfunction

function void base_test::connect_phase(uvm_phase phase);
    super.connect_phase(phase);

    base_seq.ring_m = ring_m;
    // 产生随机激励
    push_db_to_vseq();
endfunction


task base_test::main_phase(uvm_phase phase);
    base_seq.starting_phase = phase;
    // 开启v_seq
    base_seq.start(nic_env.base_sqr);
    phase.phase_done.set_drain_time(this, 1000);
endtask : main_phase

// 生成随机rand_item，传递给v_seq中
function void base_test::push_db_to_vseq();
    foreach(ring_m.tx_ring.descs[i]) begin
        base_seq.tx_seq.descs.push_back(ring_m.tx_ring.descs[i]);
    end

    foreach(ring_m.rx_ring.descs[i]) begin
        base_seq.rx_seq.descs.push_back(ring_m.rx_ring.descs[i]);
    end

    `uvm_info(get_name(), "gen_rand_item success", UVM_MEDIUM)
endfunction

`endif
