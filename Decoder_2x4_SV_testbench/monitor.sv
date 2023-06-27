class monitor;
transaction trans;
mailbox mon2scb;
virtual intf vif;

function new (virtual intf vif,mailbox mon2scb);
this.mon2scb=mon2scb;
this.vif=vif;
endfunction

task run;
repeat(5) begin
trans=new();
trans.a= vif.a;
trans.b= vif.b;
#2;

trans.d0=vif.d0;
trans.d1=vif.d1;
trans.d2=vif.d2;
trans.d3=vif.d3;
mon2scb.put(trans);
end
endtask
endclass

