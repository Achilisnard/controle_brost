--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Thu Feb 24 00:27:12 2022
--Host        : PC-VINCENT running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adv_7511_imp_1KAVXTE is
  port (
    In0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    btn : in STD_LOGIC;
    clk : in STD_LOGIC;
    sioc : out STD_LOGIC;
    siod : inout STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end adv_7511_imp_1KAVXTE;

architecture STRUCTURE of adv_7511_imp_1KAVXTE is
  component design_1_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_xlconcat_0_0;
  component design_1_i2c_sender_adv7511_0_0 is
  port (
    clk : in STD_LOGIC;
    resend : in STD_LOGIC;
    sioc : out STD_LOGIC;
    siod : inout STD_LOGIC
  );
  end component design_1_i2c_sender_adv7511_0_0;
  component design_1_xlconstant_5_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_xlconstant_5_0;
  signal Net : STD_LOGIC;
  signal btn_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal i2c_sender_adv7511_0_sioc : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_5_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  btn_1 <= btn;
  clk_1 <= clk;
  sioc <= i2c_sender_adv7511_0_sioc;
  v_axi4s_vid_out_0_vid_data(7 downto 0) <= In0(7 downto 0);
  vid_data(15 downto 0) <= xlconcat_0_dout(15 downto 0);
i2c_sender_adv7511_0: component design_1_i2c_sender_adv7511_0_0
     port map (
      clk => clk_1,
      resend => btn_1,
      sioc => i2c_sender_adv7511_0_sioc,
      siod => siod
    );
xlconcat_0: component design_1_xlconcat_0_0
     port map (
      In0(7 downto 0) => v_axi4s_vid_out_0_vid_data(7 downto 0),
      In1(7 downto 0) => xlconstant_5_dout(7 downto 0),
      dout(15 downto 0) => xlconcat_0_dout(15 downto 0)
    );
xlconstant_5: component design_1_xlconstant_5_0
     port map (
      dout(7 downto 0) => xlconstant_5_dout(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ov7670_imp_1MMGF2C is
  port (
    OV7670_D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    OV7670_HREF : in STD_LOGIC;
    OV7670_PCLK : in STD_LOGIC;
    OV7670_PWDN : out STD_LOGIC;
    OV7670_RESET : out STD_LOGIC;
    OV7670_SIOC : out STD_LOGIC;
    OV7670_SIOD : inout STD_LOGIC;
    OV7670_VSYNC : in STD_LOGIC;
    OV7670_XCLK : out STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    btn : in STD_LOGIC;
    clk : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    we : out STD_LOGIC
  );
end ov7670_imp_1MMGF2C;

architecture STRUCTURE of ov7670_imp_1MMGF2C is
  component design_1_ov7670_controller_0_0 is
  port (
    clk : in STD_LOGIC;
    resend : in STD_LOGIC;
    config_finished : out STD_LOGIC;
    sioc : out STD_LOGIC;
    siod : inout STD_LOGIC;
    reset : out STD_LOGIC;
    pwdn : out STD_LOGIC;
    xclk : out STD_LOGIC
  );
  end component design_1_ov7670_controller_0_0;
  component design_1_debounce_0_0 is
  port (
    clk : in STD_LOGIC;
    i : in STD_LOGIC;
    o : out STD_LOGIC
  );
  end component design_1_debounce_0_0;
  component design_1_ov7670_capture_0_0 is
  port (
    pclk : in STD_LOGIC;
    vsync : in STD_LOGIC;
    href : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    we : out STD_LOGIC
  );
  end component design_1_ov7670_capture_0_0;
  signal Net : STD_LOGIC;
  signal clk_wiz_0_clk_50 : STD_LOGIC;
  signal debounce_0_o : STD_LOGIC;
  signal din_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal href_0_1 : STD_LOGIC;
  signal i_0_1 : STD_LOGIC;
  signal ov7670_capture_0_addr : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal ov7670_capture_0_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ov7670_capture_0_we : STD_LOGIC;
  signal ov7670_controller_0_pwdn : STD_LOGIC;
  signal ov7670_controller_0_reset : STD_LOGIC;
  signal ov7670_controller_0_sioc : STD_LOGIC;
  signal ov7670_controller_0_xclk : STD_LOGIC;
  signal pclk_0_1 : STD_LOGIC;
  signal vsync_0_1 : STD_LOGIC;
  signal NLW_ov7670_controller_0_config_finished_UNCONNECTED : STD_LOGIC;
begin
  OV7670_PWDN <= ov7670_controller_0_pwdn;
  OV7670_RESET <= ov7670_controller_0_reset;
  OV7670_SIOC <= ov7670_controller_0_sioc;
  OV7670_XCLK <= ov7670_controller_0_xclk;
  addr(18 downto 0) <= ov7670_capture_0_addr(18 downto 0);
  clk_wiz_0_clk_50 <= clk;
  din_0_1(7 downto 0) <= OV7670_D(7 downto 0);
  dout(7 downto 0) <= ov7670_capture_0_dout(7 downto 0);
  href_0_1 <= OV7670_HREF;
  i_0_1 <= btn;
  pclk_0_1 <= OV7670_PCLK;
  vsync_0_1 <= OV7670_VSYNC;
  we <= ov7670_capture_0_we;
debounce_0: component design_1_debounce_0_0
     port map (
      clk => clk_wiz_0_clk_50,
      i => i_0_1,
      o => debounce_0_o
    );
ov7670_capture_0: component design_1_ov7670_capture_0_0
     port map (
      addr(18 downto 0) => ov7670_capture_0_addr(18 downto 0),
      din(7 downto 0) => din_0_1(7 downto 0),
      dout(7 downto 0) => ov7670_capture_0_dout(7 downto 0),
      href => href_0_1,
      pclk => pclk_0_1,
      vsync => vsync_0_1,
      we => ov7670_capture_0_we
    );
ov7670_controller_0: component design_1_ov7670_controller_0_0
     port map (
      clk => clk_wiz_0_clk_50,
      config_finished => NLW_ov7670_controller_0_config_finished_UNCONNECTED,
      pwdn => ov7670_controller_0_pwdn,
      resend => debounce_0_o,
      reset => ov7670_controller_0_reset,
      sioc => ov7670_controller_0_sioc,
      siod => OV7670_SIOD,
      xclk => ov7670_controller_0_xclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity video_ctrl_imp_JPOEXX is
  port (
    btn : in STD_LOGIC;
    clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    sioc : out STD_LOGIC;
    siod : inout STD_LOGIC;
    vga_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    video_in_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    video_in_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_tready : out STD_LOGIC;
    video_in_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_in_tvalid : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
end video_ctrl_imp_JPOEXX;

architecture STRUCTURE of video_ctrl_imp_JPOEXX is
  component design_1_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_xlslice_0_0;
  component design_1_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_1_0;
  component design_1_v_tc_0_0 is
  port (
    clk : in STD_LOGIC;
    clken : in STD_LOGIC;
    gen_clken : in STD_LOGIC;
    hsync_out : out STD_LOGIC;
    hblank_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    vblank_out : out STD_LOGIC;
    active_video_out : out STD_LOGIC;
    resetn : in STD_LOGIC;
    fsync_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_v_tc_0_0;
  component design_1_v_axi4s_vid_out_0_0 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    fid : in STD_LOGIC;
    vid_io_out_clk : in STD_LOGIC;
    vid_io_out_ce : in STD_LOGIC;
    vid_io_out_reset : in STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_hsync : out STD_LOGIC;
    vid_vblank : out STD_LOGIC;
    vid_hblank : out STD_LOGIC;
    vid_field_id : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vtg_vsync : in STD_LOGIC;
    vtg_hsync : in STD_LOGIC;
    vtg_vblank : in STD_LOGIC;
    vtg_hblank : in STD_LOGIC;
    vtg_active_video : in STD_LOGIC;
    vtg_field_id : in STD_LOGIC;
    vtg_ce : out STD_LOGIC;
    locked : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    fifo_read_level : out STD_LOGIC_VECTOR ( 10 downto 0 );
    status : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_v_axi4s_vid_out_0_0;
  signal Conn1_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Conn1_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_TREADY : STD_LOGIC;
  signal Conn1_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_TVALID : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal btn_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal clk_wiz_0_clk_25 : STD_LOGIC;
  signal i2c_sender_adv7511_0_sioc : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_active_video : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal v_axi4s_vid_out_0_vid_hsync : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_vsync : STD_LOGIC;
  signal v_axi4s_vid_out_0_vtg_ce : STD_LOGIC;
  signal v_tc_0_vtiming_out_ACTIVE_VIDEO : STD_LOGIC;
  signal v_tc_0_vtiming_out_HBLANK : STD_LOGIC;
  signal v_tc_0_vtiming_out_HSYNC : STD_LOGIC;
  signal v_tc_0_vtiming_out_VBLANK : STD_LOGIC;
  signal v_tc_0_vtiming_out_VSYNC : STD_LOGIC;
  signal wr_clk_1 : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_1_dout1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_v_axi4s_vid_out_0_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_field_id_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_hblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_vblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_fifo_read_level_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_v_axi4s_vid_out_0_status_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_v_tc_0_fsync_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Conn1_TDATA(7 downto 0) <= video_in_tdata(7 downto 0);
  Conn1_TLAST(0) <= video_in_tlast(0);
  Conn1_TUSER(0) <= video_in_tuser(0);
  Conn1_TVALID <= video_in_tvalid;
  btn_1 <= btn;
  clk_1 <= clk;
  clk_wiz_0_clk_25 <= rd_clk;
  sioc <= i2c_sender_adv7511_0_sioc;
  vga_blue(3 downto 0) <= xlslice_1_Dout(3 downto 0);
  vga_hsync <= v_axi4s_vid_out_0_vid_hsync;
  vga_vsync <= v_axi4s_vid_out_0_vid_vsync;
  vid_active_video <= v_axi4s_vid_out_0_vid_active_video;
  vid_data(15 downto 0) <= xlconcat_0_dout(15 downto 0);
  video_in_tready <= Conn1_TREADY;
  wr_clk_1 <= wr_clk;
adv_7511: entity work.adv_7511_imp_1KAVXTE
     port map (
      In0(7 downto 0) => v_axi4s_vid_out_0_vid_data(7 downto 0),
      btn => btn_1,
      clk => clk_1,
      sioc => i2c_sender_adv7511_0_sioc,
      siod => siod,
      vid_data(15 downto 0) => xlconcat_0_dout(15 downto 0)
    );
v_axi4s_vid_out_0: component design_1_v_axi4s_vid_out_0_0
     port map (
      aclk => wr_clk_1,
      aclken => '1',
      aresetn => xlconstant_1_dout1(0),
      fid => '0',
      fifo_read_level(10 downto 0) => NLW_v_axi4s_vid_out_0_fifo_read_level_UNCONNECTED(10 downto 0),
      locked => NLW_v_axi4s_vid_out_0_locked_UNCONNECTED,
      overflow => NLW_v_axi4s_vid_out_0_overflow_UNCONNECTED,
      s_axis_video_tdata(7 downto 0) => Conn1_TDATA(7 downto 0),
      s_axis_video_tlast => Conn1_TLAST(0),
      s_axis_video_tready => Conn1_TREADY,
      s_axis_video_tuser => Conn1_TUSER(0),
      s_axis_video_tvalid => Conn1_TVALID,
      status(31 downto 0) => NLW_v_axi4s_vid_out_0_status_UNCONNECTED(31 downto 0),
      underflow => NLW_v_axi4s_vid_out_0_underflow_UNCONNECTED,
      vid_active_video => v_axi4s_vid_out_0_vid_active_video,
      vid_data(7 downto 0) => v_axi4s_vid_out_0_vid_data(7 downto 0),
      vid_field_id => NLW_v_axi4s_vid_out_0_vid_field_id_UNCONNECTED,
      vid_hblank => NLW_v_axi4s_vid_out_0_vid_hblank_UNCONNECTED,
      vid_hsync => v_axi4s_vid_out_0_vid_hsync,
      vid_io_out_ce => '1',
      vid_io_out_clk => clk_wiz_0_clk_25,
      vid_io_out_reset => '0',
      vid_vblank => NLW_v_axi4s_vid_out_0_vid_vblank_UNCONNECTED,
      vid_vsync => v_axi4s_vid_out_0_vid_vsync,
      vtg_active_video => v_tc_0_vtiming_out_ACTIVE_VIDEO,
      vtg_ce => v_axi4s_vid_out_0_vtg_ce,
      vtg_field_id => '0',
      vtg_hblank => v_tc_0_vtiming_out_HBLANK,
      vtg_hsync => v_tc_0_vtiming_out_HSYNC,
      vtg_vblank => v_tc_0_vtiming_out_VBLANK,
      vtg_vsync => v_tc_0_vtiming_out_VSYNC
    );
v_tc_0: component design_1_v_tc_0_0
     port map (
      active_video_out => v_tc_0_vtiming_out_ACTIVE_VIDEO,
      clk => clk_wiz_0_clk_25,
      clken => '1',
      fsync_out(0) => NLW_v_tc_0_fsync_out_UNCONNECTED(0),
      gen_clken => v_axi4s_vid_out_0_vtg_ce,
      hblank_out => v_tc_0_vtiming_out_HBLANK,
      hsync_out => v_tc_0_vtiming_out_HSYNC,
      resetn => xlconstant_1_dout1(0),
      vblank_out => v_tc_0_vtiming_out_VBLANK,
      vsync_out => v_tc_0_vtiming_out_VSYNC
    );
xlconstant_1: component design_1_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout1(0)
    );
xlslice_1: component design_1_xlslice_0_0
     port map (
      Din(7 downto 0) => v_axi4s_vid_out_0_vid_data(7 downto 0),
      Dout(3 downto 0) => xlslice_1_Dout(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    OV7670_D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    OV7670_HREF : in STD_LOGIC;
    OV7670_PCLK : in STD_LOGIC;
    OV7670_PWDN : out STD_LOGIC;
    OV7670_RESET : out STD_LOGIC;
    OV7670_SIOC : out STD_LOGIC;
    OV7670_SIOD : inout STD_LOGIC;
    OV7670_VSYNC : in STD_LOGIC;
    OV7670_XCLK : out STD_LOGIC;
    btn : in STD_LOGIC;
    btnl : in STD_LOGIC;
    clk100_zed : in STD_LOGIC;
    sioc : out STD_LOGIC;
    siod : inout STD_LOGIC;
    vga_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hsync : out STD_LOGIC;
    vga_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_vsync : out STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_clk : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    vid_hsync : out STD_LOGIC;
    vid_vsync : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=19,numReposBlks=16,numNonXlnxBlks=0,numHierBlks=3,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_100 : out STD_LOGIC;
    clk_50 : out STD_LOGIC;
    clk_25 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_0;
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_0_0;
  component design_1_xlconstant_2_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_2_0;
  component design_1_im_load_0_0 is
  port (
    mem_V_ce0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    video_TVALID : out STD_LOGIC;
    video_TREADY : in STD_LOGIC;
    video_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    video_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    mem_V_address0 : out STD_LOGIC_VECTOR ( 18 downto 0 );
    mem_V_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_im_load_0_0;
  component design_1_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 18 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 18 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_blk_mem_gen_0_0;
  component design_1_xlconstant_1_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_1_1;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal blk_mem_gen_0_doutb : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk_in1_0_1 : STD_LOGIC;
  signal clk_wiz_0_clk_100 : STD_LOGIC;
  signal clk_wiz_0_clk_25 : STD_LOGIC;
  signal clk_wiz_0_clk_50 : STD_LOGIC;
  signal din_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal href_0_1 : STD_LOGIC;
  signal i_0_1 : STD_LOGIC;
  signal im_load_0_mem_V_address0 : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal im_load_0_mem_V_ce0 : STD_LOGIC;
  signal ov7670_capture_0_addr : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal ov7670_capture_0_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ov7670_capture_0_we : STD_LOGIC;
  signal ov7670_controller_0_pwdn : STD_LOGIC;
  signal ov7670_controller_0_reset : STD_LOGIC;
  signal ov7670_controller_0_sioc : STD_LOGIC;
  signal ov7670_controller_0_xclk : STD_LOGIC;
  signal pclk_0_1 : STD_LOGIC;
  signal v_tc_0_hsync_out : STD_LOGIC;
  signal v_tc_0_vsync_out : STD_LOGIC;
  signal video_ctrl_sioc : STD_LOGIC;
  signal video_ctrl_vid_active_video : STD_LOGIC;
  signal video_ctrl_vid_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal video_in_1_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal video_in_1_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_in_1_TREADY : STD_LOGIC;
  signal video_in_1_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal video_in_1_TVALID : STD_LOGIC;
  signal vsync_0_1 : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_2_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_clk_wiz_0_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_im_load_0_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_im_load_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_im_load_0_ap_ready_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of OV7670_RESET : signal is "xilinx.com:signal:reset:1.0 RST.OV7670_RESET RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of OV7670_RESET : signal is "XIL_INTERFACENAME RST.OV7670_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of clk100_zed : signal is "xilinx.com:signal:clock:1.0 CLK.CLK100_ZED CLK";
  attribute X_INTERFACE_PARAMETER of clk100_zed : signal is "XIL_INTERFACENAME CLK.CLK100_ZED, CLK_DOMAIN design_1_clk100_zed, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
begin
  OV7670_PWDN <= ov7670_controller_0_pwdn;
  OV7670_RESET <= ov7670_controller_0_reset;
  OV7670_SIOC <= ov7670_controller_0_sioc;
  OV7670_XCLK <= ov7670_controller_0_xclk;
  clk_in1_0_1 <= clk100_zed;
  din_0_1(7 downto 0) <= OV7670_D(7 downto 0);
  href_0_1 <= OV7670_HREF;
  i_0_1 <= btn;
  pclk_0_1 <= OV7670_PCLK;
  sioc <= video_ctrl_sioc;
  vga_blue(3 downto 0) <= xlslice_1_Dout(3 downto 0);
  vga_green(3 downto 0) <= xlslice_1_Dout(3 downto 0);
  vga_hsync <= v_tc_0_hsync_out;
  vga_red(3 downto 0) <= xlslice_1_Dout(3 downto 0);
  vga_vsync <= v_tc_0_vsync_out;
  vid_active_video <= video_ctrl_vid_active_video;
  vid_clk <= clk_wiz_0_clk_25;
  vid_data(15 downto 0) <= video_ctrl_vid_data(15 downto 0);
  vid_hsync <= v_tc_0_hsync_out;
  vid_vsync <= v_tc_0_vsync_out;
  vsync_0_1 <= OV7670_VSYNC;
blk_mem_gen_0: component design_1_blk_mem_gen_0_0
     port map (
      addra(18 downto 0) => ov7670_capture_0_addr(18 downto 0),
      addrb(18 downto 0) => im_load_0_mem_V_address0(18 downto 0),
      clka => pclk_0_1,
      clkb => clk_wiz_0_clk_100,
      dina(7 downto 0) => ov7670_capture_0_dout(7 downto 0),
      doutb(7 downto 0) => blk_mem_gen_0_doutb(7 downto 0),
      ena => xlconstant_1_dout(0),
      enb => im_load_0_mem_V_ce0,
      wea(0) => ov7670_capture_0_we
    );
clk_wiz_0: component design_1_clk_wiz_0_0
     port map (
      clk_100 => clk_wiz_0_clk_100,
      clk_25 => clk_wiz_0_clk_25,
      clk_50 => clk_wiz_0_clk_50,
      clk_in1 => clk_in1_0_1,
      locked => NLW_clk_wiz_0_locked_UNCONNECTED,
      reset => xlconstant_0_dout(0)
    );
im_load_0: component design_1_im_load_0_0
     port map (
      ap_clk => clk_wiz_0_clk_100,
      ap_done => NLW_im_load_0_ap_done_UNCONNECTED,
      ap_idle => NLW_im_load_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_im_load_0_ap_ready_UNCONNECTED,
      ap_rst_n => xlconstant_2_dout(0),
      ap_start => xlconstant_2_dout(0),
      mem_V_address0(18 downto 0) => im_load_0_mem_V_address0(18 downto 0),
      mem_V_ce0 => im_load_0_mem_V_ce0,
      mem_V_q0(7 downto 0) => blk_mem_gen_0_doutb(7 downto 0),
      video_TDATA(7 downto 0) => video_in_1_TDATA(7 downto 0),
      video_TLAST(0) => video_in_1_TLAST(0),
      video_TREADY => video_in_1_TREADY,
      video_TUSER(0) => video_in_1_TUSER(0),
      video_TVALID => video_in_1_TVALID
    );
ov7670: entity work.ov7670_imp_1MMGF2C
     port map (
      OV7670_D(7 downto 0) => din_0_1(7 downto 0),
      OV7670_HREF => href_0_1,
      OV7670_PCLK => pclk_0_1,
      OV7670_PWDN => ov7670_controller_0_pwdn,
      OV7670_RESET => ov7670_controller_0_reset,
      OV7670_SIOC => ov7670_controller_0_sioc,
      OV7670_SIOD => OV7670_SIOD,
      OV7670_VSYNC => vsync_0_1,
      OV7670_XCLK => ov7670_controller_0_xclk,
      addr(18 downto 0) => ov7670_capture_0_addr(18 downto 0),
      btn => i_0_1,
      clk => clk_wiz_0_clk_50,
      dout(7 downto 0) => ov7670_capture_0_dout(7 downto 0),
      we => ov7670_capture_0_we
    );
video_ctrl: entity work.video_ctrl_imp_JPOEXX
     port map (
      btn => i_0_1,
      clk => clk_wiz_0_clk_50,
      rd_clk => clk_wiz_0_clk_25,
      sioc => video_ctrl_sioc,
      siod => siod,
      vga_blue(3 downto 0) => xlslice_1_Dout(3 downto 0),
      vga_hsync => v_tc_0_hsync_out,
      vga_vsync => v_tc_0_vsync_out,
      vid_active_video => video_ctrl_vid_active_video,
      vid_data(15 downto 0) => video_ctrl_vid_data(15 downto 0),
      video_in_tdata(7 downto 0) => video_in_1_TDATA(7 downto 0),
      video_in_tlast(0) => video_in_1_TLAST(0),
      video_in_tready => video_in_1_TREADY,
      video_in_tuser(0) => video_in_1_TUSER(0),
      video_in_tvalid => video_in_1_TVALID,
      wr_clk => clk_wiz_0_clk_100
    );
xlconstant_0: component design_1_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component design_1_xlconstant_1_1
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
xlconstant_2: component design_1_xlconstant_2_0
     port map (
      dout(0) => xlconstant_2_dout(0)
    );
end STRUCTURE;
