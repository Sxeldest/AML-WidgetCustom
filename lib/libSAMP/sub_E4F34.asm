; =========================================================
; Game Engine Function: sub_E4F34
; Address            : 0xE4F34 - 0xE4F4E
; =========================================================

E4F34:  MOV             R1, R0
E4F36:  LDR             R0, =(off_2349A8 - 0xE4F3E)
E4F38:  LDR             R2, =(dword_237518 - 0xE4F40)
E4F3A:  ADD             R0, PC; off_2349A8
E4F3C:  ADD             R2, PC; dword_237518
E4F3E:  LDR             R0, [R0]; dword_381BF4
E4F40:  STR             R1, [R2]
E4F42:  LDR             R0, [R0]
E4F44:  CMP             R0, #0
E4F46:  IT NE
E4F48:  BNE.W           sub_17C948
E4F4C:  BX              LR
