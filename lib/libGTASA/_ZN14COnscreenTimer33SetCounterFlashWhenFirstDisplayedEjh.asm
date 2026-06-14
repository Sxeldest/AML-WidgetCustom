; =========================================================
; Game Engine Function: _ZN14COnscreenTimer33SetCounterFlashWhenFirstDisplayedEjh
; Address            : 0x3151DC - 0x31520C
; =========================================================

3151DC:  LDR             R3, [R0,#0x40]
3151DE:  CMP             R3, R1
3151E0:  IT EQ
3151E2:  STRBEQ.W        R2, [R0,#0x7F]
3151E6:  LDR.W           R3, [R0,#0x84]
3151EA:  CMP             R3, R1
3151EC:  IT EQ
3151EE:  STRBEQ.W        R2, [R0,#0xC3]
3151F2:  LDR.W           R3, [R0,#0xC8]
3151F6:  CMP             R3, R1
3151F8:  IT EQ
3151FA:  STRBEQ.W        R2, [R0,#0x107]
3151FE:  LDR.W           R3, [R0,#0x10C]
315202:  CMP             R3, R1
315204:  IT EQ
315206:  STRBEQ.W        R2, [R0,#0x14B]
31520A:  BX              LR
