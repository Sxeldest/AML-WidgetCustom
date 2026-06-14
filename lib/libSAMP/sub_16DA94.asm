; =========================================================
; Game Engine Function: sub_16DA94
; Address            : 0x16DA94 - 0x16DC20
; =========================================================

16DA94:  PUSH            {R4-R7,LR}
16DA96:  ADD             R7, SP, #0xC
16DA98:  PUSH.W          {R8-R11}
16DA9C:  SUB             SP, SP, #4
16DA9E:  VPUSH           {D8}
16DAA2:  MOV             R10, R2
16DAA4:  MOVW            R2, #0x196C
16DAA8:  MOV             R8, R1
16DAAA:  LDR             R1, [R0,R2]
16DAAC:  MOVW            R3, #0x2D14
16DAB0:  ADD.W           R11, R0, R3
16DAB4:  CMP             R1, #0
16DAB6:  BEQ             loc_16DB46
16DAB8:  ADDS            R6, R0, R2
16DABA:  LDR             R0, =(dword_381B58 - 0x16DAC2)
16DABC:  MOVS            R4, #0
16DABE:  ADD             R0, PC; dword_381B58
16DAC0:  MOV             R9, R0
16DAC2:  LDR             R0, [R6,#8]
16DAC4:  LDR.W           R5, [R0,R4,LSL#2]
16DAC8:  LDRB            R0, [R5,#9]
16DACA:  LSLS            R0, R0, #0x1F
16DACC:  BNE             loc_16DB40
16DACE:  LDR.W           R0, [R5,#0x278]
16DAD2:  ADDS            R1, R0, #1
16DAD4:  BEQ             loc_16DAE6
16DAD6:  LDR.W           R1, [R11,#8]
16DADA:  RSB.W           R0, R0, R0,LSL#3
16DADE:  ADD.W           R0, R1, R0,LSL#2
16DAE2:  CBNZ            R0, loc_16DB28
16DAE4:  B               loc_16DB0C
16DAE6:  MOV             R0, R9
16DAE8:  MOVW            R1, #0x2D14
16DAEC:  LDR.W           R0, [R9]
16DAF0:  LDR             R1, [R0,R1]
16DAF2:  CBZ             R1, loc_16DB0C
16DAF4:  MOVW            R3, #0x2D14
16DAF8:  ADD             R0, R3
16DAFA:  LDR             R2, [R5,#4]
16DAFC:  LDR             R0, [R0,#8]
16DAFE:  LDR             R3, [R0,#4]
16DB00:  CMP             R3, R2
16DB02:  BEQ             loc_16DAE2
16DB04:  SUBS            R1, #1
16DB06:  ADD.W           R0, R0, #0x1C
16DB0A:  BNE             loc_16DAFE
16DB0C:  LDR             R0, [R5]
16DB0E:  BL              sub_170B90
16DB12:  LDR.W           R1, [R11,#8]
16DB16:  MOV             R2, #0xB6DB6DB7
16DB1E:  SUBS            R1, R0, R1
16DB20:  ASRS            R1, R1, #2
16DB22:  MULS            R1, R2
16DB24:  STR.W           R1, [R5,#0x278]
16DB28:  LDRD.W          R1, R2, [R5,#0xC]
16DB2C:  STRD.W          R1, R2, [R0,#8]
16DB30:  LDRD.W          R1, R2, [R5,#0x1C]
16DB34:  STRD.W          R1, R2, [R0,#0x10]
16DB38:  LDR             R1, [R6]
16DB3A:  LDRB.W          R2, [R5,#0x7D]
16DB3E:  STRB            R2, [R0,#0x18]
16DB40:  ADDS            R4, #1
16DB42:  CMP             R4, R1
16DB44:  BNE             loc_16DAC2
16DB46:  LDR.W           R0, [R11]
16DB4A:  LDR.W           R2, [R10]
16DB4E:  ADD.W           R0, R0, R0,LSL#1
16DB52:  CMP             R2, #0
16DB54:  ADD.W           R1, R2, R0,LSL#5
16DB58:  SUB.W           R1, R1, #1
16DB5C:  IT EQ
16DB5E:  LSLEQ           R1, R0, #5
16DB60:  MOV             R0, R10
16DB62:  BL              sub_1721FC
16DB66:  LDR.W           R0, [R11]
16DB6A:  CMP             R0, #0
16DB6C:  BEQ             loc_16DC14
16DB6E:  VLDR            S16, =3.4028e38
16DB72:  MOVS            R4, #0
16DB74:  MOVS            R5, #0
16DB76:  LDR.W           R2, [R11,#8]
16DB7A:  ADDS            R6, R2, R4
16DB7C:  VLDR            S0, [R6,#8]
16DB80:  VCMP.F32        S0, S16
16DB84:  VMRS            APSR_nzcv, FPSCR
16DB88:  BEQ             loc_16DC0C
16DB8A:  LDR             R1, =(asc_88C8D - 0x16DB94); "###" ...
16DB8C:  LDR.W           R9, [R2,R4]
16DB90:  ADD             R1, PC; "###"
16DB92:  MOV             R0, R9; haystack
16DB94:  BLX             strstr
16DB98:  LDR             R1, =(aSS_1 - 0x16DBA8); "[%s][%s]\n" ...
16DB9A:  CMP             R0, #0
16DB9C:  LDR.W           R2, [R8]
16DBA0:  IT NE
16DBA2:  MOVNE           R9, R0
16DBA4:  ADD             R1, PC; "[%s][%s]\n"
16DBA6:  MOV             R0, R10
16DBA8:  MOV             R3, R9
16DBAA:  BL              sub_165A4E
16DBAE:  VLDR            S0, [R6,#0xC]
16DBB2:  MOV             R0, R10
16DBB4:  VLDR            S2, [R6,#8]
16DBB8:  VCVT.S32.F32    S0, S0
16DBBC:  LDR             R1, =(aPosDD - 0x16DBC6); "Pos=%d,%d\n" ...
16DBBE:  VCVT.S32.F32    S2, S2
16DBC2:  ADD             R1, PC; "Pos=%d,%d\n"
16DBC4:  VMOV            R3, S0
16DBC8:  VMOV            R2, S2
16DBCC:  BL              sub_165A4E
16DBD0:  VLDR            S0, [R6,#0x10]
16DBD4:  MOV             R0, R10
16DBD6:  VLDR            S2, [R6,#0x14]
16DBDA:  VCVT.S32.F32    S0, S0
16DBDE:  LDR             R1, =(aSizeDD - 0x16DBE8); "Size=%d,%d\n" ...
16DBE0:  VCVT.S32.F32    S2, S2
16DBE4:  ADD             R1, PC; "Size=%d,%d\n"
16DBE6:  VMOV            R2, S0
16DBEA:  VMOV            R3, S2
16DBEE:  BL              sub_165A4E
16DBF2:  LDR             R1, =(aCollapsedD_0 - 0x16DBFC); "Collapsed=%d\n" ...
16DBF4:  MOV             R0, R10
16DBF6:  LDRB            R2, [R6,#0x18]
16DBF8:  ADD             R1, PC; "Collapsed=%d\n"
16DBFA:  BL              sub_165A4E
16DBFE:  LDR             R1, =(asc_8D501 - 0x16DC06); "\n" ...
16DC00:  MOV             R0, R10
16DC02:  ADD             R1, PC; "\n"
16DC04:  BL              sub_165A4E
16DC08:  LDR.W           R0, [R11]
16DC0C:  ADDS            R5, #1
16DC0E:  ADDS            R4, #0x1C
16DC10:  CMP             R5, R0
16DC12:  BNE             loc_16DB76
16DC14:  VPOP            {D8}
16DC18:  ADD             SP, SP, #4
16DC1A:  POP.W           {R8-R11}
16DC1E:  POP             {R4-R7,PC}
