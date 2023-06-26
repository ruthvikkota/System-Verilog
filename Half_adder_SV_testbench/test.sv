`include "environment.sv"

module test(intf i_intf);

environment env;

initial begin
env= new(i_intf);

env.run();
end
endmodule

