class packet;
  rand bit[7:0]data1;
  rand byte data2;
endclass

module tb;
  packet pkt;
  initial begin
    pkt=new;
    repeat(10) if(pkt.randomize)
      $display(pkt.data1,pkt.data2);
    pkt.data2.rand_mode(0);
    repeat(10) if(pkt.randomize)
      $display(pkt.data1,pkt.data2);
    pkt.data2.rand_mode(1);
    repeat(10) if(pkt.randomize)
      $display(pkt.data1,pkt.data2);
  end
endmodule
