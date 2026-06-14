; =========================================================
; Game Engine Function: sub_E4F94
; Address            : 0xE4F94 - 0xE4FAE
; =========================================================

E4F94:  MOV             R1, R0
E4F96:  LDR             R0, =(off_2349A8 - 0xE4F9E)
E4F98:  LDR             R2, =(byte_23DC44 - 0xE4FA0)
E4F9A:  ADD             R0, PC; off_2349A8
E4F9C:  ADD             R2, PC; byte_23DC44
E4F9E:  LDR             R0, [R0]; dword_381BF4
E4FA0:  STRB            R1, [R2]
E4FA2:  LDR             R0, [R0]
E4FA4:  CMP             R0, #0
E4FA6:  IT NE
E4FA8:  BNE.W           sub_17CA28
E4FAC:  BX              LR
