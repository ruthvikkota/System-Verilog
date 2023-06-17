module associative_array;
int a[int];
int index;
initial begin
a[100]=10;
a[150]=20;
a[500]=30;
$display("The size of the array= %0d",a.size());
a.first(index);
$display("The first index value is %d",index);
end
endmodule
