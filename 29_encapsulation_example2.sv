/*This gives error because of local keyword used (a can be used only in abc class)
Illegal access to local member a.
        Full name of member: encapsulation_example_sv_unit::abc::a
        Full name of calling scope: outside a class context
*/
class abc;
local int a;
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
