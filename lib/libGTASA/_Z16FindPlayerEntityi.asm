; =========================================================
; Game Engine Function: _Z16FindPlayerEntityi
; Address            : 0x40BB68 - 0x40BB9C
; =========================================================

40BB68:  LDR             R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40BB72)
40BB6A:  CMP             R0, #0
40BB6C:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x40BB74)
40BB6E:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
40BB70:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
40BB72:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
40BB74:  LDR             R1, [R1]; CWorld::PlayerInFocus
40BB76:  IT GE
40BB78:  MOVGE           R1, R0
40BB7A:  MOV.W           R0, #0x194
40BB7E:  MULS            R0, R1
40BB80:  LDR             R1, [R2]; CWorld::Players ...
40BB82:  LDR             R0, [R1,R0]
40BB84:  LDRB.W          R1, [R0,#0x485]
40BB88:  LSLS            R1, R1, #0x1F
40BB8A:  IT EQ
40BB8C:  BXEQ            LR
40BB8E:  LDR.W           R1, [R0,#0x590]
40BB92:  CMP             R1, #0
40BB94:  IT EQ
40BB96:  MOVEQ           R1, R0
40BB98:  MOV             R0, R1
40BB9A:  BX              LR
