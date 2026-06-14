; =========================================================
; Game Engine Function: _ZN11CWaterLevel29SplitWaterRectangleAlongYLineEiiiii7CRenParS0_S0_S0_
; Address            : 0x599E2C - 0x599F90
; =========================================================

599E2C:  PUSH            {R4-R7,LR}
599E2E:  ADD             R7, SP, #0xC
599E30:  PUSH.W          {R8-R11}
599E34:  SUB             SP, SP, #4
599E36:  VPUSH           {D8-D13}
599E3A:  SUB             SP, SP, #0x40
599E3C:  MOV             R5, R0
599E3E:  MOV             R6, R1
599E40:  SUBS            R0, R5, R3
599E42:  LDR             R1, [R7,#arg_0]
599E44:  VMOV.F32        S4, #1.0
599E48:  MOV             R11, R2
599E4A:  VMOV            S0, R0
599E4E:  SUBS            R0, R1, R3
599E50:  ADD.W           R2, R7, #0x10
599E54:  LDR             R4, [R7,#arg_20]
599E56:  VMOV            S2, R0
599E5A:  LDR.W           R9, [R7,#arg_28]
599E5E:  VCVT.F32.S32    S0, S0
599E62:  LDR.W           R10, [R7,#arg_24]
599E66:  VCVT.F32.S32    S2, S2
599E6A:  LDM             R2, {R0-R2}
599E6C:  VMOV            S9, R9
599E70:  STR             R4, [SP,#0x90+var_74]
599E72:  VMOV            S11, R10
599E76:  STR             R2, [SP,#0x90+var_84]
599E78:  VMOV            S6, R1
599E7C:  LDR             R4, [R7,#arg_18]
599E7E:  MOV.W           R8, #0
599E82:  LDR             R2, [R7,#arg_1C]
599E84:  STR             R0, [SP,#0x90+var_8C]
599E86:  VDIV.F32        S0, S0, S2
599E8A:  STR             R1, [SP,#0x90+var_88]
599E8C:  LDR             R1, [R7,#arg_4]
599E8E:  VMOV            S2, R0
599E92:  LDR             R0, [R7,#arg_14]
599E94:  VSUB.F32        S4, S4, S0
599E98:  STR             R0, [SP,#0x90+var_80]
599E9A:  VMOV            S10, R4
599E9E:  STR             R4, [SP,#0x90+var_7C]
599EA0:  VMOV            S8, R0
599EA4:  LDR             R0, [R7,#arg_34]
599EA6:  VMOV            S12, R2
599EAA:  STR             R2, [SP,#0x90+var_78]
599EAC:  LDR             R4, [R7,#arg_3C]
599EAE:  VMOV            S14, R1
599EB2:  STR             R1, [SP,#0x90+var_90]
599EB4:  VMOV            S5, R0
599EB8:  LDR             R2, [R7,#arg_38]
599EBA:  VMUL.F32        S9, S0, S9
599EBE:  LDR             R1, [R7,#arg_2C]
599EC0:  VMOV            S1, R4
599EC4:  VMUL.F32        S2, S4, S2
599EC8:  MOV             R0, R6
599ECA:  VMOV            S3, R2
599ECE:  MOV             R4, R2
599ED0:  VMOV            S7, R1
599ED4:  MOV             R2, R3
599ED6:  VMUL.F32        S1, S0, S1
599EDA:  MOV             R1, R11
599EDC:  VMUL.F32        S12, S4, S12
599EE0:  MOV             R3, R5
599EE2:  VMUL.F32        S3, S0, S3
599EE6:  STR.W           R8, [SP,#0x90+var_54]
599EEA:  VMUL.F32        S10, S4, S10
599EEE:  STR.W           R8, [SP,#0x90+var_64]
599EF2:  VMUL.F32        S5, S0, S5
599EF6:  VMUL.F32        S8, S4, S8
599EFA:  VMUL.F32        S7, S0, S7
599EFE:  VMUL.F32        S6, S4, S6
599F02:  VMUL.F32        S0, S0, S11
599F06:  VMUL.F32        S4, S4, S14
599F0A:  VADD.F32        S16, S12, S1
599F0E:  VADD.F32        S18, S10, S3
599F12:  VADD.F32        S20, S8, S5
599F16:  VADD.F32        S24, S2, S9
599F1A:  VADD.F32        S22, S6, S7
599F1E:  VADD.F32        S26, S4, S0
599F22:  VSTR            S20, [SP,#0x90+var_60]
599F26:  VSTR            S18, [SP,#0x90+var_5C]
599F2A:  VSTR            S16, [SP,#0x90+var_58]
599F2E:  VSTR            S26, [SP,#0x90+var_70]
599F32:  VSTR            S24, [SP,#0x90+var_6C]
599F36:  VSTR            S22, [SP,#0x90+var_68]
599F3A:  BLX.W           j__ZN11CWaterLevel20RenderWaterRectangleEiiii7CRenParS0_S0_S0_; CWaterLevel::RenderWaterRectangle(int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar)
599F3E:  LDR             R0, [R7,#arg_40]
599F40:  MOV             R1, R11
599F42:  STR             R0, [SP,#0x90+var_54]
599F44:  MOV             R2, R5
599F46:  LDR             R0, [R7,#arg_3C]
599F48:  LDR             R3, [R7,#arg_0]
599F4A:  STRD.W          R4, R0, [SP,#0x90+var_5C]
599F4E:  LDR             R0, [R7,#arg_34]
599F50:  STR             R0, [SP,#0x90+var_60]
599F52:  LDR             R0, [R7,#arg_30]
599F54:  STR             R0, [SP,#0x90+var_64]
599F56:  LDR             R0, [R7,#arg_2C]
599F58:  STRD.W          R9, R0, [SP,#0x90+var_6C]
599F5C:  MOV             R0, R6
599F5E:  STRD.W          R8, R10, [SP,#0x90+var_74]
599F62:  VSTR            S20, [SP,#0x90+var_80]
599F66:  VSTR            S18, [SP,#0x90+var_7C]
599F6A:  VSTR            S16, [SP,#0x90+var_78]
599F6E:  STR.W           R8, [SP,#0x90+var_84]
599F72:  VSTR            S26, [SP,#0x90+var_90]
599F76:  VSTR            S24, [SP,#0x90+var_8C]
599F7A:  VSTR            S22, [SP,#0x90+var_88]
599F7E:  BLX.W           j__ZN11CWaterLevel20RenderWaterRectangleEiiii7CRenParS0_S0_S0_; CWaterLevel::RenderWaterRectangle(int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar)
599F82:  ADD             SP, SP, #0x40 ; '@'
599F84:  VPOP            {D8-D13}
599F88:  ADD             SP, SP, #4
599F8A:  POP.W           {R8-R11}
599F8E:  POP             {R4-R7,PC}
