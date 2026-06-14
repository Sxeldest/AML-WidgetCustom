; =========================================================
; Game Engine Function: _ZN20CEventHandlerHistory15TickStoredEventEP4CPed
; Address            : 0x37B2D8 - 0x37B2EE
; =========================================================

37B2D8:  LDR             R1, [R0,#0xC]
37B2DA:  CMP             R1, #0
37B2DC:  IT EQ
37B2DE:  BXEQ            LR
37B2E0:  LDR             R2, [R0,#8]
37B2E2:  CMP             R2, #0
37B2E4:  ITTT EQ
37B2E6:  MOVEQ           R2, #0
37B2E8:  STREQ           R2, [R0,#0xC]
37B2EA:  STREQ           R1, [R0,#4]
37B2EC:  BX              LR
