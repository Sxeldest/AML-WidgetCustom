; =========================================================
; Game Engine Function: _ZN8CRestart23AddHospitalRestartPointERK7CVectorfi
; Address            : 0x324968 - 0x3249C0
; =========================================================

324968:  PUSH            {R4-R7,LR}
32496A:  ADD             R7, SP, #0xC
32496C:  PUSH.W          {R8,R9,R11}
324970:  LDR             R3, =(_ZN8CRestart24NumberOfHospitalRestartsE_ptr - 0x32497A)
324972:  LDR.W           R8, =(_ZN8CRestart21HospitalRestartPointsE_ptr - 0x324984)
324976:  ADD             R3, PC; _ZN8CRestart24NumberOfHospitalRestartsE_ptr
324978:  LDR.W           R12, =(_ZN8CRestart24HospitalRestartWhenToUseE_ptr - 0x324988)
32497C:  LDR.W           LR, =(_ZN8CRestart23HospitalRestartHeadingsE_ptr - 0x32498A)
324980:  ADD             R8, PC; _ZN8CRestart21HospitalRestartPointsE_ptr
324982:  LDR             R3, [R3]; CRestart::NumberOfHospitalRestarts ...
324984:  ADD             R12, PC; _ZN8CRestart24HospitalRestartWhenToUseE_ptr
324986:  ADD             LR, PC; _ZN8CRestart23HospitalRestartHeadingsE_ptr
324988:  VLDR            D16, [R0]
32498C:  LDR.W           R9, [R0,#8]
324990:  LDRH            R5, [R3]; CRestart::NumberOfHospitalRestarts
324992:  LDR.W           R4, [R8]; CRestart::HospitalRestartPoints ...
324996:  LDR.W           R12, [R12]; CRestart::HospitalRestartWhenToUse ...
32499A:  ADD.W           R0, R5, R5,LSL#1
32499E:  LDR.W           R6, [LR]; CRestart::HospitalRestartHeadings ...
3249A2:  ADD.W           R0, R4, R0,LSL#2
3249A6:  STR.W           R2, [R12,R5,LSL#2]
3249AA:  STR.W           R9, [R0,#8]
3249AE:  VSTR            D16, [R0]
3249B2:  ADDS            R0, R5, #1
3249B4:  STR.W           R1, [R6,R5,LSL#2]
3249B8:  STRH            R0, [R3]; CRestart::NumberOfHospitalRestarts
3249BA:  POP.W           {R8,R9,R11}
3249BE:  POP             {R4-R7,PC}
