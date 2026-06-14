; =========================================================
; Game Engine Function: _ZN6CClock10InitialiseEj
; Address            : 0x3E2FD0 - 0x3E3048
; =========================================================

3E2FD0:  PUSH            {R4-R7,LR}
3E2FD2:  ADD             R7, SP, #0xC
3E2FD4:  PUSH.W          {R8}
3E2FD8:  LDR.W           LR, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3E2FE2)
3E2FDC:  LDR             R6, =(_ZN6CClock10CurrentDayE_ptr - 0x3E2FE6)
3E2FDE:  ADD             LR, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3E2FE0:  LDR             R1, =(_ZN6CClock19ms_nGameClockMonthsE_ptr - 0x3E2FEE)
3E2FE2:  ADD             R6, PC; _ZN6CClock10CurrentDayE_ptr
3E2FE4:  LDR             R2, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x3E2FF4)
3E2FE6:  LDR.W           R5, [LR]; CTimer::m_snTimeInMilliseconds ...
3E2FEA:  ADD             R1, PC; _ZN6CClock19ms_nGameClockMonthsE_ptr
3E2FEC:  LDR.W           LR, [R6]; CClock::CurrentDay ...
3E2FF0:  ADD             R2, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
3E2FF2:  LDR             R6, =(_ZN6CClock29ms_nMillisecondsPerGameMinuteE_ptr - 0x3E2FFA)
3E2FF4:  LDR             R1, [R1]; CClock::ms_nGameClockMonths ...
3E2FF6:  ADD             R6, PC; _ZN6CClock29ms_nMillisecondsPerGameMinuteE_ptr
3E2FF8:  LDR             R3, =(_ZN6CClock20ms_nGameClockSecondsE_ptr - 0x3E3004)
3E2FFA:  LDR.W           R12, =(_ZN6CClock19bClockHasBeenStoredE_ptr - 0x3E300A)
3E2FFE:  LDR             R6, [R6]; CClock::ms_nMillisecondsPerGameMinute ...
3E3000:  ADD             R3, PC; _ZN6CClock20ms_nGameClockSecondsE_ptr
3E3002:  LDR.W           R8, =(_ZN6CClock17ms_nLastClockTickE_ptr - 0x3E3014)
3E3006:  ADD             R12, PC; _ZN6CClock19bClockHasBeenStoredE_ptr
3E3008:  LDR             R2, [R2]; CClock::ms_nGameClockMinutes ...
3E300A:  STR             R0, [R6]; CClock::ms_nMillisecondsPerGameMinute
3E300C:  MOVS            R0, #1
3E300E:  LDR             R6, =(_ZN6CClock17ms_nGameClockDaysE_ptr - 0x3E301A)
3E3010:  ADD             R8, PC; _ZN6CClock17ms_nLastClockTickE_ptr
3E3012:  STRB            R0, [R1]; CClock::ms_nGameClockMonths
3E3014:  LDR             R1, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x3E3020)
3E3016:  ADD             R6, PC; _ZN6CClock17ms_nGameClockDaysE_ptr
3E3018:  LDR.W           R4, [R12]; CClock::bClockHasBeenStored ...
3E301C:  ADD             R1, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
3E301E:  LDR             R6, [R6]; CClock::ms_nGameClockDays ...
3E3020:  LDR             R3, [R3]; CClock::ms_nGameClockSeconds ...
3E3022:  LDR             R1, [R1]; CClock::ms_nGameClockHours ...
3E3024:  STRB            R0, [R6]; CClock::ms_nGameClockDays
3E3026:  MOVS            R0, #0xC
3E3028:  LDR.W           R12, [R8]; CClock::ms_nLastClockTick ...
3E302C:  STRB            R0, [R1]; CClock::ms_nGameClockHours
3E302E:  MOVS            R0, #0
3E3030:  MOVS            R1, #4
3E3032:  STRB            R0, [R2]; CClock::ms_nGameClockMinutes
3E3034:  STRH            R0, [R3]; CClock::ms_nGameClockSeconds
3E3036:  STRB            R0, [R4]; CClock::bClockHasBeenStored
3E3038:  LDR             R0, [R5]; CTimer::m_snTimeInMilliseconds
3E303A:  STRB.W          R1, [LR]; CClock::CurrentDay
3E303E:  STR.W           R0, [R12]; CClock::ms_nLastClockTick
3E3042:  POP.W           {R8}
3E3046:  POP             {R4-R7,PC}
