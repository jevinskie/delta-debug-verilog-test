module VexRiscv (
);
  wire       [2:0]    switch_Misc_l210_1;
  InstructionCache IBusCachedPlugin_cache (
  );
  `ifndef SYNTHESIS
  always @(*) begin
  end
  `endif
  always @(*) begin
    casez(switch_Misc_l210_1)
    endcase
  end
endmodule
module DataCache (
);
  always @(posedge clk) begin
    if(_zz_2) begin
      if(io_mem_cmd_fire) begin
      end
    end
  end
endmodule
module InstructionCache (
  input               clk,
);
  wire       [21:0]   _zz_ways_0_tags_port;
  wire                lineLoader_write_tag_0_payload_data_valid;
  wire                lineLoader_write_tag_0_payload_data_error;
  wire       [19:0]   lineLoader_write_tag_0_payload_data_address;
  assign _zz_ways_0_tags_port = {lineLoader_write_tag_0_payload_data_address,{lineLoader_write_tag_0_payload_data_error,lineLoader_write_tag_0_payload_data_valid}};
  always @(posedge clk) begin
  end
endmodule
module sim (
);
wire    [1:0] builder_request;
reg           builder_grant = 1'd0;
reg           builder_simsoc_state = 1'd0;
always @(*) begin
    case (builder_simsoc_state)
        1'd1: begin
        end
    endcase
    case (builder_simsoc_state)
        1'd1: begin
        end
    endcase
    case (builder_grant)
        1'd0: begin
        end
    endcase
    case (builder_grant)
        1'd0: begin
            if ((~builder_request[0])) begin
                if (builder_request[1]) begin
                end
            end
        end
    endcase
end
VexRiscv VexRiscv(
);
endmodule
