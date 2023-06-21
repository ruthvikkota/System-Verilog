class g_pkt;
int g_pkt;
endclass

class packet;
int a;
int b;
g_pkt gp1;
function new();
gp1=new();
endfunction
endclass

module copy_method;
packet p1,p2;
initial begin
p1= new();
p2= new p1;

p2.a=10;
p2.b=20;
p2.gp1.g_pct=100;

$display("p1.a=%0d,p1.b=%0d,p2.a=%0d,p2.b=%0d",p1.a,p1.b,p2.a,p2.b);
  $display("gpct.p1=%0d,gpct.p2=%0d",p1.gp1.g_pct,p2.g_pct);
end
endmodule
