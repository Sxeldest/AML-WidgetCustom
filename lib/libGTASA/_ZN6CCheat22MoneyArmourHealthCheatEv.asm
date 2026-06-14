; =========================================================
; Game Engine Function: _ZN6CCheat22MoneyArmourHealthCheatEv
; Address            : 0x2FD54C - 0x2FD5A0
; =========================================================

2FD54C:  PUSH            {R7,LR}
2FD54E:  MOV             R7, SP
2FD550:  VPUSH           {D8}
2FD554:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x2FD560)
2FD556:  MOV.W           R2, #0x194
2FD55A:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x2FD562)
2FD55C:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
2FD55E:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
2FD560:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
2FD562:  LDR             R1, [R1]; CWorld::Players ...
2FD564:  LDR             R0, [R0]; CWorld::PlayerInFocus
2FD566:  SMLABB.W        R0, R0, R2, R1
2FD56A:  LDR.W           R2, [R0,#0xB8]
2FD56E:  ADD.W           R2, R2, #0x3D000
2FD572:  ADDS            R2, #0x90
2FD574:  STR.W           R2, [R0,#0xB8]
2FD578:  LDRB.W          R0, [R1,#(byte_96B7EC - 0x96B69C)]
2FD57C:  VMOV            S0, R0
2FD580:  MOV.W           R0, #0xFFFFFFFF; int
2FD584:  VCVT.F32.U32    S16, S0
2FD588:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FD58C:  ADDW            R0, R0, #0x54C; this
2FD590:  VSTR            S16, [R0]
2FD594:  VPOP            {D8}
2FD598:  POP.W           {R7,LR}
2FD59C:  B.W             _ZN6CCheat11HealthCheatEv; CCheat::HealthCheat(void)
