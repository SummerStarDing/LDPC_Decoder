module load_app(
    input clk,
    input rst_n,
    input load_en,
    input [287:0] h,
    input [511*8-1:0] doutb,
    output reg load_done,
    output [3:0] addrb,
    output reg [73*8-1:0] out
);

    reg work, work_1, work_2, work_3;
    reg [4:0] cnt32;
    reg [287:0] h_reg;
    wire [8:0] h_reg_8 = h_reg[287 -: 9];
    wire [2*511*8-1:0] temp = {doutb, doutb} << h_reg_8*8;
    assign addrb = cnt32[4:1];
    wire load_done_1 = work_2 & !work_3;

    always @(posedge clk) begin
        out <= temp[2*511*8-1 -: 73*8];
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            h_reg <= 288'd0;
        end
        else if(load_en) begin
            h_reg <= h;
        end
        else if(work_2) begin
            h_reg <= h_reg << 9;
        end
        else
            h_reg <= h_reg;
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            work <= 1'b0;
        end
        else if(load_en) begin
            work <= 1'b1;
        end
        else if(cnt32 == 5'd30) begin
            work <= 1'b0;
        end
        else begin
            work <= work;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            cnt32 <= 5'd0;
        end
        else if(work) begin
            cnt32 <= cnt32 + 1'b1;
        end
        else begin
            cnt32 <= 5'd0;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            work_1 <= 1'b0;
            work_2 <= 1'b0;
            work_3 <= 1'b0;
            load_done <= 1'b0;
        end
        else begin
            work_1 <= work;
            work_2 <= work_1;
            work_3 <= work_2;
            load_done <= load_done_1;
        end
    end




endmodule