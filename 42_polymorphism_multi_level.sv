class parent;
virtual function void display();
$display("In parent class");
endfunction
endclass

class child1 extends parent;
function void display();
$display("In child1 class");
endfunction
endclass

class child2 extends child1;
function void display();
$display("In child2 class");
endfunction
endclass

module polymorphism;
child1 c1;
child2 c2;
parent p1;
initial begin
c2=new();
c1=c2;
p1=c1;
p1.display();
end
endmodule
