class packet;
int data;
int addr;
endclass
module tb;
packet p;
initial begin
p=new;
p.data=100;
p.addr=50;
$display("the value of data and addr is %0d and %0d",p.data,p.addr);
end
endmodule
