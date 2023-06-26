`include "ha.sv"
`include "test.sv"
module top_test;
intf i_intf();
test t1(i_intf);
ha dut(.a(i_intf.a),.b(i_intf.b),.sum(i_intf.sum),.carry(i_intf.carry));
endmodule
