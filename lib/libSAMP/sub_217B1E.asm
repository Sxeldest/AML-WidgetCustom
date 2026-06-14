; =========================================================
; Game Engine Function: sub_217B1E
; Address            : 0x217B1E - 0x217B36
; =========================================================

217B1E:  SUBS            R3, R1, R0
217B20:  IT EQ
217B22:  BXEQ            LR
217B24:  PUSH            {R4,R6,R7,LR}
217B26:  ADD             R7, SP, #0x10+var_8
217B28:  MOV             R4, R0
217B2A:  MOV             R0, R2; dest
217B2C:  MOV             R1, R4; src
217B2E:  MOV             R2, R3; n
217B30:  BLX             j_memmove
217B34:  POP             {R4,R6,R7,PC}
