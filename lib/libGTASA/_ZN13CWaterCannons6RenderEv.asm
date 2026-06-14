; =========================================================
; Game Engine Function: _ZN13CWaterCannons6RenderEv
; Address            : 0x5CBB5C - 0x5CBBB0
; =========================================================

5CBB5C:  PUSH            {R7,LR}
5CBB5E:  MOV             R7, SP
5CBB60:  LDR             R0, =(_ZN13CWaterCannons8aCannonsE_ptr - 0x5CBB66)
5CBB62:  ADD             R0, PC; _ZN13CWaterCannons8aCannonsE_ptr
5CBB64:  LDR             R0, [R0]; CWaterCannons::aCannons ...
5CBB66:  LDR             R0, [R0]; CWaterCannons::aCannons
5CBB68:  CBZ             R0, loc_5CBB74
5CBB6A:  LDR             R0, =(_ZN13CWaterCannons8aCannonsE_ptr - 0x5CBB70)
5CBB6C:  ADD             R0, PC; _ZN13CWaterCannons8aCannonsE_ptr
5CBB6E:  LDR             R0, [R0]; this
5CBB70:  BLX.W           j__ZN12CWaterCannon6RenderEv; CWaterCannon::Render(void)
5CBB74:  LDR             R0, =(_ZN13CWaterCannons8aCannonsE_ptr - 0x5CBB7A)
5CBB76:  ADD             R0, PC; _ZN13CWaterCannons8aCannonsE_ptr
5CBB78:  LDR             R0, [R0]; CWaterCannons::aCannons ...
5CBB7A:  LDR.W           R0, [R0,#(dword_A7C72C - 0xA7C360)]
5CBB7E:  CBZ             R0, loc_5CBB8E
5CBB80:  LDR             R0, =(_ZN13CWaterCannons8aCannonsE_ptr - 0x5CBB86)
5CBB82:  ADD             R0, PC; _ZN13CWaterCannons8aCannonsE_ptr
5CBB84:  LDR             R0, [R0]; CWaterCannons::aCannons ...
5CBB86:  ADD.W           R0, R0, #0x3CC; this
5CBB8A:  BLX.W           j__ZN12CWaterCannon6RenderEv; CWaterCannon::Render(void)
5CBB8E:  LDR             R0, =(_ZN13CWaterCannons8aCannonsE_ptr - 0x5CBB94)
5CBB90:  ADD             R0, PC; _ZN13CWaterCannons8aCannonsE_ptr
5CBB92:  LDR             R0, [R0]; CWaterCannons::aCannons ...
5CBB94:  LDR.W           R0, [R0,#(dword_A7CAF8 - 0xA7C360)]
5CBB98:  CMP             R0, #0
5CBB9A:  IT EQ
5CBB9C:  POPEQ           {R7,PC}
5CBB9E:  LDR             R0, =(_ZN13CWaterCannons8aCannonsE_ptr - 0x5CBBA4)
5CBBA0:  ADD             R0, PC; _ZN13CWaterCannons8aCannonsE_ptr
5CBBA2:  LDR             R0, [R0]; CWaterCannons::aCannons ...
5CBBA4:  ADD.W           R0, R0, #0x798; this
5CBBA8:  POP.W           {R7,LR}
5CBBAC:  B.W             _ZN12CWaterCannon6RenderEv; CWaterCannon::Render(void)
