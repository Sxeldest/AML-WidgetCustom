; =========================================================
; Game Engine Function: sub_21FB48
; Address            : 0x21FB48 - 0x21FB78
; =========================================================

21FB48:  PUSH            {R4,R6,R7,LR}
21FB4A:  ADD             R7, SP, #8
21FB4C:  MOV             R4, R0
21FB4E:  LDR             R0, [R0]
21FB50:  DMB.W           ISH
21FB54:  SUBS            R1, R0, #4
21FB56:  LDREX.W         R2, [R1]
21FB5A:  SUBS            R2, #1
21FB5C:  STREX.W         R3, R2, [R1]
21FB60:  CMP             R3, #0
21FB62:  BNE             loc_21FB56
21FB64:  CMP.W           R2, #0xFFFFFFFF
21FB68:  DMB.W           ISH
21FB6C:  ITT LE
21FB6E:  SUBLE           R0, #0xC; void *
21FB70:  BLXLE           j__ZdlPv; operator delete(void *)
21FB74:  MOV             R0, R4
21FB76:  POP             {R4,R6,R7,PC}
