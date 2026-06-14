; =========================================================
; Game Engine Function: sub_7C992
; Address            : 0x7C992 - 0x7C9AE
; =========================================================

7C992:  PUSH            {R4,R5,R7,LR}
7C994:  ADD             R7, SP, #8
7C996:  LDRD.W          R4, R5, [R0,#0x48]
7C99A:  CMP             R4, R5
7C99C:  BEQ             locret_7C9AC
7C99E:  LDR.W           R0, [R4],#4
7C9A2:  LDR             R1, [R0]
7C9A4:  LDR             R1, [R1,#8]
7C9A6:  BLX             R1
7C9A8:  CMP             R4, R5
7C9AA:  BNE             loc_7C99E
7C9AC:  POP             {R4,R5,R7,PC}
