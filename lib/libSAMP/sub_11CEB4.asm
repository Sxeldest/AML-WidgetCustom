; =========================================================
; Game Engine Function: sub_11CEB4
; Address            : 0x11CEB4 - 0x11CED4
; =========================================================

11CEB4:  PUSH            {R4,R6,R7,LR}
11CEB6:  ADD             R7, SP, #8
11CEB8:  SUB             SP, SP, #0x10
11CEBA:  MOV             R4, R0
11CEBC:  MOVS            R0, #0
11CEBE:  STR             R0, [R4,#0x10]
11CEC0:  STR             R2, [SP,#0x18+var_C]
11CEC2:  STRD.W          R3, R1, [SP,#0x18+var_14]
11CEC6:  ADD             R1, SP, #0x18+var_14
11CEC8:  MOV             R0, R4
11CECA:  BL              sub_11D0E4
11CECE:  MOV             R0, R4
11CED0:  ADD             SP, SP, #0x10
11CED2:  POP             {R4,R6,R7,PC}
