; =========================================================
; Game Engine Function: sub_165CCC
; Address            : 0x165CCC - 0x165DF6
; =========================================================

165CCC:  PUSH            {R4-R7,LR}
165CCE:  ADD             R7, SP, #0xC
165CD0:  PUSH.W          {R8-R11}
165CD4:  SUB             SP, SP, #0x14
165CD6:  MOV             R9, R1
165CD8:  LDR             R1, =(dword_381B58 - 0x165CE4)
165CDA:  MOV             R5, R2
165CDC:  MOVW            R3, #0x2D38
165CE0:  ADD             R1, PC; dword_381B58
165CE2:  LDR             R2, [R1]
165CE4:  MOVW            R1, #0x19AC
165CE8:  ADD.W           R10, R2, R3
165CEC:  LDR             R1, [R2,R1]
165CEE:  CBNZ            R5, loc_165D12
165CF0:  ADDS.W          R2, R9, #1
165CF4:  BEQ             loc_165D0E
165CF6:  MOV             R5, R9
165CF8:  LDRB            R2, [R5]
165CFA:  CMP             R2, #0x23 ; '#'
165CFC:  BEQ             loc_165D02
165CFE:  CBNZ            R2, loc_165D08
165D00:  B               loc_165D12
165D02:  LDRB            R2, [R5,#1]
165D04:  CMP             R2, #0x23 ; '#'
165D06:  BEQ             loc_165D12
165D08:  ADDS            R5, #1
165D0A:  ADDS            R2, R5, #1
165D0C:  BNE             loc_165CF8
165D0E:  MOV.W           R5, #0xFFFFFFFF
165D12:  CBZ             R0, loc_165D3C
165D14:  VMOV.F32        S0, #1.0
165D18:  VLDR            S2, [R10]
165D1C:  VADD.F32        S0, S2, S0
165D20:  VLDR            S2, [R0,#4]
165D24:  VSTR            S2, [R10]
165D28:  VCMP.F32        S2, S0
165D2C:  VMRS            APSR_nzcv, FPSCR
165D30:  BLE             loc_165D3C
165D32:  MOV.W           R11, #1
165D36:  STRB.W          R11, [R10,#4]
165D3A:  B               loc_165D40
165D3C:  MOV.W           R11, #0
165D40:  LDR.W           R0, [R1,#0x100]
165D44:  MOV             R4, R9
165D46:  LDR.W           R1, [R10,#8]
165D4A:  CMP             R1, R0
165D4C:  ITT GT
165D4E:  STRGT.W         R0, [R10,#8]
165D52:  MOVGT           R1, R0
165D54:  SUBS            R0, R0, R1
165D56:  LSLS            R0, R0, #2
165D58:  STR             R0, [SP,#0x30+var_20]
165D5A:  LDR             R0, =(aSS - 0x165D60); "\n%*s%.*s" ...
165D5C:  ADD             R0, PC; "\n%*s%.*s"
165D5E:  STR             R0, [SP,#0x30+var_24]
165D60:  LDR             R0, =(byte_8F794 - 0x165D66)
165D62:  ADD             R0, PC; byte_8F794
165D64:  MOV             R8, R0
165D66:  LDR             R0, =(aS - 0x165D6C); " %.*s" ...
165D68:  ADD             R0, PC; " %.*s"
165D6A:  STR             R0, [SP,#0x30+var_2C]
165D6C:  LDR             R0, =(aSS_0 - 0x165D72); "%*s%.*s" ...
165D6E:  ADD             R0, PC; "%*s%.*s"
165D70:  STR             R0, [SP,#0x30+format]
165D72:  SUBS            R2, R5, R4; n
165D74:  MOV             R0, R4; s
165D76:  MOVS            R1, #0xA; c
165D78:  BLX             memchr
165D7C:  MOV             R6, R0
165D7E:  CMP             R0, #0
165D80:  IT EQ
165D82:  MOVEQ           R6, R5
165D84:  CMP             R6, R5
165D86:  IT EQ
165D88:  CMPEQ           R4, R6
165D8A:  BEQ             loc_165DA6
165D8C:  SUB.W           R0, R4, R9
165D90:  SUBS            R3, R6, R4
165D92:  CLZ.W           R0, R0
165D96:  MVN.W           R1, R11
165D9A:  LSRS            R0, R0, #5
165D9C:  TST             R1, R0
165D9E:  BNE             loc_165DAE
165DA0:  STR             R4, [SP,#0x30+var_30]
165DA2:  LDR             R0, [SP,#0x30+var_24]
165DA4:  B               loc_165DBA
165DA6:  CMP.W           R11, #0
165DAA:  BEQ             loc_165DC8
165DAC:  B               loc_165DE4
165DAE:  LDRB.W          R0, [R10,#4]
165DB2:  CBZ             R0, loc_165DD0
165DB4:  STR.W           R9, [SP,#0x30+var_30]
165DB8:  LDR             R0, [SP,#0x30+format]; format
165DBA:  LDR             R1, [SP,#0x30+var_20]
165DBC:  MOV             R2, R8
165DBE:  BL              sub_170B40
165DC2:  MOVS            R0, #0
165DC4:  STRB.W          R0, [R10,#4]
165DC8:  ADDS            R4, R6, #1
165DCA:  CMP             R6, R5
165DCC:  BNE             loc_165D72
165DCE:  B               loc_165DDC
165DD0:  LDR             R0, [SP,#0x30+var_2C]; format
165DD2:  MOV             R1, R3
165DD4:  MOV             R2, R9
165DD6:  BL              sub_170B40
165DDA:  B               loc_165DC2
165DDC:  ADD             SP, SP, #0x14
165DDE:  POP.W           {R8-R11}
165DE2:  POP             {R4-R7,PC}
165DE4:  LDR             R0, =(asc_8D501 - 0x165DEA); "\n" ...
165DE6:  ADD             R0, PC; "\n"
165DE8:  ADD             SP, SP, #0x14
165DEA:  POP.W           {R8-R11}
165DEE:  POP.W           {R4-R7,LR}
165DF2:  B.W             sub_170B40
