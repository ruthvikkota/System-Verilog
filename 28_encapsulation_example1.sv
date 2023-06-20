/*This prints
# The value of a and b =          0 and           0
# The value of a and b =         10 and          15
*/
class abc;
int a;
int b;
endclass

module encapsulation_example;
abc x;
initial begin
x=new();
$display("The value of a and b =%d and %d",x.a,x.b);
x.a=10;
x.b=15;
$display("The value of a and b =%d and %d",x.a,x.b);
end
endmodule
