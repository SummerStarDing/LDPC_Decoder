module judge(
    input clk,
    input rst_n,
    input judge_en,
    input [3:0] cnt14,
    input [510:0] buffer,
    input en,
    input [287:0] h,
    output reg judge_done,
    output reg judge_out
);   
    reg [287:0] h1,h2;
    wire out1,out2;
    reg [510:0]buffer_reg;
    reg [4:0] cnt;
    reg work;
    reg en1,en2,en3,en4;

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
             h1 <= 288'h0;
             h2 <= 288'h0;        
        end
        else if(work) begin
            h1 <= {h1[278:0], h1[287:279]};
            h2 <= {h2[278:0], h2[287:279]};
        end
        else if(cnt14 == 4'd0) begin
            h1 <= h;
        end
        else if(cnt14 == 4'd7) begin
            h2 <= h;
        end
        else begin
            h1 <= h1;
            h2 <= h2;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            buffer_reg <= 511'd0;
        end
        else if(en) begin
            buffer_reg <= buffer;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            work <= 1'b0;
        end
        else if(en) begin
            work <= 1'b1;
        end
        else if(cnt == 5'd31) begin
            work <= 1'b0;
        end
        else 
            work <= work;
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            cnt <= 5'd0;
        end
        else if(work) begin
            cnt <= cnt + 1'b1;
        end
        else 
            cnt <= 5'd0;
    end
    judge_unit1 judge_u0(clk, cnt, work, buffer_reg, h1[287 -: 9], out1);
    judge_unit2 judge_u1(clk, cnt, work, buffer_reg, h2[287 -: 9], out2);
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            judge_done <= 1'b0;
            judge_out <= 1'b1;
        end
        else if(en4) begin
            judge_done <= 1'b1;
            judge_out <= out1 | out2;
        end
        else begin
            judge_done <= 1'b0;
            judge_out <= 1'b1;
        end
    end
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            en1 <= 1'b0;
            en2 <= 1'b0;
            en3 <= 1'b0;
            en4 <= 1'b0;
        end
        else begin
            en1 <= judge_en;
            en2 <= en1;
            en3 <= en2;
            en4 <= en3;
        end
    end




endmodule