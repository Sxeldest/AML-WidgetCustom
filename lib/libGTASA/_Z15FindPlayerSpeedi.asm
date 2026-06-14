; =========================================================
; Game Engine Function: _Z15FindPlayerSpeedi
; Address            : 0x40BACC - 0x40BB08
; =========================================================

40BACC:  LDR             R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40BAD6)
40BACE:  CMP             R0, #0
40BAD0:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x40BAD8)
40BAD2:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
40BAD4:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
40BAD6:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
40BAD8:  LDR             R1, [R1]; CWorld::PlayerInFocus
40BADA:  IT GE
40BADC:  MOVGE           R1, R0
40BADE:  MOV.W           R0, #0x194
40BAE2:  MULS            R0, R1
40BAE4:  LDR             R1, [R2]; CWorld::Players ...
40BAE6:  LDR             R0, [R1,R0]
40BAE8:  LDRB.W          R1, [R0,#0x485]
40BAEC:  LSLS            R1, R1, #0x1F
40BAEE:  ITTT EQ
40BAF0:  MOVEQ           R1, R0
40BAF2:  ADDEQ.W         R0, R1, #0x48 ; 'H'
40BAF6:  BXEQ            LR
40BAF8:  LDR.W           R1, [R0,#0x590]
40BAFC:  CMP             R1, #0
40BAFE:  IT EQ
40BB00:  MOVEQ           R1, R0
40BB02:  ADD.W           R0, R1, #0x48 ; 'H'
40BB06:  BX              LR
