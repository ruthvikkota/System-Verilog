/* Question is
Declare a unbounded Queue 01.
a) Initialize the Queue With 6 different Values.
b) Push Any value from back (using and without using prederned metrods)
c) Extract value from 'O' th location.
d) Insert the value at any location
e) Write a logic to make queue as FIFO.
*/

module problem_3;
int q1[$];
int x;
initial begin
q1='{1,2,3,4,5,6};
$display("The size of q1 is %0d",$size(q1));
/*using push_back
q1.push_back(7);
*/
//without using push_back
q1={q1,7};
$display("adding 7 at the end %p",q1);
x=q1[0];
$display("the value of q1 at 0th location x= %0d",x);
/*using insert keyword
q.insert(3,x);
*/
q1={q1[0:2],x,q1[3:$]};
$display("inserting x at the 3th location %p",q1);

end
endmodule
