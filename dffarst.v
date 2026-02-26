module dffrst(input wire clk, input rst, input d, output reg q);
initial begin
q=1'b0;
end
always @(posedge clk) begin
    if(rst) begin
        q <= 1'b0;
    end
    else begin
        q <= d;
    end
end
endmodule