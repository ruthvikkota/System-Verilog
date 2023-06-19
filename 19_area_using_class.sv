class packet;
int length;
int breadth;
function int area();
area=length*breadth;
endfunction
endclass
module tb;
int s;
packet p;
initial begin
p=new;
p.length=100;
p.breadth=50;
s=p.area();
$display("the perimeter of rectangle is %0d",s);
end
endmodule
