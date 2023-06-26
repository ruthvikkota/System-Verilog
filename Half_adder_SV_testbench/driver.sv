class driver;
  transaction trans;
  mailbox gen2driv;
  virtual intf vif;

  function new(virtual intf vif, mailbox gen2driv);
    this.vif = vif;
    this.gen2driv = gen2driv;
  endfunction

  task run;
    repeat (5) begin
      trans = new;
      gen2driv.get(trans);
      vif.a = trans.a;
      vif.b = trans.b;
      #2;
      trans.sum = vif.sum;
      trans.carry = vif.carry;
      $display("--------------");
      $display("In driver class");
      $display("The received packets");
      $display("a=%b, b=%b, sum=%d, carry=%b", trans.a, trans.b, trans.sum, trans.carry);
      $display("--------------");
    end
  endtask
endclass

