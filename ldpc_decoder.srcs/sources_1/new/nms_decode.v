module nms_decode(
    input clk,
    input rst_n,
    input enable,
    input [8175:0]buffer,
    output nms_finish,
    output [8175:0] buffer_3
    // output update_vout,
    // output [510:0]buffer_511
);
    wire [73*8-1:0] app;
    wire [73*8-1:0] update_app;
    wire [32*9-1:0] h;
    wire start_done, load_done, pu_done, update_done, judge_done, judge_out, start_en,load_en, pu_en, update_en, judge_en, reset_r, write_en_update;
    wire [510:0] buffer_511;
    wire [3:0] cnt14;
    wire [4:0] cnt30;
    // assign update_vout = write_en_update;

    nms_control     z0(clk, rst_n, enable, start_done, load_done, pu_done, update_done, judge_done, judge_out,
                        start_en, load_en, pu_en, update_en, judge_en, cnt14, cnt30, reset_r, nms_finish);
    RAM_288_1       z1(.addra(cnt14), .clka(clk), .douta(h));
    ram_app         z2(clk, rst_n, start_en, load_en, update_en, h, buffer, update_app,
                        start_done, load_done, update_done, buffer_3, app, buffer_511, write_en_update);
                        //  start_done, load_done, update_done, app, buffer_511, write_en_update);
    CNU_unit        z3(clk, rst_n, reset_r, pu_en, app, cnt14, pu_done, update_app);
    judge           z6(clk, rst_n, judge_en, cnt14, buffer_511, write_en_update, h, judge_done, judge_out);


endmodule