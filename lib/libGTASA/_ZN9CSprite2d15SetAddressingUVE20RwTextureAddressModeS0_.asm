; =========================================================
; Game Engine Function: _ZN9CSprite2d15SetAddressingUVE20RwTextureAddressModeS0_
; Address            : 0x5C8966 - 0x5C898C
; =========================================================

5C8966:  LDR.W           R12, [R0]
5C896A:  CMP.W           R12, #0
5C896E:  ITT EQ
5C8970:  MOVEQ           R0, #0
5C8972:  BXEQ            LR
5C8974:  LDR.W           R3, [R12,#0x50]
5C8978:  BFI.W           R3, R1, #8, #4
5C897C:  STR.W           R3, [R12,#0x50]
5C8980:  LDR             R0, [R0]
5C8982:  LDR             R1, [R0,#0x50]
5C8984:  BFI.W           R1, R2, #0xC, #4
5C8988:  STR             R1, [R0,#0x50]
5C898A:  BX              LR
