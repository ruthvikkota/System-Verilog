`include "dec.sv"
`include "test.sv"
module top_test;
intf i_intf();
test t1(i_intf);
dec dut(.a(i_intf.a),.b(i_intf.b),.d0(i_intf.d0),.d1(i_intf.d1),.d2(i_intf.d2),.d3(i_intf.d3));
endmodule
