; =========================================================
; Game Engine Function: sub_E09B0
; Address            : 0xE09B0 - 0xE09D8
; =========================================================

E09B0:  PUSH            {R4,R5,R7,LR}
E09B2:  ADD             R7, SP, #8
E09B4:  MOV             R4, R0
E09B6:  MOV             R5, R1
E09B8:  MOV             R0, R1
E09BA:  MOV             R1, R2
E09BC:  MOV             R2, R3
E09BE:  BL              sub_E0408
E09C2:  CMP             R0, #0
E09C4:  BMI             loc_E09D2
E09C6:  MOV             R2, R0
E09C8:  MOV             R0, R4
E09CA:  MOV             R1, R5
E09CC:  BL              sub_DCD26
E09D0:  POP             {R4,R5,R7,PC}
E09D2:  MOVS            R0, #0
E09D4:  STR             R0, [R4,#8]
E09D6:  POP             {R4,R5,R7,PC}
