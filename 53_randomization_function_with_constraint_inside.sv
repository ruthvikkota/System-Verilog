module tb;
integer num;
initial begin
repeat(10) begin
  void'(randomize(num)with{num inside {1,7,10};});
$display("Randomization Successful for %d" ,num);
#2;
 end
end
endmodule
