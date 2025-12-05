module prod(
    input clk,
    input en,
    input flag,
    input [7:0]in_q,
    output reg [32*8-1 :0] pout_q,
    output reg [31:0] pout
);
    reg temp;
    reg [4:0] cnt;
    reg work;
    reg [31:0] out;
    wire in = in_q [7];
    wire flag1 = !flag & out[29];
    wire flag2 = flag & out[31];

    always @(posedge clk) begin
        if (en) begin
            temp <= in;
        end
        else if(work) begin
            temp <= temp ^ in;
        end
        else
            temp <= temp;
    end

    always @(posedge clk) begin
        if (en) begin
            work <= 1'b1;
        end
        else if(cnt == 5'd31) begin
            work <= 1'b0;
        end
        else begin
            work <= work;
        end
    end

    always @(posedge clk) begin
        if (en) begin
            cnt <= 5'd1;
        end
        else if(work) begin
            cnt <= cnt + 1;
        end
    end

    always @(posedge clk) begin
        if(work | en) begin
            out <= {in,out[31:1]};
            pout_q <= {in_q,pout_q[32*8-1:8]};
        end
        else begin
            out <= out;
            pout_q <= pout_q;
        end
    end

    always @(posedge clk) begin
        if ((flag1 | flag2) ^ temp) begin
            pout <= ~out;
        end
        else begin
            pout <= out;
        end
    end

endmodule