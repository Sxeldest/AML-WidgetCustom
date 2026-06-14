; =========================================================
; Game Engine Function: sub_21F010
; Address            : 0x21F010 - 0x21F044
; =========================================================

21F010:  PUSH            {R4-R7,LR}
21F012:  ADD             R7, SP, #0xC
21F014:  PUSH.W          {R11}
21F018:  LDR             R4, [R0,#4]
21F01A:  CBZ             R2, loc_21F028
21F01C:  ASRS            R5, R4, #8
21F01E:  LSLS            R6, R4, #0x1F
21F020:  ITT NE
21F022:  LDRNE           R6, [R2]
21F024:  LDRNE           R5, [R6,R5]
21F026:  B               loc_21F02A
21F028:  MOVS            R5, #0
21F02A:  LSLS            R4, R4, #0x1E
21F02C:  IT PL
21F02E:  MOVPL           R3, #2
21F030:  LDR             R0, [R0]
21F032:  ADD             R2, R5
21F034:  LDR             R4, [R0]
21F036:  LDR.W           R12, [R4,#0x1C]
21F03A:  POP.W           {R11}
21F03E:  POP.W           {R4-R7,LR}
21F042:  BX              R12
