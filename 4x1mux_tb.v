module muxtb;
reg s0, s1, i0, i1, i2, i3;
wire y;
mux4x1 uut(.s0(s0), .s1(s1), .i0(i0), .i1(i1), .i2(i2), .i3(i3), .y(y));
initial begin
    $dumpfile("mux.vcd");
    $dumpvars(0, muxtb);
    
    s0 = 0; s1 = 0; i0 = 0; i1 = 0; i2 = 0; i3 = 0; #10;
    s0 = 0; s1 = 0; i0 = 1; i1 = 0; i2 = 0; i3 = 0; #10;
    s0 = 0; s1 = 1; i0 = 0; i1 = 1; i2 = 0; i3 = 0; #10;
    s0 = 1; s1 = 0; i0 = 0; i1 = 0; i2 = 1; i3 = 0; #10;
    s0 = 1; s1 = 1; i0 = 0; i1 = 0; i2 = 0; i3 = 1; #10;

    $finish;
end
endmodule