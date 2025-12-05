module find_min (
    input               clk,   
    input               rst_n,    
    input               en,        
    input       [6:0]   data,
    input               flag,   
    output reg  [6:0]   min1,     
    output reg  [6:0]   min2,       
    output reg  [4:0]   index,     
    output reg          done      
);

    reg [4:0]   cnt;              
    reg         state;          
    reg [6:0]   min1_reg;         
    reg [6:0]   min2_reg;          
    reg [4:0]   index_reg;          
    wire jump = !flag & cnt == 5'd28 | flag & cnt == 5'd30;
    localparam IDLE  = 1'b0;
    localparam INPUT = 1'b1;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state    <= IDLE;
            cnt      <= 5'd0;
            min1_reg <= 7'b1111111;
            min2_reg <= 7'b1111111;
            index_reg<= 5'd0;
            done     <= 1'b0;
            min1     <= 7'd0;
            min2     <= 7'd0;
            index    <= 5'd0;
        end else begin
            done <= 1'b0;          
            case (state)
                IDLE: begin
                    if (en) begin
                        state    <= INPUT;
                        min1_reg <= data;      
                        min2_reg <= 7'b1111111;
                        index_reg<= 5'd0;    
                        cnt      <= 5'd0;      
                    end
                end

                INPUT: begin
                    if (cnt < 5'd31) begin
                        if(!jump) begin
                            if (data < min1_reg) begin
                                min2_reg <= min1_reg;  
                                min1_reg <= data;      
                                index_reg <= cnt + 1; 
                            end else if (data < min2_reg) begin
                                min2_reg <= data;      
                            end
                        end
                        cnt <= cnt + 1'b1;
                    end else begin
                        state <= IDLE;
                        done  <= 1'b1;       
                        min1  <= min1_reg;   
                        min2  <= min2_reg;    
                        index <= index_reg;      
                    end
                end
            endcase
        end
    end

endmodule