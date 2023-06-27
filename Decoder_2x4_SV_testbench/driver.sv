class driver;
transaction trans;
mailbox gen2driv;
virtual intf vif;

function new(virtual intf vif,mailbox gen2driv);
this.vif=vif;
this.gen2driv=gen2driv;
endfunction

task run;
repeat(5) begin
trans =new();
gen2driv.get(trans);
vif.a=trans.a;
vif.b=trans.b;
#2;
end
endtask
endclass
 
