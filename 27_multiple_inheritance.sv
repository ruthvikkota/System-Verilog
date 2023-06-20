/*This will print
# Parent Class
# Child1 Class
# Parent Class
# Child2 Class*/
class parent;
//int a;
function new();
$display("Parent Class");
endfunction
endclass

class child1 extends parent;
//int a;
int b;
function new();
$display("Child1 Class");
endfunction
endclass

class child2 extends parent;
//int a;
int c;
function new();
$display("Child2 Class");
endfunction
endclass

module inheritance_example;
parent p;
child1 c1;
child2 c2;
initial begin
//p=new();
c1=new();
c2=new();
end
endmodule
