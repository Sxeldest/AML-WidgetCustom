; =========================================================
; Game Engine Function: _ZN12CPostEffects21DrawQuadSetDefaultUVsEv
; Address            : 0x5B28B4 - 0x5B28D2
; =========================================================

5B28B4:  LDR             R0, =(_ZN12CPostEffects6ms_imfE_ptr - 0x5B28C0)
5B28B6:  MOVS            R1, #0
5B28B8:  MOV.W           R2, #0x3F800000
5B28BC:  ADD             R0, PC; _ZN12CPostEffects6ms_imfE_ptr
5B28BE:  LDR             R0, [R0]; CPostEffects::ms_imf ...
5B28C0:  STRD.W          R1, R1, [R0,#(dword_A4772C - 0xA47690)]
5B28C4:  STRD.W          R1, R2, [R0,#(dword_A47764 - 0xA47690)]
5B28C8:  STRD.W          R2, R1, [R0,#(dword_A47748 - 0xA47690)]
5B28CC:  STRD.W          R2, R2, [R0,#(dword_A47780 - 0xA47690)]
5B28D0:  BX              LR
