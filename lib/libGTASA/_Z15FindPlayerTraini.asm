; =========================================================
; Game Engine Function: _Z15FindPlayerTraini
; Address            : 0x40B594 - 0x40B5D2
; =========================================================

40B594:  LDR             R1, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40B59E)
40B596:  CMP             R0, #0
40B598:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x40B5A0)
40B59A:  ADD             R1, PC; _ZN6CWorld13PlayerInFocusE_ptr
40B59C:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
40B59E:  LDR             R1, [R1]; CWorld::PlayerInFocus ...
40B5A0:  LDR             R1, [R1]; CWorld::PlayerInFocus
40B5A2:  IT GE
40B5A4:  MOVGE           R1, R0
40B5A6:  MOV.W           R0, #0x194
40B5AA:  MULS            R0, R1
40B5AC:  LDR             R1, [R2]; CWorld::Players ...
40B5AE:  LDR             R0, [R1,R0]
40B5B0:  CBZ             R0, loc_40B5C2
40B5B2:  LDRB.W          R1, [R0,#0x485]
40B5B6:  LSLS            R1, R1, #0x1F
40B5B8:  ITT NE
40B5BA:  LDRNE.W         R0, [R0,#0x590]
40B5BE:  CMPNE           R0, #0
40B5C0:  BNE             loc_40B5C6
40B5C2:  MOVS            R0, #0
40B5C4:  BX              LR
40B5C6:  LDR.W           R1, [R0,#0x5A0]
40B5CA:  CMP             R1, #6
40B5CC:  IT NE
40B5CE:  MOVNE           R0, #0
40B5D0:  BX              LR
