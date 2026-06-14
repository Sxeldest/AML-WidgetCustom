; =========================================================
; Game Engine Function: _ZN9CPathFind19RecordNodesInCircleERK7CVectorfhiP12CNodeAddressbbbbb
; Address            : 0x317CF8 - 0x317E34
; =========================================================

317CF8:  PUSH            {R4-R7,LR}
317CFA:  ADD             R7, SP, #0xC
317CFC:  PUSH.W          {R8-R11}
317D00:  SUB             SP, SP, #0x10
317D02:  VMOV            S0, R2
317D06:  STRD.W          R3, R0, [SP,#0x2C+var_2C]
317D0A:  VMOV.F32        S2, #-0.125
317D0E:  LDR             R0, [R7,#arg_10]
317D10:  VMUL.F32        S0, S0, S0
317D14:  LDR.W           LR, [R7,#arg_8]
317D18:  VMOV.I32        D16, #0x3E000000
317D1C:  ADDS            R2, R1, #4
317D1E:  EOR.W           R4, R0, #1
317D22:  STR             R2, [SP,#0x2C+var_24]
317D24:  MOVS            R0, #0
317D26:  MOVS            R2, #0
317D28:  MOV             R9, R0
317D2A:  LDR             R0, [SP,#0x2C+var_28]
317D2C:  ADD.W           R5, R0, R9,LSL#2
317D30:  LDR.W           R0, [R5,#0x804]
317D34:  CMP             R0, #0
317D36:  BEQ             loc_317E1E
317D38:  LDR             R3, [SP,#0x2C+var_2C]
317D3A:  CMP             R3, #1
317D3C:  BEQ             loc_317D4C
317D3E:  CBNZ            R3, loc_317D5C
317D40:  MOVW            R3, #0x1104
317D44:  MOV.W           R12, #0
317D48:  ADD             R3, R5
317D4A:  B               loc_317D58
317D4C:  MOVW            R3, #0x1104
317D50:  LDR.W           R12, [R5,R3]
317D54:  ADDW            R3, R5, #0xFE4
317D58:  LDR.W           R8, [R3]
317D5C:  CMP             R12, R8
317D5E:  BGE             loc_317E1E
317D60:  RSB.W           R3, R12, R12,LSL#3
317D64:  ADDW            R10, R5, #0x804
317D68:  MOV             R5, R12
317D6A:  MOV.W           R11, R3,LSL#2
317D6E:  CMP.W           LR, #1
317D72:  BNE             loc_317D8E
317D74:  B               loc_317D84
317D76:  LDR.W           R0, [R10]
317D7A:  ADD.W           R11, R11, #0x1C
317D7E:  CMP.W           LR, #1
317D82:  BNE             loc_317D8E
317D84:  ADD.W           R3, R0, R11
317D88:  LDRH            R3, [R3,#0x18]
317D8A:  LSLS            R3, R3, #0x1A
317D8C:  BMI             loc_317E18
317D8E:  ADD             R0, R11
317D90:  LDRB            R3, [R0,#0x1A]
317D92:  LDRH            R6, [R0,#0x18]
317D94:  ORR.W           R3, R6, R3,LSL#16
317D98:  MOVS            R6, #0
317D9A:  TST.W           R3, #0x200
317D9E:  IT EQ
317DA0:  MOVEQ           R6, #1
317DA2:  ORRS            R6, R4
317DA4:  BEQ             loc_317E18
317DA6:  LDR             R6, [R7,#arg_14]
317DA8:  UBFX.W          R3, R3, #7, #1
317DAC:  CMP             R6, R3
317DAE:  BNE             loc_317E18
317DB0:  LDRSH.W         R3, [R0,#8]
317DB4:  VMOV            S4, R3
317DB8:  VCVT.F32.S32    S4, S4
317DBC:  LDR.W           R0, [R0,#0xA]
317DC0:  STR             R0, [SP,#0x2C+var_20]
317DC2:  ADD             R0, SP, #0x2C+var_20
317DC4:  VLDR            S6, [R1]
317DC8:  VLD1.32         {D17[0]}, [R0@32]
317DCC:  LDR             R0, [SP,#0x2C+var_24]
317DCE:  VMOVL.S16       Q9, D17
317DD2:  VMUL.F32        S4, S4, S2
317DD6:  VCVT.F32.S32    D17, D18
317DDA:  VLDR            D18, [R0]
317DDE:  VMUL.F32        D17, D17, D16
317DE2:  VADD.F32        S4, S6, S4
317DE6:  VSUB.F32        D17, D18, D17
317DEA:  VMUL.F32        S4, S4, S4
317DEE:  VMUL.F32        D3, D17, D17
317DF2:  VADD.F32        S4, S4, S6
317DF6:  VADD.F32        S4, S4, S7
317DFA:  VCMPE.F32       S4, S0
317DFE:  VMRS            APSR_nzcv, FPSCR
317E02:  BGE             loc_317E12
317E04:  LDR             R0, [R7,#arg_4]
317E06:  STRH.W          R9, [R0,R2,LSL#2]
317E0A:  ADD.W           R0, R0, R2,LSL#2
317E0E:  ADDS            R2, #1
317E10:  STRH            R5, [R0,#2]
317E12:  LDR             R0, [R7,#arg_0]
317E14:  CMP             R2, R0
317E16:  BEQ             loc_317E2A
317E18:  ADDS            R5, #1
317E1A:  CMP             R5, R8
317E1C:  BLT             loc_317D76
317E1E:  ADD.W           R0, R9, #1
317E22:  CMP.W           R9, #0x47 ; 'G'
317E26:  BLT.W           loc_317D28
317E2A:  MOV             R0, R2
317E2C:  ADD             SP, SP, #0x10
317E2E:  POP.W           {R8-R11}
317E32:  POP             {R4-R7,PC}
