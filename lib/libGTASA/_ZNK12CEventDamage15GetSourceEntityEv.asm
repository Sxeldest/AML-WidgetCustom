; =========================================================
; Game Engine Function: _ZNK12CEventDamage15GetSourceEntityEv
; Address            : 0x37260E - 0x372634
; =========================================================

37260E:  LDR             R0, [R0,#0x10]
372610:  CMP             R0, #0
372612:  ITT EQ
372614:  MOVEQ           R0, #0
372616:  BXEQ            LR
372618:  LDRB.W          R1, [R0,#0x3A]
37261C:  AND.W           R1, R1, #7
372620:  CMP             R1, #2
372622:  IT NE
372624:  BXNE            LR
372626:  LDR.W           R1, [R0,#0x464]
37262A:  CMP             R1, #0
37262C:  IT EQ
37262E:  MOVEQ           R1, R0
372630:  MOV             R0, R1
372632:  BX              LR
