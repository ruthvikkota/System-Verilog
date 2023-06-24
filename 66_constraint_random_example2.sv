/*
The array a is '{0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0} 
The array a is '{0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0} 
The array a is '{0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6, 0} 
The array a is '{0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6, 0, 7} 
The array a is '{0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0} 
*/class abc;
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
