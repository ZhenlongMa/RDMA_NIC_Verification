`ifndef BASE_VSEQUENCE__SV
`define BASE_VSEQUENCE__SV

typedef class rx_sequence;
typedef class tx_sequence;

class base_vsequence extends uvm_sequence;
  typedef base_vsequence this_type;

  rx_sequence rx_seq;
  tx_sequence tx_seq;

  Ring_Manager            ring_m;

  `uvm_declare_p_sequencer(base_vsequencer)

  `uvm_object_utils_begin(base_vsequence)
    `uvm_field_object(rx_seq, UVM_DEFAULT)
    `uvm_field_object(tx_seq, UVM_DEFAULT)
  `uvm_object_utils_end


  function new(string name = "base_vsequence");
    super.new(name);

    rx_seq      = rx_sequence::type_id::create("rx_seq", ,get_full_name());
    tx_seq      = tx_sequence::type_id::create("tx_seq", ,get_full_name());
  endfunction


  virtual task pre_body();
    rx_seq.ring_m       = ring_m;
    tx_seq.ring_m       = ring_m;
  endtask:pre_body


  virtual task body();    
    `uvm_info(get_name(), "sequence begin run", UVM_MEDIUM)
    if(starting_phase != null)
        starting_phase.raise_objection(this);

    fork 
      rx_seq.start(p_sequencer.rx_sqr);
      tx_seq.start(p_sequencer.tx_sqr);
    join
    

    #100;
    if(starting_phase != null) 
        starting_phase.drop_objection(this);
  endtask
endclass

`endif
