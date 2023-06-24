/*
# i=0 at 0
# i=1 at 1
# i=7 at 8
# i=4 at 10
# i=3 at 11
# i=2 at 13
# i=5 at 18
*/
module mbox_test;
mailbox #(int)mb; //parameterized mailbox
int i;
initial begin
mb=new(3); //bound mailbox
$monitor("i=%0d at %0d",i,$time);
fork 
gen_data;
rec_data;
join
end
task gen_data;
mb.put(1);
#1 mb.put(7);
#1 mb.put(4);
#2 mb.put(3);
#2 void'(mb.try_put(2));
#10 mb.put(5);
#2 mb.put(6);
endtask

task rec_data;
#1 mb.peek(i);
#5 mb.get(i);
#2 mb.get(i);
#2 void'(mb.try_get(i));
#1 mb.get(i);
#2 void'(mb.try_get(i));
#2 void'(mb.try_get(i));
#2 mb.get(i);
endtask
endmodule
