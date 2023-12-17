
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# debounce, ov7670_capture, ov7670_controller, mux_rgb, i2c_sender_adv7511

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-1
   set_property BOARD_PART em.avnet.com:zed:part0:1.4 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: adv_7511
proc create_hier_cell_adv_7511 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_adv_7511() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 7 -to 0 In0
  create_bd_pin -dir I btn
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir O sioc
  create_bd_pin -dir IO siod
  create_bd_pin -dir O -from 15 -to 0 vid_data

  # Create instance: i2c_sender_adv7511_0, and set properties
  set block_name i2c_sender_adv7511
  set block_cell_name i2c_sender_adv7511_0
  if { [catch {set i2c_sender_adv7511_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $i2c_sender_adv7511_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {8} \
   CONFIG.IN1_WIDTH {8} \
 ] $xlconcat_0

  # Create instance: xlconstant_5, and set properties
  set xlconstant_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_5 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {127} \
   CONFIG.CONST_WIDTH {8} \
 ] $xlconstant_5

  # Create port connections
  connect_bd_net -net Net [get_bd_pins siod] [get_bd_pins i2c_sender_adv7511_0/siod]
  connect_bd_net -net btn_1 [get_bd_pins btn] [get_bd_pins i2c_sender_adv7511_0/resend]
  connect_bd_net -net clk_1 [get_bd_pins clk] [get_bd_pins i2c_sender_adv7511_0/clk]
  connect_bd_net -net i2c_sender_adv7511_0_sioc [get_bd_pins sioc] [get_bd_pins i2c_sender_adv7511_0/sioc]
  connect_bd_net -net v_axi4s_vid_out_0_vid_data [get_bd_pins In0] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins vid_data] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_5_dout [get_bd_pins xlconcat_0/In1] [get_bd_pins xlconstant_5/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: video_ctrl
proc create_hier_cell_video_ctrl { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_video_ctrl() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 video_in


  # Create pins
  create_bd_pin -dir I btn
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir I -type clk rd_clk
  create_bd_pin -dir O sioc
  create_bd_pin -dir IO siod
  create_bd_pin -dir O vga_hsync
  create_bd_pin -dir O -from 3 -to 0 vga_red
  create_bd_pin -dir O vga_vsync
  create_bd_pin -dir O vid_active_video
  create_bd_pin -dir O -from 15 -to 0 vid_data
  create_bd_pin -dir I -type clk wr_clk

  # Create instance: adv_7511
  create_hier_cell_adv_7511 $hier_obj adv_7511

  # Create instance: mux_rgb_0, and set properties
  set block_name mux_rgb
  set block_cell_name mux_rgb_0
  if { [catch {set mux_rgb_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mux_rgb_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: v_axi4s_vid_out_0, and set properties
  set v_axi4s_vid_out_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0 ]
  set_property -dict [ list \
   CONFIG.C_HAS_ASYNC_CLK {1} \
   CONFIG.C_S_AXIS_VIDEO_FORMAT {12} \
 ] $v_axi4s_vid_out_0

  # Create instance: v_tc_0, and set properties
  set v_tc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.2 v_tc_0 ]
  set_property -dict [ list \
   CONFIG.FSYNC_VSTART0 {524} \
   CONFIG.GEN_F0_VFRAME_SIZE {525} \
   CONFIG.GEN_F0_VSYNC_HSTART {695} \
   CONFIG.GEN_F0_VSYNC_VEND {491} \
   CONFIG.GEN_F0_VSYNC_VSTART {489} \
   CONFIG.GEN_F1_VFRAME_SIZE {525} \
   CONFIG.GEN_F1_VSYNC_VEND {491} \
   CONFIG.GEN_F1_VSYNC_VSTART {489} \
   CONFIG.GEN_HACTIVE_SIZE {640} \
   CONFIG.GEN_HFRAME_SIZE {800} \
   CONFIG.GEN_HSYNC_END {752} \
   CONFIG.GEN_HSYNC_START {656} \
   CONFIG.GEN_VACTIVE_SIZE {480} \
   CONFIG.HAS_AXI4_LITE {false} \
   CONFIG.VIDEO_MODE {480p} \
   CONFIG.enable_detection {false} \
   CONFIG.horizontal_blank_generation {true} \
   CONFIG.vertical_blank_generation {true} \
 ] $v_tc_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins video_in] [get_bd_intf_pins v_axi4s_vid_out_0/video_in]
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in] [get_bd_intf_pins v_tc_0/vtiming_out]

  # Create port connections
  connect_bd_net -net Net [get_bd_pins siod] [get_bd_pins adv_7511/siod]
  connect_bd_net -net btn_1 [get_bd_pins btn] [get_bd_pins adv_7511/btn]
  connect_bd_net -net clk_1 [get_bd_pins clk] [get_bd_pins adv_7511/clk]
  connect_bd_net -net clk_wiz_0_clk_25 [get_bd_pins rd_clk] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk] [get_bd_pins v_tc_0/clk]
  connect_bd_net -net i2c_sender_adv7511_0_sioc [get_bd_pins sioc] [get_bd_pins adv_7511/sioc]
  connect_bd_net -net mux_rgb_0_gray_out [get_bd_pins vga_red] [get_bd_pins mux_rgb_0/gray_out]
  connect_bd_net -net v_axi4s_vid_out_0_vid_active_video [get_bd_pins vid_active_video] [get_bd_pins mux_rgb_0/mux_sel] [get_bd_pins v_axi4s_vid_out_0/vid_active_video]
  connect_bd_net -net v_axi4s_vid_out_0_vid_data [get_bd_pins adv_7511/In0] [get_bd_pins mux_rgb_0/gray_in] [get_bd_pins v_axi4s_vid_out_0/vid_data]
  connect_bd_net -net v_axi4s_vid_out_0_vid_hsync [get_bd_pins vga_hsync] [get_bd_pins v_axi4s_vid_out_0/vid_hsync]
  connect_bd_net -net v_axi4s_vid_out_0_vid_vsync [get_bd_pins vga_vsync] [get_bd_pins v_axi4s_vid_out_0/vid_vsync]
  connect_bd_net -net v_axi4s_vid_out_0_vtg_ce [get_bd_pins v_axi4s_vid_out_0/vtg_ce] [get_bd_pins v_tc_0/gen_clken]
  connect_bd_net -net wr_clk_1 [get_bd_pins wr_clk] [get_bd_pins v_axi4s_vid_out_0/aclk]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins vid_data] [get_bd_pins adv_7511/vid_data]
  connect_bd_net -net xlconstant_1_dout1 [get_bd_pins v_axi4s_vid_out_0/aresetn] [get_bd_pins v_tc_0/resetn] [get_bd_pins xlconstant_1/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: ov7670
proc create_hier_cell_ov7670 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_ov7670() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 7 -to 0 OV7670_D
  create_bd_pin -dir I OV7670_HREF
  create_bd_pin -dir I OV7670_PCLK
  create_bd_pin -dir O OV7670_PWDN
  create_bd_pin -dir O -type rst OV7670_RESET
  create_bd_pin -dir O OV7670_SIOC
  create_bd_pin -dir IO OV7670_SIOD
  create_bd_pin -dir I OV7670_VSYNC
  create_bd_pin -dir O OV7670_XCLK
  create_bd_pin -dir O -from 18 -to 0 addr
  create_bd_pin -dir I btn
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir O -from 7 -to 0 dout
  create_bd_pin -dir O we

  # Create instance: debounce_0, and set properties
  set block_name debounce
  set block_cell_name debounce_0
  if { [catch {set debounce_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $debounce_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ov7670_capture_0, and set properties
  set block_name ov7670_capture
  set block_cell_name ov7670_capture_0
  if { [catch {set ov7670_capture_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ov7670_capture_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ov7670_controller_0, and set properties
  set block_name ov7670_controller
  set block_cell_name ov7670_controller_0
  if { [catch {set ov7670_controller_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ov7670_controller_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net Net [get_bd_pins OV7670_SIOD] [get_bd_pins ov7670_controller_0/siod]
  connect_bd_net -net clk_wiz_0_clk_50 [get_bd_pins clk] [get_bd_pins debounce_0/clk] [get_bd_pins ov7670_controller_0/clk]
  connect_bd_net -net debounce_0_o [get_bd_pins debounce_0/o] [get_bd_pins ov7670_controller_0/resend]
  connect_bd_net -net din_0_1 [get_bd_pins OV7670_D] [get_bd_pins ov7670_capture_0/din]
  connect_bd_net -net href_0_1 [get_bd_pins OV7670_HREF] [get_bd_pins ov7670_capture_0/href]
  connect_bd_net -net i_0_1 [get_bd_pins btn] [get_bd_pins debounce_0/i]
  connect_bd_net -net ov7670_capture_0_addr [get_bd_pins addr] [get_bd_pins ov7670_capture_0/addr]
  connect_bd_net -net ov7670_capture_0_dout [get_bd_pins dout] [get_bd_pins ov7670_capture_0/dout]
  connect_bd_net -net ov7670_capture_0_we [get_bd_pins we] [get_bd_pins ov7670_capture_0/we]
  connect_bd_net -net ov7670_controller_0_pwdn [get_bd_pins OV7670_PWDN] [get_bd_pins ov7670_controller_0/pwdn]
  connect_bd_net -net ov7670_controller_0_reset [get_bd_pins OV7670_RESET] [get_bd_pins ov7670_controller_0/reset]
  connect_bd_net -net ov7670_controller_0_sioc [get_bd_pins OV7670_SIOC] [get_bd_pins ov7670_controller_0/sioc]
  connect_bd_net -net ov7670_controller_0_xclk [get_bd_pins OV7670_XCLK] [get_bd_pins ov7670_controller_0/xclk]
  connect_bd_net -net pclk_0_1 [get_bd_pins OV7670_PCLK] [get_bd_pins ov7670_capture_0/pclk]
  connect_bd_net -net vsync_0_1 [get_bd_pins OV7670_VSYNC] [get_bd_pins ov7670_capture_0/vsync]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set OV7670_D [ create_bd_port -dir I -from 7 -to 0 OV7670_D ]
  set OV7670_HREF [ create_bd_port -dir I OV7670_HREF ]
  set OV7670_PCLK [ create_bd_port -dir I OV7670_PCLK ]
  set OV7670_PWDN [ create_bd_port -dir O OV7670_PWDN ]
  set OV7670_RESET [ create_bd_port -dir O -type rst OV7670_RESET ]
  set OV7670_SIOC [ create_bd_port -dir O OV7670_SIOC ]
  set OV7670_SIOD [ create_bd_port -dir IO OV7670_SIOD ]
  set OV7670_VSYNC [ create_bd_port -dir I OV7670_VSYNC ]
  set OV7670_XCLK [ create_bd_port -dir O OV7670_XCLK ]
  set btn [ create_bd_port -dir I btn ]
  set btnl [ create_bd_port -dir I btnl ]
  set clk100_zed [ create_bd_port -dir I -type clk clk100_zed ]
  set sioc [ create_bd_port -dir O sioc ]
  set siod [ create_bd_port -dir IO siod ]
  set vga_blue [ create_bd_port -dir O -from 3 -to 0 vga_blue ]
  set vga_green [ create_bd_port -dir O -from 3 -to 0 vga_green ]
  set vga_hsync [ create_bd_port -dir O vga_hsync ]
  set vga_red [ create_bd_port -dir O -from 3 -to 0 vga_red ]
  set vga_vsync [ create_bd_port -dir O vga_vsync ]
  set vid_active_video [ create_bd_port -dir O vid_active_video ]
  set vid_clk [ create_bd_port -dir O vid_clk ]
  set vid_data [ create_bd_port -dir O -from 15 -to 0 vid_data ]
  set vid_hsync [ create_bd_port -dir O vid_hsync ]
  set vid_vsync [ create_bd_port -dir O vid_vsync ]

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {no_coe_file_loaded} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Use_ENA_Pin} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Load_Init_File {false} \
   CONFIG.Memory_Type {Simple_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {0} \
   CONFIG.Read_Width_A {8} \
   CONFIG.Read_Width_B {8} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {307200} \
   CONFIG.Write_Width_A {8} \
   CONFIG.Write_Width_B {8} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: c_grav_0, and set properties
  set c_grav_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:c_grav:1.1 c_grav_0 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {130.958} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT2_JITTER {151.636} \
   CONFIG.CLKOUT2_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {50.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_JITTER {175.402} \
   CONFIG.CLKOUT3_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {25.000} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLK_OUT1_PORT {clk_100} \
   CONFIG.CLK_OUT2_PORT {clk_50} \
   CONFIG.CLK_OUT3_PORT {clk_25} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {20} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {40} \
   CONFIG.NUM_OUT_CLKS {3} \
 ] $clk_wiz_0

  # Create instance: im_load_0, and set properties
  set im_load_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:im_load:1.0 im_load_0 ]

  # Create instance: ov7670
  create_hier_cell_ov7670 [current_bd_instance .] ov7670

  # Create instance: video_ctrl
  create_hier_cell_video_ctrl [current_bd_instance .] video_ctrl

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $xlconstant_1

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {640} \
   CONFIG.CONST_WIDTH {32} \
 ] $xlconstant_3

  # Create instance: xlconstant_4, and set properties
  set xlconstant_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_4 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {480} \
   CONFIG.CONST_WIDTH {32} \
 ] $xlconstant_4

  # Create interface connections
  connect_bd_intf_net -intf_net c_grav_0_m_axis_video [get_bd_intf_pins c_grav_0/m_axis_video] [get_bd_intf_pins video_ctrl/video_in]
  connect_bd_intf_net -intf_net im_load_0_video [get_bd_intf_pins c_grav_0/s_axis_video] [get_bd_intf_pins im_load_0/video]

  # Create port connections
  connect_bd_net -net Net [get_bd_ports OV7670_SIOD] [get_bd_pins ov7670/OV7670_SIOD]
  connect_bd_net -net Net1 [get_bd_ports siod] [get_bd_pins video_ctrl/siod]
  connect_bd_net -net blk_mem_gen_0_doutb [get_bd_pins blk_mem_gen_0/doutb] [get_bd_pins im_load_0/mem_V_q0]
  connect_bd_net -net clk_in1_0_1 [get_bd_ports clk100_zed] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_25 [get_bd_ports vid_clk] [get_bd_pins clk_wiz_0/clk_25] [get_bd_pins video_ctrl/rd_clk]
  connect_bd_net -net clk_wiz_0_clk_50 [get_bd_pins clk_wiz_0/clk_50] [get_bd_pins ov7670/clk] [get_bd_pins video_ctrl/clk]
  connect_bd_net -net clk_wiz_0_clk_100 [get_bd_pins blk_mem_gen_0/clkb] [get_bd_pins c_grav_0/ap_clk] [get_bd_pins clk_wiz_0/clk_100] [get_bd_pins im_load_0/ap_clk] [get_bd_pins video_ctrl/wr_clk]
  connect_bd_net -net din_0_1 [get_bd_ports OV7670_D] [get_bd_pins ov7670/OV7670_D]
  connect_bd_net -net href_0_1 [get_bd_ports OV7670_HREF] [get_bd_pins ov7670/OV7670_HREF]
  connect_bd_net -net i_0_1 [get_bd_ports btn] [get_bd_pins ov7670/btn] [get_bd_pins video_ctrl/btn]
  connect_bd_net -net im_load_0_mem_V_address0 [get_bd_pins blk_mem_gen_0/addrb] [get_bd_pins im_load_0/mem_V_address0]
  connect_bd_net -net im_load_0_mem_V_ce0 [get_bd_pins blk_mem_gen_0/enb] [get_bd_pins im_load_0/mem_V_ce0]
  connect_bd_net -net ov7670_capture_0_addr [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins ov7670/addr]
  connect_bd_net -net ov7670_capture_0_dout [get_bd_pins blk_mem_gen_0/dina] [get_bd_pins ov7670/dout]
  connect_bd_net -net ov7670_capture_0_we [get_bd_pins blk_mem_gen_0/wea] [get_bd_pins ov7670/we]
  connect_bd_net -net ov7670_controller_0_pwdn [get_bd_ports OV7670_PWDN] [get_bd_pins ov7670/OV7670_PWDN]
  connect_bd_net -net ov7670_controller_0_reset [get_bd_ports OV7670_RESET] [get_bd_pins ov7670/OV7670_RESET]
  connect_bd_net -net ov7670_controller_0_sioc [get_bd_ports OV7670_SIOC] [get_bd_pins ov7670/OV7670_SIOC]
  connect_bd_net -net ov7670_controller_0_xclk [get_bd_ports OV7670_XCLK] [get_bd_pins ov7670/OV7670_XCLK]
  connect_bd_net -net pclk_0_1 [get_bd_ports OV7670_PCLK] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins ov7670/OV7670_PCLK]
  connect_bd_net -net v_tc_0_hsync_out [get_bd_ports vga_hsync] [get_bd_ports vid_hsync] [get_bd_pins video_ctrl/vga_hsync]
  connect_bd_net -net v_tc_0_vsync_out [get_bd_ports vga_vsync] [get_bd_ports vid_vsync] [get_bd_pins video_ctrl/vga_vsync]
  connect_bd_net -net video_ctrl_sioc [get_bd_ports sioc] [get_bd_pins video_ctrl/sioc]
  connect_bd_net -net video_ctrl_vid_active_video [get_bd_ports vid_active_video] [get_bd_pins video_ctrl/vid_active_video]
  connect_bd_net -net video_ctrl_vid_data [get_bd_ports vid_data] [get_bd_pins video_ctrl/vid_data]
  connect_bd_net -net vsync_0_1 [get_bd_ports OV7670_VSYNC] [get_bd_pins ov7670/OV7670_VSYNC]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins clk_wiz_0/reset] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins blk_mem_gen_0/ena] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins c_grav_0/ap_rst_n] [get_bd_pins c_grav_0/ap_start] [get_bd_pins im_load_0/ap_rst_n] [get_bd_pins im_load_0/ap_start] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins c_grav_0/hsize_in] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlconstant_4_dout [get_bd_pins c_grav_0/vsize_in] [get_bd_pins xlconstant_4/dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_ports vga_blue] [get_bd_ports vga_green] [get_bd_ports vga_red] [get_bd_pins video_ctrl/vga_red]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


