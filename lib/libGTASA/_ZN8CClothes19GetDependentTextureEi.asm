; =========================================================
; Game Engine Function: _ZN8CClothes19GetDependentTextureEi
; Address            : 0x458064 - 0x458072
; =========================================================

458064:  CMP             R0, #9
458066:  ITEE HI
458068:  MOVHI           R0, #0x12
45806A:  ADRLS           R1, dword_458074
45806C:  LDRLS.W         R0, [R1,R0,LSL#2]
458070:  BX              LR
