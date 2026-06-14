; =========================================================
; Game Engine Function: _ZN14CAdjustableHUD26ConstrainToDraggableRegionER9CVector2Df
; Address            : 0x285AD4 - 0x285BA4
; =========================================================

285AD4:  PUSH            {R4,R5,R7,LR}
285AD6:  ADD             R7, SP, #8
285AD8:  VPUSH           {D8-D11}
285ADC:  SUB             SP, SP, #0x18
285ADE:  LDR             R0, =(RsGlobal_ptr - 0x285AEE)
285AE0:  VMOV            S16, R2
285AE4:  VLDR            S20, =0.0
285AE8:  MOV             R4, R1
285AEA:  ADD             R0, PC; RsGlobal_ptr
285AEC:  ADD             R1, SP, #0x40+var_2C
285AEE:  ADD             R2, SP, #0x40+var_30
285AF0:  ADD             R3, SP, #0x40+var_34
285AF2:  LDR             R5, [R0]; RsGlobal
285AF4:  MOVS            R0, #0
285AF6:  VLDR            S0, [R5,#4]
285AFA:  VCVT.F32.S32    S0, S0
285AFE:  VLDR            S4, [R4]
285B02:  VLDR            S18, [R4,#4]
285B06:  VMUL.F32        S2, S0, S20
285B0A:  VSUB.F32        S0, S0, S2
285B0E:  VADD.F32        S2, S2, S16
285B12:  VSUB.F32        S0, S0, S16
285B16:  VMAX.F32        D16, D2, D1
285B1A:  VMIN.F32        D0, D16, D0
285B1E:  VSTR            S0, [R4]
285B22:  VLDR            S0, [R5,#8]
285B26:  VCVT.F32.S32    S22, S0
285B2A:  STRD.W          R0, R0, [SP,#0x40+var_30]
285B2E:  STRD.W          R0, R0, [SP,#0x40+var_38]
285B32:  ADD             R0, SP, #0x40+var_38
285B34:  STR             R0, [SP,#0x40+var_40]
285B36:  MOVS            R0, #0x70 ; 'p'
285B38:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
285B3C:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
285B40:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
285B44:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
285B48:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
285B4C:  VLDR            S0, [R5,#8]
285B50:  VLDR            S2, =448.0
285B54:  VCVT.F32.S32    S0, S0
285B58:  VLDR            S4, [SP,#0x40+var_30]
285B5C:  VLDR            S6, =-0.067
285B60:  VLDR            S8, [SP,#0x40+var_34]
285B64:  VDIV.F32        S0, S0, S2
285B68:  VMUL.F32        S0, S4, S0
285B6C:  VMUL.F32        S2, S22, S20
285B70:  VMUL.F32        S4, S22, S6
285B74:  VSUB.F32        S6, S22, S16
285B78:  VADD.F32        S0, S8, S0
285B7C:  VSUB.F32        S2, S22, S2
285B80:  VADD.F32        S4, S6, S4
285B84:  VADD.F32        S0, S0, S16
285B88:  VSUB.F32        S2, S2, S16
285B8C:  VMAX.F32        D17, D9, D0
285B90:  VMIN.F32        D16, D2, D1
285B94:  VMIN.F32        D0, D17, D16
285B98:  VSTR            S0, [R4,#4]
285B9C:  ADD             SP, SP, #0x18
285B9E:  VPOP            {D8-D11}
285BA2:  POP             {R4,R5,R7,PC}
