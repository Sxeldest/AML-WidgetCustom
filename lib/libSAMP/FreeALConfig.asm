; =========================================================
; Game Engine Function: FreeALConfig
; Address            : 0x1D898C - 0x1D8A5C
; =========================================================

1D898C:  PUSH            {R4-R11,LR}
1D8990:  ADD             R11, SP, #0x1C
1D8994:  SUB             SP, SP, #4
1D8998:  LDR             R0, =(dword_382934 - 0x1D89A4)
1D899C:  LDR             R0, [PC,R0]; dword_382934
1D89A0:  CMP             R0, #0
1D89A4:  BEQ             loc_1D8A34
1D89A8:  LDR             R0, =(dword_382930 - 0x1D89C0)
1D89AC:  MOV             R4, #0
1D89B0:  LDR             R8, =(dword_382930 - 0x1D89C8)
1D89B4:  LDR             R9, =(dword_382930 - 0x1D8A20)
1D89B8:  ADD             R5, PC, R0; dword_382930
1D89BC:  LDR             R10, =(dword_382934 - 0x1D8A2C)
1D89C0:  LDR             R0, [PC,R8]; dword_382930
1D89C4:  ADD             R6, R4, R4,LSL#1
1D89C8:  ADD             R1, R0, R6,LSL#2
1D89CC:  LDMIB           R1, {R0,R1}
1D89D0:  CMP             R1, #0
1D89D4:  BEQ             loc_1D8A14
1D89D8:  MOV             R7, #0
1D89DC:  LDR             R0, [R0,R7,LSL#3]; ptr
1D89E0:  BL              free
1D89E4:  LDR             R0, [R5]
1D89E8:  ADD             R0, R0, R6,LSL#2
1D89EC:  LDR             R0, [R0,#4]
1D89F0:  ADD             R0, R0, R7,LSL#3
1D89F4:  LDR             R0, [R0,#4]; ptr
1D89F8:  BL              free
1D89FC:  LDR             R0, [R5]
1D8A00:  ADD             R7, R7, #1
1D8A04:  ADD             R1, R0, R6,LSL#2
1D8A08:  LDMIB           R1, {R0,R1}; ptr
1D8A0C:  CMP             R7, R1
1D8A10:  BCC             loc_1D89DC
1D8A14:  BL              free
1D8A18:  LDR             R0, [PC,R9]; dword_382930
1D8A1C:  LDR             R0, [R0,R6,LSL#2]; ptr
1D8A20:  BL              free
1D8A24:  LDR             R0, [PC,R10]; dword_382934
1D8A28:  ADD             R4, R4, #1
1D8A2C:  CMP             R4, R0
1D8A30:  BCC             loc_1D89C0
1D8A34:  LDR             R0, =(dword_382930 - 0x1D8A40)
1D8A38:  ADD             R4, PC, R0; dword_382930
1D8A3C:  LDR             R0, [R4]; ptr
1D8A40:  BL              free
1D8A44:  LDR             R0, =(dword_382934 - 0x1D8A58)
1D8A48:  MOV             R1, #0
1D8A4C:  STR             R1, [R4]
1D8A50:  STR             R1, [PC,R0]; dword_382934
1D8A54:  SUB             SP, R11, #0x1C
1D8A58:  POP             {R4-R11,PC}
