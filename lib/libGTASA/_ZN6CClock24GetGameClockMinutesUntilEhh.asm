; =========================================================
; Game Engine Function: _ZN6CClock24GetGameClockMinutesUntilEhh
; Address            : 0x3E3310 - 0x3E333C
; =========================================================

3E3310:  LDR             R2, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x3E331C)
3E3312:  RSB.W           R0, R0, R0,LSL#4
3E3316:  LDR             R3, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x3E3322)
3E3318:  ADD             R2, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
3E331A:  ADD.W           R0, R1, R0,LSL#2
3E331E:  ADD             R3, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
3E3320:  LDR             R2, [R2]; CClock::ms_nGameClockHours ...
3E3322:  LDR             R3, [R3]; CClock::ms_nGameClockMinutes ...
3E3324:  LDRB            R2, [R2]; CClock::ms_nGameClockHours
3E3326:  LDRB            R3, [R3]; CClock::ms_nGameClockMinutes
3E3328:  RSB.W           R2, R2, R2,LSL#4
3E332C:  ADD.W           R2, R3, R2,LSL#2
3E3330:  CMP             R0, R2
3E3332:  IT CC
3E3334:  ADDCC.W         R0, R0, #0x5A0
3E3338:  SUBS            R0, R0, R2
3E333A:  BX              LR
