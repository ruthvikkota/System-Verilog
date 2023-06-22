module sema_test;
semaphore sem;
initial begin
sem=new(4);
fork 
display();
display();
display();
display();
join
end
task automatic display();
sem.get(2);
$display("current simulation time is %t",$time);
#10 sem.put(2);
endtask
endmodule
