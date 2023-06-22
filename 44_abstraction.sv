virtual class abstract;
virtual task display();
endtask
function int increment(int x);
return x;
endfunction
endclass


class abc extends abstract;
task display();
$display("abc");
endtask
function int increment (int x);
return x+2;
endfunction
endclass


class xyz extends abstract;
task display();
$display("xyz");
endtask
endclass

module abstraction;
abstract ab;
abc a;
xyz x;
int i1,i2;
initial begin
//ab=new;
a=new;
x=new;
a.display();
x.display();
i1=a.increment(5);
$display("The value of a.increment=%d",i1);
i2=x.increment(10);
$display("The value of x.increment=%d",i2);
ab=a;
ab.display();
ab= x;
ab.display();
end
endmodule
