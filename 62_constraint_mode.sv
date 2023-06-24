class abc;
  rand int a;
  constraint a_small{a>=0;a<=100;}
  constraint a_large{a>=2000;a<=10000;}
endclass
module tb;
  abc a1;
  initial begin
    a1=new;
    a1.a_small.constraint_mode(0);
    repeat(10)
      begin
        void'(a1.randomize());
        $display("Value of a is %d",a1.a);
      end
    a1.constraint_mode(1);
    a1.a_large.constraint_mode(0);
    begin
        void'(a1.randomize());
        $display("Value of a is %d",a1.a);
      end
    end
endmodule
