//to delete a specific element in dynamic array
module dynamic_array;
int dyn1[]='{1,2,3,4};
int dyn2[];
int k=0;
initial begin
dyn2=new[dyn1.size()-1];
foreach(dyn1[i])
begin
if(i==2)
continue;
else
dyn2[k++]=dyn1[i];
end
$display("%p",dyn2);
end
endmodule
