/*
Declare a dynam»c array D1.
a) Allocate memory to asstgn 10 values.
b) Initilize the dynamsc array with random values.
c) Resize the array for 20 locations while keeping the previous 10 values
d) display the values of dynamic array.
*/

module problem_4;
int dyn1[];
initial begin
dyn1=new[10];
$display("size of array is %0d",dyn1.size());
foreach(dyn1[i])
dyn1[i]={$random}%20;
$display("elements in array are %p",dyn1);
dyn1=new[20](dyn1);
$display("size of array is %0d",dyn1.size());
end
endmodule
