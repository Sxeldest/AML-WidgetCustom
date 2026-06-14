; =========================================================
; Game Engine Function: _ZN6CClock6UpdateEv
; Address            : 0x3E3378 - 0x3E34A8
; =========================================================

3E3378:  PUSH            {R4,R6,R7,LR}
3E337A:  ADD             R7, SP, #8
3E337C:  LDR             R1, =(_ZN6CClock17ms_nLastClockTickE_ptr - 0x3E3388)
3E337E:  MOVS            R4, #0
3E3380:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3E338E)
3E3382:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x3E3390)
3E3384:  ADD             R1, PC; _ZN6CClock17ms_nLastClockTickE_ptr
3E3386:  LDR.W           R12, =(_ZN6CClock29ms_nMillisecondsPerGameMinuteE_ptr - 0x3E3394)
3E338A:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3E338C:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
3E338E:  LDR             R1, [R1]; CClock::ms_nLastClockTick ...
3E3390:  ADD             R12, PC; _ZN6CClock29ms_nMillisecondsPerGameMinuteE_ptr
3E3392:  LDR             R3, [R2]; CTimer::m_snTimeInMilliseconds ...
3E3394:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
3E3396:  LDR.W           R2, [R12]; CClock::ms_nMillisecondsPerGameMinute ...
3E339A:  LDR.W           R12, [R1]; CClock::ms_nLastClockTick
3E339E:  LDR             R1, [R3]; CTimer::m_snTimeInMilliseconds
3E33A0:  LDR             R3, [R2]; CClock::ms_nMillisecondsPerGameMinute
3E33A2:  LDRB.W          LR, [R0,#(byte_796806 - 0x7967F4)]
3E33A6:  SUB.W           R2, R1, R12
3E33AA:  CMP             R2, R3
3E33AC:  IT GT
3E33AE:  MOVGT           R4, #1
3E33B0:  CMP.W           LR, #0
3E33B4:  MOV             R2, LR
3E33B6:  IT NE
3E33B8:  MOVNE           R2, #1
3E33BA:  ORRS            R2, R4
3E33BC:  BEQ             loc_3E347A
3E33BE:  LDRB.W          R2, [R0,#(byte_796833 - 0x7967F4)]
3E33C2:  LDRB.W          R0, [R0,#(byte_796834 - 0x7967F4)]
3E33C6:  ORRS            R0, R2
3E33C8:  LSLS            R0, R0, #0x18
3E33CA:  BNE             loc_3E347A
3E33CC:  LDR             R0, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x3E33D8)
3E33CE:  CMP.W           LR, #0
3E33D2:  LDR             R2, =(_ZN6CClock17ms_nLastClockTickE_ptr - 0x3E33DA)
3E33D4:  ADD             R0, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
3E33D6:  ADD             R2, PC; _ZN6CClock17ms_nLastClockTickE_ptr
3E33D8:  LDR             R0, [R0]; CClock::ms_nGameClockMinutes ...
3E33DA:  LDR             R2, [R2]; CClock::ms_nLastClockTick ...
3E33DC:  LDRB            R4, [R0]; CClock::ms_nGameClockMinutes
3E33DE:  IT EQ
3E33E0:  ADDEQ.W         R1, R12, R3
3E33E4:  STR             R1, [R2]; CClock::ms_nLastClockTick
3E33E6:  ADDS            R1, R4, #1
3E33E8:  STRB            R1, [R0]; CClock::ms_nGameClockMinutes
3E33EA:  UXTB            R0, R1
3E33EC:  CMP             R0, #0x3C ; '<'
3E33EE:  BCC             loc_3E347A
3E33F0:  LDR             R0, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x3E33FC)
3E33F2:  MOV.W           R12, #0
3E33F6:  LDR             R1, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x3E33FE)
3E33F8:  ADD             R0, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
3E33FA:  ADD             R1, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
3E33FC:  LDR             R2, [R0]; CClock::ms_nGameClockHours ...
3E33FE:  LDR             R1, [R1]; CClock::ms_nGameClockMinutes ...
3E3400:  LDRB            R3, [R2]; CClock::ms_nGameClockHours
3E3402:  STRB.W          R12, [R1]; CClock::ms_nGameClockMinutes
3E3406:  ADDS            R1, R3, #1
3E3408:  STRB            R1, [R2]; CClock::ms_nGameClockHours
3E340A:  UXTB            R1, R1
3E340C:  CMP             R1, #0x18
3E340E:  BCC             loc_3E347A
3E3410:  LDR             R1, =(_ZN6CClock17ms_nGameClockDaysE_ptr - 0x3E341A)
3E3412:  LDR             R2, =(_ZN6CClock10CurrentDayE_ptr - 0x3E341C)
3E3414:  LDR             R3, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x3E3420)
3E3416:  ADD             R1, PC; _ZN6CClock17ms_nGameClockDaysE_ptr
3E3418:  ADD             R2, PC; _ZN6CClock10CurrentDayE_ptr
3E341A:  LDR             R4, [R1]; CClock::ms_nGameClockDays ...
3E341C:  ADD             R3, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
3E341E:  LDR             R1, [R2]; CClock::CurrentDay ...
3E3420:  LDR             R2, [R3]; CClock::ms_nGameClockHours ...
3E3422:  LDRB            R3, [R4]; CClock::ms_nGameClockDays
3E3424:  LDRB            R0, [R1]; CClock::CurrentDay
3E3426:  STRB.W          R12, [R2]; CClock::ms_nGameClockHours
3E342A:  ADDS            R2, R3, #1
3E342C:  STRB            R2, [R4]; CClock::ms_nGameClockDays
3E342E:  ADDS            R2, R0, #1
3E3430:  CMP             R0, #7
3E3432:  MOV.W           R0, #(dword_84+2); this
3E3436:  IT EQ
3E3438:  MOVEQ           R2, #1; float
3E343A:  STRB            R2, [R1]; CClock::CurrentDay
3E343C:  MOV.W           R1, #0x3F800000; unsigned __int16
3E3440:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
3E3444:  LDR             R0, =(_ZN6CClock19ms_nGameClockMonthsE_ptr - 0x3E344C)
3E3446:  LDR             R1, =(_ZN6CClock11daysInMonthE_ptr - 0x3E3450)
3E3448:  ADD             R0, PC; _ZN6CClock19ms_nGameClockMonthsE_ptr
3E344A:  LDRB            R2, [R4]; CClock::ms_nGameClockDays
3E344C:  ADD             R1, PC; _ZN6CClock11daysInMonthE_ptr
3E344E:  LDR             R0, [R0]; CClock::ms_nGameClockMonths ...
3E3450:  LDR             R1, [R1]; CClock::daysInMonth ...
3E3452:  LDRB            R0, [R0]; CClock::ms_nGameClockMonths
3E3454:  ADD             R1, R0
3E3456:  LDRB.W          R1, [R1,#-1]
3E345A:  CMP             R2, R1
3E345C:  BCC             loc_3E347A
3E345E:  LDR             R1, =(_ZN6CClock19ms_nGameClockMonthsE_ptr - 0x3E3468)
3E3460:  ADDS            R0, #1
3E3462:  LDR             R2, =(_ZN6CClock17ms_nGameClockDaysE_ptr - 0x3E346C)
3E3464:  ADD             R1, PC; _ZN6CClock19ms_nGameClockMonthsE_ptr
3E3466:  UXTB            R3, R0
3E3468:  ADD             R2, PC; _ZN6CClock17ms_nGameClockDaysE_ptr
3E346A:  CMP             R3, #0xC
3E346C:  LDR             R1, [R1]; CClock::ms_nGameClockMonths ...
3E346E:  IT HI
3E3470:  MOVHI           R0, #1
3E3472:  LDR             R2, [R2]; CClock::ms_nGameClockDays ...
3E3474:  STRB            R0, [R1]; CClock::ms_nGameClockMonths
3E3476:  MOVS            R0, #1
3E3478:  STRB            R0, [R2]; CClock::ms_nGameClockDays
3E347A:  LDR             R0, =(_ZN6CClock17ms_nLastClockTickE_ptr - 0x3E3482)
3E347C:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3E3486)
3E347E:  ADD             R0, PC; _ZN6CClock17ms_nLastClockTickE_ptr
3E3480:  LDR             R2, =(_ZN6CClock29ms_nMillisecondsPerGameMinuteE_ptr - 0x3E348A)
3E3482:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3E3484:  LDR             R0, [R0]; CClock::ms_nLastClockTick ...
3E3486:  ADD             R2, PC; _ZN6CClock29ms_nMillisecondsPerGameMinuteE_ptr
3E3488:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3E348A:  LDR             R2, [R2]; CClock::ms_nMillisecondsPerGameMinute ...
3E348C:  LDR             R0, [R0]; CClock::ms_nLastClockTick
3E348E:  LDR             R3, [R1]; CTimer::m_snTimeInMilliseconds
3E3490:  LDR             R1, [R2]; CClock::ms_nMillisecondsPerGameMinute
3E3492:  SUBS            R0, R3, R0
3E3494:  RSB.W           R0, R0, R0,LSL#4
3E3498:  LSLS            R0, R0, #2
3E349A:  BLX             __aeabi_uidiv
3E349E:  LDR             R1, =(_ZN6CClock20ms_nGameClockSecondsE_ptr - 0x3E34A4)
3E34A0:  ADD             R1, PC; _ZN6CClock20ms_nGameClockSecondsE_ptr
3E34A2:  LDR             R1, [R1]; CClock::ms_nGameClockSeconds ...
3E34A4:  STRH            R0, [R1]; CClock::ms_nGameClockSeconds
3E34A6:  POP             {R4,R6,R7,PC}
