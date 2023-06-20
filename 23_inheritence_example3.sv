/*this will print
# The value of parent class member a=          0
# The member of child class b=         30
*/

class parent;
int a;
endclass

class child extends parent;
int a;
int b;
endclass

module inheritance_example;
parent p;
child c;
initial begin
p=new();
c=new();
p.a=20;
c.b=30;
$display("The value of parent class member a=%d",c.a);
$display("The member of child class b=%d",c.b);
end
endmodule
