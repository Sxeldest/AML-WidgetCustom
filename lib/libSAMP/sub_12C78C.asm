; =========================================================
; Game Engine Function: sub_12C78C
; Address            : 0x12C78C - 0x12C7D0
; =========================================================

12C78C:  PUSH            {R4,R5,R7,LR}
12C78E:  ADD             R7, SP, #8
12C790:  LDR             R1, =(off_23496C - 0x12C796)
12C792:  ADD             R1, PC; off_23496C
12C794:  LDR             R4, [R1]; dword_23DEF4
12C796:  LDR             R1, [R4]
12C798:  CBZ             R1, locret_12C7AA
12C79A:  LDR             R1, =(off_234A24 - 0x12C7A0)
12C79C:  ADD             R1, PC; off_234A24
12C79E:  LDR             R1, [R1]; dword_23DEEC
12C7A0:  LDR             R1, [R1]
12C7A2:  LDR             R1, [R1,#0x58]
12C7A4:  LDRB.W          R1, [R1,#0x50]
12C7A8:  CBZ             R1, loc_12C7AC
12C7AA:  POP             {R4,R5,R7,PC}
12C7AC:  LDR             R5, [R0,#4]
12C7AE:  BL              sub_F0B30
12C7B2:  LDR             R1, [R4]
12C7B4:  ADD.W           R2, R0, #0x1F4
12C7B8:  STR             R2, [R5,#0x7C]
12C7BA:  LDR.W           R1, [R1,#0x3B0]
12C7BE:  LDR             R0, [R1,#0x18]
12C7C0:  CMP             R0, #0
12C7C2:  BEQ             locret_12C7AA
12C7C4:  MOVS            R1, #0
12C7C6:  MOVS            R2, #0
12C7C8:  POP.W           {R4,R5,R7,LR}
12C7CC:  B.W             sub_14F47C
