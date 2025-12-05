module data_load(
		 	input clk,
			input rst_n,
			input[7:0] d_in,
			input load,
			output reg[8175:0] buffer,
			output ack
		);

reg[9:0] count_load;
always@(posedge clk or negedge rst_n)
	if(!rst_n)
		count_load<=10'b0;
	else if(ack)
		count_load<=0;
	else if(load)
		count_load<=count_load+1'b1;

assign ack=(count_load==10'd1022)?1:0;

always@(posedge clk or negedge rst_n)
	if(!rst_n)
		buffer<=0;
	else if(load)
		buffer<={d_in,buffer[8175:8]};


endmodule