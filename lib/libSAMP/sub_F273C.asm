; =========================================================
; Game Engine Function: sub_F273C
; Address            : 0xF273C - 0xF275C
; =========================================================

F273C:  PUSH            {R4,R6,R7,LR}
F273E:  ADD             R7, SP, #8
F2740:  SUB             SP, SP, #0x10
F2742:  MOV             R4, R0
F2744:  MOVS            R0, #0
F2746:  STR             R0, [R4,#0x10]
F2748:  STR             R2, [SP,#0x18+var_C]
F274A:  STRD.W          R3, R1, [SP,#0x18+var_14]
F274E:  ADD             R1, SP, #0x18+var_14
F2750:  MOV             R0, R4
F2752:  BL              sub_F2F4C
F2756:  MOV             R0, R4
F2758:  ADD             SP, SP, #0x10
F275A:  POP             {R4,R6,R7,PC}
