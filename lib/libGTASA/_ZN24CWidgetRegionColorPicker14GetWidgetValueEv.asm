; =========================================================
; Game Engine Function: _ZN24CWidgetRegionColorPicker14GetWidgetValueEv
; Address            : 0x2BFF50 - 0x2BFFEC
; =========================================================

2BFF50:  PUSH            {R4,R6,R7,LR}
2BFF52:  ADD             R7, SP, #8
2BFF54:  VPUSH           {D8-D10}
2BFF58:  SUB             SP, SP, #8
2BFF5A:  MOV             R4, R0
2BFF5C:  MOVS            R1, #0
2BFF5E:  LDR             R0, [R4]
2BFF60:  LDR             R2, [R0,#0x50]
2BFF62:  MOV             R0, R4
2BFF64:  BLX             R2
2BFF66:  CMP             R0, #1
2BFF68:  BNE             loc_2BFFDC
2BFF6A:  LDR             R1, [R4,#0x78]; int
2BFF6C:  MOV             R0, SP; this
2BFF6E:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2BFF72:  LDR             R1, [R4,#0x78]; int
2BFF74:  MOV             R0, SP; this
2BFF76:  VLDR            S16, [R4,#0x20]
2BFF7A:  VLDR            S18, [R4,#0x28]
2BFF7E:  VLDR            S20, [SP,#0x28+var_28]
2BFF82:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2BFF86:  VLDR            S2, [R4,#0x24]
2BFF8A:  VSUB.F32        S0, S18, S16
2BFF8E:  VLDR            S4, [R4,#0x2C]
2BFF92:  VSUB.F32        S6, S20, S16
2BFF96:  VLDR            S8, [SP,#0x28+var_24]
2BFF9A:  VSUB.F32        S2, S2, S4
2BFF9E:  VSUB.F32        S4, S8, S4
2BFFA2:  VABS.F32        S0, S0
2BFFA6:  VABS.F32        S2, S2
2BFFAA:  VDIV.F32        S0, S6, S0
2BFFAE:  VDIV.F32        S2, S4, S2
2BFFB2:  VMOV.F32        S4, #8.0
2BFFB6:  VMUL.F32        S0, S0, S4
2BFFBA:  VMUL.F32        S2, S2, S4
2BFFBE:  VCVT.S32.F32    S0, S0
2BFFC2:  VCVT.S32.F32    S2, S2
2BFFC6:  VMOV            R0, S0
2BFFCA:  VMOV            R1, S2
2BFFCE:  ADD.W           R0, R0, R1,LSL#3
2BFFD2:  VMOV            S0, R0
2BFFD6:  VCVT.F32.S32    S0, S0
2BFFDA:  B               loc_2BFFE0
2BFFDC:  VLDR            S0, =0.0
2BFFE0:  VMOV            R0, S0
2BFFE4:  ADD             SP, SP, #8
2BFFE6:  VPOP            {D8-D10}
2BFFEA:  POP             {R4,R6,R7,PC}
