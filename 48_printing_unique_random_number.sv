module tb;
integer rec[0:9];
integer i,temp,num,index=0;
initial begin
$monitor("num=%0d",num);
while(index!=10)begin
temp={$random}%10;
begin:loop
for(i=0;i<index;i=i+1)
if(rec[i]==temp)
disable loop;
rec[index]=temp;
index=index+1;
num=temp;
#2;
end
end
end
endmodule

/*This will print
# num=8
# num=7
# num=5
# num=2
# num=1
# num=9
# num=6
# num=4
# num=0
# num=3
*/
