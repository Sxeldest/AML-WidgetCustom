; =========================================================
; Game Engine Function: sub_12CE78
; Address            : 0x12CE78 - 0x12CE8A
; =========================================================

12CE78:  LDR             R0, =(off_23496C - 0x12CE7E)
12CE7A:  ADD             R0, PC; off_23496C
12CE7C:  LDR             R0, [R0]; dword_23DEF4
12CE7E:  LDR             R0, [R0]
12CE80:  CMP             R0, #0
12CE82:  IT NE
12CE84:  BNE.W           sub_14497C
12CE88:  BX              LR
