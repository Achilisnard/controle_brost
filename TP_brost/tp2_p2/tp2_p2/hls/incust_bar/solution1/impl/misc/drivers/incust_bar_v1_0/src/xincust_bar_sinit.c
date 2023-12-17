// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xincust_bar.h"

extern XIncust_bar_Config XIncust_bar_ConfigTable[];

XIncust_bar_Config *XIncust_bar_LookupConfig(u16 DeviceId) {
	XIncust_bar_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XINCUST_BAR_NUM_INSTANCES; Index++) {
		if (XIncust_bar_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XIncust_bar_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XIncust_bar_Initialize(XIncust_bar *InstancePtr, u16 DeviceId) {
	XIncust_bar_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XIncust_bar_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XIncust_bar_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

