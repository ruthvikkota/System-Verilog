class c1;
int a,b;
function c1 copy;
copy=new();
copy.a=this.a;
copy.b=this.b;
return copy;
endfunction
endclass

class c2;
int c;
c1 ch1;
function new()
ch1=new();
endfunction
function c2 copy;
copy=new();
copy.c=this.c;
copy.ch1=ch1.copy;
return copy;
endfunction
endclass

class c3;
bit[7:0]d;
c2 ch2;
function new()
ch2=new();
endfunction
function c3 copy;
copy =new();
copy.d=this.d;
copy.ch2=ch2.copy;
endfunction
endclass

module copy_method;
c3 ch3,ch4;
initial begin
ch3=new();
ch4=ch3.copy();

ch4.a=10;
ch4.b=20;
ch4.c=30;
ch4.d=11001100;

endmodule
