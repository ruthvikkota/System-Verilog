class scoreboard;
mailbox mon2scb;
transaction trans;

function new(mailbox mon2scb);
this.mon2scb=mon2scb;
endfunction

task run;
repeat(5) begin
trans=new();
mon2scb.get(trans);
if(trans.a==0 && trans.b==0)
begin
if(trans.d0==1)
$display("The output is d0");
else
$display("Incorrect design ");
end

if(trans.a==0 && trans.b==1)
begin
if(trans.d1==1)
$display("The output is d1");
else
$display("Incorrect design ");
end

if(trans.a==1 && trans.b==0)
begin
if(trans.d2==1)
$display("The output is d2");
else
$display("Incorrect design ");
end

if(trans.a==1 && trans.b==1)
begin
if(trans.d3==1)
$display("The output is d3");
else
$display("Incorrect design ");
end

end
endtask
endclass
