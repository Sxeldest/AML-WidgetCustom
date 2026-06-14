; =========================================================
; Game Engine Function: sub_16FF28
; Address            : 0x16FF28 - 0x16FF36
; =========================================================

16FF28:  LDR             R0, =(dword_381B58 - 0x16FF32)
16FF2A:  MOVW            R1, #0x18C8
16FF2E:  ADD             R0, PC; dword_381B58
16FF30:  LDR             R0, [R0]
16FF32:  LDR             R0, [R0,R1]
16FF34:  BX              LR
