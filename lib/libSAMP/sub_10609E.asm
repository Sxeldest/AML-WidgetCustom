; =========================================================
; Game Engine Function: sub_10609E
; Address            : 0x10609E - 0x1060CC
; =========================================================

10609E:  PUSH            {R4,R6,R7,LR}
1060A0:  ADD             R7, SP, #8
1060A2:  SUB             SP, SP, #8
1060A4:  MOV             R4, R0
1060A6:  LDR             R0, [R0,#0x5C]
1060A8:  LDRH            R0, [R0,#0x26]
1060AA:  BL              sub_108480
1060AE:  CBZ             R0, loc_1060C6
1060B0:  LDR             R0, [R4,#0x5C]
1060B2:  LDRH            R0, [R0,#0x26]
1060B4:  STR             R0, [SP,#0x10+var_C]
1060B6:  ADD             R0, SP, #0x10+var_C
1060B8:  BL              sub_108590
1060BC:  SUBS            R0, #4
1060BE:  CLZ.W           R0, R0
1060C2:  LSRS            R0, R0, #5
1060C4:  B               loc_1060C8
1060C6:  MOVS            R0, #0
1060C8:  ADD             SP, SP, #8
1060CA:  POP             {R4,R6,R7,PC}
