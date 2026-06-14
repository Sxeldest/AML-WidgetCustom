; =========================================================
; Game Engine Function: sub_14DC08
; Address            : 0x14DC08 - 0x14DC28
; =========================================================

14DC08:  LDR             R0, =(off_23496C - 0x14DC0E)
14DC0A:  ADD             R0, PC; off_23496C
14DC0C:  LDR             R0, [R0]; dword_23DEF4
14DC0E:  LDR             R0, [R0]
14DC10:  LDR.W           R0, [R0,#0x3B0]
14DC14:  LDR             R0, [R0]
14DC16:  CBZ             R0, locret_14DC26
14DC18:  MOVW            R1, #0x13BC
14DC1C:  LDR             R0, [R0,R1]
14DC1E:  CBZ             R0, locret_14DC26
14DC20:  LDR             R0, [R0,#0x1C]
14DC22:  B.W             sub_105414
14DC26:  BX              LR
