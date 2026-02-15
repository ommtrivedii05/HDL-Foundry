`timescale 1ns/1ps

module tb_fulladder;

reg a,b,cin;
wire sum,cout;

fulladder uut(.a(a), .b(b), .c_in(cin), .sum(sum), .c_out(cout));

initial begin
    $dumpfile("wave_fulladder.vcd");
    $dumpvars(0, tb_fulladder);

    a=0; b=0; cin=0; #10;
    a=0; b=0; cin=1; #10;
    a=0; b=1; cin=0; #10;
    a=0; b=1; cin=1; #10;
    a=1; b=0; cin=0; #10;
    a=1; b=0; cin=1; #10;
    a=1; b=1; cin=0; #10;
    a=1; b=1; cin=1; #10;

    $finish;
end

endmodule
