; =========================================================
; Game Engine Function: sub_11548E
; Address            : 0x11548E - 0x1154AE
; =========================================================

11548E:  PUSH            {R4,R5,R7,LR}
115490:  ADD             R7, SP, #8
115492:  ADDS            R0, #8
115494:  BL              sub_111E0C
115498:  MOV             R4, R0
11549A:  LDRD.W          R5, R0, [R0]
11549E:  CMP             R0, R5
1154A0:  BEQ             loc_1154AA
1154A2:  SUBS            R0, #8
1154A4:  BL              sub_111CE6
1154A8:  B               loc_11549E
1154AA:  STR             R5, [R4,#4]
1154AC:  POP             {R4,R5,R7,PC}
