; =========================================================
; Game Engine Function: _Z13FindPlayerPedi
; Address            : 0x40B288 - 0x40B2C2
; =========================================================

40B288:  LDR             R1, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x40B28E)
40B28A:  ADD             R1, PC; _ZN4CHID20currentInstanceIndexE_ptr
40B28C:  LDR             R1, [R1]; CHID::currentInstanceIndex ...
40B28E:  LDR             R1, [R1]; CHID::currentInstanceIndex
40B290:  CMP             R1, #1
40B292:  BNE             loc_40B2A2
40B294:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x40B29A)
40B296:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
40B298:  LDR             R0, [R0]; CWorld::Players ...
40B29A:  ADD.W           R0, R0, #0x194
40B29E:  LDR             R0, [R0]
40B2A0:  BX              LR
40B2A2:  LDR             R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40B2AC)
40B2A4:  CMP             R0, #0
40B2A6:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x40B2AE)
40B2A8:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
40B2AA:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
40B2AC:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
40B2AE:  LDR             R2, [R2]; CWorld::Players ...
40B2B0:  LDR             R1, [R1]; CWorld::PlayerInFocus
40B2B2:  IT GE
40B2B4:  MOVGE           R1, R0
40B2B6:  MOV.W           R0, #0x194
40B2BA:  MLA.W           R0, R1, R0, R2
40B2BE:  LDR             R0, [R0]
40B2C0:  BX              LR
