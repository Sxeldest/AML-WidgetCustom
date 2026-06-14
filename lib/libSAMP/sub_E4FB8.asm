; =========================================================
; Game Engine Function: sub_E4FB8
; Address            : 0xE4FB8 - 0xE4FC2
; =========================================================

E4FB8:  LDR             R0, =(off_234930 - 0xE4FBE)
E4FBA:  ADD             R0, PC; off_234930
E4FBC:  LDR             R0, [R0]; dword_23DF1C
E4FBE:  LDR             R0, [R0]
E4FC0:  BX              LR
