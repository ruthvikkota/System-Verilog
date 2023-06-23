class packet;
  rand int a;
  randc bit [7:0] b;

  constraint c1 { a > 30; a < 70; }
  constraint c3 { b inside {[1:7], 15,[17:20], 30};}
endclass

module tb;
  packet pkt;

  initial begin
    pkt = new();
    repeat(10)
      if((pkt.randomize()))
        $display("%d,%d",pkt.a, pkt.b);
    end
endmodule
