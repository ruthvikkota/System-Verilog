/*The protected variable can be asscesd by the child class only (a cannot be printed in module )
this prints as
# the values of a and b =         100 and         200
*/

class abc;
protected int a;
int b;
endclass

class child extends abc;
function new();
super.a=100;
super.b=200;
$display("the values of a and b = %d and %d",super.a,super.b);
endfunction
endclass

module encapsulation_example;
abc x;
child c1;
initial begin
c1=new();
end
endmodule
