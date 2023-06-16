//size of data_types

module tb;
logic a;
int b;
shortint c;
longint d;
real e;
shortreal f;
initial begin
$display ("Default value of logic is %b and size is %d",a,$bits(a));
$display ("Default value of int is %b and size is %d",b,$bits(b));
$display ("Default value of integer is %b and size is %d",c,$bits(c));
$display ("Default value of shortint is %b and size is %d",d,$bits(d));
$display ("Default value of real is %b and size is %d",e,$bits(e));
$display ("Default value of shortreal is %b and size is %d",f,$bits(f));
end
endmodule
