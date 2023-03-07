`ifndef BASE_VSQR__SV
`define BASE_VSQR__SV

class base_vsequencer extends uvm_sequencer;
  typedef base_vsequencer this_type;
  rx_sequencer     rx_sqr;
  tx_sequencer     tx_sqr;


  `uvm_component_utils_begin(base_vsequencer)
    `uvm_field_object(rx_sqr, UVM_DEFAULT)
    `uvm_field_object(tx_sqr, UVM_DEFAULT)
  `uvm_component_utils_end

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    string inst_name;
    // rx_sqr = rx_sequencer::type_id::create("rx_sqr", this);
    // tx_sqr = tx_sequencer::type_id::create("tx_sqr", this);    
  endfunction

  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
  endfunction : connect_phase

endclass

`endif