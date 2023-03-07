`ifndef RX_SEQUENCER__SV
`define RX_SEQUENCER__SV
typedef class Descriptor;

class rx_sequencer extends uvm_sequencer #(Descriptor);
   typedef rx_sequencer this_type;
  
   function new(string name, uvm_component parent);
      super.new(name, parent);
   endfunction
   
   `uvm_component_utils(rx_sequencer)
endclass

`endif
