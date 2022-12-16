module VexRiscv (
  input               clk,
);
  localparam BranchCtrlEnum_INC = 2'd0;
  wire       [1:0]    _zz_memory_to_writeBack_ENV_CTRL;
  wire       [1:0]    execute_BRANCH_CTRL;
  wire                when_DBusCachedPlugin_l492;
  wire       [1:0]    _zz_decode_ENV_CTRL_2;
  wire                when_HazardSimplePlugin_l57;
  wire                when_HazardSimplePlugin_l58;
  wire       [2:0]    switch_Misc_l210_1;
  wire       [1:0]    switch_MulPlugin_l148;
  `ifndef SYNTHESIS
  `endif
  always @(posedge clk) begin
  end
  InstructionCache IBusCachedPlugin_cache (
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(_zz_memory_to_writeBack_ENV_CTRL)
    endcase
  end
  always @(*) begin
    case(_zz_decode_ENV_CTRL_2)
    endcase
  end
  `endif
  always @(*) begin
    if(when_DBusCachedPlugin_l492) begin
      case(switch_MulPlugin_l148)
      endcase
    end
    if(when_HazardSimplePlugin_l57) begin
      if(when_HazardSimplePlugin_l58) begin
      end
    end
    casez(switch_Misc_l210_1)
      3'b000 : begin
      end
    endcase
    case(execute_BRANCH_CTRL)
      BranchCtrlEnum_INC : begin
      end
    endcase
  end
endmodule
module DataCache (
);
  always @(posedge clk) begin
    if(_zz_2) begin
      if(io_mem_cmd_fire) begin
        if(when_DataCache_l856) begin
        end
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
