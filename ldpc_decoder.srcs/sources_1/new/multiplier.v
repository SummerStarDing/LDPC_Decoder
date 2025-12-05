module multiplier(
    input clk,
    input [6:0] m1,
    input [6:0] m2,
    output reg [6:0] m3,
    output reg [6:0] m4
);
    wire [6:0]temp_1_1;
    wire [6:0]temp_1_2;
    wire [6:0]temp_1_3;
    wire [6:0]temp_1_4;

    wire [6:0]temp_2_1;
    wire [6:0]temp_2_2;
    wire [6:0]temp_2_3;
    wire [6:0]temp_2_4;

    assign temp_1_1 = m1 >> 1;
    assign temp_1_2 = m1 >> 3;
    assign temp_1_3 = m1 >> 4;
    assign temp_1_4 = m1 >> 6;
    assign temp_2_1 = m2 >> 1;
    assign temp_2_2 = m2 >> 3;
    assign temp_2_3 = m2 >> 4;
    assign temp_2_4 = m2 >> 6;


    always @(posedge clk) begin
        m3 <= temp_1_1 + temp_1_2 + temp_1_3 + temp_1_4;
        m4 <= temp_2_1 + temp_2_2 + temp_2_3 + temp_2_4;
    end

    // always @(posedge clk) begin
    //     m3 <= temp_1_1 + temp_1_2 + temp_1_3 ;
    //     m4 <= temp_2_1 + temp_2_2 + temp_2_3 ;
    // end

endmodule