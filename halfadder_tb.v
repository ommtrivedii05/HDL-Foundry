`timescale 1ns/1ps
module tb;
  reg a, b;
  wire sum, cout;

  halfadder uut(.a(a), .b(b), .sum(sum), .cout(cout));

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb);

    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
  end
endmodule
