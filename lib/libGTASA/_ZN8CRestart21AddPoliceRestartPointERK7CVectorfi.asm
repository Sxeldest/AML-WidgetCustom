; =========================================================
; Game Engine Function: _ZN8CRestart21AddPoliceRestartPointERK7CVectorfi
; Address            : 0x3249D0 - 0x324A28
; =========================================================

3249D0:  PUSH            {R4-R7,LR}
3249D2:  ADD             R7, SP, #0xC
3249D4:  PUSH.W          {R8,R9,R11}
3249D8:  LDR             R3, =(_ZN8CRestart22NumberOfPoliceRestartsE_ptr - 0x3249E2)
3249DA:  LDR.W           R8, =(_ZN8CRestart19PoliceRestartPointsE_ptr - 0x3249EC)
3249DE:  ADD             R3, PC; _ZN8CRestart22NumberOfPoliceRestartsE_ptr
3249E0:  LDR.W           R12, =(_ZN8CRestart22PoliceRestartWhenToUseE_ptr - 0x3249F0)
3249E4:  LDR.W           LR, =(_ZN8CRestart21PoliceRestartHeadingsE_ptr - 0x3249F2)
3249E8:  ADD             R8, PC; _ZN8CRestart19PoliceRestartPointsE_ptr
3249EA:  LDR             R3, [R3]; CRestart::NumberOfPoliceRestarts ...
3249EC:  ADD             R12, PC; _ZN8CRestart22PoliceRestartWhenToUseE_ptr
3249EE:  ADD             LR, PC; _ZN8CRestart21PoliceRestartHeadingsE_ptr
3249F0:  VLDR            D16, [R0]
3249F4:  LDR.W           R9, [R0,#8]
3249F8:  LDRH            R5, [R3]; CRestart::NumberOfPoliceRestarts
3249FA:  LDR.W           R4, [R8]; CRestart::PoliceRestartPoints ...
3249FE:  LDR.W           R12, [R12]; CRestart::PoliceRestartWhenToUse ...
324A02:  ADD.W           R0, R5, R5,LSL#1
324A06:  LDR.W           R6, [LR]; CRestart::PoliceRestartHeadings ...
324A0A:  ADD.W           R0, R4, R0,LSL#2
324A0E:  STR.W           R2, [R12,R5,LSL#2]
324A12:  STR.W           R9, [R0,#8]
324A16:  VSTR            D16, [R0]
324A1A:  ADDS            R0, R5, #1
324A1C:  STR.W           R1, [R6,R5,LSL#2]
324A20:  STRH            R0, [R3]; CRestart::NumberOfPoliceRestarts
324A22:  POP.W           {R8,R9,R11}
324A26:  POP             {R4-R7,PC}
