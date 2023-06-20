class my_class#(size=5,type dtype=int);
dtype a[size];
function new();
foreach(a[i])
a[i]=$random;
$display("The size of array is %d and array elements are =%p",size,a);
endfunction
endclass

module parameterized;
my_class m1;
my_class #(10)m2;
my_class #(5,byte)m3;
my_class #(10,bit[7:0])m4;
initial begin
m1=new();
m2=new();
m3=new();
m4=new();
end
endmodule
