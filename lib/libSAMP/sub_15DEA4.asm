; =========================================================
; Game Engine Function: sub_15DEA4
; Address            : 0x15DEA4 - 0x15DED0
; =========================================================

15DEA4:  PUSH            {R4,R6,R7,LR}
15DEA6:  ADD             R7, SP, #8
15DEA8:  MOV             R4, R0
15DEAA:  LDR             R0, [R0,#0xC]
15DEAC:  CBZ             R0, locret_15DECE
15DEAE:  LDR             R1, [R4,#8]
15DEB0:  MOV             R0, R4
15DEB2:  BL              sub_15C8E2
15DEB6:  LDR             R1, [R4,#4]
15DEB8:  MOVS            R0, #0
15DEBA:  STR             R0, [R4,#8]
15DEBC:  CBZ             R1, loc_15DECC
15DEBE:  MOVS            R2, #0
15DEC0:  LDR             R3, [R4]
15DEC2:  STR.W           R0, [R3,R2,LSL#2]
15DEC6:  ADDS            R2, #1
15DEC8:  CMP             R1, R2
15DECA:  BNE             loc_15DEC0
15DECC:  STR             R0, [R4,#0xC]
15DECE:  POP             {R4,R6,R7,PC}
