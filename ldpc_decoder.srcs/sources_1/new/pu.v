module pu(
    input         clk,
    input         rst_n,
    input         reset_r,
    input         pu_en,
    input  [3:0]  cnt14,
    input  [7:0]  l_in,
    output        pu_done,
    output [7:0]  l_out
);

    wire [50:0] r_in, r_temp;
    reg [50:0] r_out;
    wire flag = cnt14 > 4'd6;
    wire done_1;
    ram_r_50 pu_u0(
        .clka(clk),
        .addra(cnt14),
        .dina(r_in),
        .wea(done_1),
        .douta(r_temp)
    );

    compute pu_u1(clk, rst_n, pu_en, flag, r_out, l_in, r_in, l_out, pu_done, done_1);
    
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            r_out <= 51'd0;
        end
        else if(reset_r) begin
            r_out <= 51'd0;
        end
        else begin
            r_out <= r_temp;
        end
    end
    
endmodule
