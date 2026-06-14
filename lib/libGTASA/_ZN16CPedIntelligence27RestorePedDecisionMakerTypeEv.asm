; =========================================================
; Game Engine Function: _ZN16CPedIntelligence27RestorePedDecisionMakerTypeEv
; Address            : 0x4C02BA - 0x4C02CC
; =========================================================

4C02BA:  LDR.W           R1, [R0,#0xB4]
4C02BE:  CMP             R1, #0
4C02C0:  ITT EQ
4C02C2:  LDREQ.W         R1, [R0,#0xB8]
4C02C6:  STREQ.W         R1, [R0,#0xB4]
4C02CA:  BX              LR
