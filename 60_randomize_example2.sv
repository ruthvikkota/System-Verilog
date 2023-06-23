/*simulate this code on       https://www.edaplayground.com/x/YGAZ
Randomization starts
the values of 1,0
Randomization starts
the values of 3,0
Randomization starts
the values of 2,2
Randomization starts
the values of 3,2
Randomization starts
the values of 0,0
Randomization starts
the values of 3,2
Randomization starts
the values of 2,0
Randomization starts
the values of 3,2
Randomization starts
the values of 0,3
Randomization starts
the values of 1,3
           V C S   S i m u l a t i o n   R e p o r t
*/

class transaction;
  rand bit [1:0]a;
  rand bit [1:0]b;
endclass
class generator;
rand  transaction t;
  function new();
    t=new;
  endfunction
function void pre_randomize;
  $display("Randomization starts");
endfunction
 function void post_randomize;
   $display("the values of %d,%d",t.a,t.b);
endfunction
endclass 
module tc;
  generator t1;
  initial begin
  t1=new;
    repeat(10) begin
      void'(t1.randomize());
    end 
  end
endmodule
