; =========================================================
; Game Engine Function: _ZN6CClock12RestoreClockEv
; Address            : 0x3E3598 - 0x3E3604
; =========================================================

3E3598:  PUSH            {R4-R7,LR}
3E359A:  ADD             R7, SP, #0xC
3E359C:  PUSH.W          {R8}
3E35A0:  LDR             R3, =(_ZN6CClock17ms_nGameClockDaysE_ptr - 0x3E35A8)
3E35A2:  LDR             R4, =(_ZN6CClock26ms_Stored_nGameClockMonthsE_ptr - 0x3E35AC)
3E35A4:  ADD             R3, PC; _ZN6CClock17ms_nGameClockDaysE_ptr
3E35A6:  LDR             R0, =(_ZN6CClock25ms_Stored_nGameClockHoursE_ptr - 0x3E35B4)
3E35A8:  ADD             R4, PC; _ZN6CClock26ms_Stored_nGameClockMonthsE_ptr
3E35AA:  LDR             R1, =(_ZN6CClock27ms_Stored_nGameClockMinutesE_ptr - 0x3E35B8)
3E35AC:  LDR.W           R8, [R3]; CClock::ms_nGameClockDays ...
3E35B0:  ADD             R0, PC; _ZN6CClock25ms_Stored_nGameClockHoursE_ptr
3E35B2:  LDR             R3, =(_ZN6CClock19ms_nGameClockMonthsE_ptr - 0x3E35BC)
3E35B4:  ADD             R1, PC; _ZN6CClock27ms_Stored_nGameClockMinutesE_ptr
3E35B6:  LDR             R4, [R4]; CClock::ms_Stored_nGameClockMonths ...
3E35B8:  ADD             R3, PC; _ZN6CClock19ms_nGameClockMonthsE_ptr
3E35BA:  LDR             R2, =(_ZN6CClock27ms_Stored_nGameClockSecondsE_ptr - 0x3E35C6)
3E35BC:  LDR.W           R12, =(_ZN6CClock18ms_nGameClockHoursE_ptr - 0x3E35CA)
3E35C0:  LDR             R3, [R3]; CClock::ms_nGameClockMonths ...
3E35C2:  ADD             R2, PC; _ZN6CClock27ms_Stored_nGameClockSecondsE_ptr
3E35C4:  LDRB            R4, [R4]; CClock::ms_Stored_nGameClockMonths
3E35C6:  ADD             R12, PC; _ZN6CClock18ms_nGameClockHoursE_ptr
3E35C8:  LDR.W           LR, =(_ZN6CClock20ms_nGameClockMinutesE_ptr - 0x3E35D4)
3E35CC:  STRB            R4, [R3]; CClock::ms_nGameClockMonths
3E35CE:  LDR             R3, =(_ZN6CClock24ms_Stored_nGameClockDaysE_ptr - 0x3E35D8)
3E35D0:  ADD             LR, PC; _ZN6CClock20ms_nGameClockMinutesE_ptr
3E35D2:  LDR             R6, =(_ZN6CClock20ms_nGameClockSecondsE_ptr - 0x3E35DC)
3E35D4:  ADD             R3, PC; _ZN6CClock24ms_Stored_nGameClockDaysE_ptr
3E35D6:  LDR             R0, [R0]; CClock::ms_Stored_nGameClockHours ...
3E35D8:  ADD             R6, PC; _ZN6CClock20ms_nGameClockSecondsE_ptr
3E35DA:  LDR             R1, [R1]; CClock::ms_Stored_nGameClockMinutes ...
3E35DC:  LDR             R2, [R2]; CClock::ms_Stored_nGameClockSeconds ...
3E35DE:  LDR             R3, [R3]; CClock::ms_Stored_nGameClockDays ...
3E35E0:  LDR.W           R12, [R12]; CClock::ms_nGameClockHours ...
3E35E4:  LDR.W           R5, [LR]; CClock::ms_nGameClockMinutes ...
3E35E8:  LDR             R6, [R6]; CClock::ms_nGameClockSeconds ...
3E35EA:  LDRB            R0, [R0]; CClock::ms_Stored_nGameClockHours
3E35EC:  LDRB            R1, [R1]; CClock::ms_Stored_nGameClockMinutes
3E35EE:  LDRH            R2, [R2]; CClock::ms_Stored_nGameClockSeconds
3E35F0:  LDRB            R3, [R3]; CClock::ms_Stored_nGameClockDays
3E35F2:  STRB.W          R3, [R8]; CClock::ms_nGameClockDays
3E35F6:  STRB.W          R0, [R12]; CClock::ms_nGameClockHours
3E35FA:  STRB            R1, [R5]; CClock::ms_nGameClockMinutes
3E35FC:  STRH            R2, [R6]; CClock::ms_nGameClockSeconds
3E35FE:  POP.W           {R8}
3E3602:  POP             {R4-R7,PC}
