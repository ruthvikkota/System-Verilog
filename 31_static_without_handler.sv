/*This prints
# the default value of a=          0
# the value of a=         15
# Hi LPU
*/

class abc;
static int a;

static function void display();
$display("Hi LPU");
endfunction
endclass
module encapsulation_example;
initial begin
$display("the default value of a=%d",abc::a);
abc::a=15;
$display("the value of a=%d",abc::a);
abc::display();
end
endmodule
