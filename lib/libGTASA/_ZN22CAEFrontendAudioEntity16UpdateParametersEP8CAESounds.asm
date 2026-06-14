; =========================================================
; Game Engine Function: _ZN22CAEFrontendAudioEntity16UpdateParametersEP8CAESounds
; Address            : 0x3972D0 - 0x3973F0
; =========================================================

3972D0:  CMP             R1, #0
3972D2:  IT EQ
3972D4:  BXEQ            LR
3972D6:  LDR             R3, [R1,#0xC]
3972D8:  SUB.W           R12, R3, #0x10; switch 18 cases
3972DC:  CMP.W           R12, #0x11
3972E0:  BHI.W           def_3972E4; jumptable 003972E4 default case, cases 17-26,31,32
3972E4:  TBB.W           [PC,R12]; switch jump
3972E8:  DCB 9; jump table for switch statement
3972E9:  DCB 0x78
3972EA:  DCB 0x78
3972EB:  DCB 0x78
3972EC:  DCB 0x78
3972ED:  DCB 0x78
3972EE:  DCB 0x78
3972EF:  DCB 0x78
3972F0:  DCB 0x78
3972F1:  DCB 0x78
3972F2:  DCB 0x78
3972F3:  DCB 0x19
3972F4:  DCB 0x28
3972F5:  DCB 0x3D
3972F6:  DCB 0x4C
3972F7:  DCB 0x78
3972F8:  DCB 0x78
3972F9:  DCB 0x69
3972FA:  CMP             R2, #1; jumptable 003972E4 case 16
3972FC:  BLT             def_3972E4; jumptable 003972E4 default case, cases 17-26,31,32
3972FE:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x397308)
397300:  LDR.W           R0, [R0,#0x90]
397304:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
397306:  ADDW            R0, R0, #0x76C
39730A:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
39730C:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
39730E:  CMP             R2, R0
397310:  ITT HI
397312:  MOVHI           R0, R1; this
397314:  BHI.W           j_j__ZN8CAESound18StopSoundAndForgetEv; j_CAESound::StopSoundAndForget(void)
397318:  BX              LR
39731A:  UXTH            R3, R2; jumptable 003972E4 case 27
39731C:  CMP.W           R3, #0x15E
397320:  BHI             def_3972E4; jumptable 003972E4 default case, cases 17-26,31,32
397322:  VMOV            S0, R2
397326:  VLDR            S2, =350.0
39732A:  VCVT.F32.S32    S0, S0
39732E:  VDIV.F32        S0, S0, S2
397332:  VMOV.F32        S2, #-1.0
397336:  B               loc_397354
397338:  UXTH            R3, R2; jumptable 003972E4 case 28
39733A:  CMP.W           R3, #0x15E
39733E:  BHI             def_3972E4; jumptable 003972E4 default case, cases 17-26,31,32
397340:  VMOV            S0, R2
397344:  VLDR            S2, =-350.0
397348:  VCVT.F32.S32    S0, S0
39734C:  VDIV.F32        S0, S0, S2
397350:  VMOV.F32        S2, #1.0
397354:  VADD.F32        S0, S0, S0
397358:  MOV             R2, #0xBDCCCCCD
397360:  B               loc_3973A8
397362:  UXTH            R3, R2; jumptable 003972E4 case 29
397364:  CMP.W           R3, #0x15E
397368:  BHI             def_3972E4; jumptable 003972E4 default case, cases 17-26,31,32
39736A:  VMOV            S0, R2
39736E:  VLDR            S2, =350.0
397372:  VCVT.F32.S32    S0, S0
397376:  VDIV.F32        S0, S0, S2
39737A:  VMOV.F32        S2, #-1.0
39737E:  B               loc_39739C
397380:  UXTH            R3, R2; jumptable 003972E4 case 30
397382:  CMP.W           R3, #0x15E
397386:  BHI             def_3972E4; jumptable 003972E4 default case, cases 17-26,31,32
397388:  VMOV            S0, R2
39738C:  VLDR            S2, =-350.0
397390:  VCVT.F32.S32    S0, S0
397394:  VDIV.F32        S0, S0, S2
397398:  VMOV.F32        S2, #1.0
39739C:  VADD.F32        S0, S0, S0
3973A0:  MOV             R2, #0x3DCCCCCD
3973A8:  VADD.F32        S0, S0, S2
3973AC:  VMOV            R3, S0
3973B0:  MOV             R0, R1
3973B2:  MOV             R1, R2
3973B4:  MOVS            R2, #0
3973B6:  B.W             j_j__ZN8CAESound11SetPositionE7CVector; j_CAESound::SetPosition(CVector)
3973BA:  CMP             R2, #1; jumptable 003972E4 case 33
3973BC:  BLT             def_3972E4; jumptable 003972E4 default case, cases 17-26,31,32
3973BE:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3973C8)
3973C0:  LDR.W           R0, [R0,#0x94]
3973C4:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3973C6:  ADDS            R0, #0x64 ; 'd'
3973C8:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
3973CA:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
3973CC:  CMP             R2, R0
3973CE:  ITT HI
3973D0:  MOVHI           R0, R1; this
3973D2:  BHI.W           j_j__ZN8CAESound18StopSoundAndForgetEv; j_CAESound::StopSoundAndForget(void)
3973D6:  BX              LR
3973D8:  ADDS            R2, #1; jumptable 003972E4 default case, cases 17-26,31,32
3973DA:  BNE             locret_3973EE
3973DC:  LDR.W           R2, [R0,#0x98]
3973E0:  CMP             R2, R1
3973E2:  ITTT EQ
3973E4:  MOVEQ           R1, #0
3973E6:  STRBEQ.W        R1, [R0,#0x7C]
3973EA:  STREQ.W         R1, [R0,#0x98]
3973EE:  BX              LR
