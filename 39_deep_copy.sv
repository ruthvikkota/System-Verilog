class g_pkt;
  int g_pct;
  
  function g_pkt copy();
    copy = new();
    copy.g_pct = this.g_pct;
    return copy;
  endfunction
endclass

class packet;
  int a;
  int b;
  g_pkt gp1;
  
  function new();
    gp1 = new();
  endfunction
  
  function packet copy();
    copy = new();
    copy.a = this.a;
    copy.b = this.b;
    copy.gp1 = gp1.copy();
    return copy;
  endfunction
endclass

module copy_method;
  packet p1, p2;
  
  initial begin
    p1 = new();
    p2 = p1.copy();
    
    p2.a = 10;
    p2.b = 20;
    p2.gp1.g_pct = 100;
    
    $display("p1.a=%0d, p1.b=%0d, p2.a=%0d, p2.b=%0d", p1.a, p1.b, p2.a, p2.b);
    $display("gp1.g_pct.p1=%0d, gp1.g_pct.p2=%0d", p1.gp1.g_pct, p2.gp1.g_pct);
  end
endmodule
