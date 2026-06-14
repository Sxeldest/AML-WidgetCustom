; =========================================================
; Game Engine Function: sub_21CD28
; Address            : 0x21CD28 - 0x21CD64
; =========================================================

21CD28:  PUSH            {R4-R7,LR}
21CD2A:  ADD             R7, SP, #0xC
21CD2C:  PUSH.W          {R11}
21CD30:  MOV             R5, R0
21CD32:  LDR             R0, [R0,#8]
21CD34:  MOV             R4, R1
21CD36:  BL              sub_2154CC
21CD3A:  LDR             R1, =(asc_898D5 - 0x21CD44); " (" ...
21CD3C:  MOV             R0, R4
21CD3E:  LDR             R6, =(sub_216F98+1 - 0x21CD48)
21CD40:  ADD             R1, PC; " ("
21CD42:  ADDS            R2, R1, #2
21CD44:  ADD             R6, PC; sub_216F98
21CD46:  BLX             R6; sub_216F98
21CD48:  LDRD.W          R1, R2, [R5,#0xC]
21CD4C:  MOV             R0, R4
21CD4E:  BLX             R6; sub_216F98
21CD50:  LDR             R1, =(unk_901C1 - 0x21CD5A)
21CD52:  MOV             R0, R4
21CD54:  MOV             R3, R6
21CD56:  ADD             R1, PC; unk_901C1
21CD58:  ADDS            R2, R1, #1
21CD5A:  POP.W           {R11}
21CD5E:  POP.W           {R4-R7,LR}
21CD62:  BX              R3; sub_216F98
