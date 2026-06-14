; =========================================================
; Game Engine Function: sub_164C84
; Address            : 0x164C84 - 0x164C9C
; =========================================================

164C84:  LDR             R1, =(off_381B40 - 0x164C8A)
164C86:  ADD             R1, PC; off_381B40
164C88:  LDR.W           R12, [R1]
164C8C:  CMP.W           R12, #0
164C90:  ITT EQ
164C92:  MOVEQ           R0, #0
164C94:  BXEQ            LR
164C96:  LDR             R1, [SP,#arg_0]
164C98:  STR             R1, [SP,#arg_0]
164C9A:  BX              R12
