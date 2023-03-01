`ifndef RX_SEQ__SV
`define RX_SEQ__SV

typedef class Descriptor;
typedef class Ring_Manager;
 /*随机tlp包*/
class rx_sequence extends uvm_sequence #(Descriptor);
  Descriptor descs[$];

  Ring_Manager ring_m;

  function new(string name= "rx_sequence");
    super.new(name);
  endfunction

  function void gen_item(ref Descriptor req);
    Descriptor temp_desc;

    temp_desc = Descriptor::type_id::create("temp_desc");
    if (descs.size() != 0) begin
      // 从队列中取出一个
        temp_desc = descs.pop_front();
    end

    // assert(req.randomize() with{
      // foreach (packet_data[i]) 
      //   packet_data[i] == temp_desc.packet_data[i];
      // packet_len              == temp_desc.packet_len;
      // packet_hash             == temp_desc.packet_hash;
      // packet_checksum         == temp_desc.packet_checksum;
      // desc_addr               == temp_desc.desc_addr;  
      // index_in_ring           == temp_desc.index_in_ring; 
      // index_in_block          == temp_desc.index_in_block;
    // });
    req.ring = temp_desc.ring;

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

  `uvm_object_utils(rx_sequence)
endclass

`endif
