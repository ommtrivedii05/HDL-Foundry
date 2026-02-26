module tb_dff;

reg clk;
wire q;
reg d;
dff uut(.clk(clk), .d(d), .q(q));
 initial begin
    $dumpfile("dff.vcd");
    $dumpvars(0, tb_dff);
    
    clk = 0; d = 0; #10;
    clk = 1; d = 0; #10;
    clk = 0; d = 1; #10;
    clk = 1; d = 1; #10;

    $finish;    
 end
endmodule