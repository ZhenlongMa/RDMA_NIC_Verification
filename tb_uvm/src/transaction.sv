`ifndef __DESC_ITEM_SV
`define __DESC_ITEM_SV

typedef class Descriptor;
typedef class Ring;
typedef class Ring_tool;
typedef class Misx_vector;
typedef class Misx_tool;

typedef enum {MAC_TX_TYPE = 32'b0001, 
              MAC_RX_TYPE = 32'b0010, 
              ROCE_TX_TYPE  = 32'b0100, 
              ROCE_RX_TYPE  = 32'b1000
              } e_ring_type_num;
typedef enum {DESC_TYPE, MON_TYPE} e_desc_type_num;
typedef enum {NORMAL_PKT, CHECKSUM_ERROR} e_desc_status_num;
typedef enum {TCP_PKT, UDP_PKT, IP_PKT, MAC_PKT} e_pkt_type_num;


class Ring_Manager;
  Ring_tool tx_ring;
  Ring_tool rx_ring;
  Misx_tool misx_t;

  semaphore smephore_axi;
  semaphore smephore_tx_wr;
  semaphore smephore_rx_wr;

  function new;
    misx_t = new;
    smephore_axi = new;
    smephore_tx_wr = new;
    smephore_rx_wr = new;

    smephore_axi.put();
    smephore_tx_wr.put();
    smephore_rx_wr.put();

    if(`TEST_ROCE) rx_ring = new(ROCE_RX_TYPE); else rx_ring = new(MAC_RX_TYPE); 
    for(int i = 0; i < `RING_NUM; i = i + 1) begin
      rx_ring.rings[i].misxv = misx_t.misxv[i];
    end
    for(int i = 0; i < `DESC_NUM; i = i + 1) begin
      rx_ring.descs[i].misxv =  rx_ring.descs[i].ring.misxv;
    end
    if(`TEST_ROCE) tx_ring = new(ROCE_TX_TYPE); else tx_ring = new(MAC_TX_TYPE);
    for(int i = 0; i < `RING_NUM; i = i + 1) begin
      tx_ring.rings[i].misxv = misx_t.misxv[i + `RING_NUM];
    end
    for(int i = 0; i < `DESC_NUM; i = i + 1) begin
      tx_ring.descs[i].misxv = tx_ring.descs[i].ring.misxv;
    end

  endfunction
endclass

class Misx_tool;
  bit [31:0] bar_addr;
  bit [63:0] base_addr;
  Misx_vector misxv[];

  function new;
    bar_addr = 32'h4000;
    misxv = new[2 * `RING_NUM];
    base_addr = 64'hfff000;
    for(int i = 0; i < 2 * `RING_NUM; i = i + 1) begin
      misxv[i] = new;
      misxv[i].msg   = i;
      misxv[i].addr  = base_addr + i;
    end
  endfunction
endclass

class Misx_vector;
  bit [31:0] msg;
  bit [63:0] addr;
endclass

class Ring_tool;
  Ring rings[];
  Descriptor descs[];
  
  bit [31:0] ring_base_bar_addr;
  
  function new(e_ring_type_num _ring_type);
    bit [31:0] ring_bar_addr;
    descs = new[`DESC_NUM];
    rings = new[`RING_NUM];
    ring_base_bar_addr = _ring_type == MAC_RX_TYPE ? 32'h2000 : 32'h3000;
    /* initialize ring */
    for(int i = 0; i < `RING_NUM; i++) begin
      ring_bar_addr = ring_base_bar_addr + `QUEUE_STRIDE * i;
      rings[i] = new(ring_bar_addr);
      rings[i].ring_addr[63:4]  = $random() % 64'hffff_ffff_ffff;
      rings[i].ring_addr[3:0]   = 0;
      rings[i].cpl_ring_addr[63:5]  = $random() % 64'hffff_ffff_ffff;
      rings[i].cpl_ring_addr[4:0]   = 0;
    end
    /* initialize descriptor */
    for(int i = 0; i < `DESC_NUM; i++) begin
      descs[i] = new($sformatf("desc%d", i));
      assert(descs[i].randomize() with {
        index_in_block == i;
        ring_type == _ring_type;
        desc_type == DESC_TYPE;
      });
      
      descs[i].ring = rings[descs[i].ring_index];
      // descs[i].misxv = descs[i].ring.misxv;
      /* when add to the ring, give the descriptor addr */
      descs[i].ring.add_desc(descs[i]);
      descs[i].ring_head_ptr      = descs[i].index_in_ring + 1;
      descs[i].ring_tail_ptr      = descs[i].index_in_ring + 1;
      descs[i].cpl_ring_head_ptr  = descs[i].index_in_ring + 1;
      descs[i].cpl_ring_tail_ptr  = descs[i].index_in_ring + 1;
    end
  endfunction
endclass


class Ring;
  bit [31:0] bar_addr;
  bit [63:0] ring_addr;
  bit [63:0] cpl_ring_addr;
  int tail_ptr;
  int head_ptr;
  Misx_vector misxv;

  Descriptor descs[$];

  e_ring_type_num ring_type;

  int cur_tail_ptr;
  int cur_head_ptr;
  int cur_cpl_tail_ptr;
  int cur_cpl_head_ptr;

  function void add_desc(ref Descriptor desc);
    desc.index_in_ring  = head_ptr;
    desc.desc_addr      = ring_addr + 16 * (head_ptr % (2 ** `CL_DESC_SIZE));
    desc.cpl_addr       = cpl_ring_addr + 32 * (head_ptr % (2 ** `CL_DESC_SIZE));
    head_ptr            = head_ptr + 1;
    descs.push_back(desc);
  endfunction

  function new(bit [31:0] ring_bar_addr);
    bar_addr = ring_bar_addr;
    tail_ptr = 0;
    head_ptr = 0;

    cur_tail_ptr = 0;
    cur_head_ptr = 0;
    cur_cpl_tail_ptr = 0;
    cur_cpl_head_ptr = 0;
  endfunction
endclass


class Descriptor extends uvm_sequence_item;
  typedef Descriptor this_type;  

  rand e_ring_type_num    ring_type;
  rand e_desc_type_num    desc_type;
  rand e_desc_status_num  desc_status;
  rand e_pkt_type_num     pkt_type;

  rand bit [7:0]   packet_data[$];
  rand bit [31:0]  packet_len;
  rand bit [31:0]  packet_hash;
  rand bit [3:0]   pkt_ihl;
  rand bit [15:0]  ip_checksum;
  rand bit [15:0]  tcp_udp_checksum;

  rand bit [15:0]  v_checksum;

  rand bit [63:0]  desc_addr;
  rand bit [63:0]  packet_addr;
  rand bit [63:0]  cpl_addr;
  
  rand bit [7:0]   csum_start;
  rand bit [7:0]   csum_offset;

  rand bit [7:0]   tx_user;

  rand bit         is_vlan;
  rand bit [15:0]  vlan_tci;

  bit [31:0]  ring_head_ptr;
  bit [31:0]  ring_tail_ptr;
  bit [31:0]  cpl_ring_head_ptr;
  bit [31:0]  cpl_ring_tail_ptr;

  bit [255:0] cpl_data;

  bit [255:0] data_256[$];
  bit [31:0]  data_256_be[$];

  bit [63:0] data_64[$];
  bit [7:0]  data_64_be[$];

  Misx_vector misxv;

  Ring ring;
  int  ring_index;
  
  rand int  index_in_ring; /* index in ring */
  rand int  index_in_block; /* index in desc block */

  `uvm_object_utils_begin(Descriptor)
    `uvm_field_enum(e_ring_type_num, ring_type, UVM_DEFAULT)
    `uvm_field_enum(e_desc_type_num, desc_type, UVM_DEFAULT)
    `uvm_field_enum(e_desc_status_num, desc_status, UVM_DEFAULT)
    `uvm_field_enum(e_pkt_type_num, pkt_type, UVM_DEFAULT)
    `uvm_field_int(packet_len, UVM_DEFAULT|UVM_DEC);
    `uvm_field_int(packet_hash, UVM_DEFAULT|UVM_DEC);
    `uvm_field_int(ip_checksum, UVM_DEFAULT|UVM_DEC);
    `uvm_field_int(tcp_udp_checksum, UVM_DEFAULT|UVM_DEC);

    `uvm_field_int(desc_addr, UVM_DEFAULT|UVM_DEC);
    `uvm_field_int(index_in_ring, UVM_DEFAULT|UVM_DEC);
    `uvm_field_int(index_in_block, UVM_DEFAULT|UVM_DEC);
    `uvm_field_queue_int(packet_data, UVM_DEFAULT|UVM_NOCOMPARE|UVM_NOPRINT)
  `uvm_object_utils_end

  constraint c_pkt_type {
    pkt_type dist {TCP_PKT:=30, UDP_PKT:=30, IP_PKT:=5, MAC_PKT:=5};
    (ring_type == ROCE_RX_TYPE || ring_type == ROCE_TX_TYPE) -> pkt_type == UDP_PKT; 
  }

  constraint c_vlan{
    if(`TEST_VLAN && (ring_type == MAC_RX_TYPE)) is_vlan dist {1:=50, 0:=50};
    else is_vlan == 0;
  }

  constraint c_pkt_ihl {
    if(ring_type == ROCE_RX_TYPE || ring_type == ROCE_TX_TYPE) 
      pkt_ihl == 5;
    else if(pkt_type == MAC_PKT)
      pkt_ihl == 0;
    else 
      pkt_ihl dist {5:/70, [6:15]:/30};
  }

 
  constraint c_packet_len {
    packet_len > `RAND_PKT_LEN_MIN;    
    packet_len < `RAND_PKT_LEN_MAX;
    packet_len %2 == 0;
    (pkt_type == TCP_PKT) -> packet_len > pkt_ihl * 4 + 14 + 20;
    (pkt_type == UDP_PKT) -> packet_len > pkt_ihl * 4 + 14 + 8;
    (pkt_type == IP_PKT)  -> packet_len > pkt_ihl * 4 + 14;
    (pkt_type == MAC_PKT) -> packet_len > pkt_ihl * 4 + 14;
  }

  constraint c_packet_data {
    packet_data.size() == packet_len;
  } 

  constraint c_desc_status {
    if(pkt_type != MAC_PKT && ring_type != ROCE_TX_TYPE && `TEST_CSUM_ERROR)
      desc_status dist {NORMAL_PKT:=50, CHECKSUM_ERROR:=50};
    else
      desc_status == NORMAL_PKT;
  }

  extern function void  calculate_tcp_udp_csum;
  extern function void  calculate_ip_csum;

  extern function void  calculate_hash;
  extern function void  change_pkt_data;

  extern function void  tx_change_vcsum;


  extern function void  reshape_8_to_64(int offset = 0);
  extern function void  reshape_64_to_8(int offset = 0);
  extern function void  reshape_8_to_256(int offset = 0, int status = 0);
  extern function void  reshape_256_to_8(int offset = 0);

  extern function void  post_randomize;

  extern function string print_item;

  extern function bit compare(Descriptor compare_desc, ref string msg);

  extern function bit [191:0] get_roce_desc();
    
  function new(string name = "Descriptor");
    super.new(name);
    misxv = new;
  endfunction
endclass:Descriptor


function void Descriptor::post_randomize();
  change_pkt_data;
  calculate_hash;
  calculate_ip_csum;
  calculate_tcp_udp_csum;

  tx_user = $ceil(real'(packet_data.size / 1024.0));
endfunction

function void Descriptor::calculate_hash;
  bit [31:0]      hash_ip   = 0;
  bit [31:0]      hash_port = 0;
  bit [36*8-1:0]  hash_data = 0;
  bit [320-1:0]   hash_key = 320'h6d5a56da255b0ec24167253d43a38fb0d0ca2bcbae7b30b477cb2da38030f20c6a42b73bbeac01fa;
  int i, j;


  if(pkt_type == IP_PKT || pkt_type == TCP_PKT || pkt_type == UDP_PKT) begin 
    for(i = 0; i < 8; i = i + 1) begin
      hash_data[i*8 +:8] = packet_data[26+i];
    end

    for(i = 0; i < 8; i = i + 1) begin
      for(j = 0; j < 8; j = j + 1) begin
        if(hash_data[i*8 + (7-j)]) begin
          hash_ip = hash_ip ^ hash_key[40*8 - 32 - i * 8 - j +: 32];
        end
      end
    end
  end else begin
    hash_data = 0;
    hash_ip   = 0;
  end

  hash_data = hash_data >> 8 * 8;
  hash_key  = hash_key  << 8 * 8;

  if((pkt_type == TCP_PKT || pkt_type == UDP_PKT) && pkt_ihl == 5) begin 
    for(i = 0; i < 4; i = i + 1) begin
      hash_data[i*8 +:8] = packet_data[34 + i];
    end

    for(i = 0; i < 4; i = i + 1) begin
      for(j = 0; j < 8; j = j + 1) begin
        if(hash_data[i*8 + (7-j)]) begin
          hash_port = hash_port ^ hash_key[40*8 - 32 - i * 8 - j +: 32];
        end
      end
    end
  end else begin
    hash_port = 0;
  end

  packet_hash = hash_port ^ hash_ip;

  ring_index = packet_hash[4:0];
endfunction

function void Descriptor::change_pkt_data;
  /* change the eth type */
  if(pkt_type != MAC_PKT) 
    {packet_data[12], packet_data[13]} = 16'h0800; 
  else
    {packet_data[12], packet_data[13]} = 16'hffff; 

  /* change the typeService */
  packet_data[15] = 0;

  /* change the ihl */
  packet_data[14] = (4 << 4) | 5;
  /* change the header_totollen */
  {packet_data[16], packet_data[17]} = packet_len - 14;
  /* change the header_identification */
  {packet_data[18], packet_data[19]} = index_in_block;
  /* change the header_frameoffset */
  {packet_data[20], packet_data[21]} = 0;
  /* change the header_timelive */
  packet_data[22] = 8'd64;

  if(ring_type == MAC_RX_TYPE || ring_type == MAC_TX_TYPE) begin
    packet_data[14] = (4 << 4) | pkt_ihl;
  end


  if(ring_type == ROCE_TX_TYPE || ring_type == ROCE_RX_TYPE) begin
    packet_data[23] = 8'd17;
    {packet_data[34], packet_data[35]} = 16'd4791; 
    {packet_data[36], packet_data[37]} = 16'd4791;
    {packet_data[38], packet_data[39]} = packet_data.size - 34;
  end else begin
    if(pkt_type == TCP_PKT) 
      packet_data[23] = 8'd06;
    else if(pkt_type == UDP_PKT) 
      packet_data[23] = 8'd017;
    else
      packet_data[23] = 8'hff; 
  end

  packet_data[packet_data.size-1] = {8{1'b1}};

endfunction

function void Descriptor::reshape_8_to_64(int offset = 0);
  bit [63:0] temp_64  = 0;
  bit [7:0]  temp_64_be   = 0;
  int active = 0;  

  data_64_be  = {};
  data_64     = {};
  
  for(int i = 0, int k = offset; k < packet_data.size; i = i + 1, k = k + 1) begin
    if(i % 8 == 0 && i != 0) begin
      data_64.push_back(temp_64);
      data_64_be.push_back(temp_64_be);
      temp_64  = 0;
      temp_64_be   = 0;
      active = 0;
    end
    temp_64[(i%8)*8 +: 8] = packet_data[i];
    temp_64_be[i%8] = 1;
    active = 1;
  end
  if(active) begin
    data_64.push_back(temp_64);
    data_64_be.push_back(temp_64_be);
  end
endfunction

function void Descriptor::reshape_64_to_8(int offset = 0);
  for(int i = 0 ; i < offset; i  = i + 1) begin
    packet_data.push_back(0);
  end

  for(int i = 0; i < data_64.size(); i++) begin
    for(int j = 0; j < 8; j = j + 1) begin
      if(data_64_be[i][j])
        packet_data.push_back(data_64[i][j * 8 +: 8]);
    end
  end
  packet_len = packet_data.size();
endfunction

function void Descriptor::reshape_8_to_256(int offset = 0, int status = 0);
  bit [255:0] temp_256  = 0;
  bit [31:0]  temp_256_be   = 0;
  int active = 0;  

  data_256_be  = {};
  data_256     = {};

  if((status == 1) & is_vlan) begin
    packet_data = {packet_data[0:11], 8'h81, 8'h0, vlan_tci[15:8], vlan_tci[7:0], packet_data[12:$]};
  end
  
  for(int i = 0, int k = offset; k < packet_data.size; i = i + 1, k = k + 1) begin
    if(i % 32 == 0 && i != 0) begin
      data_256.push_back(temp_256);
      data_256_be.push_back(temp_256_be);
      temp_256  = 0;
      temp_256_be   = 0;
      active = 0;
    end
    temp_256[(i%32)*8 +: 8] = packet_data[k];
    temp_256_be[i%32] = 1;
    active = 1;
  end
  if(active) begin
    data_256.push_back(temp_256);
    data_256_be.push_back(temp_256_be);
  end

  if((status == 1) & is_vlan) begin
    packet_data = {packet_data[0:11], packet_data[16:$]};
  end
endfunction


function void Descriptor::reshape_256_to_8(int offset = 0);
  for(int i = 0 ; i < offset; i  = i + 1) begin
    packet_data.push_back(0);
  end

  for(int i = 0; i < data_256.size(); i++) begin
    for(int j = 0; j < 32; j = j + 1) begin
      if(i == 0 && (j >= 12 && j < 16) && ring_type == MAC_TX_TYPE && is_vlan) begin
        continue; 
      end

      if(data_256_be[i][j])
        packet_data.push_back(data_256[i][j * 8 +: 8]);
    end
  end
  packet_len = packet_data.size();
endfunction

function bit[191:0] Descriptor::get_roce_desc();
  bit[15:0] tmp_len = {packet_data[38], packet_data[39]} - 8;
  // get_roce_desc = {
  //   {packet_data[33], packet_data[32], packet_data[31], packet_data[30]},  // dip
  //   {packet_data[29], packet_data[28], packet_data[27], packet_data[26]},  // sip
  //   {packet_data[5], packet_data[4], packet_data[3], packet_data[2], packet_data[1], packet_data[0]}, //dmac
  //   {packet_data[11], packet_data[10], packet_data[9], packet_data[8], packet_data[7], packet_data[6]}, // smac
  //   {tmp_len[7:0], tmp_len[15:8]}, //len
  //   {12'h0, 4'hf} // reserve, dtyp
  // };
  get_roce_desc = {
    {packet_data[30], packet_data[31], packet_data[32], packet_data[33]},  // dip
    {packet_data[26], packet_data[27], packet_data[28], packet_data[29]},  // sip
    {packet_data[0], packet_data[1], packet_data[2], packet_data[3], packet_data[4], packet_data[5]}, //dmac
    {packet_data[6], packet_data[7], packet_data[8], packet_data[9], packet_data[10], packet_data[11]}, // smac
    tmp_len, //len
    {12'h0, 4'hf} // reserve, dtyp
  };
  return get_roce_desc;
endfunction

function void Descriptor::calculate_tcp_udp_csum();
  int sum = 0;
  int udp_len = packet_data.size() - pkt_ihl * 4 - 14;

  csum_offset = 0;
  csum_start  = 0;

  if(pkt_type != UDP_PKT && pkt_type != TCP_PKT) return;
  if(desc_status == CHECKSUM_ERROR) return;

  if(pkt_type == UDP_PKT) begin
    csum_offset = 14 + pkt_ihl*4 + 6;
    csum_start  = 14 + pkt_ihl*4;
  end else if(pkt_type == TCP_PKT) begin
    csum_offset = 14 + pkt_ihl*4 + 16;
    csum_start  = 14 + pkt_ihl*4;
  end

  packet_data[csum_offset] = 0;
  packet_data[csum_offset + 1] = 0;

  /* calculate ip */
  for(int i = 26; i < 34; i = i + 1) begin
    if(i % 2) 
      sum = sum + packet_data[i];
    else
      sum = sum + ({8'b0, packet_data[i]} << 8);
  end
  /* calculate udp and payload */
  for(int i = pkt_ihl * 4 + 14; i < packet_data.size(); i = i + 1) begin
    if(i % 2) 
      sum = sum + packet_data[i];
    else
      sum = sum + ({8'b0, packet_data[i]} << 8);
  end

  if(pkt_type == UDP_PKT) 
    sum = sum + 16'h0011;
  if(pkt_type == TCP_PKT) 
    sum = sum + 16'h0006;
  sum = sum + udp_len;

  while(sum>>16)
    sum = (sum & 32'h0000ffff) + (sum >> 16);
  tcp_udp_checksum = ~sum;
  {packet_data[csum_offset], packet_data[csum_offset+1]} = tcp_udp_checksum;

  // $display("csum : %h", sum);
endfunction


function void Descriptor::tx_change_vcsum();
  int sum = 0;
  int udp_len = packet_data.size() - pkt_ihl * 4 - 14;

  if(pkt_type != UDP_PKT && pkt_type != TCP_PKT) return;
  if(desc_status == CHECKSUM_ERROR) return;

  /* calculate ip */
  for(int i = 26; i < 34; i = i + 1) begin
    if(i % 2) 
      sum = sum + packet_data[i];
    else
      sum = sum + ({8'b0, packet_data[i]} << 8);
  end

  if(pkt_type == UDP_PKT) 
    sum = sum + 16'h0011;
  if(pkt_type == TCP_PKT) 
    sum = sum + 16'h0006;
  sum = sum + udp_len;

  while(sum>>16)
    sum = (sum & 32'h0000ffff) + (sum >> 16);

  v_checksum = sum;
  {data_256[csum_offset/32][((csum_offset%32) * 8) +: 8], data_256[csum_offset/32][((csum_offset%32 + 1) * 8) +: 8]} = v_checksum;

  // $display("csum : %h", sum);
endfunction


function void Descriptor::calculate_ip_csum();
  int sum = 0;

  if(pkt_type == MAC_PKT) return;
  if(desc_status == CHECKSUM_ERROR) return;

  packet_data[24] = 0;
  packet_data[25] = 0;

  for(int i = 0; i < pkt_ihl * 4; i = i + 1) begin
    if(i % 2) 
      sum = sum + packet_data[i+14];
    else
      sum = sum + ({8'b0, packet_data[i+14]} << 8);
  end

  while(sum>>16)
    sum = (sum & 32'h0000ffff) + (sum >> 16);  
  ip_checksum = ~sum;

  {packet_data[24], packet_data[25]} = ip_checksum;
  // $display("csum : %h", sum);
endfunction

function string Descriptor::print_item();
  int sum = 0;
  int udp_len = packet_data.size() - 34;

  
  reshape_8_to_256();
  if(ring_type == MAC_RX_TYPE) 
    print_item = {print_item ,$sformatf("ring_type:  MAC_RX_TYPE \n")};
  else if(ring_type == ROCE_RX_TYPE) 
    print_item = {print_item ,$sformatf("ring_type:  ROCE_RX_TYPE \n")};
  else if(ring_type == MAC_TX_TYPE) 
    print_item = {print_item ,$sformatf("ring_type:  MAC_TX_TYPE \n")};
  else if(ring_type == ROCE_TX_TYPE)
    print_item = {print_item ,$sformatf("ring_type:  ROCE_TX_TYPE \n")};

  if(desc_status == NORMAL_PKT) 
    print_item = {print_item ,$sformatf("desc_status : NORMAL_PKT \n")};
  else if(desc_status == CHECKSUM_ERROR) 
    print_item = {print_item ,$sformatf("desc_status : CHECKSUM_ERROR \n")};

  if(pkt_type == MAC_PKT) 
    print_item = {print_item ,$sformatf("pkt_type:  MAC_PKT \n")};
  else if(pkt_type == IP_PKT) 
    print_item = {print_item ,$sformatf("pkt_type:  IP_PKT \n")};
  else if(pkt_type == TCP_PKT) 
    print_item = {print_item ,$sformatf("pkt_type:  TCP_PKT \n")};
  else if(pkt_type == UDP_PKT)
    print_item = {print_item ,$sformatf("pkt_type:  UDP_PKT \n")};

  print_item = {print_item ,$sformatf("is vlan:  %d \n", is_vlan)};


  /////////////////////////////////////////////////////
  //              {mac desc data}             
  ////////////////////////////////////////////////////
  if(ring_type == MAC_RX_TYPE || ring_type == MAC_TX_TYPE) begin
    print_item = {print_item ,$sformatf("ring_index :     %h \n", ring_index)};
    print_item = {print_item ,$sformatf("index_in_ring : %d \n", index_in_ring)};
    print_item = {print_item ,$sformatf("index_in_block : %d \n", index_in_block)};
    print_item = {print_item ,$sformatf("desc_addr :      %h \n", desc_addr)};
    print_item = {print_item ,$sformatf("packet_addr :    %h \n", packet_addr)};
    print_item = {print_item ,$sformatf("cpl_addr :       %h \n", cpl_addr)};
    
    print_item = {print_item ,$sformatf("misxv.msg :          %h \n", misxv.msg)};
    print_item = {print_item ,$sformatf("misxv.addr :         %h \n", misxv.addr)};
    print_item = {print_item ,$sformatf("ring_head_ptr :      %d \n", ring_head_ptr)};
    print_item = {print_item ,$sformatf("ring_tail_ptr :      %d \n", ring_tail_ptr)};
    print_item = {print_item ,$sformatf("cpl_ring_head_ptr :  %d \n", cpl_ring_head_ptr)};
    print_item = {print_item ,$sformatf("cpl_ring_tail_ptr :  %d \n", cpl_ring_tail_ptr)};
    print_item = {print_item ,$sformatf("pkt_ihl :            %d \n", pkt_ihl)};
    print_item = {print_item ,$sformatf("ip_checksum :        %h \n", ip_checksum)};
    print_item = {print_item ,$sformatf("tcp_udp_checksum :   %h \n", tcp_udp_checksum)};
    if(is_vlan) 
      print_item = {print_item ,$sformatf("vlan_tci :   %h \n", vlan_tci)};
  end

  if(ring_type == MAC_TX_TYPE || ring_type == ROCE_TX_TYPE) begin
    print_item = {print_item ,$sformatf("tx_user :     %d \n", tx_user)};
  end

  print_item = {print_item ,$sformatf("packet_len :     %d \n", packet_len)};

  /////////////////////////////////////////////////////
  //              {CPL data}             
  ////////////////////////////////////////////////////
  if(ring_type == MAC_TX_TYPE ) begin
    if(desc_type == MON_TYPE) begin
      print_item = {print_item ,$sformatf("cpl data packet_len :    %d \n", cpl_data[`CPL_FRAME_LEN_OFFSET +: 16])};
      print_item = {print_item ,$sformatf("cpl data index_in_ring : %h \n", cpl_data[`CPL_QINDEX_OFFSET +: 16])};
      print_item = {print_item ,$sformatf("cpl data ring_index :    %h \n", cpl_data[`CPL_QNUM_OFFSET +: 16])};
    end else if(desc_type == DESC_TYPE) begin
      print_item = {print_item ,$sformatf("cpl data packet_len :    %d \n", packet_len)};
      print_item = {print_item ,$sformatf("cpl data index_in_ring : %h \n", index_in_ring)};
      print_item = {print_item ,$sformatf("cpl data ring_index :    %h \n", ring_index)};
    end
  end

  if(ring_type == MAC_RX_TYPE ) begin
    if(desc_type == MON_TYPE) begin
      print_item = {print_item ,$sformatf("cpl data packet_len :    %d \n", cpl_data[`CPL_FRAME_LEN_OFFSET +: 16])};
      print_item = {print_item ,$sformatf("cpl data index_in_ring : %h \n", cpl_data[`CPL_QINDEX_OFFSET +: 16])};
      print_item = {print_item ,$sformatf("cpl data ring_index :    %h \n", cpl_data[`CPL_QNUM_OFFSET +: 16])};
      // print_item = {print_item ,$sformatf("cpl data hash_type :    %h \n", cpl_data[115:112])};
      print_item = {print_item ,$sformatf("cpl data hash :         %h \n", cpl_data[`CPL_HASH_DATA_OFFSET +:32])};
      print_item = {print_item ,$sformatf("cpl data csum data :    %h \n", cpl_data[`CPL_CSUM_DATA_OFFSET +: 16])};
      if(is_vlan) begin
        print_item = {print_item ,$sformatf("cpl data vlan data :    %h \n", cpl_data[`CPL_VLAN_DATA_OFFSET +: 16])};
      end
    end else if(desc_type == DESC_TYPE) begin
      print_item = {print_item ,$sformatf("cpl data packet_len :    %d \n", packet_len)};
      print_item = {print_item ,$sformatf("cpl data index_in_ring : %h \n", index_in_ring)};
      print_item = {print_item ,$sformatf("cpl data ring_index :    %h \n", ring_index)};
      print_item = {print_item ,$sformatf("packet_hash : %h \n",      packet_hash)};
    end
  end

  if(ring_type == ROCE_TX_TYPE ) begin
    print_item = {print_item ,$sformatf("pkt src port :       %d \n", {packet_data[34], packet_data[35]})};
    print_item = {print_item ,$sformatf("pkt dst port :       %d \n", {packet_data[36], packet_data[37]})};
    print_item = {print_item ,$sformatf("pkt totol len :      %d \n", {packet_data[16], packet_data[17]})};
    print_item = {print_item ,$sformatf("pkt udp len :        %d \n", {packet_data[38], packet_data[39]})};
    print_item = {print_item ,$sformatf("pkt ip csum  :       %h \n", {packet_data[24], packet_data[25]})};
    print_item = {print_item ,$sformatf("pkt udp csum  :      %h \n", {packet_data[csum_offset], packet_data[csum_offset+1]})};
    print_item = {print_item ,$sformatf("pkt_ihl :            %d \n", pkt_ihl)};
    print_item = {print_item ,$sformatf("ip_checksum :        %h \n", ip_checksum)};
    print_item = {print_item ,$sformatf("tcp_udp_checksum :   %h \n", tcp_udp_checksum)};
  end

  /////////////////////////////////////////////////////
  //              {data payload}             
  ////////////////////////////////////////////////////
  if(`PRINT_PKT_DATA) begin
    print_item = {print_item ,$sformatf("packet_data :  \n")};
    for(int i = 0; i < data_256.size(); i = i + 1) begin
      // for(int j = 0; j < 32; j = j + 1) begin
      //   print_item = {print_item ,$sformatf("%h", data_256[i][8 * j +: 8])};
      //   if(j % 2) 
      //     print_item = {print_item ,$sformatf("_")};
      // end
      for(int j = 16; j > 0; j = j - 1) begin
        print_item = {print_item ,$sformatf("%h_", data_256[i][16 * j - 1 -: 16])};
      end
      print_item = {print_item ,$sformatf("\n")};
    end
  end

  print_item = {print_item ,$sformatf("\n")};

  return print_item;
endfunction


function bit Descriptor::compare(Descriptor compare_desc, ref string msg);
  int payload_offset;
  compare = 1'b1;

  if(ring_type == MAC_RX_TYPE) begin
    compare = compare && packet_hash == compare_desc.cpl_data[`CPL_HASH_DATA_OFFSET +:32];
    if(compare == 0) begin
      msg =  $sformatf("packet_hash wrong:   %h,   %h\n", packet_hash, compare_desc.cpl_data[`CPL_HASH_DATA_OFFSET +:32]);
      return compare;
    end

    if(desc_status == NORMAL_PKT) begin
      if(pkt_type == TCP_PKT) begin
        compare = compare && (compare_desc.cpl_data[`CPL_CSUM_DATA_OFFSET +: 16] == 0) 
                        && (compare_desc.cpl_data & `RxProtoTCP)
                        && !(compare_desc.cpl_data & `TCPFail);

        if(compare == 0) begin
          msg =  $sformatf("rx checksum wrong: tcp error data:   %h, proto %h, fail %h\n", compare_desc.cpl_data[`CPL_CSUM_DATA_OFFSET +: 16], 
                                                                                        (compare_desc.cpl_data & `RxProtoTCP),
                                                                                        (compare_desc.cpl_data & `TCPFail));
          return compare;
        end
      end
      if(pkt_type == UDP_PKT) begin
        compare = compare && (compare_desc.cpl_data[`CPL_CSUM_DATA_OFFSET +: 16] == 0) 
                        && (compare_desc.cpl_data & `RxProtoUDP)
                        && !(compare_desc.cpl_data & `UDPFail);

        if(compare == 0) begin
          msg =  $sformatf("rx checksum wrong: udp error data:   %h, proto %h, fail %h\n", compare_desc.cpl_data[`CPL_CSUM_DATA_OFFSET +: 16], 
                                                                                        (compare_desc.cpl_data & `RxProtoTCP),
                                                                                        (compare_desc.cpl_data & `TCPFail));
          return compare;
        end
      end
      if(pkt_type == IP_PKT) begin
        compare = compare && (compare_desc.cpl_data & `RxProtoIP) 
              && !(compare_desc.cpl_data & `RxProtoUDP)
              && !(compare_desc.cpl_data & `RxProtoTCP);

        if(compare == 0) begin
          msg =  $sformatf("rx checksum wrong: ip proto %h, %h, %h\n", (compare_desc.cpl_data & `RxProtoIP),
                                                                      (compare_desc.cpl_data & `RxProtoUDP),
                                                                      (compare_desc.cpl_data & `RxProtoTCP));
          return compare;
        end
      end
      if(pkt_type == MAC_PKT) begin
        compare = compare && !(compare_desc.cpl_data & `RxProtoIP) 
              && !(compare_desc.cpl_data & `RxProtoUDP)
              && !(compare_desc.cpl_data & `RxProtoTCP);

        if(compare == 0) begin
          msg =  $sformatf("rx checksum wrong: mac proto %h, %h, %h\n", (compare_desc.cpl_data & `RxProtoIP),
                                                                      (compare_desc.cpl_data & `RxProtoUDP),
                                                                      (compare_desc.cpl_data & `RxProtoTCP));
          return compare;
        end
      end
    end else if(desc_status == CHECKSUM_ERROR) begin
      if(pkt_type == TCP_PKT) begin
        compare = compare && (compare_desc.cpl_data[`CPL_CSUM_DATA_OFFSET +: 16] != 0) 
                        && (compare_desc.cpl_data & `RxProtoTCP)
                        && (compare_desc.cpl_data & `TCPFail);

        if(compare == 0) begin
          msg =  $sformatf("rx checksum wrong: tcp error data:   %h, proto %h, fail %h\n", compare_desc.cpl_data[`CPL_CSUM_DATA_OFFSET +: 16], 
                                                                                        (compare_desc.cpl_data & `RxProtoTCP),
                                                                                        (compare_desc.cpl_data & `TCPFail));
          return compare;
        end
      end
      if(pkt_type == UDP_PKT) begin
        compare = compare && (compare_desc.cpl_data[`CPL_CSUM_DATA_OFFSET +: 16] != 0) 
                        && (compare_desc.cpl_data & `RxProtoUDP)
                        && (compare_desc.cpl_data & `UDPFail);

        if(compare == 0) begin
          msg =  $sformatf("rx checksum wrong: udp error data:   %h, proto %h, fail %h\n", compare_desc.cpl_data[`CPL_CSUM_DATA_OFFSET +: 16], 
                                                                                        (compare_desc.cpl_data & `RxProtoTCP),
                                                                                        (compare_desc.cpl_data & `TCPFail));
          return compare;
        end
      end
    end



    if(is_vlan) begin
      compare = compare && (compare_desc.cpl_data[`CPL_VLAN_DATA_OFFSET +: 16] == vlan_tci) 
                      && (compare_desc.cpl_data & `RxVlanTagged) ;

      if(compare == 0) begin
        msg =  $sformatf("vlan wrong: data:   %h, status   %h\n", compare_desc.cpl_data[`CPL_VLAN_DATA_OFFSET +: 16], 
                                                                                      (compare_desc.cpl_data & `RxVlanTagged));
        return compare;
      end
    end else begin
      compare = compare && !(compare_desc.cpl_data & `RxVlanTagged) ;

      if(compare == 0) begin
        msg =  $sformatf("vlan wrong: status   %h\n", (compare_desc.cpl_data & `RxVlanTagged));
        return compare;
      end
    end
  end

  if(ring_type == MAC_TX_TYPE) begin
    if(desc_status == NORMAL_PKT && (pkt_type == TCP_PKT || pkt_type == UDP_PKT)) begin
      compare = compare && 
        ({packet_data[csum_offset], packet_data[csum_offset+1]} == {compare_desc.packet_data[csum_offset], compare_desc.packet_data[csum_offset+1]}) ;

      if(compare == 0) begin
        msg =  $sformatf("tx checksum wrong: data:   %h,   %h\n", {packet_data[csum_offset], packet_data[csum_offset+1]}, 
                                                                      {compare_desc.packet_data[csum_offset], compare_desc.packet_data[csum_offset+1]});
        return compare;
      end
    end
  end
  
  if(ring_type == MAC_RX_TYPE || ring_type == MAC_TX_TYPE) begin
    compare = compare && desc_addr == compare_desc.desc_addr;
    if(compare == 0) begin
      msg =  $sformatf("desc_addr wrong:   %h,   %h\n", desc_addr, compare_desc.desc_addr);
      return compare;
    end
    compare = compare && packet_addr == compare_desc.packet_addr;
    if(compare == 0) begin
      msg =  $sformatf("packet_addr wrong:   %h,   %h\n", packet_addr, compare_desc.packet_addr);
      return compare;
    end
    compare = compare && cpl_addr == compare_desc.cpl_addr;
    if(compare == 0) begin
      msg =  $sformatf("cpl_addr wrong:   %h,   %h\n", cpl_addr, compare_desc.cpl_addr);
      return compare;
    end
    compare = compare && misxv.msg == compare_desc.misxv.msg;
    if(compare == 0) begin
      msg =  $sformatf("misxv.msg wrong:   %h,   %h\n", misxv.msg, compare_desc.misxv.msg);
      return compare;
    end
    compare = compare && misxv.addr == compare_desc.misxv.addr;
    if(compare == 0) begin
      msg =  $sformatf("misxv.addr wrong:   %h,   %h\n", misxv.addr, compare_desc.misxv.addr);
      return compare;
    end

    compare = compare && packet_len == compare_desc.cpl_data[`CPL_FRAME_LEN_OFFSET +: 16];
    if(compare == 0) begin
      msg =  $sformatf("packet_len wrong:   %h,   %h\n", packet_len, compare_desc.cpl_data[`CPL_FRAME_LEN_OFFSET +: 16]);
      return compare;
    end
    compare = compare && index_in_ring == compare_desc.cpl_data[`CPL_QINDEX_OFFSET +: 16];
    if(compare == 0) begin
      msg =  $sformatf("index_in_ring wrong:   %h,   %h\n", index_in_ring, compare_desc.cpl_data[`CPL_QINDEX_OFFSET +: 16]);
      return compare;
    end
    compare = compare && ring_index == compare_desc.cpl_data[`CPL_QNUM_OFFSET +: 16];
    if(compare == 0) begin
      msg =  $sformatf("ring_index wrong:   %h,   %h\n", ring_index, compare_desc.cpl_data[`CPL_QNUM_OFFSET +: 16]);
      return compare;
    end
  end
  
  if(ring_type == MAC_TX_TYPE || ring_type == ROCE_TX_TYPE) begin
    compare = compare && tx_user == compare_desc.tx_user;
    if(compare == 0) begin
      msg =  $sformatf("tx_user wrong:   %d,   %d\n", tx_user, compare_desc.tx_user);
      return compare;
    end
  end

  if(ring_type == ROCE_TX_TYPE) begin
    compare = compare 
                && packet_data[16] == compare_desc.packet_data[16]
                && packet_data[17] == compare_desc.packet_data[17];
    if(compare == 0) begin
      msg =  $sformatf("packet data len wrong:   %d,   %d\n", 
                                {packet_data[16], packet_data[17]}, 
                                {compare_desc.packet_data[16], compare_desc.packet_data[17]});
      return compare;
    end

    compare = compare 
                && packet_data[34] == compare_desc.packet_data[34]
                && packet_data[35] == compare_desc.packet_data[35];
    if(compare == 0) begin
      msg =  $sformatf("packet data src port wrong:   %d,   %d\n", 
                                {packet_data[34], packet_data[35]}, 
                                {compare_desc.packet_data[34], compare_desc.packet_data[35]});
      return compare;
    end

    compare = compare 
                && packet_data[36] == compare_desc.packet_data[36]
                && packet_data[37] == compare_desc.packet_data[37];
    if(compare == 0) begin
      msg =  $sformatf("packet data dst port wrong:   %d,   %d\n", 
                                {packet_data[36], packet_data[37]}, 
                                {compare_desc.packet_data[36], compare_desc.packet_data[37]});
      return compare;
    end

    compare = compare && packet_data[23] == compare_desc.packet_data[23];
    if(compare == 0) begin
      msg =  $sformatf("packet data udp type wrong:   %d,   %d\n", packet_data[23], compare_desc.packet_data[23]);
      return compare;
    end

    compare = compare 
                && packet_data[38] == compare_desc.packet_data[38]
                && packet_data[39] == compare_desc.packet_data[39];
    if(compare == 0) begin
      msg =  $sformatf("packet data udp len wrong:   %h,   %h\n", 
                                {packet_data[38], packet_data[39]}, 
                                {compare_desc.packet_data[38], compare_desc.packet_data[39]});
      return compare;
    end

    compare = compare 
                && packet_data[40] == compare_desc.packet_data[40]
                && packet_data[41] == compare_desc.packet_data[41];
    if(compare == 0) begin
      msg =  $sformatf("packet data udp csum wrong:   %h,   %h\n", 
                                {packet_data[40], packet_data[41]}, 
                                {compare_desc.packet_data[40], compare_desc.packet_data[41]});
      return compare;
    end

    compare = compare 
                && packet_data[24] == compare_desc.packet_data[24]
                && packet_data[25] == compare_desc.packet_data[25];
    if(compare == 0) begin
      msg =  $sformatf("packet data ip csum wrong:   %h,   %h\n", 
                                {packet_data[24], packet_data[25]}, 
                                {compare_desc.packet_data[24], compare_desc.packet_data[25]});
      return compare;
    end    
  end

  if(ring_type == ROCE_RX_TYPE || ring_type == ROCE_TX_TYPE) begin
    payload_offset = 42;
  end else begin
    payload_offset = 0;
  end

  for(int i = payload_offset; i < packet_data.size; i = i + 1) begin
    compare = compare && packet_data[i] == compare_desc.packet_data[i];
    if(compare == 0) begin
      msg =  $sformatf("packet data wrong:   %h,   %h, index: %d\n", packet_data[i], compare_desc.packet_data[i], i);
      return compare;
    end
  end
   

  return compare;
endfunction

`endif