/*package 1
package pack1;
task add(input a,b, output sum,carry);
begin
sum= a^b;
carry = a&b;
$display("sum is %b",sum);
$display("carry is %b",carry);
end
endtask
endpackage
*/


/*package 2
package pack2;
task sub(input a,b, output dif,bor);
begin
dif= a^b;
bor = ~a&b;
$display("difference is %b",dif);
$display("borrow is %b",bor);
end
endtask
endpackage
*/



`include"pack1.sv"
`include"pack2.sv"
module include_example;
import pack1::*;
import pack2::*;
reg x,y,a,b;
initial begin
x=1; y=1;
pack1::add(x,y,a,b);
pack2::sub(x,y,a,b);
end
endmodule
