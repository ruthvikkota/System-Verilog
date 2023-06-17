module array_reduction;
int my_arr[4];
int arr_sum,arr_product,arr_and,arr_or;
initial begin
//array initialization
my_arr='{1,2,3,4};
arr_sum=my_arr.sum(); //sum=1+2+3+4 :Result=10
$display("Sum of array is \t%0d",arr_sum);
arr_product=my_arr.product(); //product=1*2*3*4 :Result=24
$display("product of array is \t%0d",arr_product);
arr_and=my_arr.and();
arr_or=my_arr.or();
$display("and of array is \t%0d \n or of array is %0d",arr_and,arr_or);
end
endmodule
