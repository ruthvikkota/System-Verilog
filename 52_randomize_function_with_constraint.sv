module tb;
integer num;
initial begin
repeat(10) begin
void'(randomize(num)with{num>0;num%2==0;});
$display("Randomization Successful for %d" ,num);
//$display("Randomization Failed");
#2;
 end
end
endmodule
