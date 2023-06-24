/*each element must be divisible by 5
*/
class abc;
  randc int a[];
  constraint a_size{a.size>5;a.size<10;}
  constraint a_value{foreach(a[i]){a[i]>0;a[i]<100;a[i]%5==0;}}
endclass
module tb;
  abc a1;
  initial begin
    a1=new;
    repeat(5)
      begin
        void'(a1.randomize());
        $display("The array a is %p",a1.a);
      end
    end
endmodule
