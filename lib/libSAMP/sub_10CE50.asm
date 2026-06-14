; =========================================================
; Game Engine Function: sub_10CE50
; Address            : 0x10CE50 - 0x10CE72
; =========================================================

10CE50:  PUSH            {R4,R6,R7,LR}
10CE52:  ADD             R7, SP, #8
10CE54:  LDR             R4, =(unk_2631D4 - 0x10CE5C)
10CE56:  MOVS            R1, #0
10CE58:  ADD             R4, PC; unk_2631D4
10CE5A:  MOV             R0, R4
10CE5C:  BL              sub_10C86C
10CE60:  LDR             R0, =(sub_10C894+1 - 0x10CE6A)
10CE62:  MOV             R1, R4
10CE64:  LDR             R2, =(off_22A540 - 0x10CE6C)
10CE66:  ADD             R0, PC; sub_10C894
10CE68:  ADD             R2, PC; off_22A540
10CE6A:  POP.W           {R4,R6,R7,LR}
10CE6E:  B.W             sub_224250
