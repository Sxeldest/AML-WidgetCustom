; =========================================================
; Game Engine Function: _Z15FindPlayerCoorsi
; Address            : 0x40B5DC - 0x40B63C
; =========================================================

40B5DC:  LDR             R2, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40B5E6)
40B5DE:  CMP             R1, #0
40B5E0:  LDR             R3, =(_ZN6CWorld7PlayersE_ptr - 0x40B5E8)
40B5E2:  ADD             R2, PC; _ZN6CWorld13PlayerInFocusE_ptr
40B5E4:  ADD             R3, PC; _ZN6CWorld7PlayersE_ptr
40B5E6:  LDR             R2, [R2]; CWorld::PlayerInFocus ...
40B5E8:  LDR             R2, [R2]; CWorld::PlayerInFocus
40B5EA:  IT GE
40B5EC:  MOVGE           R2, R1
40B5EE:  MOV.W           R1, #0x194
40B5F2:  MULS            R1, R2
40B5F4:  LDR             R2, [R3]; CWorld::Players ...
40B5F6:  LDR             R1, [R2,R1]
40B5F8:  CBZ             R1, loc_40B618
40B5FA:  LDRB.W          R2, [R1,#0x485]
40B5FE:  LSLS            R2, R2, #0x1F
40B600:  ITT NE
40B602:  LDRNE.W         R2, [R1,#0x590]
40B606:  CMPNE           R2, #0
40B608:  BNE             loc_40B622
40B60A:  LDR             R2, [R1,#0x14]
40B60C:  ADD.W           R3, R2, #0x30 ; '0'
40B610:  CMP             R2, #0
40B612:  IT EQ
40B614:  ADDEQ           R3, R1, #4
40B616:  B               loc_40B62E
40B618:  MOVS            R1, #0
40B61A:  STRD.W          R1, R1, [R0]
40B61E:  STR             R1, [R0,#8]
40B620:  BX              LR
40B622:  LDR             R1, [R2,#0x14]
40B624:  ADD.W           R3, R1, #0x30 ; '0'
40B628:  CMP             R1, #0
40B62A:  IT EQ
40B62C:  ADDEQ           R3, R2, #4
40B62E:  VLDR            D16, [R3]
40B632:  LDR             R1, [R3,#8]
40B634:  STR             R1, [R0,#8]
40B636:  VSTR            D16, [R0]
40B63A:  BX              LR
