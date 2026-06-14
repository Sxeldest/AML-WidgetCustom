; =========================================================
; Game Engine Function: sub_989E8
; Address            : 0x989E8 - 0x98A06
; =========================================================

989E8:  PUSH            {R7,LR}
989EA:  MOV             R7, SP
989EC:  LDR             R0, =(dword_1ACF68 - 0x989F6)
989EE:  MOVW            R1, #0x19AC
989F2:  ADD             R0, PC; dword_1ACF68
989F4:  LDR             R0, [R0]
989F6:  LDR             R0, [R0,R1]
989F8:  MOVS            R1, #2
989FA:  BL              sub_98A0C
989FE:  POP.W           {R7,LR}
98A02:  B.W             sub_94DC0
