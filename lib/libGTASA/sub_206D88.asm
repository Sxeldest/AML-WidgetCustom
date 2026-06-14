; =========================================================
; Game Engine Function: sub_206D88
; Address            : 0x206D88 - 0x206E66
; =========================================================

206D88:  PUSH            {R4-R7,LR}
206D8A:  ADD             R7, SP, #0xC
206D8C:  PUSH.W          {R8-R11}
206D90:  SUB             SP, SP, #4
206D92:  LDR.W           R1, [R0,#0x1C4]
206D96:  MOVS            R6, #0
206D98:  LDR.W           R2, [R0,#0x1D0]
206D9C:  ORR.W           R3, R2, R1
206DA0:  CMP.W           R6, R3,LSR#15
206DA4:  BNE             loc_206DD2
206DA6:  LDRB.W          R3, [R0,#0x20C]
206DAA:  CMP             R3, #0
206DAC:  BEQ             loc_206E5A
206DAE:  LDRB.W          R8, [R0,#0x212]
206DB2:  SUB.W           LR, R1, #1
206DB6:  LDR.W           R0, [R0,#0x1C0]
206DBA:  MOV.W           R9, #3
206DBE:  MOV.W           R10, #1
206DC2:  MOVS            R5, #0
206DC4:  SUB.W           R11, R0, #1
206DC8:  MOV.W           R0, R8,LSR#3
206DCC:  STR             R0, [SP,#0x20+var_20]
206DCE:  MOVS            R0, #0
206DD0:  B               loc_206E20
206DD2:  MOV.W           R0, #0xFFFFFFFF
206DD6:  B               loc_206E5E
206DD8:  SUBS            R1, R2, #1
206DDA:  CMP.W           R8, #8
206DDE:  BCC             loc_206DE8
206DE0:  LDR             R3, [SP,#0x20+var_20]
206DE2:  MUL.W           R5, R4, R3
206DE6:  B               loc_206DF0
206DE8:  MUL.W           R3, R4, R8
206DEC:  ADDS            R3, #7
206DEE:  LSRS            R5, R3, #3
206DF0:  RSB.W           R3, R2, #9
206DF4:  CMP             R1, #2
206DF6:  MOV.W           R4, #3
206DFA:  SUB.W           R1, R9, R1,ASR#1
206DFE:  EOR.W           R6, R6, #1
206E02:  IT GT
206E04:  ASRGT           R4, R3, #1
206E06:  LSL.W           R3, R10, R4
206E0A:  LSL.W           R1, R6, R1
206E0E:  ADD             R3, LR
206E10:  AND.W           R1, R1, #7
206E14:  SUBS            R1, R3, R1
206E16:  ADDS            R3, R5, #1
206E18:  MOV             R5, R2
206E1A:  LSRS            R1, R4
206E1C:  MLA.W           R0, R3, R1, R0
206E20:  RSB.W           R1, R5, #7
206E24:  CMP             R5, #6
206E26:  BGT             loc_206E5E
206E28:  CMP             R5, #1
206E2A:  MOV.W           R4, #3
206E2E:  IT GT
206E30:  ASRGT           R4, R1, #1
206E32:  AND.W           R6, R5, #1
206E36:  LSL.W           R2, R10, R4
206E3A:  ADD.W           R3, R11, R2
206E3E:  ADDS            R2, R5, #1
206E40:  SUBS            R1, #1
206E42:  SUB.W           R12, R9, R2,ASR#1
206E46:  LSL.W           R5, R6, R12
206E4A:  AND.W           R5, R5, #7
206E4E:  SUBS            R3, R3, R5
206E50:  MOV             R5, R2
206E52:  LSRS.W          R4, R3, R4
206E56:  BEQ             loc_206E24
206E58:  B               loc_206DD8
206E5A:  ADDS            R0, R2, #1
206E5C:  MULS            R0, R1
206E5E:  ADD             SP, SP, #4
206E60:  POP.W           {R8-R11}
206E64:  POP             {R4-R7,PC}
