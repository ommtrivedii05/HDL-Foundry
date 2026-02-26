module tb_primedet;
reg [7:0] data;
wire isprime;
primedet uut(.data(data), .isprime(isprime));
initial begin
   $dumpfile("prime.vcd");
    $dumpvars(0, tb_primedet);

    $display("Number  Prime?");
    
    for (data = 0; data < 20; data = data + 1) begin
        #5;
        $display("%d      %b", data, isprime);
    end
    
    #10 $finish;
end

endmodule