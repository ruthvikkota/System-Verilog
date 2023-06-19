//diference between pass by value and pass by referenece

function int sum(int a=0, b=0);
sum=a+b;
a=10; b=5;
endfunction
module passby_ref_value;
int a,b,s;
initial begin
a=1; b=2;
s=sum();
$display("a=%d, b=%d, s=%d",a,b,s);
#2 s=sum(a,b);
$display("a=%d, b=%d, s=%d",a,b,s);
end
endmodule
