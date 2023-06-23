class sample;
rand bit[1:0] num;
endclass

class main;
rand sample sm;
function new;
sm=new;
endfunction
endclass

module tb;
main m;
initial begin
m=new;
repeat(20)
assert(m.randomize()) 
$display(m.sm.num);
end
endmodule
