module nms_control(
    input clk,
    input rst_n,
    input enable,
    input start_done,
    input load_done,
    input pu_done,
    input update_done,
    input judge_done,
    input judge_out,
    output reg start_en,
    output reg load_en,
    output reg pu_en,
    output reg update_en,
    output reg judge_en,
    output reg [3:0]cnt14,
    output reg [4:0]cnt30,
    output reset_r,
    output reg nms_finish
);
    parameter S_idle = 3'd0 , S_load = 3'd1 , S_pu = 3'd2 , S_update = 3'd3 , S_judge = 3'd4, S_start = 3'd5;
    reg [2:0]state,next_state;
    // reg [4:0] cnt30;
    assign reset_r = cnt30 == 5'd0;
    always @(*) begin
        load_en = 0;
        pu_en = 0;
        update_en = 0;
        judge_en = 0;
        start_en = 0;
        nms_finish = 0;
        case(state)

        S_idle: begin
            if(enable)  begin
                next_state = S_start;
                start_en = 1'b1;
            end
            else
                next_state = S_idle;
        end

        S_start: begin
            if(start_done)  begin
                next_state = S_load;
                load_en = 1'b1;
            end
            else
                next_state = S_start;
        end

        S_load: begin
            if(load_done) begin
                next_state = S_pu;
                pu_en = 1'b1;
            end
            else begin
                next_state = S_load;
                // load_en = 1'b1;
            end
        end

        S_pu: begin
            if(pu_done) begin
                next_state = S_update;
                update_en = 1'b1;
            end
            else begin
                next_state = S_pu;
            end
        end

        S_update: begin
            if(update_done) begin
                if(cnt14 == 4'd13) begin
                    next_state = S_judge;
                    judge_en = 1'b1;
                end
                else begin
                    next_state = S_load;
                    load_en = 1'b1;
                end
            end
            else
                next_state = S_update;
        end

        S_judge: begin
            if(judge_done) begin
                if((!judge_out) || cnt30 == 5'd29) begin
                    nms_finish = 1'b1;
                    next_state = S_idle;
                end
                else begin
                    next_state = S_load;
                    load_en = 1'b1;
                end
            end
            else
                next_state = S_judge;
        end
        endcase
    end
 
    always @(posedge clk or negedge rst_n) 
    begin
        if(!rst_n) 
        begin
            cnt14 <= 4'd0;
        end
        else if(update_done) 
        begin
            if(cnt14 == 4'd13) 
            begin
                cnt14 <= 4'd0;
            end 
            else 
            begin
                cnt14 <= cnt14 + 1'b1;
            end 
        end
    end

    
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            cnt30 <= 5'd0;
        end
        else if(state == S_judge) begin
            if(judge_done) begin
                cnt30 <= cnt30 + 1'b1;
            end
            else
                cnt30 <= cnt30;
        end
        else if(state == S_idle)
            cnt30 <= 5'd0;
    end
    
    
    
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            state <= S_idle;
        end
        else
            state <= next_state;
    end


endmodule