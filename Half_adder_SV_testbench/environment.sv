`include "transaction.sv"
`include "interface.sv"
`include "driver.sv"
`include "generator.sv"

class environment;
  virtual intf vif;
  mailbox gen2driv;
  generator gen;
  driver driv;

  function new(virtual intf vif);
    this.vif = vif;
    gen2driv = new();
    gen = new(gen2driv);
    driv = new (vif, gen2driv);
  endfunction

  task run();
    fork
      repeat (5) begin
        gen.run();
        driv.run();
      end
    join
  endtask

endclass

