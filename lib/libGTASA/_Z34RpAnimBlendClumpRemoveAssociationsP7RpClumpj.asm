; =========================================================
; Game Engine Function: _Z34RpAnimBlendClumpRemoveAssociationsP7RpClumpj
; Address            : 0x39099C - 0x3909CE
; =========================================================

39099C:  PUSH            {R4,R5,R7,LR}
39099E:  ADD             R7, SP, #8
3909A0:  MOV             R4, R1
3909A2:  LDR             R1, =(ClumpOffset_ptr - 0x3909A8)
3909A4:  ADD             R1, PC; ClumpOffset_ptr
3909A6:  LDR             R1, [R1]; ClumpOffset
3909A8:  LDR             R1, [R1]
3909AA:  LDR             R0, [R0,R1]
3909AC:  LDR             R0, [R0]
3909AE:  CMP             R0, #0
3909B0:  IT EQ
3909B2:  POPEQ           {R4,R5,R7,PC}
3909B4:  LDR.W           R5, [R0],#-4
3909B8:  CBZ             R4, loc_3909C0
3909BA:  LDRH            R1, [R0,#0x2E]
3909BC:  TST             R1, R4
3909BE:  BEQ             loc_3909C6
3909C0:  LDR             R1, [R0]
3909C2:  LDR             R1, [R1,#4]
3909C4:  BLX             R1
3909C6:  CMP             R5, #0
3909C8:  MOV             R0, R5
3909CA:  BNE             loc_3909B4
3909CC:  POP             {R4,R5,R7,PC}
