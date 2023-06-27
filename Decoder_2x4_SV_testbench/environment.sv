`include "transaction.sv"
`include "interface.sv"
`include "driver.sv"
`include "generator.sv"
`include "monitor.sv"
`include "scoreboard.sv"
class environment;
virtual intf vif;
generator gen;
driver driv;
monitor mon;
scoreboard scb;
mailbox mon2scb;
mailbox gen2driv;

function new(virtual intf vif);
this.vif=vif;
gen2driv=new();
gen=new(gen2driv);
driv=new(vif,gen2driv);
mon2scb=new();
mon=new(vif,mon2scb);
scb=new(mon2scb);
endfunction

task run();

repeat(5) fork
gen.run();
driv.run();
mon.run();
scb.run();
join
endtask
endclass
