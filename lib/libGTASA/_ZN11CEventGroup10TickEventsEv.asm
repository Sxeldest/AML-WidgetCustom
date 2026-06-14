; =========================================================
; Game Engine Function: _ZN11CEventGroup10TickEventsEv
; Address            : 0x36F74E - 0x36F770
; =========================================================

36F74E:  LDR             R1, [R0,#8]
36F750:  CMP             R1, #1
36F752:  IT LT
36F754:  BXLT            LR
36F756:  ADD.W           R12, R0, #0xC
36F75A:  MOVS            R2, #0
36F75C:  LDR.W           R3, [R12,R2,LSL#2]
36F760:  ADDS            R2, #1
36F762:  LDR             R1, [R3,#4]
36F764:  ADDS            R1, #1
36F766:  STR             R1, [R3,#4]
36F768:  LDR             R1, [R0,#8]
36F76A:  CMP             R2, R1
36F76C:  BLT             loc_36F75C
36F76E:  BX              LR
