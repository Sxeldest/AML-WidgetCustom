; =========================================================
; Game Engine Function: sub_E4F64
; Address            : 0xE4F64 - 0xE4F7E
; =========================================================

E4F64:  MOV             R1, R0
E4F66:  LDR             R0, =(off_2349A8 - 0xE4F6E)
E4F68:  LDR             R2, =(dword_23751C - 0xE4F70)
E4F6A:  ADD             R0, PC; off_2349A8
E4F6C:  ADD             R2, PC; dword_23751C
E4F6E:  LDR             R0, [R0]; dword_381BF4
E4F70:  STR             R1, [R2]
E4F72:  LDR             R0, [R0]
E4F74:  CMP             R0, #0
E4F76:  IT NE
E4F78:  BNE.W           sub_17C9B0
E4F7C:  BX              LR
