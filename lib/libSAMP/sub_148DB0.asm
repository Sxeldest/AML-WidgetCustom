; =========================================================
; Game Engine Function: sub_148DB0
; Address            : 0x148DB0 - 0x148E18
; =========================================================

148DB0:  PUSH            {R4-R7,LR}
148DB2:  ADD             R7, SP, #0xC
148DB4:  PUSH.W          {R8,R9,R11}
148DB8:  MOV             R9, R3
148DBA:  MOV             R6, R2
148DBC:  MOV             R5, R1
148DBE:  MOV             R8, R0
148DC0:  MOVS            R0, #0x28 ; '('; unsigned int
148DC2:  BLX             j__Znwj; operator new(uint)
148DC6:  MOV             R4, R0
148DC8:  MOV             R1, R6
148DCA:  MOV             R2, R9
148DCC:  BL              sub_13DED4
148DD0:  CMP.W           R5, #0x3EC
148DD4:  BLS             loc_148DDA
148DD6:  MOVS            R0, #0
148DD8:  B               loc_148E12
148DDA:  LDR             R0, [R4]
148DDC:  ADD.W           R1, R8, R5,LSL#2
148DE0:  CMP.W           R9, #0
148DE4:  MOV.W           R2, #0
148DE8:  STR             R4, [R1,#4]
148DEA:  STRH            R5, [R0,#0x14]
148DEC:  ITT NE
148DEE:  MOVNE           R1, #1
148DF0:  STRBNE          R1, [R0,#0x18]
148DF2:  ADDW            R0, R8, #0xFB4
148DF6:  MOVS            R1, #1
148DF8:  STRB            R1, [R0,R5]
148DFA:  MOVS            R1, #0
148DFC:  LDRB            R3, [R0,R1]
148DFE:  CMP             R3, #0
148E00:  IT NE
148E02:  MOVNE           R2, R1
148E04:  ADDS            R1, #1
148E06:  CMP.W           R1, #0x3EC
148E0A:  BNE             loc_148DFC
148E0C:  MOVS            R0, #1
148E0E:  STR.W           R2, [R8]
148E12:  POP.W           {R8,R9,R11}
148E16:  POP             {R4-R7,PC}
