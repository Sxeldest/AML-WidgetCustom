; =========================================================
; Game Engine Function: _Z17FindPlayerVehicleib
; Address            : 0x40B530 - 0x40B588
; =========================================================

40B530:  LDR             R2, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x40B53C)
40B532:  CMP             R0, #0
40B534:  LDR.W           R12, =(_ZN6CWorld7PlayersE_ptr - 0x40B53E)
40B538:  ADD             R2, PC; _ZN6CWorld13PlayerInFocusE_ptr
40B53A:  ADD             R12, PC; _ZN6CWorld7PlayersE_ptr
40B53C:  LDR             R2, [R2]; CWorld::PlayerInFocus ...
40B53E:  LDR             R3, [R2]; CWorld::PlayerInFocus
40B540:  IT GE
40B542:  MOVGE           R3, R0
40B544:  MOV.W           R0, #0x194
40B548:  MULS            R0, R3
40B54A:  LDR.W           R2, [R12]; CWorld::Players ...
40B54E:  LDR             R2, [R2,R0]
40B550:  CMP             R2, #0
40B552:  ITT NE
40B554:  LDRBNE.W        R0, [R2,#0x485]
40B558:  MOVSNE.W        R0, R0,LSL#31
40B55C:  BNE             loc_40B562
40B55E:  MOVS            R0, #0
40B560:  BX              LR
40B562:  CMP             R1, #1
40B564:  BNE             loc_40B582
40B566:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x40B570)
40B568:  MOV.W           R1, #0x194
40B56C:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
40B56E:  LDR             R0, [R0]; CWorld::Players ...
40B570:  MLA.W           R0, R3, R1, R0
40B574:  LDR.W           R0, [R0,#0xB0]
40B578:  CMP             R0, #0
40B57A:  IT EQ
40B57C:  LDREQ.W         R0, [R2,#0x590]
40B580:  BX              LR
40B582:  LDR.W           R0, [R2,#0x590]
40B586:  BX              LR
