; =========================================================
; Game Engine Function: sub_EF3EC
; Address            : 0xEF3EC - 0xEF428
; =========================================================

EF3EC:  PUSH            {R4,R6,R7,LR}
EF3EE:  ADD             R7, SP, #8
EF3F0:  SUB             SP, SP, #8
EF3F2:  MOV             R4, R0
EF3F4:  LDR             R0, [R0,#8]; int
EF3F6:  LDRB            R2, [R4,#4]
EF3F8:  LDR             R1, [R4,#0xC]
EF3FA:  CBZ             R2, loc_EF40C
EF3FC:  LDR             R1, [R1,#0x18]
EF3FE:  CMP             R1, #6
EF400:  BHI             loc_EF41A
EF402:  LDR             R2, =(off_22A9E8 - 0xEF408); "Sun" ...
EF404:  ADD             R2, PC; off_22A9E8
EF406:  LDR.W           R1, [R2,R1,LSL#2]
EF40A:  B               loc_EF41E
EF40C:  LDR             R2, [R4]
EF40E:  MOVS            R3, #0
EF410:  STR             R3, [SP,#0x10+var_10]
EF412:  MOVS            R3, #0x61 ; 'a'
EF414:  BL              sub_EFCE0
EF418:  B               loc_EF422
EF41A:  LDR             R1, =(asc_8C763 - 0xEF420); "???" ...
EF41C:  ADD             R1, PC; "???"
EF41E:  BL              sub_DFA8C
EF422:  STR             R0, [R4,#8]
EF424:  ADD             SP, SP, #8
EF426:  POP             {R4,R6,R7,PC}
