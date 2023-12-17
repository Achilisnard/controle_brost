// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xincust_bar.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XIncust_bar_CfgInitialize(XIncust_bar *InstancePtr, XIncust_bar_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XIncust_bar_Set_start_x(XIncust_bar *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIncust_bar_WriteReg(InstancePtr->Axilites_BaseAddress, XINCUST_BAR_AXILITES_ADDR_START_X_DATA, Data);
}

u32 XIncust_bar_Get_start_x(XIncust_bar *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIncust_bar_ReadReg(InstancePtr->Axilites_BaseAddress, XINCUST_BAR_AXILITES_ADDR_START_X_DATA);
    return Data;
}

void XIncust_bar_Set_start_y(XIncust_bar *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XIncust_bar_WriteReg(InstancePtr->Axilites_BaseAddress, XINCUST_BAR_AXILITES_ADDR_START_Y_DATA, Data);
}

u32 XIncust_bar_Get_start_y(XIncust_bar *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XIncust_bar_ReadReg(InstancePtr->Axilites_BaseAddress, XINCUST_BAR_AXILITES_ADDR_START_Y_DATA);
    return Data;
}

