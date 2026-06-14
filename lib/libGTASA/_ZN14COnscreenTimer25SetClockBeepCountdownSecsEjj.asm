; =========================================================
; Game Engine Function: _ZN14COnscreenTimer25SetClockBeepCountdownSecsEjj
; Address            : 0x31520C - 0x315216
; =========================================================

31520C:  LDR             R3, [R0]
31520E:  CMP             R3, R1
315210:  IT EQ
315212:  STREQ           R2, [R0,#0x3C]
315214:  BX              LR
