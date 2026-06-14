; =========================================================
; Game Engine Function: sub_478FDA
; Address            : 0x478FDA - 0x47903C
; =========================================================

478FDA:  PUSH            {R4,R6,R7,LR}
478FDC:  ADD             R7, SP, #8
478FDE:  MOV             R4, R0
478FE0:  LDR             R0, [R4,#0x18]
478FE2:  LDR             R1, [R0]
478FE4:  ADDS            R2, R1, #1
478FE6:  STR             R2, [R0]
478FE8:  MOVS            R2, #0xFF
478FEA:  STRB            R2, [R1]
478FEC:  LDR             R1, [R0,#4]
478FEE:  SUBS            R1, #1
478FF0:  STR             R1, [R0,#4]
478FF2:  BNE             loc_47900A
478FF4:  LDR             R1, [R0,#0xC]
478FF6:  MOV             R0, R4
478FF8:  BLX             R1
478FFA:  CBNZ            R0, loc_47900A
478FFC:  LDR             R0, [R4]
478FFE:  MOVS            R1, #0x18
479000:  STR             R1, [R0,#0x14]
479002:  LDR             R0, [R4]
479004:  LDR             R1, [R0]
479006:  MOV             R0, R4
479008:  BLX             R1
47900A:  LDR             R0, [R4,#0x18]
47900C:  LDR             R1, [R0]
47900E:  ADDS            R2, R1, #1
479010:  STR             R2, [R0]
479012:  MOVS            R2, #0xD9
479014:  STRB            R2, [R1]
479016:  LDR             R1, [R0,#4]
479018:  SUBS            R1, #1
47901A:  STR             R1, [R0,#4]
47901C:  IT NE
47901E:  POPNE           {R4,R6,R7,PC}
479020:  LDR             R1, [R0,#0xC]
479022:  MOV             R0, R4
479024:  BLX             R1
479026:  CBZ             R0, loc_47902A
479028:  POP             {R4,R6,R7,PC}
47902A:  LDR             R0, [R4]
47902C:  MOVS            R1, #0x18
47902E:  STR             R1, [R0,#0x14]
479030:  LDR             R0, [R4]
479032:  LDR             R1, [R0]
479034:  MOV             R0, R4
479036:  POP.W           {R4,R6,R7,LR}
47903A:  BX              R1
