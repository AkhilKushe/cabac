// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcabac_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCabac_top_CfgInitialize(XCabac_top *InstancePtr, XCabac_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCabac_top_Set_globalCtx(XCabac_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCabac_top_WriteReg(InstancePtr->Control_BaseAddress, XCABAC_TOP_CONTROL_ADDR_GLOBALCTX_DATA, (u32)(Data));
    XCabac_top_WriteReg(InstancePtr->Control_BaseAddress, XCABAC_TOP_CONTROL_ADDR_GLOBALCTX_DATA + 4, (u32)(Data >> 32));
}

u64 XCabac_top_Get_globalCtx(XCabac_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCabac_top_ReadReg(InstancePtr->Control_BaseAddress, XCABAC_TOP_CONTROL_ADDR_GLOBALCTX_DATA);
    Data += (u64)XCabac_top_ReadReg(InstancePtr->Control_BaseAddress, XCABAC_TOP_CONTROL_ADDR_GLOBALCTX_DATA + 4) << 32;
    return Data;
}

