// working of foreach loop
module arrays_foreach;
logic  a[16];
initial begin
foreach(a[k])
begin
a[k]={$random}%16;
end
$display ("Array is %p",a);
end
endmodule
