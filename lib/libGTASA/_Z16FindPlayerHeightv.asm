; =========================================================
; Game Engine Function: _Z16FindPlayerHeightv
; Address            : 0x40BE54 - 0x40BE7C
; =========================================================

40BE54:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40BE60)
40BE56:  MOV.W           R2, #0x194
40BE5A:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x40BE62)
40BE5C:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
40BE5E:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
40BE60:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
40BE62:  LDR             R1, [R1]; CWorld::Players ...
40BE64:  LDR             R0, [R0]; CWorld::PlayerInFocus
40BE66:  SMULBB.W        R0, R0, R2
40BE6A:  LDR             R0, [R1,R0]
40BE6C:  LDR             R1, [R0,#0x14]
40BE6E:  ADD.W           R2, R1, #0x30 ; '0'
40BE72:  CMP             R1, #0
40BE74:  IT EQ
40BE76:  ADDEQ           R2, R0, #4
40BE78:  LDR             R0, [R2,#8]
40BE7A:  BX              LR
