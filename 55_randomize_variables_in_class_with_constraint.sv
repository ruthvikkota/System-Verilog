class sample;
rand int num1;
int num2;
endclass
module tb;
sample sm;
initial begin
sm=new;
repeat(20)
assert(sm.randomize() with {num1>0;num1<100;}) //assert check randomization status
$display("num1=%0d num2=%0d",sm.num1,sm.num2);
end
endmodule
