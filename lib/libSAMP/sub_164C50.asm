; =========================================================
; Game Engine Function: sub_164C50
; Address            : 0x164C50 - 0x164C6C
; =========================================================

164C50:  PUSH            {R4,R6,R7,LR}
164C52:  ADD             R7, SP, #8
164C54:  LDR             R4, =(off_381B38 - 0x164C5A)
164C56:  ADD             R4, PC; off_381B38
164C58:  LDR.W           R12, [R4]
164C5C:  CMP.W           R12, #0
164C60:  BEQ             loc_164C68
164C62:  POP.W           {R4,R6,R7,LR}
164C66:  BX              R12
164C68:  MOVS            R0, #0
164C6A:  POP             {R4,R6,R7,PC}
