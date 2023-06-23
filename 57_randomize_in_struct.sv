class sample;
typedef struct{
randc int a;
bit [3:0]b;
}st_t;
rand st_t st;
endclass
module tb;
sample sm;
initial begin
sm=new;
repeat(20)
assert(sm.randomize()) 
$display(sm.st.a);
end
endmodule
