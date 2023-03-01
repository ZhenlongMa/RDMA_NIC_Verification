`ifndef TX_SEQ__SV
`define TX_SEQ__SV

typedef class Descriptor;
typedef class Ring_Manager;

 /*随机tlp包*/
class tx_sequence extends uvm_sequence #(Descriptor);
  Descriptor descs[$];

  Ring_Manager ring_m;

  function new(string name= "tx_sequence");
    super.new(name);
  endfunction

  function void gen_item(ref Descriptor req);
    Descriptor temp_desc;

    temp_desc = Descriptor::type_id::create("temp_desc");
    if (descs.size() != 0) begin
      // 从队列中取出一个
        temp_desc = descs.pop_front();
    end

  endfunction
  
  virtual task body();
    req = Descriptor::type_id::create("req");
    if(starting_phase != null) 
      starting_phase.raise_objection(this);

    while(descs.size() != 0) begin
      start_item(req);
      gen_item(req);
      finish_item(req);
    end

    #100;
    if(starting_phase != null)
      starting_phase.drop_objection(this);
  endtask

  `uvm_object_utils(tx_sequence)
endclass

`endif
