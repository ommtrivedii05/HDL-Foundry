

module dffrst_tb;

reg clk;
reg rst;
reg d;
wire q;

// Instantiate DUT (Device Under Test)
dffrst uut (
    .clk(clk),
    .rst(rst),
    .d(d),
    .q(q)
);

// Clock generation (10ns period)
always #5 clk = ~clk;

initial begin
    // Dump waveform
    $dumpfile("dffrst.vcd");
    $dumpvars(0, dffrst_tb);

    // Initialize signals
    clk = 0;
    rst = 1;
    d   = 0;

    // Hold reset for some time
    #12;
    rst = 0;   // release reset

    // Apply inputs
    #10 d = 1;
    #10 d = 0;
    #10 d = 1;

    // Assert reset asynchronously
    #7  rst = 1;   // reset happens immediately (not waiting for clock)

    #8  rst = 0;   // release reset

    #20 $finish;
end

endmodule