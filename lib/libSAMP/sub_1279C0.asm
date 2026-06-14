; =========================================================
; Game Engine Function: sub_1279C0
; Address            : 0x1279C0 - 0x1279E0
; =========================================================

1279C0:  PUSH            {R4,R6,R7,LR}
1279C2:  ADD             R7, SP, #8
1279C4:  SUB             SP, SP, #0x10
1279C6:  MOV             R4, R0
1279C8:  MOVS            R0, #0
1279CA:  STR             R0, [R4,#0x10]
1279CC:  STR             R2, [SP,#0x18+var_C]
1279CE:  STRD.W          R3, R1, [SP,#0x18+var_14]
1279D2:  ADD             R1, SP, #0x18+var_14
1279D4:  MOV             R0, R4
1279D6:  BL              sub_127ED0
1279DA:  MOV             R0, R4
1279DC:  ADD             SP, SP, #0x10
1279DE:  POP             {R4,R6,R7,PC}
