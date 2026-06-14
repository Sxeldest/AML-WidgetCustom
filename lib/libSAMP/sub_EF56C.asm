; =========================================================
; Game Engine Function: sub_EF56C
; Address            : 0xEF56C - 0xEF5A2
; =========================================================

EF56C:  PUSH            {R4,R6,R7,LR}
EF56E:  ADD             R7, SP, #8
EF570:  SUB             SP, SP, #8
EF572:  MOV             R4, R0
EF574:  CBZ             R1, loc_EF590
EF576:  LDRB            R0, [R4,#4]
EF578:  CBNZ            R0, loc_EF590
EF57A:  LDR             R2, [R4]
EF57C:  MOVS            R3, #0x4F ; 'O'
EF57E:  LDRD.W          R0, R1, [R4,#8]
EF582:  STR             R3, [SP,#0x10+var_10]
EF584:  MOVS            R3, #0x6D ; 'm'
EF586:  BL              sub_EFCE0
EF58A:  STR             R0, [R4,#8]
EF58C:  ADD             SP, SP, #8
EF58E:  POP             {R4,R6,R7,PC}
EF590:  LDR             R0, [R4,#0xC]
EF592:  LDR             R0, [R0,#0x10]
EF594:  ADDS            R1, R0, #1
EF596:  MOV             R0, R4
EF598:  ADD             SP, SP, #8
EF59A:  POP.W           {R4,R6,R7,LR}
EF59E:  B.W             sub_EFC70
