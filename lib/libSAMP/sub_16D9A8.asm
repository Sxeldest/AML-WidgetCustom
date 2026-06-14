; =========================================================
; Game Engine Function: sub_16D9A8
; Address            : 0x16D9A8 - 0x16D9E6
; =========================================================

16D9A8:  PUSH            {R4,R6,R7,LR}
16D9AA:  ADD             R7, SP, #8
16D9AC:  MOV             R4, R2
16D9AE:  MOV             R0, R2
16D9B0:  MOVS            R1, #0
16D9B2:  MOVS            R2, #0
16D9B4:  BL              sub_16560C
16D9B8:  LDR             R1, =(dword_381B58 - 0x16D9C2)
16D9BA:  MOVW            R3, #0x2D14
16D9BE:  ADD             R1, PC; dword_381B58
16D9C0:  LDR             R1, [R1]
16D9C2:  LDR             R2, [R1,R3]
16D9C4:  CBZ             R2, loc_16D9D8
16D9C6:  ADD             R1, R3
16D9C8:  LDR             R1, [R1,#8]
16D9CA:  LDR             R3, [R1,#4]
16D9CC:  CMP             R3, R0
16D9CE:  BEQ             loc_16D9E2
16D9D0:  SUBS            R2, #1
16D9D2:  ADD.W           R1, R1, #0x1C
16D9D6:  BNE             loc_16D9CA
16D9D8:  MOV             R0, R4
16D9DA:  POP.W           {R4,R6,R7,LR}
16D9DE:  B.W             sub_170B90
16D9E2:  MOV             R0, R1
16D9E4:  POP             {R4,R6,R7,PC}
