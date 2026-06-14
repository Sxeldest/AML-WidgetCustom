; =========================================================
; Game Engine Function: sub_164A80
; Address            : 0x164A80 - 0x164AA0
; =========================================================

164A80:  PUSH            {R4,R6,R7,LR}
164A82:  ADD             R7, SP, #8
164A84:  LDR             R4, =(off_381AEC - 0x164A8A)
164A86:  ADD             R4, PC; off_381AEC
164A88:  LDR.W           R12, [R4]
164A8C:  CMP.W           R12, #0
164A90:  BEQ             loc_164A9C
164A92:  LDR             R4, [R7,#arg_0]
164A94:  STR             R4, [R7,#arg_0]
164A96:  POP.W           {R4,R6,R7,LR}
164A9A:  BX              R12
164A9C:  MOVS            R0, #0
164A9E:  POP             {R4,R6,R7,PC}
