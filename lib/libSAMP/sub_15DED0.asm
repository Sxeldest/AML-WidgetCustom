; =========================================================
; Game Engine Function: sub_15DED0
; Address            : 0x15DED0 - 0x15DEFA
; =========================================================

15DED0:  PUSH            {R7,LR}
15DED2:  MOV             R7, SP
15DED4:  SUB             SP, SP, #0x10
15DED6:  LDRB            R3, [R0]
15DED8:  MOV.W           R12, #0
15DEDC:  LDR             R2, [R0,#8]
15DEDE:  STR             R1, [SP,#0x18+var_10]
15DEE0:  LSLS            R1, R3, #0x1F
15DEE2:  STRD.W          R12, R12, [SP,#0x18+var_18]
15DEE6:  IT EQ
15DEE8:  ADDEQ           R2, R0, #1
15DEEA:  MOV             R1, R2
15DEEC:  MOVS            R0, #0
15DEEE:  MOVS            R2, #0
15DEF0:  MOVS            R3, #0
15DEF2:  BL              sub_164AA4
15DEF6:  ADD             SP, SP, #0x10
15DEF8:  POP             {R7,PC}
