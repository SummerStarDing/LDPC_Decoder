module addsub(
    input signed [7:0] a,
    input signed [7:0] b,
    input clk,
    input sub,
    output reg signed [7:0] out
);
    reg signed [7:0] temp1, temp2, sum1, sum2;

    always @(*) begin
        temp1 = a + b;
        if(a[7] == b[7] & temp1[7] != a[7]) begin
            if(a[7]==0)
                sum1 = 8'b01111111;
            else
                sum1 = 8'b10000000;
        end
        else
            sum1 = temp1;
    end

    always @(*) begin
        temp2 = a + ~b + 1'b1;
        if((a[7] != b[7]) & (temp2[7] != a[7])) begin
            if(a[7])
                sum2 = 8'b10000000;
            else
                sum2 = 8'b01111111;
        end
        else 
            sum2 = temp2;
    end

    always @(posedge clk) begin
        if (sub) begin
            out <= sum1;
        end else begin
            out <= sum2;
        end
    end









endmodule