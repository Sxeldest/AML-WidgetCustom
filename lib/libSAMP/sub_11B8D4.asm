; =========================================================
; Game Engine Function: sub_11B8D4
; Address            : 0x11B8D4 - 0x11B8F4
; =========================================================

11B8D4:  PUSH            {R4,R6,R7,LR}
11B8D6:  ADD             R7, SP, #8
11B8D8:  SUB             SP, SP, #0x10
11B8DA:  MOV             R4, R0
11B8DC:  MOVS            R0, #0
11B8DE:  STR             R0, [R4,#0x10]
11B8E0:  STR             R2, [SP,#0x18+var_C]
11B8E2:  STRD.W          R3, R1, [SP,#0x18+var_14]
11B8E6:  ADD             R1, SP, #0x18+var_14
11B8E8:  MOV             R0, R4
11B8EA:  BL              sub_11C0A4
11B8EE:  MOV             R0, R4
11B8F0:  ADD             SP, SP, #0x10
11B8F2:  POP             {R4,R6,R7,PC}
