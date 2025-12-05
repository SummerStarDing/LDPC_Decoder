module CNU_unit(
    input clk,
    input rst_n,
    input reset_r,
    input pu_en,
    input [73*8-1 : 0] l_in,
    input [3:0]cnt14,
    output pu_done,
    output [73*8-1 : 0] l_out
);

    wire [72:0]pu_done_w;
    assign pu_done = pu_done_w[0];
    genvar p;
    generate
        for(p=0;p<73;p=p+1) begin: nms_for1
            pu z4(clk,rst_n,reset_r,pu_en,cnt14,l_in[p*8+:8],pu_done_w[p],l_out[p*8+:8]);
        end
    endgenerate
    
endmodule