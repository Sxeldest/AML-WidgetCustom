; =========================================================
; Game Engine Function: _ZN8CClothes20GetTextureDependencyEi
; Address            : 0x4573A0 - 0x4573B2
; =========================================================

4573A0:  CMP             R0, #0x11
4573A2:  ITT HI
4573A4:  MOVHI           R0, #0xA
4573A6:  BXHI            LR
4573A8:  LDR             R1, =(unk_619040 - 0x4573AE)
4573AA:  ADD             R1, PC; unk_619040
4573AC:  LDR.W           R0, [R1,R0,LSL#2]
4573B0:  BX              LR
