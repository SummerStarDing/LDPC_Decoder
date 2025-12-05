module startup(
    input clk,
    input rst_n,
    input start_en,
    input [8175:0] data_in,
    output write_en,
    output reg start_done,
    output reg [3:0] addra,
    output [511*8-1:0] out
);
    reg work;
    wire [510:0] in;
    reg  [8175:0] in_r;
    assign in = in_r[8175 -: 511];
    assign write_en = work | addra == 4'd15;

    genvar i;
    generate
        for(i=0; i<511; i=i+1) begin:start_for_1
            assign out[i*8 +: 8] = in[i] ? 8'b11111000 : 8'b00001000;
        end
    endgenerate

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            in_r <= 8176'd0;
        end
        else if(start_en) begin
            in_r <= data_in;
        end
        else if(work)begin
            in_r <= in_r << 511;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            work <= 1'b0;
            start_done <= 1'b0;
        end
        else if(start_en) begin
            work <= 1'b1;
        end
        else if(addra == 4'd14) begin
            work <= 1'b0;
            start_done <= 1'b1;
        end
        else begin
            work <= work;
            start_done <= 1'b0;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            addra <= 4'd0;
        end
        else if(work) begin
            addra <= addra + 1'd1;
        end
        else
            addra <= 4'd0;
    end

endmodule