
class eth_pkt;
bit [7:0]sof;
bit [15:0]len;
int count;
function void print();
$display("sof = %b",sof);
$display("len = %b",len);
$display("count = %0d",count);
endfunction   
endclass
class eth_good_pkt extends eth_pkt;
int count_good;
function void print();
super.print();
$display("count_good = %0d",count_good);
endfunction
endclass
module problem_5;
eth_good_pkt h;

initial begin 
h=new;
h.print();
h.sof='1;
h.len='{1000};
h.count=20;
h.count_good=55;
h.print();
end
endmodule


/*This prints like
# sof = 00000000
# len = 0000000000000000
# count = 0
# count_good = 0
# sof = 11111111
# len = 0000001111101000
# count = 20
# count_good = 55
*/
