class packet;
rand bit[7:0]data;
int max=50,min=10;
constraint c1{data>min;data<max;}
endclass

module tb;
packet pkt;
initial begin
pkt=new;
repeat(10)
assert(pkt.randomize())
$display(pkt.data);
pkt.min=30;
pkt.max=100;
repeat(10)
assert(pkt.randomize())
$display(pkt.data);
end
endmodule
