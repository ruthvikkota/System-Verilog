virtual class abstract;
pure virtual task display();
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



module abstraction;
abstract ab;
abc a;
int i1;
initial begin
//ab=new;
a=new;
a.display();
i1=a.increment(5);
$display("The value of a.increment=%d",i1);
ab=a;
ab.display();
end
endmodule
