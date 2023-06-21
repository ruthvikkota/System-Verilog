class parent;
int a=50;
task display();
$display("Inside parent class::value of a=%0d",a);
endtask
endclass

class child extends parent;
task display();
a=100;
$display("Inside child class::value of a=%0d",a);
endtask
function new();
super.new();
endfunction
endclass

module tb;
child c;
parent p;
initial begin
c=new();
p=c;
c.display();
p.display();
end
endmodule
