//printing an array in sv
module tb;
logic [7:0][7:0] a;
initial begin
a[7]='1;
a[6]='0;
a[5]=1;
a[4]=2;
a[3]=3;
a[2]=4;
a[1]=5;
a[0]=6;
$display ("Array is %p",a);
end
endmodule
