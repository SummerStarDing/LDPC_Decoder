module update_app(
    input clk,
    input rst_n,
    input update_en,
    input [287:0] h,
    input [511*8-1:0] doutb,
    input [73*8-1:0] app_in,
    output update_done,
    output reg write_en,
    output [3:0] addra,
    output [3:0] addrb, 
    output [510:0] data_out,
    output reg [511*8-1:0] dina
);
    reg work, work_1, work_2, work_3, work_4, work_5, cnt;
    reg [4:0] cnt32, cnt2_32;
    reg [511*8-1:0] in;
    reg [287:0] h_reg;
    wire [8:0] h_reg_8 = h_reg[287 -: 9];
    wire [511*8-1:0] out;
    reg [73*8-1:0] app_in_2;
    assign addrb = cnt32[4:1];
    assign addra = cnt2_32[4:1];
    wire write_en_1 = work_4 & !cnt;
    assign update_done = work_5 & !work_4;
    update_unit up0 (in, h_reg_8, app_in_2, out);

    genvar i;
    generate
        for (i = 0; i < 511; i = i + 1) begin: judge_for1
            assign data_out[i] = dina[i*8+7];
        end
    endgenerate

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            in <= 4088'd0;
        end
        else if(cnt) begin
            in <= out;
        end
        else begin
            in <= doutb;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            dina <= 4088'd0;
        end
        else if(!cnt) begin
            dina <= out;
        end
        else begin
            dina <= dina;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            h_reg <= 288'd0;
        end
        else if(update_en) begin
            h_reg <= h;
        end
        else if(work_3) begin
            h_reg <= h_reg << 9;
        end
        else
            h_reg <= h_reg;
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            work <= 1'b0;
        end
        else if(update_en) begin
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
            cnt2_32 <= 5'd0;
        end
        else if(work_4) begin
            cnt2_32 <= cnt2_32 + 1'b1;
        end
        else begin
            cnt2_32 <= 5'd0;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            cnt <= 1'b0;
        end
        else if(work_2) begin
            cnt <= !cnt;
        end
        else begin
            cnt <= 1'b0;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            work_1 <= 1'b0;
            work_2 <= 1'b0;
            work_3 <= 1'b0;
            work_4 <= 1'b0;
            work_5 <= 1'b0;
            write_en <= 1'b0;
            app_in_2 <= 584'd0;
        end
        else begin
            work_1 <= work;
            work_2 <= work_1;
            work_3 <= work_2;
            work_4 <= work_3;
            work_5 <= work_4;
            write_en <= write_en_1;
            app_in_2 <= app_in;
        end
    end




     




endmodule