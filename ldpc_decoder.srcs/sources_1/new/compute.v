module compute(
    input clk,
    input rst_n,
    input en,
    input flag,
    input [50:0]r,
    input [7:0]l,
    output [50:0]r2,
    output [7:0]l2,
    output done,
    output reg done_1
);
    wire [6:0] min1, min2;
    wire [4:0] jm;
    wire [31:0] sign_bit;
    assign {min1, min2, jm, sign_bit} = r;

    wire [6:0] m1, m2, m3, m4;
    wire [4:0] jm2;
    wire [31:0] sign_bit2;
    wire [32*8-1 :0] q_add;
    wire done_find;
    // reg done_1;
    assign done = done_find;
    assign r2 = {m3, m4, jm2, sign_bit2};

    reg [4:0] cnt;
    reg work, find_en, prod_en;
    wire [7:0] q;
    wire [6:0] q_abs;
    wire [6:0] min_sub = cnt == jm ? min2 : min1;
    wire [6:0] min_add = cnt == jm2 ? m4 : m3;

//    addsub        z0 (l, {1'b0, min_sub}, clk, sign_bit[cnt], q);
    c_addsub_0    z0 (.A(l), .B({1'b0, min_sub}), .CLK(clk), .ADD(sign_bit[cnt]), .S(q));
    abs           z1 (clk, q, q_abs);
    prod          z2 (clk, prod_en, flag, q, q_add, sign_bit2);
    find_min      z3 (clk, rst_n, find_en, q_abs, flag, m1, m2, jm2, done_find);
    multiplier    z4 (clk, m1, m2, m3, m4);
//    addsub        z5 (q_add[cnt*8+:8], {1'b0, min_add}, clk, ~sign_bit2[cnt], l2);
    c_addsub_0    z5 (.A(q_add[cnt*8+:8]), .B({1'b0, min_add}), .CLK(clk), .ADD(~sign_bit2[cnt]), .S(l2));

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            find_en <= 1'b0;
            prod_en <= 1'b0;
            done_1 <= 1'b0;
        end
        else begin
            find_en <= prod_en;
            prod_en <= en;
            done_1 <= done_find;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt <= 5'd0;
        end
        else if (en | work) begin
            cnt <= cnt + 1'b1;
        end
        else begin
            cnt <= cnt;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            work <= 1'b0;
        end
        else if (cnt == 5'd31) begin
            work <= 1'b0;
        end
        else if (done_1 | en) begin
            work <= 1'b1;
        end
        else 
            work <= work;
    end



endmodule

