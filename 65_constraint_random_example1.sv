/*For randomizing this kind of pattern
The array a is '{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10} 
The array a is '{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10} 
The array a is '{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12} 
The array a is '{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13} 
The array a is '{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10} 
*/class abc;
  randc int a[];
  constraint a_size{a.size>10;a.size<15;}
  constraint a_value{foreach(a[i]){a[i]==i;}}
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
