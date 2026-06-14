; =========================================================
; Game Engine Function: sub_164A50
; Address            : 0x164A50 - 0x164A6C
; =========================================================

164A50:  PUSH            {R4,R6,R7,LR}
164A52:  ADD             R7, SP, #8
164A54:  LDR             R4, =(off_381AE4 - 0x164A5A)
164A56:  ADD             R4, PC; off_381AE4
164A58:  LDR.W           R12, [R4]
164A5C:  CMP.W           R12, #0
164A60:  BEQ             loc_164A68
164A62:  POP.W           {R4,R6,R7,LR}
164A66:  BX              R12
164A68:  MOVS            R0, #0
164A6A:  POP             {R4,R6,R7,PC}
