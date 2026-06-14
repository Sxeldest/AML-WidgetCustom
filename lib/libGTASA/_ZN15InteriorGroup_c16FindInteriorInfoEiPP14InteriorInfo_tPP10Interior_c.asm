; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c16FindInteriorInfoEiPP14InteriorInfo_tPP10Interior_c
; Address            : 0x449C98 - 0x449D80
; =========================================================

449C98:  PUSH            {R4-R7,LR}
449C9A:  ADD             R7, SP, #0xC
449C9C:  PUSH.W          {R8-R11}
449CA0:  SUB.W           SP, SP, #0x204
449CA4:  ADD.W           R11, SP, #0x220+var_11C
449CA8:  ADD.W           R10, SP, #0x220+var_21C
449CAC:  MOV             R9, R2
449CAE:  MOV.W           LR, #0
449CB2:  MOV.W           R8, #0
449CB6:  ADD.W           R6, R0, LR,LSL#2
449CBA:  LDR.W           R12, [R6,#0x10]
449CBE:  CMP.W           R12, #0
449CC2:  BEQ             loc_449D1E
449CC4:  LDRSB.W         R6, [R12,#0x40D]
449CC8:  CMP             R6, #1
449CCA:  BLT             loc_449D1E
449CCC:  LDRSB.W         R5, [R12,#0x590]
449CD0:  CMP             R5, R1
449CD2:  ITT EQ
449CD4:  LDRBEQ.W        R5, [R12,#0x591]
449CD8:  CMPEQ           R5, #0
449CDA:  BEQ             loc_449CE2
449CDC:  CMP             R6, #2
449CDE:  BGE             loc_449CF6
449CE0:  B               loc_449D1E
449CE2:  ADD.W           R5, R12, #0x590
449CE6:  STR.W           R5, [R11,R8,LSL#2]
449CEA:  STR.W           R12, [R10,R8,LSL#2]
449CEE:  ADD.W           R8, R8, #1
449CF2:  CMP             R6, #2
449CF4:  BLT             loc_449D1E
449CF6:  ADD.W           R4, R12, #0x5B0
449CFA:  MOVS            R5, #1
449CFC:  LDRSB.W         R2, [R4]
449D00:  CMP             R2, R1
449D02:  ITT EQ
449D04:  LDRBEQ          R2, [R4,#1]
449D06:  CMPEQ           R2, #0
449D08:  BNE             loc_449D16
449D0A:  STR.W           R4, [R11,R8,LSL#2]
449D0E:  STR.W           R12, [R10,R8,LSL#2]
449D12:  ADD.W           R8, R8, #1
449D16:  ADDS            R5, #1
449D18:  ADDS            R4, #0x20 ; ' '
449D1A:  CMP             R5, R6
449D1C:  BLT             loc_449CFC
449D1E:  ADD.W           LR, LR, #1
449D22:  CMP.W           LR, #8
449D26:  BNE             loc_449CB6
449D28:  CMP.W           R8, #0
449D2C:  BLE             loc_449D6C
449D2E:  MOV             R4, R3
449D30:  BLX             rand
449D34:  UXTH            R0, R0
449D36:  VLDR            S2, =0.000015259
449D3A:  VMOV            S0, R0
449D3E:  MOV             R3, R4
449D40:  VMOV            S4, R8
449D44:  VCVT.F32.S32    S0, S0
449D48:  VCVT.F32.S32    S4, S4
449D4C:  VMUL.F32        S0, S0, S2
449D50:  VMUL.F32        S0, S0, S4
449D54:  VCVT.S32.F32    S0, S0
449D58:  VMOV            R0, S0
449D5C:  LDR.W           R1, [R11,R0,LSL#2]
449D60:  STR.W           R1, [R9]
449D64:  LDR.W           R1, [R10,R0,LSL#2]
449D68:  MOVS            R0, #1
449D6A:  B               loc_449D74
449D6C:  MOVS            R1, #0
449D6E:  MOVS            R0, #0
449D70:  STR.W           R1, [R9]
449D74:  STR             R1, [R3]
449D76:  ADD.W           SP, SP, #0x204
449D7A:  POP.W           {R8-R11}
449D7E:  POP             {R4-R7,PC}
