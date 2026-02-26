module primedet(input wire [7:0] data, output reg isprime);

integer i;
always @(*) begin
    if(data<=1) begin
        isprime=0;
    end
    else begin
        isprime=1;  //assuming prime
        for(i=2;i*i<=data;i=i+1) begin
            if(data%i==0) begin
                isprime=0;
            end
        end
    end
end
endmodule