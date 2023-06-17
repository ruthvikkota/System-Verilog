module static_casting;
int a =-10; 
int b;
initial
begin
$display(a>>>1);
$display(unsigned'(a)>>>1); // positive value
b=const'(a);
b = 3;
end
endmodule
