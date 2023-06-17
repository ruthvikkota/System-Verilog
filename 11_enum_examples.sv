module enum_example;
typedef enum{RED,BLUE=3,GREEN}color_e;
color_e mycolor;
initial begin
mycolor = mycolor.first;
do
begin
$display("Color=%0d %0s",mycolor,mycolor.name);
mycolor=mycolor.next;
end
while(mycolor!=mycolor.first); //Done at wrap-around
end
endmodule
