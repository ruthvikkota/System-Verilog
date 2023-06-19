module passby_ref_value;
int a,b;
int s;
task  sum(int a=0,b=0, output int s);
s=a+b;
a=10; b=5;
endtask
initial begin
a=1; b=2; 
sum(,,s);
$display("a=%d, b=%d, s=%d",a,b,s);
#2 sum(a,b,s);
$display("a=%d, b=%d, s=%d",a,b,s);
end
endmodule
