module mux4x1(
    input  s0,
    input  s1,
    input  i0,
    input  i1,
    input  i2,
    input  i3,
    output y
);

wire s0b, s1b;

assign s0b = ~s0;
assign s1b = ~s1;

assign y = (s1b & s0b & i0) |
           (s1b & s0  & i1) |
           (s1  & s0b & i2) |
           (s1  & s0  & i3);

endmodule