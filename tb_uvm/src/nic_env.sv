`ifndef NIC_ENV__SV
`define NIC_ENV__SV

class nic_enviroment extends uvm_env;
  typedef nic_enviroment this_type;

  rx_agent        rx_agt;
  tx_agent        tx_agt;

  base_vsequencer  base_sqr;

  `uvm_component_utils_begin(nic_enviroment)
    `uvm_field_object(rx_agt, UVM_DEFAULT)    
    `uvm_field_object(tx_agt, UVM_DEFAULT)  
    `uvm_field_object(base_sqr, UVM_DEFAULT)  
  `uvm_component_utils_end
  
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    rx_agt      = rx_agent::type_id::create("rx_agt", this);
    tx_agt      = tx_agent::type_id::create("tx_agt", this);
    base_sqr    = base_vsequencer::type_id::create("base_sqr", this);
  endfunction

  extern virtual function void connect_phase(uvm_phase phase);
  
endclass

function void nic_enviroment::connect_phase(uvm_phase phase);
  super.connect_phase(phase);
  base_sqr.rx_sqr  = rx_agt.rx_sqr;
  base_sqr.tx_sqr  = tx_agt.tx_sqr;
endfunction

`endif
