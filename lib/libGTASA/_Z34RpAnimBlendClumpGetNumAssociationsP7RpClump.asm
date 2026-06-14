; =========================================================
; Game Engine Function: _Z34RpAnimBlendClumpGetNumAssociationsP7RpClump
; Address            : 0x390C60 - 0x390C78
; =========================================================

390C60:  LDR             R1, =(ClumpOffset_ptr - 0x390C66)
390C62:  ADD             R1, PC; ClumpOffset_ptr
390C64:  LDR             R1, [R1]; ClumpOffset
390C66:  LDR             R1, [R1]
390C68:  LDR             R1, [R0,R1]
390C6A:  MOV.W           R0, #0xFFFFFFFF
390C6E:  LDR             R1, [R1]
390C70:  ADDS            R0, #1
390C72:  CMP             R1, #0
390C74:  BNE             loc_390C6E
390C76:  BX              LR
