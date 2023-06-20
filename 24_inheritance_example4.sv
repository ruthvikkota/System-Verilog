/*It will give fatal error*/

class parent;
int a;
function new();
$display("Parent Class");
endfunction
endclass

class child extends parent;
//int a;
int b;
function new();
$display("Child Class");
endfunction
endclass

module inheritance_example;
parent p;
child c;
initial begin
//p=new();
c=new();
$display(p.a);
end
endmodule
