class generator;
rand transaction trans;
mailbox gen2driv;

function new(mailbox gen2driv);
this.gen2driv=gen2driv;
endfunction

task run;
repeat(5) begin
trans=new();
void'(trans.randomize());
gen2driv.put(trans);
end
endtask
endclass
