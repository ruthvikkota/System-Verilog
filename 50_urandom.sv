module tb;
integer num1,num2,seed;
initial 
repeat(20) begin
#2 num1=$urandom(seed);
num2=$urandom;
$display("num1 is %d",num1);
$display("num2 is %d",num2);
end
endmodule
