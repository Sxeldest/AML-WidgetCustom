; =========================================================
; Game Engine Function: sub_E9766
; Address            : 0xE9766 - 0xE979A
; =========================================================

E9766:  PUSH            {R7,LR}
E9768:  MOV             R7, SP
E976A:  MOV.W           R2, #0x80000000
E976E:  STR             R1, [R0]
E9770:  STR             R2, [R0,#0xC]
E9772:  MOV.W           R12, #0
E9776:  LDRB            R2, [R1]
E9778:  MOV             R3, R0
E977A:  MOV             R1, R0
E977C:  STR.W           R12, [R3,#8]!
E9780:  STR.W           R12, [R1,#4]!
E9784:  CMP             R2, #2
E9786:  BEQ             loc_E978E
E9788:  CMP             R2, #1
E978A:  BEQ             loc_E9790
E978C:  B               loc_E9794
E978E:  MOV             R1, R3
E9790:  MOVS            R2, #0
E9792:  STR             R2, [R1]
E9794:  BL              sub_E9A78
E9798:  POP             {R7,PC}
