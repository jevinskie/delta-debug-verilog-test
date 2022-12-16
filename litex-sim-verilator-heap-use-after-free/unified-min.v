module VexRiscv (
  input               clk,
);
  localparam BranchCtrlEnum_INC = 2'd0;
  wire                _zz_decode_RegFilePlugin_rs1Data;
  wire                _zz_decode_RegFilePlugin_rs2Data;
  wire       [1:0]    _zz_memory_to_writeBack_ENV_CTRL;
  wire       [1:0]    execute_BRANCH_CTRL;
  wire       [1:0]    execute_ALU_CTRL;
  reg                 _zz_1;
  wire                when_IBusCachedPlugin_l244;
  wire                when_IBusCachedPlugin_l250;
  wire                when_DBusCachedPlugin_l492;
  wire       [1:0]    _zz_decode_ENV_CTRL_2;
  wire                when_HazardSimplePlugin_l48;
  wire                when_HazardSimplePlugin_l57;
  wire                when_HazardSimplePlugin_l58;
  wire                when_HazardSimplePlugin_l48_1;
  wire                when_HazardSimplePlugin_l58_1;
  wire       [2:0]    switch_Misc_l210_1;
  wire       [1:0]    switch_MulPlugin_l148;
  wire                when_Pipeline_l124_55;
  `ifndef SYNTHESIS
  `endif
  always @(posedge clk) begin
    if(_zz_decode_RegFilePlugin_rs1Data) begin
    end
  end
  always @(posedge clk) begin
    if(_zz_decode_RegFilePlugin_rs2Data) begin
    end
  end
  always @(posedge clk) begin
    if(_zz_1) begin
    end
  end
  InstructionCache IBusCachedPlugin_cache (
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(_zz_memory_to_writeBack_ENV_CTRL)
    endcase
    case(execute_ALU_CTRL)
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
        2'b00 : begin
        end
        default : begin
        end
      endcase
    end
  end
  always @(*) begin
    if(when_IBusCachedPlugin_l250) begin
    end
  end
  always @(*) begin
    if(when_IBusCachedPlugin_l244) begin
    end
    if(when_HazardSimplePlugin_l57) begin
      if(when_HazardSimplePlugin_l58) begin
        if(when_HazardSimplePlugin_l48) begin
        end
      end
      if(when_HazardSimplePlugin_l58_1) begin
        if(when_HazardSimplePlugin_l48_1) begin
        end
      end
    end
  end
  always @(*) begin
    casez(switch_Misc_l210_1)
      3'b000 : begin
      end
      3'b1?1 : begin
      end
    endcase
  end
  always @(*) begin
    case(execute_BRANCH_CTRL)
      BranchCtrlEnum_INC : begin
      end
      default : begin
      end
    endcase
    if(when_Pipeline_l124_55) begin
    end
  end
endmodule
module DataCache (
);
  always @(posedge clk) begin
    if(_zz_2) begin
      if(io_mem_cmd_fire) begin
        if(when_DataCache_l856) begin
          if(io_cpu_flush_payload_singleLine) begin
          end
        end
      end
      `ifndef SYNTHESIS
        `ifdef FORMAL
        `endif
      `endif
      if(stageB_loaderValid) begin
      end
    end
  end
endmodule
module InstructionCache (
  input               io_cpu_fill_valid,
  input               io_mem_rsp_payload_error,
  input               clk,
  input               reset
);
  wire       [21:0]   _zz_ways_0_tags_port;
  reg                 _zz_1;
  reg                 lineLoader_fire;
  wire                lineLoader_write_tag_0_valid;
  wire                lineLoader_write_tag_0_payload_data_valid;
  wire                lineLoader_write_tag_0_payload_data_error;
  wire       [19:0]   lineLoader_write_tag_0_payload_data_address;
  wire                lineLoader_write_data_0_valid;
  wire                when_InstructionCache_l459_1;
  assign _zz_ways_0_tags_port = {lineLoader_write_tag_0_payload_data_address,{lineLoader_write_tag_0_payload_data_error,lineLoader_write_tag_0_payload_data_valid}};
  always @(posedge clk) begin
    if(_zz_1) begin
    end
    if(lineLoader_write_data_0_valid) begin
    end
  end
  always @(*) begin
    if(lineLoader_write_tag_0_valid) begin
    end
  end
  always @(posedge clk) begin
    if(reset) begin
      if(lineLoader_fire) begin
        if(io_mem_rsp_payload_error) begin
        end
      end
    end
  end
  always @(posedge clk) begin
    if(io_cpu_fill_valid) begin
    end
    if(when_InstructionCache_l459_1) begin
    end
  end
endmodule
module sim (
);
wire          sys_clk_1;
wire          sys_rst;
reg           main_uart_tx_fifo_replace = 1'd0;
wire          builder_simsoc_wishbone_cyc;
wire          builder_simsoc_wishbone_stb;
wire    [1:0] builder_request;
reg           builder_grant = 1'd0;
wire          builder_wait;
wire   [13:0] builder_csr_bankarray_interface2_bank_bus_adr;
wire          builder_csr_bankarray_csrbank2_sel;
reg           builder_simsoc_state = 1'd0;
always @(*) begin
    if (main_uart_tx_fifo_replace) begin
    end
end
always @(*) begin
    case (builder_simsoc_state)
        1'd1: begin
            if ((builder_simsoc_wishbone_cyc & builder_simsoc_wishbone_stb)) begin
            end
        end
    endcase
end
always @(*) begin
    case (builder_simsoc_state)
        1'd1: begin
        end
    endcase
end
always @(*) begin
    case (builder_grant)
        1'd0: begin
        end
    endcase
    case (builder_grant)
        1'd0: begin
        end
        1'd0: begin
        end
    endcase
end
always @(*) begin
    case (builder_grant)
        1'd0: begin
            if ((~builder_request[0])) begin
                if (builder_request[1]) begin
                end
                if (builder_request[0]) begin
                end
            end
        end
    endcase
    if (builder_wait) begin
    end
    if (builder_csr_bankarray_csrbank2_sel) begin
        case (builder_csr_bankarray_interface2_bank_bus_adr[8:0])
            1'd0: begin
            end
        endcase
    end
    if (sys_rst) begin
    end
end
always @(posedge sys_clk_1) begin
end
always @(posedge sys_clk_1) begin
end
VexRiscv VexRiscv(
);
endmodule
