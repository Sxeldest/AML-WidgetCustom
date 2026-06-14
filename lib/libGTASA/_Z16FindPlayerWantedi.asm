; =========================================================
; Game Engine Function: _Z16FindPlayerWantedi
; Address            : 0x40BBA4 - 0x40BBC4
; =========================================================

40BBA4:  LDR             R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40BBAE)
40BBA6:  CMP             R0, #0
40BBA8:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x40BBB0)
40BBAA:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
40BBAC:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
40BBAE:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
40BBB0:  LDR             R2, [R2]; CWorld::Players ...
40BBB2:  LDR             R1, [R1]; CWorld::PlayerInFocus
40BBB4:  IT GE
40BBB6:  MOVGE           R1, R0
40BBB8:  MOV.W           R0, #0x194
40BBBC:  MLA.W           R0, R1, R0, R2
40BBC0:  LDR             R0, [R0,#4]
40BBC2:  BX              LR
