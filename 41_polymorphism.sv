class parent;
function void display();
$display("In parent class");
endfunction
endclass

class child1 extends parent;
function void display();
$display("In child1 class");
endfunction
endclass

class child2 extends parent;
function void display();
$display("In child2 class");
endfunction
endclass

module polymorphism;
child1 c1;
child2 c2;
parent p1,p2;
initial begin
c1=new();
c2=new();

p1=c1;
p2=c2;
p1.display();
p2.display();
end
endmodule
