/*ascending order with range 0 to 100*/
class abc;
  randc int a[];
  constraint a_size{a.size>10;a.size<15;}
  constraint a_value{foreach(a[i]){a[i]>0;a[i]<100;if(i>0)
  {a[i]>a[i-1];}}}
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
