module top_module( 
			input clk,
			input rst_n,
			input ready,
			input en_din,
			input [7:0] d_in,
			output [7:0] d_out,
			output en_out,
			output f_out,
			output flag_out
		  );

wire ack,finish_nms,load,load_vout,rst_flag,start_nms;
wire[8175:0] buffer,v_out;


control_decode x0(clk,rst_n,ready,en_din,ack,f_out,finish_nms,load,load_vout,en_out,rst_flag,start_nms);
data_load      x1(clk,rst_n,d_in,load,buffer,ack);
nms_decode     x2(clk,rst_n,start_nms,buffer,finish_nms,v_out);
data_out       x3(clk,rst_n,load_vout,en_out,rst_flag,finish_nms,v_out,f_out,d_out,flag_out);

endmodule
