`ifndef RX_AGENT__SV
`define RX_AGENT__SV

class rx_agent extends uvm_agent ;
   typedef rx_agent this_type;   
   
   rx_driver     rx_drv;
   rx_sequencer  rx_sqr;
   
   function new(string name, uvm_component parent);
      super.new(name, parent);
   endfunction
   
   extern virtual function void build_phase(uvm_phase phase);
   extern virtual function void connect_phase(uvm_phase phase);

   `uvm_component_utils(rx_agent)
endclass


function void rx_agent::build_phase(uvm_phase phase);
   super.build_phase(phase);

   rx_drv = rx_driver::type_id::create("rx_drv", this);
   rx_sqr = rx_sequencer::type_id::create("rx_sqr", this);
endfunction 

function void rx_agent::connect_phase(uvm_phase phase);
   super.connect_phase(phase);

   if (is_active == UVM_ACTIVE) begin
      rx_drv.seq_item_port.connect(rx_sqr.seq_item_export);
   end
endfunction

`endif

