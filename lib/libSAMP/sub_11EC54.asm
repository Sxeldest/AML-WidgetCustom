; =========================================================
; Game Engine Function: sub_11EC54
; Address            : 0x11EC54 - 0x11EC74
; =========================================================

11EC54:  PUSH            {R4,R6,R7,LR}
11EC56:  ADD             R7, SP, #8
11EC58:  SUB             SP, SP, #0x10
11EC5A:  MOV             R4, R0
11EC5C:  MOVS            R0, #0
11EC5E:  STR             R0, [R4,#0x10]
11EC60:  STR             R2, [SP,#0x18+var_C]
11EC62:  STRD.W          R3, R1, [SP,#0x18+var_14]
11EC66:  ADD             R1, SP, #0x18+var_14
11EC68:  MOV             R0, R4
11EC6A:  BL              sub_11F0AC
11EC6E:  MOV             R0, R4
11EC70:  ADD             SP, SP, #0x10
11EC72:  POP             {R4,R6,R7,PC}
