; =========================================================
; Game Engine Function: sub_11B9AC
; Address            : 0x11B9AC - 0x11B9CC
; =========================================================

11B9AC:  PUSH            {R4,R6,R7,LR}
11B9AE:  ADD             R7, SP, #8
11B9B0:  SUB             SP, SP, #0x10
11B9B2:  MOV             R4, R0
11B9B4:  MOVS            R0, #0
11B9B6:  STR             R0, [R4,#0x10]
11B9B8:  STR             R2, [SP,#0x18+var_C]
11B9BA:  STRD.W          R3, R1, [SP,#0x18+var_14]
11B9BE:  ADD             R1, SP, #0x18+var_14
11B9C0:  MOV             R0, R4
11B9C2:  BL              sub_11C338
11B9C6:  MOV             R0, R4
11B9C8:  ADD             SP, SP, #0x10
11B9CA:  POP             {R4,R6,R7,PC}
