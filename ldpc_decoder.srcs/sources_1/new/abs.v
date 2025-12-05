module abs(
    input clk,
    input [7:0] in, 
    output reg [6:0] abs_val
);

    always @(posedge clk) begin
        if (in[7]) begin
            if (in == 8'h80) begin
                abs_val <= 7'b1111111;
            end 
            else begin
                abs_val <= ~in[6:0] + 1;
            end
        end else begin
            abs_val <= in[6:0];
        end
    end

endmodule