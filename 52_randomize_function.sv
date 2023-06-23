module tb;
integer num1,num2;
initial 
repeat(20) begin
if(randomize(num1,num2))  //Randomize num1 and num2
$display("Randomization Successful for %d and %d",num1,num2);
else $display("Randomization Failed");
#2;
 end
endmodule
