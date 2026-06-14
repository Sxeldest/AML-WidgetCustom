; =========================================================
; Game Engine Function: _ZN14CAdjustableHUD16GetTopAreaHeightEv
; Address            : 0x286ECC - 0x286F2A
; =========================================================

286ECC:  PUSH            {R7,LR}
286ECE:  MOV             R7, SP
286ED0:  SUB             SP, SP, #0x18
286ED2:  MOVS            R0, #0
286ED4:  ADD             R1, SP, #0x20+var_C
286ED6:  STRD.W          R0, R0, [SP,#0x20+var_10]
286EDA:  ADD             R2, SP, #0x20+var_10
286EDC:  STRD.W          R0, R0, [SP,#0x20+var_18]
286EE0:  ADD             R0, SP, #0x20+var_18
286EE2:  ADD             R3, SP, #0x20+var_14
286EE4:  STR             R0, [SP,#0x20+var_20]
286EE6:  MOVS            R0, #0x70 ; 'p'
286EE8:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
286EEC:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
286EF0:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
286EF4:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
286EF8:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
286EFC:  LDR             R0, =(RsGlobal_ptr - 0x286F06)
286EFE:  VLDR            S2, =448.0
286F02:  ADD             R0, PC; RsGlobal_ptr
286F04:  LDR             R0, [R0]; RsGlobal
286F06:  VLDR            S0, [R0,#8]
286F0A:  VCVT.F32.S32    S0, S0
286F0E:  VDIV.F32        S0, S0, S2
286F12:  VLDR            S2, [SP,#0x20+var_10]
286F16:  VMUL.F32        S0, S2, S0
286F1A:  VLDR            S2, [SP,#0x20+var_14]
286F1E:  VADD.F32        S0, S2, S0
286F22:  VMOV            R0, S0
286F26:  ADD             SP, SP, #0x18
286F28:  POP             {R7,PC}
