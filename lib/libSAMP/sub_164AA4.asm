; =========================================================
; Game Engine Function: sub_164AA4
; Address            : 0x164AA4 - 0x164ACC
; =========================================================

164AA4:  PUSH            {R4,R5,R7,LR}
164AA6:  ADD             R7, SP, #8
164AA8:  LDR             R4, =(off_381AF0 - 0x164AAE)
164AAA:  ADD             R4, PC; off_381AF0
164AAC:  LDR.W           R12, [R4]
164AB0:  CMP.W           R12, #0
164AB4:  BEQ             loc_164AC8
164AB6:  LDRD.W          R4, LR, [R7,#arg_0]
164ABA:  LDR             R5, [R7,#arg_8]
164ABC:  STR             R5, [R7,#arg_8]
164ABE:  STRD.W          R4, LR, [R7,#arg_0]
164AC2:  POP.W           {R4,R5,R7,LR}
164AC6:  BX              R12
164AC8:  MOVS            R0, #0
164ACA:  POP             {R4,R5,R7,PC}
