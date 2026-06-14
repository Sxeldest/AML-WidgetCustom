; =========================================================
; Game Engine Function: sub_F4960
; Address            : 0xF4960 - 0xF4980
; =========================================================

F4960:  PUSH            {R4,R6,R7,LR}
F4962:  ADD             R7, SP, #8
F4964:  SUB             SP, SP, #0x10
F4966:  MOV             R4, R0
F4968:  MOVS            R0, #0
F496A:  STR             R0, [R4,#0x10]
F496C:  STR             R2, [SP,#0x18+var_C]
F496E:  STRD.W          R3, R1, [SP,#0x18+var_14]
F4972:  ADD             R1, SP, #0x18+var_14
F4974:  MOV             R0, R4
F4976:  BL              sub_F4F7C
F497A:  MOV             R0, R4
F497C:  ADD             SP, SP, #0x10
F497E:  POP             {R4,R6,R7,PC}
