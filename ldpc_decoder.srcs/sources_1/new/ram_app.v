module ram_app(
    input clk,
    input rst_n,
    input start_en,
    input load_en,
    input update_en,
    // input judge_en,
    input [287:0] h,
    input [8175:0] data_in,
    input [73*8-1:0] app_in,
    output start_done,
    output load_done,
    output update_done,
    // output judge_load_done,
    output reg [8175:0] data_out,
    output [73*8-1:0] app_out,
    output [510:0] data_out_t,
    output write_en_update
);

    parameter  START = 2'd1, LOAD = 2'd2, UPDATE = 2'd3;
    //  JUDGE = 2'd0;
    reg [2:0] state;

    wire [3:0] addra_start, addra_update, addrb_load, addrb_update;
    wire write_en_update, write_en_start;
    wire [511*8-1:0] dina_start, dina_update, doutb;
    wire [511*8-1:0] dina;
    wire [3:0] addra, addrb;
    wire write_en;
    wire [510:0] data_out_t;
    reg en_1, en_2, en_3;

    startup    ram_u0(clk, rst_n, start_en, data_in, write_en_start, start_done, addra_start, dina_start);
    load_app   ram_u1(clk, rst_n, en_3, h, doutb, load_done, addrb_load, app_out);
    update_app ram_u2(clk, rst_n, update_en, h, doutb, app_in, update_done, write_en_update, addra_update, addrb_update, data_out_t, dina_update);
    // judge_app  ram_u3(clk, rst_n, judge_en, doutb, judge_load_done, addrb_judge, data_out);

    ram_app_16 ram_u4(
        .addra(addra),
        .clka(clk),
        .dina(dina),
        .wea(write_en),
        .addrb(addrb),
        .clkb(clk),
        .doutb(doutb)
    );

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            data_out <= 8176'd0;
        end
        else if(start_en) begin
            data_out <= data_in;
        end
        else if(write_en_update) begin
            data_out <= {data_out[15*511-1 : 0], data_out_t};
        end
        else
            data_out <= data_out;
    end

    assign write_en = state == START ? write_en_start : write_en_update;
    assign addra = state == START ? addra_start : addra_update;
    assign addrb = state == LOAD ? addrb_load : addrb_update;
    assign dina = state == START ? dina_start : dina_update;

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)         state <= START;
        else if(start_en)  state <= START;
        else if(en_3)   state <= LOAD;
        else if(update_en) state <= UPDATE;
        else               state <= state;
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            en_1 <= 1'b0;
            en_2 <= 1'b0;
            en_3 <= 1'b0;
        end
        else begin
            en_1 <= load_en;
            en_2 <= en_1;
            en_3 <= en_2;
        end
    end


endmodule
