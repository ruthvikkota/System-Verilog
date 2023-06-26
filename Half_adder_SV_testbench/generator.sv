class generator;
  mailbox gen2driv;
  rand transaction trans;

  function new(mailbox gen2driv);
    this.gen2driv = gen2driv;
  endfunction

  task run;
    repeat (5) begin
      trans = new;
      void'(trans.randomize());
      gen2driv.put(trans);
      $display("-----------");
      $display("In generator class");
      $display("a=%b, b=%b", trans.a, trans.b);
      $display("-----------");
    end
  endtask
endclass

