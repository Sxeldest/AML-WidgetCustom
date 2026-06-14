; =========================================================
; Game Engine Function: _ZN6CClock18NormaliseGameClockEv
; Address            : 0x3E31C0 - 0x3E32D8
; =========================================================

3E31C0:  LDR             R0, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x3E31C8)
3E31C2:  LDR             R1, =(_ZN6CClock20ms_nGameClockSecondsE_ptr - 0x3E31CA)
3E31C4:  ADD             R0, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
3E31C6:  ADD             R1, PC; _ZN6CClock20ms_nGameClockSecondsE_ptr
3E31C8:  LDR             R0, [R0]; CClock::ms_nGameClockMinutes ...
3E31CA:  LDR             R2, [R1]; CClock::ms_nGameClockSeconds ...
3E31CC:  LDRB            R1, [R0]; CClock::ms_nGameClockMinutes
3E31CE:  LDRH            R0, [R2]; CClock::ms_nGameClockSeconds
3E31D0:  CMP             R0, #0x3C ; '<'
3E31D2:  BCC             loc_3E320A
3E31D4:  SUBS            R0, #0x3C ; '<'
3E31D6:  MOV             R3, #0x88888889
3E31DE:  LDR.W           R12, =(_ZN6CClock20ms_nGameClockSecondsE_ptr - 0x3E31EC)
3E31E2:  UXTH            R2, R0
3E31E4:  UMULL.W         R2, R3, R2, R3
3E31E8:  ADD             R12, PC; _ZN6CClock20ms_nGameClockSecondsE_ptr
3E31EA:  LDR             R2, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x3E31F4)
3E31EC:  LDR.W           R12, [R12]; CClock::ms_nGameClockSeconds ...
3E31F0:  ADD             R2, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
3E31F2:  LDR             R2, [R2]; CClock::ms_nGameClockMinutes ...
3E31F4:  ADD.W           R1, R1, R3,LSR#5
3E31F8:  ADDS            R1, #1
3E31FA:  STRB            R1, [R2]; CClock::ms_nGameClockMinutes
3E31FC:  LSRS            R2, R3, #5
3E31FE:  SUB.W           R2, R2, R2,LSL#4
3E3202:  ADD.W           R0, R0, R2,LSL#2
3E3206:  STRH.W          R0, [R12]; CClock::ms_nGameClockSeconds
3E320A:  LDR             R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x3E3214)
3E320C:  UXTB            R2, R1
3E320E:  CMP             R2, #0x3C ; '<'
3E3210:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
3E3212:  LDR             R0, [R0]; CClock::ms_nGameClockHours ...
3E3214:  LDRB            R0, [R0]; CClock::ms_nGameClockHours
3E3216:  BCC             loc_3E324E
3E3218:  SUBS            R1, #0x3C ; '<'
3E321A:  MOV             R3, #0x88888889
3E3222:  LDR.W           R12, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x3E3230)
3E3226:  UXTB            R2, R1
3E3228:  UMULL.W         R2, R3, R2, R3
3E322C:  ADD             R12, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
3E322E:  LDR             R2, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x3E3238)
3E3230:  LDR.W           R12, [R12]; CClock::ms_nGameClockMinutes ...
3E3234:  ADD             R2, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
3E3236:  LDR             R2, [R2]; CClock::ms_nGameClockHours ...
3E3238:  ADD.W           R0, R0, R3,LSR#5
3E323C:  ADDS            R0, #1
3E323E:  STRB            R0, [R2]; CClock::ms_nGameClockHours
3E3240:  LSRS            R2, R3, #5
3E3242:  SUB.W           R2, R2, R2,LSL#4
3E3246:  ADD.W           R1, R1, R2,LSL#2
3E324A:  STRB.W          R1, [R12]; CClock::ms_nGameClockMinutes
3E324E:  LDR             R1, =(_ZN6CClock17ms_nGameClockDaysE_ptr - 0x3E3258)
3E3250:  UXTB            R2, R0
3E3252:  CMP             R2, #0x18
3E3254:  ADD             R1, PC; _ZN6CClock17ms_nGameClockDaysE_ptr
3E3256:  LDR             R1, [R1]; CClock::ms_nGameClockDays ...
3E3258:  LDRB            R1, [R1]; CClock::ms_nGameClockDays
3E325A:  BCC             loc_3E32A2
3E325C:  RSB.W           R2, R0, #0x17
3E3260:  LDR.W           R12, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x3E327C)
3E3264:  UXTB            R3, R2
3E3266:  CMP             R3, #0xE8
3E3268:  IT LS
3E326A:  MOVLS           R2, #0xFFFFFFE8
3E326E:  MOVW            R3, #0xAAAB
3E3272:  ADD             R2, R0
3E3274:  MOVT            R3, #0xAAAA
3E3278:  ADD             R12, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
3E327A:  UXTB            R2, R2
3E327C:  UMULL.W         R2, R3, R2, R3
3E3280:  LDR.W           R12, [R12]; CClock::ms_nGameClockHours ...
3E3284:  LDR             R2, =(_ZN6CClock17ms_nGameClockDaysE_ptr - 0x3E328A)
3E3286:  ADD             R2, PC; _ZN6CClock17ms_nGameClockDaysE_ptr
3E3288:  LDR             R2, [R2]; CClock::ms_nGameClockDays ...
3E328A:  ADD.W           R1, R1, R3,LSR#4
3E328E:  ADDS            R1, #1
3E3290:  STRB            R1, [R2]; CClock::ms_nGameClockDays
3E3292:  LSRS            R2, R3, #4
3E3294:  SUB.W           R2, R2, R2,LSL#2
3E3298:  ADD.W           R0, R0, R2,LSL#3
3E329C:  SUBS            R0, #0x18
3E329E:  STRB.W          R0, [R12]; CClock::ms_nGameClockHours
3E32A2:  LDR             R0, =(_ZN6CClock19ms_nGameClockMonthsE_ptr - 0x3E32AC)
3E32A4:  UXTB            R1, R1
3E32A6:  CMP             R1, #0x1F
3E32A8:  ADD             R0, PC; _ZN6CClock19ms_nGameClockMonthsE_ptr
3E32AA:  LDR             R0, [R0]; CClock::ms_nGameClockMonths ...
3E32AC:  LDRB            R0, [R0]; CClock::ms_nGameClockMonths
3E32AE:  BLS             loc_3E32C4
3E32B0:  LDR             R1, =(_ZN6CClock17ms_nGameClockDaysE_ptr - 0x3E32BC)
3E32B2:  ADDS            R0, #1
3E32B4:  LDR             R2, =(_ZN6CClock19ms_nGameClockMonthsE_ptr - 0x3E32BE)
3E32B6:  MOVS            R3, #1
3E32B8:  ADD             R1, PC; _ZN6CClock17ms_nGameClockDaysE_ptr
3E32BA:  ADD             R2, PC; _ZN6CClock19ms_nGameClockMonthsE_ptr
3E32BC:  LDR             R1, [R1]; CClock::ms_nGameClockDays ...
3E32BE:  LDR             R2, [R2]; CClock::ms_nGameClockMonths ...
3E32C0:  STRB            R3, [R1]; CClock::ms_nGameClockDays
3E32C2:  STRB            R0, [R2]; CClock::ms_nGameClockMonths
3E32C4:  UXTB            R0, R0
3E32C6:  CMP             R0, #0xC
3E32C8:  IT LS
3E32CA:  BXLS            LR
3E32CC:  LDR             R0, =(_ZN6CClock19ms_nGameClockMonthsE_ptr - 0x3E32D4)
3E32CE:  MOVS            R1, #1
3E32D0:  ADD             R0, PC; _ZN6CClock19ms_nGameClockMonthsE_ptr
3E32D2:  LDR             R0, [R0]; CClock::ms_nGameClockMonths ...
3E32D4:  STRB            R1, [R0]; CClock::ms_nGameClockMonths
3E32D6:  BX              LR
