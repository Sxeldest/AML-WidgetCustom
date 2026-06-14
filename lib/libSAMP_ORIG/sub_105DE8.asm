; =========================================================
; Game Engine Function: sub_105DE8
; Address            : 0x105DE8 - 0x105E16
; =========================================================

105DE8:  PUSH            {R4,R5,R7,LR}
105DEA:  ADD             R7, SP, #8
105DEC:  MOV             R4, R1
105DEE:  LDR             R1, =(aNoexcept_1 - 0x105DF8); "noexcept(" ...
105DF0:  MOV             R5, R0
105DF2:  MOV             R0, R4
105DF4:  ADD             R1, PC; "noexcept("
105DF6:  ADD.W           R2, R1, #9
105DFA:  BL              sub_FFB40
105DFE:  LDR             R0, [R5,#8]
105E00:  MOV             R1, R4
105E02:  BL              sub_FE074
105E06:  LDR             R1, =(asc_50037 - 0x105E0E); ")" ...
105E08:  MOV             R0, R4
105E0A:  ADD             R1, PC; ")"
105E0C:  ADDS            R2, R1, #1
105E0E:  POP.W           {R4,R5,R7,LR}
105E12:  B.W             sub_FFB40
