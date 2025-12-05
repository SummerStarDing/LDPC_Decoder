`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/28 13:42:38
// Design Name: 
// Module Name: pu_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pu_tb();

reg clk;
reg rst_n;
reg reset_r;
reg pu_en;
reg [3:0] cnt14;
reg [7:0] l;
wire pu_done;
wire [7:0] l_out;

pu ux (
    .clk(clk),
    .rst_n(rst_n),
    .reset_r(reset_r),
    .pu_en(pu_en),
    .cnt14(cnt14),
    .l_in(l),
    .pu_done(pu_done),
    .l_out(l_out)
    );

initial begin
    clk = 1'b1;
    rst_n = 1'b1;
    cnt14 = 4'd0;
    #21 rst_n = 1'b0;
    #20 rst_n = 1'b1;
end

initial begin
    reset_r = 1'b1;
    pu_en = 1'b0;
    #101 pu_en = 1'b1;
    l = 8'd2; // 0
    #20 pu_en = 1'b0;
    l = 8'd9; //  1
    #20 l = 8'd9; //  2
    #20 l = 8'd9; //  3
    #20 l = 8'd9; //  4
    #20 l = 8'd9; //  5
    #20 l = 8'd9; //  6
    #20 l = 8'd9; //  7
    #20 l = 8'd20; //  8
    #20 l = 8'd9; //  9
    #20 l = 8'd9; // 10
    #20 l = 8'd9; // 11
    #20 l = 8'd9; // 12
    #20 l = 8'd65; // 13
    #20 l = 8'd9; // 14
    #20 l = 8'd49; // 15
    #20 l = 8'd9; // 16
    #20 l = 8'd9; // 17
    #20 l = 8'd9; // 18
    #20 l = 8'd9; // 19
    #20 l = 8'd9; // 20
    #20 l = 8'd9; // 21
    #20 l = 8'd39; // 22
    #20 l = 8'd9; // 23
    #20 l = 8'd9; // 24
    #20 l = 8'd9; // 25
    #20 l = 8'd70; // 26
    #20 l = 8'd9; // 27
    #20 l = 8'b11111111; // 28
    #20 l = 8'd9; // 29
    #20 l = 8'd9; // 30
    #20 l = 8'd9; // 31
end

always begin
#10 clk = ~clk;
end





endmodule
