class packet;
int data;
int addr;
function int sum();
sum=data+addr;
endfunction
endclass
module tb;
int s;
packet p;
initial begin
p=new;
p.data=100;
p.addr=50;
s=p.sum();
$display("the value of data and addr is %0d and %0d",p.data,p.addr);
$display("sum of addr and data is %0d",s);
end
endmodule
