module queues;
int q1[$];
int q2[$];
int x;
initial begin
q1='{2,3,4,5,6};
$display("The size of q1 is %d",$size(q1));
//insert 8 at 4th location
q1.insert(4,8); //q1={q1[0:3],8,q1[4;$]};
$display("%p",q1);
//delete 5th element
q1.delete(5);
$display("%p",q1);

x=q1.pop_front();
$display(x);

q2=q1[1:$-1];
$display("%p",q2);
end
endmodule
