class packet;
int a;
int b;
endclass
module copy_method;
packet p1,p2;
initial begin
p1= new();
p2= new p1;

p2.a=10;
p2.b=20;

$display("p1.a=%0d,p1.b=%0d",p1.a,p1.b);
end
endmodule
