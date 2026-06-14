; =========================================================
; Game Engine Function: sub_11ED20
; Address            : 0x11ED20 - 0x11ED40
; =========================================================

11ED20:  PUSH            {R4,R6,R7,LR}
11ED22:  ADD             R7, SP, #8
11ED24:  SUB             SP, SP, #0x10
11ED26:  MOV             R4, R0
11ED28:  MOVS            R0, #0
11ED2A:  STR             R0, [R4,#0x10]
11ED2C:  STR             R2, [SP,#0x18+var_C]
11ED2E:  STRD.W          R3, R1, [SP,#0x18+var_14]
11ED32:  ADD             R1, SP, #0x18+var_14
11ED34:  MOV             R0, R4
11ED36:  BL              sub_11F274
11ED3A:  MOV             R0, R4
11ED3C:  ADD             SP, SP, #0x10
11ED3E:  POP             {R4,R6,R7,PC}
