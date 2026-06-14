; =========================================================
; Game Engine Function: sub_164B6C
; Address            : 0x164B6C - 0x164B8C
; =========================================================

164B6C:  PUSH            {R4,R6,R7,LR}
164B6E:  ADD             R7, SP, #8
164B70:  LDR             R4, =(off_381B10 - 0x164B76)
164B72:  ADD             R4, PC; off_381B10
164B74:  LDR.W           R12, [R4]
164B78:  CMP.W           R12, #0
164B7C:  BEQ             loc_164B88
164B7E:  LDR             R4, [R7,#arg_0]
164B80:  STR             R4, [R7,#arg_0]
164B82:  POP.W           {R4,R6,R7,LR}
164B86:  BX              R12
164B88:  MOVS            R0, #0
164B8A:  POP             {R4,R6,R7,PC}
