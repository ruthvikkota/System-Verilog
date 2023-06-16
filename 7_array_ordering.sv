module array_ordering;
int my_arr[4];
initial begin
//array initialization
my_arr='{1,2,3,4};
my_arr.reverse(); 
$display("Reverse of array is \t%0p",my_arr);
my_arr.shuffle(); 
$display("Shuffle of array is \t%0p",my_arr);
my_arr.sort();
$display("ascending order of array is \t%0p",my_arr);
my_arr.rsort();
$display("descending order of array is %0p",my_arr);
end
endmodule
