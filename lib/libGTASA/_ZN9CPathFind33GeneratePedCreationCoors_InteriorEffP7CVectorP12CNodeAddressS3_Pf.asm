; =========================================================
; Game Engine Function: _ZN9CPathFind33GeneratePedCreationCoors_InteriorEffP7CVectorP12CNodeAddressS3_Pf
; Address            : 0x316E70 - 0x31711A
; =========================================================

316E70:  PUSH            {R4-R7,LR}
316E72:  ADD             R7, SP, #0xC
316E74:  PUSH.W          {R8-R11}
316E78:  SUB             SP, SP, #4
316E7A:  VPUSH           {D8-D15}
316E7E:  SUB             SP, SP, #0x30
316E80:  VLDR            S0, =3000.0
316E84:  VMOV            S17, R2
316E88:  VLDR            S4, =750.0
316E8C:  MOVS            R6, #0
316E8E:  VADD.F32        S2, S17, S0
316E92:  MOV             R4, R3
316E94:  VMOV            S16, R1
316E98:  MOVS            R3, #7
316E9A:  VMOV.F32        S20, #0.125
316E9E:  VLDR            S22, =900.0
316EA2:  VADD.F32        S0, S16, S0
316EA6:  VLDR            S24, =2500.0
316EAA:  VMOV.F32        S28, #1.0
316EAE:  VLDR            S26, =0.0039062
316EB2:  VMOV.F32        S30, #2.0
316EB6:  VMOV.F32        S21, #3.0
316EBA:  VDIV.F32        S2, S2, S4
316EBE:  VDIV.F32        S0, S0, S4
316EC2:  VCVT.S32.F32    S2, S2
316EC6:  VCVT.S32.F32    S0, S0
316ECA:  VMOV.I32        D9, #0x3E000000
316ECE:  VMOV            R1, S2
316ED2:  VMOV            R2, S0
316ED6:  CMP             R1, #0
316ED8:  IT LE
316EDA:  MOVLE           R1, R6
316EDC:  CMP             R1, #7
316EDE:  IT GE
316EE0:  MOVGE           R1, R3
316EE2:  CMP             R2, #0
316EE4:  IT LE
316EE6:  MOVLE           R2, R6
316EE8:  CMP             R2, #7
316EEA:  IT GE
316EEC:  MOVGE           R2, R3
316EEE:  STR             R0, [SP,#0x90+var_88]
316EF0:  ORR.W           R1, R2, R1,LSL#3
316EF4:  ADD.W           R0, R0, R1,LSL#2
316EF8:  MOVW            R1, #0x1104
316EFC:  ADD             R1, R0
316EFE:  STR             R1, [SP,#0x90+var_8C]; CEntity **
316F00:  MOVW            R1, #0x1224
316F04:  ADD             R1, R0
316F06:  STR             R1, [SP,#0x90+var_74]
316F08:  ADDW            R1, R0, #0xA44
316F0C:  ADDW            R0, R0, #0x804
316F10:  STR             R0, [SP,#0x90+var_70]
316F12:  MOVS            R0, #0
316F14:  STR             R1, [SP,#0x90+var_78]
316F16:  MOV             R6, R0
316F18:  LDR             R0, [SP,#0x90+var_70]
316F1A:  LDR             R0, [R0]
316F1C:  CMP             R0, #0
316F1E:  ITTT NE
316F20:  LDRNE           R0, [SP,#0x90+var_74]
316F22:  LDRNE           R0, [R0]
316F24:  CMPNE           R0, #0
316F26:  BEQ.W           loc_3170FA
316F2A:  LDR             R0, [SP,#0x90+var_8C]
316F2C:  LDR             R5, [R0]
316F2E:  BLX             rand
316F32:  LDR             R1, [SP,#0x90+var_74]
316F34:  LDR             R1, [R1]
316F36:  BLX             __aeabi_idivmod
316F3A:  LDR             R0, [SP,#0x90+var_70]
316F3C:  ADD             R1, R5
316F3E:  RSB.W           R1, R1, R1,LSL#3
316F42:  LDR             R0, [R0]
316F44:  ADD.W           R0, R0, R1,LSL#2
316F48:  MOV             R11, R0
316F4A:  LDRSH.W         R1, [R11,#0xC]!
316F4E:  VMOV            S0, R1
316F52:  VCVT.F32.S32    S0, S0
316F56:  VMUL.F32        S0, S0, S20
316F5A:  VCMPE.F32       S0, S22
316F5E:  VMRS            APSR_nzcv, FPSCR
316F62:  BLE.W           loc_3170FA
316F66:  SUB.W           R1, R11, #4
316F6A:  STR             R1, [SP,#0x90+var_68]
316F6C:  VLD1.32         {D16[0]}, [R1@32]
316F70:  VMOVL.S16       Q8, D16
316F74:  VCVT.F32.S32    D16, D16
316F78:  VMUL.F32        D16, D16, D9
316F7C:  VSUB.F32        D16, D16, D8
316F80:  VMUL.F32        D0, D16, D16
316F84:  VADD.F32        S0, S0, S1
316F88:  VCMPE.F32       S0, S24
316F8C:  VMRS            APSR_nzcv, FPSCR
316F90:  BGE.W           loc_3170FA
316F94:  LDRH            R1, [R0,#0x18]
316F96:  ANDS.W          R1, R1, #0xF
316F9A:  STR             R1, [SP,#0x90+var_80]
316F9C:  BEQ.W           loc_3170FA
316FA0:  MOVS            R5, #0
316FA2:  SUB.W           R1, R11, #2
316FA6:  ADDS            R0, #0x10
316FA8:  STR             R1, [SP,#0x90+var_6C]
316FAA:  STR             R0, [SP,#0x90+var_7C]
316FAC:  STR             R6, [SP,#0x90+var_84]
316FAE:  LDR             R0, [SP,#0x90+var_7C]
316FB0:  LDR             R1, [SP,#0x90+var_78]
316FB2:  LDRSH.W         R0, [R0]
316FB6:  LDR             R1, [R1]
316FB8:  ADD             R0, R5
316FBA:  LDR.W           R0, [R1,R0,LSL#2]
316FBE:  MOVW            R1, #0xFFC0
316FC2:  ANDS            R1, R0
316FC4:  CMP             R1, #0x3F ; '?'
316FC6:  BHI.W           loc_3170EE
316FCA:  LDR             R2, [SP,#0x90+var_88]
316FCC:  UXTH            R1, R0
316FCE:  ADD.W           R1, R2, R1,LSL#2
316FD2:  LDR.W           R1, [R1,#0x804]
316FD6:  CMP             R1, #0
316FD8:  BEQ.W           loc_3170EE
316FDC:  LSRS            R2, R0, #0x10
316FDE:  MOV.W           R9, #0xFFFFFFFF
316FE2:  LSLS            R2, R2, #3
316FE4:  SUB.W           R0, R2, R0,LSR#16
316FE8:  ADD.W           R0, R1, R0,LSL#2
316FEC:  ADD.W           R6, R0, #0xC
316FF0:  ADD.W           R10, R0, #0xA
316FF4:  ADD.W           R8, R0, #8
316FF8:  BLX             rand
316FFC:  UXTB            R0, R0
316FFE:  MOVS            R3, #0
317000:  VMOV            S0, R0
317004:  LDR             R0, [R7,#arg_8]
317006:  VCVT.F32.S32    S0, S0
31700A:  VMUL.F32        S0, S0, S26
31700E:  VSTR            S0, [R0]
317012:  VSUB.F32        S14, S28, S0
317016:  LDRSH.W         R0, [R6]
31701A:  VMOV            S2, R0
31701E:  VCVT.F32.S32    S2, S2
317022:  LDRSH.W         R0, [R11]
317026:  LDR             R1, [SP,#0x90+var_68]
317028:  VMOV            S4, R0
31702C:  LDRSH.W         R1, [R1]
317030:  VCVT.F32.S32    S4, S4
317034:  LDRSH.W         R0, [R8]
317038:  VMOV            S6, R1
31703C:  VMOV            S8, R0
317040:  VCVT.F32.S32    S6, S6
317044:  LDRSH.W         R1, [R10]
317048:  VCVT.F32.S32    S8, S8
31704C:  LDR             R0, [SP,#0x90+var_6C]
31704E:  VMUL.F32        S2, S2, S20
317052:  VMOV            S10, R1
317056:  LDRSH.W         R0, [R0]
31705A:  VMUL.F32        S4, S4, S20
31705E:  VCVT.F32.S32    S10, S10
317062:  VMOV            S12, R0
317066:  VMUL.F32        S8, S8, S20
31706A:  VCVT.F32.S32    S12, S12
31706E:  VMUL.F32        S6, S6, S20
317072:  VMUL.F32        S2, S0, S2
317076:  VMUL.F32        S4, S14, S4
31707A:  VMUL.F32        S10, S10, S20
31707E:  VMUL.F32        S8, S0, S8
317082:  VMUL.F32        S12, S12, S20
317086:  VMUL.F32        S6, S6, S14
31708A:  VADD.F32        S2, S4, S2
31708E:  VMUL.F32        S0, S0, S10
317092:  VMUL.F32        S10, S14, S12
317096:  VADD.F32        S4, S6, S8
31709A:  VADD.F32        S6, S2, S30
31709E:  VADD.F32        S0, S10, S0
3170A2:  VMOV            R0, S4; this
3170A6:  VSTR            S4, [R4]
3170AA:  VMOV            R2, S6; float
3170AE:  VMOV            R1, S0; float
3170B2:  VSTR            S0, [R4,#4]
3170B6:  VSTR            S2, [R4,#8]
3170BA:  STR             R3, [SP,#0x90+var_90]; bool *
3170BC:  SUB.W           R3, R7, #-var_61; float
3170C0:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
3170C4:  LDRB.W          R1, [R7,#var_61]
3170C8:  CBZ             R1, loc_3170E4
3170CA:  VMOV            S0, R0
3170CE:  VLDR            S2, [R4,#8]
3170D2:  VSUB.F32        S2, S0, S2
3170D6:  VABS.F32        S2, S2
3170DA:  VCMPE.F32       S2, S21
3170DE:  VMRS            APSR_nzcv, FPSCR
3170E2:  BLT             loc_317106
3170E4:  ADD.W           R9, R9, #1
3170E8:  CMP.W           R9, #4
3170EC:  BLT             loc_316FF8
3170EE:  LDR             R0, [SP,#0x90+var_80]
3170F0:  ADDS            R5, #1
3170F2:  LDR             R6, [SP,#0x90+var_84]
3170F4:  CMP             R5, R0
3170F6:  BLT.W           loc_316FAE
3170FA:  ADDS            R0, R6, #1
3170FC:  CMP             R6, #0xC7
3170FE:  BLT.W           loc_316F16
317102:  MOVS            R0, #0
317104:  B               loc_31710C
317106:  VSTR            S0, [R4,#8]
31710A:  MOVS            R0, #1
31710C:  ADD             SP, SP, #0x30 ; '0'
31710E:  VPOP            {D8-D15}
317112:  ADD             SP, SP, #4
317114:  POP.W           {R8-R11}
317118:  POP             {R4-R7,PC}
