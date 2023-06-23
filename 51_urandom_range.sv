module tb;
integer num1,num2,num3;
initial 
repeat(20) begin
num1=$urandom_range(35,20); //35:max to 20:min
num2=$urandom_range(9);   //9:max to 0:min
num3=$urandom_range(10,15); //10:max to 15:min
$display("num1 is %d",num1);
$display("num2 is %d",num2);
$display("num3 is %d",num3);
end
endmodule
