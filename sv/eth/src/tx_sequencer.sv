`ifndef TX_SEQUENCER__SV
`define TX_SEQUENCER__SV
typedef class Descriptor;

class tx_sequencer extends uvm_sequencer #(Descriptor);
   typedef tx_sequencer this_type;
  
   function new(string name, uvm_component parent);
      super.new(name, parent);
   endfunction
   
   `uvm_component_utils(tx_sequencer)
endclass

`endif
