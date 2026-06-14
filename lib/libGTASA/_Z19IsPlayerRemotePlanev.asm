; =========================================================
; Game Engine Function: _Z19IsPlayerRemotePlanev
; Address            : 0x40BB10 - 0x40BB5A
; =========================================================

40BB10:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40BB1C)
40BB12:  MOV.W           R2, #0x194
40BB16:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x40BB1E)
40BB18:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
40BB1A:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
40BB1C:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
40BB1E:  LDR             R1, [R1]; CWorld::Players ...
40BB20:  LDR             R0, [R0]; CWorld::PlayerInFocus
40BB22:  SMULBB.W        R2, R0, R2
40BB26:  LDR             R1, [R1,R2]
40BB28:  CMP             R1, #0
40BB2A:  ITT NE
40BB2C:  LDRBNE.W        R1, [R1,#0x485]
40BB30:  MOVSNE.W        R1, R1,LSL#31
40BB34:  BEQ             loc_40BB56
40BB36:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x40BB40)
40BB38:  MOV.W           R2, #0x194
40BB3C:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
40BB3E:  LDR             R1, [R1]; CWorld::Players ...
40BB40:  SMLABB.W        R0, R0, R2, R1
40BB44:  LDR.W           R0, [R0,#0xB0]
40BB48:  CBZ             R0, loc_40BB56
40BB4A:  LDR.W           R0, [R0,#0x5A4]
40BB4E:  CMP             R0, #4
40BB50:  ITT EQ
40BB52:  MOVEQ           R0, #1
40BB54:  BXEQ            LR
40BB56:  MOVS            R0, #0
40BB58:  BX              LR
