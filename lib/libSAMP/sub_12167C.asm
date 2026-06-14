; =========================================================
; Game Engine Function: sub_12167C
; Address            : 0x12167C - 0x12169C
; =========================================================

12167C:  PUSH            {R4,R6,R7,LR}
12167E:  ADD             R7, SP, #8
121680:  SUB             SP, SP, #0x10
121682:  MOV             R4, R0
121684:  MOVS            R0, #0
121686:  STR             R0, [R4,#0x10]
121688:  STR             R2, [SP,#0x18+var_C]
12168A:  STRD.W          R3, R1, [SP,#0x18+var_14]
12168E:  ADD             R1, SP, #0x18+var_14
121690:  MOV             R0, R4
121692:  BL              sub_121A64
121696:  MOV             R0, R4
121698:  ADD             SP, SP, #0x10
12169A:  POP             {R4,R6,R7,PC}
