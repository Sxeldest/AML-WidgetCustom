; =========================================================
; Game Engine Function: sub_1119A4
; Address            : 0x1119A4 - 0x1119C4
; =========================================================

1119A4:  PUSH            {R4,R6,R7,LR}
1119A6:  ADD             R7, SP, #8
1119A8:  SUB             SP, SP, #0x10
1119AA:  MOV             R4, R0
1119AC:  MOVS            R0, #0
1119AE:  STR             R0, [R4,#0x10]
1119B0:  STR             R2, [SP,#0x18+var_C]
1119B2:  STRD.W          R3, R1, [SP,#0x18+var_14]
1119B6:  ADD             R1, SP, #0x18+var_14
1119B8:  MOV             R0, R4
1119BA:  BL              sub_112180
1119BE:  MOV             R0, R4
1119C0:  ADD             SP, SP, #0x10
1119C2:  POP             {R4,R6,R7,PC}
