module struct_example;
struct{int a;
bit [7:0]b;
string c;
}example;

initial begin
example={a:5,b:'d22,c:"lpu"};
$display("%p", example);
example={a:50,b:'d322,c:"hyd"};
$display("updated structure is %p", example);
end
endmodule
