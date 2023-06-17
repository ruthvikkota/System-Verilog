/*Question is
Decleare the dynamic array
1.Display the size before memory allocation
2.allocate the size-15 with new constructor
3.randomize in the range 0-50
4.display the size of 15 values
5.reeallocate the size to 30 by keeping previous values
6.display the size again
7.delate all elements of dynamic array
*/
module dya;
int a[];
initial
begin
$display("size=%0d",$size(a));
a=new[15];
foreach(a[k])
begin
a[k]={$random}%51;
end
$display("size=%0d",$size(a));
$display("A[%0d] array=%0d",k,a[k]);
a=new[50];
foreach(a[k])
begin
a[k]={$random}%51;
end
$display("size=%0d",$size(a));
foreach(a[k])
begin
$display("A[%0d] array=%0d",k,a[k]);
end
a.delete();
end
endmodule
