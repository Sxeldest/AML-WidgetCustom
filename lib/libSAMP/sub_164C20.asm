; =========================================================
; Game Engine Function: sub_164C20
; Address            : 0x164C20 - 0x164C4C
; =========================================================

164C20:  PUSH            {R4,R6,R7,LR}
164C22:  ADD             R7, SP, #8
164C24:  LDR             R4, =(off_381B34 - 0x164C2A)
164C26:  ADD             R4, PC; off_381B34
164C28:  LDR.W           R12, [R4]
164C2C:  CMP.W           R12, #0
164C30:  BEQ             loc_164C48
164C32:  VLDR            S0, [R7,#arg_8]
164C36:  LDRD.W          LR, R4, [R7,#arg_0]
164C3A:  VSTR            S0, [R7,#arg_8]
164C3E:  STRD.W          LR, R4, [R7,#arg_0]
164C42:  POP.W           {R4,R6,R7,LR}
164C46:  BX              R12
164C48:  MOVS            R0, #0
164C4A:  POP             {R4,R6,R7,PC}
