`ifndef TX_AGENT__SV
`define TX_AGENT__SV

class tx_agent extends uvm_agent ;
   typedef tx_agent this_type;   
   
   tx_driver     tx_drv;
   tx_sequencer  tx_sqr;
   
   function new(string name, uvm_component parent);
      super.new(name, parent);
   endfunction
   
   extern virtual function void build_phase(uvm_phase phase);
   extern virtual function void connect_phase(uvm_phase phase);

   `uvm_component_utils(tx_agent)
endclass


function void tx_agent::build_phase(uvm_phase phase);
   super.build_phase(phase);

   tx_drv = tx_driver::type_id::create("tx_drv", this);
   tx_sqr = tx_sequencer::type_id::create("tx_sqr", this);
endfunction 

function void tx_agent::connect_phase(uvm_phase phase);
   super.connect_phase(phase);

   if (is_active == UVM_ACTIVE) begin
      tx_drv.seq_item_port.connect(tx_sqr.seq_item_export);
   end
endfunction

`endif

