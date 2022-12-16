module VexRiscv (
);
  InstructionCache IBusCachedPlugin_cache (
  );
  `ifndef SYNTHESIS
  `endif
  always @(*) begin
  end
endmodule
module DataCache (
);
  always @(posedge clk) begin
    if(_zz_2) begin
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
always @(*) begin
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
