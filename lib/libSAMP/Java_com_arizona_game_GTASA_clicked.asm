; =========================================================
; Game Engine Function: Java_com_arizona_game_GTASA_clicked
; Address            : 0x17CF6C - 0x17D032
; =========================================================

17CF6C:  PUSH            {R4-R7,LR}
17CF6E:  ADD             R7, SP, #0xC
17CF70:  PUSH.W          {R8-R11}
17CF74:  SUB             SP, SP, #0x14
17CF76:  MOV             R6, R0
17CF78:  LDR             R0, =(dword_381BF4 - 0x17CF7E)
17CF7A:  ADD             R0, PC; dword_381BF4
17CF7C:  LDR             R1, [R0]
17CF7E:  CMP             R1, #0
17CF80:  BEQ             loc_17D02A
17CF82:  LDR             R0, =(off_23496C - 0x17CF88)
17CF84:  ADD             R0, PC; off_23496C
17CF86:  LDR.W           R8, [R0]; dword_23DEF4
17CF8A:  LDR.W           R0, [R8]
17CF8E:  CMP             R0, #0
17CF90:  BEQ             loc_17D02A
17CF92:  UXTB            R5, R2
17CF94:  CMP             R5, #0x1B
17CF96:  BHI             loc_17D02A
17CF98:  UXTAB.W         R1, R1, R2
17CF9C:  LDRB.W          R1, [R1,#0x68]
17CFA0:  CMP             R1, #0
17CFA2:  BEQ             loc_17D02A
17CFA4:  MOV             R4, R3
17CFA6:  CMP             R2, #2
17CFA8:  BNE             loc_17CFBC
17CFAA:  CMP             R4, #1
17CFAC:  BNE             loc_17D02A
17CFAE:  ADD             SP, SP, #0x14
17CFB0:  POP.W           {R8-R11}
17CFB4:  POP.W           {R4-R7,LR}
17CFB8:  B.W             sub_1449A8
17CFBC:  LDRD.W          R0, R11, [R7,#arg_0]
17CFC0:  STR             R0, [SP,#0x30+var_2C]
17CFC2:  MOV             R1, R11
17CFC4:  LDR             R0, [R6]
17CFC6:  LDR.W           R2, [R0,#0x2AC]
17CFCA:  MOV             R0, R6
17CFCC:  BLX             R2
17CFCE:  CMP             R0, #1
17CFD0:  BLT             loc_17CFEE
17CFD2:  MOV             R10, R0
17CFD4:  LDR             R0, [R6]
17CFD6:  MOV             R1, R11
17CFD8:  MOVS            R2, #0
17CFDA:  MOV.W           R9, #0
17CFDE:  LDR.W           R3, [R0,#0x2E0]
17CFE2:  MOV             R0, R6
17CFE4:  BLX             R3
17CFE6:  CBZ             R0, loc_17CFF8
17CFE8:  MOV             R1, R0
17CFEA:  MOV             R9, R10
17CFEC:  B               loc_17CFFC
17CFEE:  LDR             R1, =(byte_8F794 - 0x17CFF8)
17CFF0:  MOV.W           R9, #0
17CFF4:  ADD             R1, PC; byte_8F794
17CFF6:  B               loc_17CFFC
17CFF8:  LDR             R1, =(byte_8F794 - 0x17CFFE)
17CFFA:  ADD             R1, PC; byte_8F794 ; int
17CFFC:  ADD.W           R10, SP, #0x30+var_28
17D000:  MOV             R2, R9; n
17D002:  LDR.W           R6, [R8]
17D006:  MOV             R0, R10; int
17D008:  BL              sub_164DB4
17D00C:  STR.W           R10, [SP,#0x30+var_30]
17D010:  MOV             R0, R6
17D012:  LDR             R3, [SP,#0x30+var_2C]
17D014:  MOV             R1, R5
17D016:  MOV             R2, R4
17D018:  BL              sub_144712
17D01C:  LDRB.W          R0, [SP,#0x30+var_28]
17D020:  LSLS            R0, R0, #0x1F
17D022:  ITT NE
17D024:  LDRNE           R0, [SP,#0x30+var_20]; void *
17D026:  BLXNE           j__ZdlPv; operator delete(void *)
17D02A:  ADD             SP, SP, #0x14
17D02C:  POP.W           {R8-R11}
17D030:  POP             {R4-R7,PC}
