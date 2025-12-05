module judge_unit2(
    input clk,
    input [4:0]cnt,
    input work,
    input [510:0] buffer_reg,
    input [8:0] h,
    output reg out
);
    reg [510 : 0] checknode;
    wire [1021:0] t = {buffer_reg ,buffer_reg} << h;

    always @(posedge clk) begin
        if(work) begin
            if(cnt == 5'd0)
                checknode <= t[1021:511];
            else if(cnt == 5'd31)
                checknode <= checknode;
            else
                checknode <= checknode ^ t[1021:511];
        end
    end

    always @(posedge clk) begin
        out <= |checknode;
    end


endmodule