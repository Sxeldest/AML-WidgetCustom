; =========================================================
; Game Engine Function: _Z26RtAnimAnimationGetNumNodesPK15RtAnimAnimation
; Address            : 0x1EB272 - 0x1EB298
; =========================================================

1EB272:  LDR.W           R12, [R0,#0x10]
1EB276:  LDR.W           R2, [R12]
1EB27A:  CMP             R2, R12
1EB27C:  ITT EQ
1EB27E:  MOVEQ           R0, #0
1EB280:  BXEQ            LR
1EB282:  LDR             R0, [R0]
1EB284:  LDR             R2, [R0,#8]
1EB286:  MOVS            R0, #0
1EB288:  ADD.W           R3, R12, R2
1EB28C:  LDR             R1, [R3]
1EB28E:  ADD             R3, R2
1EB290:  ADDS            R0, #1
1EB292:  CMP             R1, R12
1EB294:  BNE             loc_1EB28C
1EB296:  BX              LR
