/*this will print
# obj1 sum = 70, obj2 sum = 70
*/
class abc;
static int sum;
function int calc(input int a,input int b);
this.sum = a + b;
return sum;
endfunction
endclass
module encapsulation_example;
abc obj1,obj2;
initial begin
obj1 = new();
obj2 = new();  
obj1.sum = obj1.calc(10,20);
obj2.sum = obj2.calc(30,40);  
$display("obj1 sum = %0d, obj2 sum = %0d",obj1.sum,obj2.sum);
end
endmodule
