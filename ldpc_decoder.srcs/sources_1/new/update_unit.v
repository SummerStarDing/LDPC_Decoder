module update_unit(
    input [4087:0] in1,      
    input [8:0] in2,         
    input [583:0] in3,     
    output reg [4087:0] out
);
    reg [2*511*8-1:0] temp;
    reg temp3;
    always @(*) begin
        temp = {in1,in1};
        temp[(2*511-in2)*8-1 -: 73*8] = in3;
        temp3 = in2 > 9'd400;
    end
    always @(*) begin
        if(temp3) begin
            out = {temp[511*8-1 -: 100*8],temp[511*8 +: 411*8]};
        end
        else begin
            out = temp[2*511*8-1 -: 511*8];
        end
    end
endmodule