class parent;
int a;
endclass

class child extends parent;
int b;
endclass

module inheritance_example;
parent p;
child c;
initial begin
c=new();
$display("The value of parent class member a=%d",c.a);
$display("The member of child class b=%d",c.b);
end
endmodule
