; =========================================================
; Game Engine Function: sub_86B00
; Address            : 0x86B00 - 0x86B0E
; =========================================================

86B00:  LDR             R0, =(unk_1ABEA8 - 0x86B06)
86B02:  ADD             R0, PC; unk_1ABEA8
86B04:  LDREXD.W        R0, R1, [R0]
86B08:  CLREX.W
86B0C:  BX              LR
