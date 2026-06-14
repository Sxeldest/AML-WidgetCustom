; =========================================================
; Game Engine Function: _ZN12SelectScreen13MenuSelection6RenderEPS_9CVector2DS2_f
; Address            : 0x2A3A44 - 0x2A3AE6
; =========================================================

2A3A44:  PUSH            {R4-R7,LR}
2A3A46:  ADD             R7, SP, #0xC
2A3A48:  PUSH.W          {R8-R11}
2A3A4C:  SUB             SP, SP, #0x34
2A3A4E:  MOV             R5, R0
2A3A50:  MOV             R8, R1
2A3A52:  LDR             R0, [R5]
2A3A54:  MOV             R4, R3
2A3A56:  MOV             R9, R2
2A3A58:  LDR             R1, [R0,#0xC]
2A3A5A:  MOV             R0, R5
2A3A5C:  BLX             R1
2A3A5E:  MOV             R6, R0
2A3A60:  LDR             R0, [R5]
2A3A62:  LDR             R1, [R0,#0x14]
2A3A64:  MOV             R0, R5
2A3A66:  BLX             R1
2A3A68:  MOV             R10, R0
2A3A6A:  LDR             R0, [R5]
2A3A6C:  ADD.W           R11, SP, #0x50+var_20
2A3A70:  MOV             R1, R5
2A3A72:  LDR             R2, [R0,#0x10]
2A3A74:  MOV             R0, R11
2A3A76:  BLX             R2
2A3A78:  VMOV.F32        S0, #0.5
2A3A7C:  VLDR            S2, [R7,#arg_4]
2A3A80:  VMOV.F32        S4, #-8.0
2A3A84:  VLDR            S6, [R7,#arg_8]
2A3A88:  VMOV            S10, R6
2A3A8C:  VLDR            S12, [R7,#arg_0]
2A3A90:  VADD.F32        S8, S6, S6
2A3A94:  MOVS            R0, #0
2A3A96:  STRD.W          R0, R0, [SP,#0x50+var_34]
2A3A9A:  MOVS            R0, #1
2A3A9C:  MOVS            R1, #2
2A3A9E:  MOV             R2, R10
2A3AA0:  MOVS            R3, #0
2A3AA2:  VMUL.F32        S0, S2, S0
2A3AA6:  VMOV            S2, R4
2A3AAA:  VADD.F32        S0, S0, S2
2A3AAE:  VMOV.F32        S2, #16.0
2A3AB2:  VADD.F32        S0, S0, S4
2A3AB6:  VADD.F32        S2, S8, S2
2A3ABA:  VMUL.F32        S4, S10, S12
2A3ABE:  VSUB.F32        S0, S0, S6
2A3AC2:  VSTR            S2, [SP,#0x50+var_38]
2A3AC6:  VSTR            S4, [SP,#0x50+var_3C]
2A3ACA:  STRD.W          R1, R11, [SP,#0x50+var_50]
2A3ACE:  MOV             R1, R8
2A3AD0:  STRD.W          R0, R9, [SP,#0x50+var_48]
2A3AD4:  ADD             R0, SP, #0x50+var_28
2A3AD6:  VSTR            S0, [SP,#0x50+var_40]
2A3ADA:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
2A3ADE:  ADD             SP, SP, #0x34 ; '4'
2A3AE0:  POP.W           {R8-R11}
2A3AE4:  POP             {R4-R7,PC}
