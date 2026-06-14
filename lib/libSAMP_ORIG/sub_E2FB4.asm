; =========================================================
; Game Engine Function: sub_E2FB4
; Address            : 0xE2FB4 - 0xE2FCE
; =========================================================

E2FB4:  PUSH            {R4,R5,R7,LR}
E2FB6:  ADD             R7, SP, #8
E2FB8:  MOV             R4, R1
E2FBA:  BL              sub_E2FCE
E2FBE:  MOV             R5, R0
E2FC0:  MOV             R0, R4
E2FC2:  BL              sub_E2FCE
E2FC6:  EORS            R0, R5
E2FC8:  EOR.W           R0, R0, #1
E2FCC:  POP             {R4,R5,R7,PC}
