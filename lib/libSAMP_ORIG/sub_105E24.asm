; =========================================================
; Game Engine Function: sub_105E24
; Address            : 0x105E24 - 0x105E4E
; =========================================================

105E24:  PUSH            {R4,R5,R7,LR}
105E26:  ADD             R7, SP, #8
105E28:  MOV             R4, R1
105E2A:  LDR             R1, =(aThrow_1 - 0x105E34); "throw(" ...
105E2C:  MOV             R5, R0
105E2E:  MOV             R0, R4
105E30:  ADD             R1, PC; "throw("
105E32:  ADDS            R2, R1, #6
105E34:  BL              sub_FFB40
105E38:  ADD.W           R0, R5, #8
105E3C:  MOV             R1, R4
105E3E:  BL              sub_1037E0
105E42:  MOV             R0, R4
105E44:  MOVS            R1, #0x29 ; ')'
105E46:  POP.W           {R4,R5,R7,LR}
105E4A:  B.W             sub_FE09A
