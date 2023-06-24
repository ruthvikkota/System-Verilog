class abc;
  randc int a[];
  constraint a_size{a.size>10;a.size<15;}
  constraint a_value{foreach(a[i]){if(i%2==0){a[i]==0;}
    else {a[i]==(i+1)/2;}}}
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
