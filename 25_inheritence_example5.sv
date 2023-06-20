/*This will print
# Area =         25
# Perimeter=         20
*/

class rectangle;
int length,width;
function new(int x,int y);
this.length=x;
this.width=y;
endfunction
function void area();
int a=length*width;
$display("Area =%d",a);
endfunction
function void perimeter();
int p=2*(length+width);
$display("Perimeter=%d",p);
endfunction
endclass

class square extends rectangle;
int size;
function new(int size);
super.new(size,size);
this.size=size;
endfunction
endclass

module inheritance_example;
square sq;
initial begin
sq=new(5);
sq.area();
sq.perimeter();
end
endmodule
