; =========================================================
; Game Engine Function: _ZN11CMenuSystem17InputStandardMenuEh
; Address            : 0x43C370 - 0x43C686
; =========================================================

43C370:  PUSH            {R4,R5,R7,LR}
43C372:  ADD             R7, SP, #8
43C374:  MOV             R5, R0
43C376:  LDR             R0, =(_ZN11CMenuSystem16CurrentMenuInUseE_ptr - 0x43C37C)
43C378:  ADD             R0, PC; _ZN11CMenuSystem16CurrentMenuInUseE_ptr
43C37A:  LDR             R0, [R0]; CMenuSystem::CurrentMenuInUse ...
43C37C:  LDRSB.W         R0, [R0]; CMenuSystem::CurrentMenuInUse
43C380:  CMP.W           R0, #0xFFFFFFFF
43C384:  BGT             loc_43C390
43C386:  MOVS            R0, #1
43C388:  LDR             R1, =(_ZN11CMenuSystem16CurrentMenuInUseE_ptr - 0x43C38E)
43C38A:  ADD             R1, PC; _ZN11CMenuSystem16CurrentMenuInUseE_ptr
43C38C:  LDR             R1, [R1]; CMenuSystem::CurrentMenuInUse ...
43C38E:  STRB            R0, [R1]; CMenuSystem::CurrentMenuInUse
43C390:  LDR             R1, =(_ZN11CMenuSystem9MenuInUseE_ptr - 0x43C39A)
43C392:  SXTB            R2, R0
43C394:  CMP             R2, #1
43C396:  ADD             R1, PC; _ZN11CMenuSystem9MenuInUseE_ptr
43C398:  LDR             R1, [R1]; CMenuSystem::MenuInUse ...
43C39A:  LDRB            R1, [R1,R2]
43C39C:  BLT             loc_43C3A4
43C39E:  CBNZ            R1, loc_43C3A4
43C3A0:  SUBS            R0, #1
43C3A2:  B               loc_43C388
43C3A4:  CMP             R2, #2
43C3A6:  BLT             loc_43C3BC
43C3A8:  MOVS            R0, #0
43C3AA:  LDR             R1, =(_ZN11CMenuSystem16CurrentMenuInUseE_ptr - 0x43C3B2)
43C3AC:  LDR             R2, =(_ZN11CMenuSystem9MenuInUseE_ptr - 0x43C3B4)
43C3AE:  ADD             R1, PC; _ZN11CMenuSystem16CurrentMenuInUseE_ptr
43C3B0:  ADD             R2, PC; _ZN11CMenuSystem9MenuInUseE_ptr
43C3B2:  LDR             R1, [R1]; CMenuSystem::CurrentMenuInUse ...
43C3B4:  LDR             R2, [R2]; CMenuSystem::MenuInUse ...
43C3B6:  STRB            R0, [R1]; CMenuSystem::CurrentMenuInUse
43C3B8:  SXTB            R1, R0
43C3BA:  LDRB            R1, [R2,R1]; int
43C3BC:  SXTB            R2, R0
43C3BE:  CMP             R2, #1
43C3C0:  BGT             loc_43C3C8
43C3C2:  CBNZ            R1, loc_43C3C8
43C3C4:  ADDS            R0, #1
43C3C6:  B               loc_43C3AA
43C3C8:  MOVS            R0, #0; this
43C3CA:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
43C3CE:  LDRH            R1, [R0,#0x1E]
43C3D0:  CBZ             R1, loc_43C400
43C3D2:  LDRH.W          R0, [R0,#0x4E]
43C3D6:  CBNZ            R0, loc_43C400
43C3D8:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x43C3E0)
43C3DA:  LDR             R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x43C3E2)
43C3DC:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
43C3DE:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
43C3E0:  LDR             R0, [R0]; CTimer::m_UserPause ...
43C3E2:  LDR             R1, [R1]; CTimer::m_CodePause ...
43C3E4:  LDRB            R0, [R0]; CTimer::m_UserPause
43C3E6:  LDRB            R1, [R1]; CTimer::m_CodePause
43C3E8:  ORRS            R0, R1
43C3EA:  LSLS            R0, R0, #0x18
43C3EC:  BNE             loc_43C400
43C3EE:  LDR             R0, =(AudioEngine_ptr - 0x43C3FC)
43C3F0:  MOVS            R1, #2; int
43C3F2:  MOVS            R2, #0; float
43C3F4:  MOV.W           R3, #0x3F800000; float
43C3F8:  ADD             R0, PC; AudioEngine_ptr
43C3FA:  LDR             R0, [R0]; AudioEngine ; this
43C3FC:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
43C400:  MOVS            R0, #0; this
43C402:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
43C406:  LDRH            R1, [R0,#0x20]
43C408:  CBZ             R1, loc_43C410
43C40A:  LDRH.W          R0, [R0,#0x50]
43C40E:  CBZ             R0, loc_43C42E
43C410:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x43C418)
43C412:  LDR             R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x43C41A)
43C414:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
43C416:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
43C418:  LDR             R0, [R0]; CTimer::m_UserPause ...
43C41A:  LDR             R1, [R1]; CTimer::m_CodePause ...
43C41C:  LDRB            R0, [R0]; CTimer::m_UserPause
43C41E:  LDRB            R1, [R1]; CTimer::m_CodePause
43C420:  ORRS            R0, R1
43C422:  LSLS            R0, R0, #0x18
43C424:  BEQ             loc_43C474
43C426:  MOVS            R0, #0x35 ; '5'
43C428:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
43C42C:  CBZ             R0, loc_43C474
43C42E:  LDR             R0, =(_ZN6CTimer11m_UserPauseE_ptr - 0x43C436)
43C430:  LDR             R1, =(_ZN6CTimer11m_CodePauseE_ptr - 0x43C438)
43C432:  ADD             R0, PC; _ZN6CTimer11m_UserPauseE_ptr
43C434:  ADD             R1, PC; _ZN6CTimer11m_CodePauseE_ptr
43C436:  LDR             R0, [R0]; CTimer::m_UserPause ...
43C438:  LDR             R1, [R1]; CTimer::m_CodePause ...
43C43A:  LDRB            R0, [R0]; CTimer::m_UserPause
43C43C:  LDRB            R1, [R1]; CTimer::m_CodePause
43C43E:  ORRS            R0, R1
43C440:  LSLS            R0, R0, #0x18
43C442:  BNE             loc_43C456
43C444:  LDR             R0, =(AudioEngine_ptr - 0x43C452)
43C446:  MOVS            R1, #1; int
43C448:  MOVS            R2, #0; float
43C44A:  MOV.W           R3, #0x3F800000; float
43C44E:  ADD             R0, PC; AudioEngine_ptr
43C450:  LDR             R0, [R0]; AudioEngine ; this
43C452:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
43C456:  LDR             R0, =(MenuNumber_ptr - 0x43C45C)
43C458:  ADD             R0, PC; MenuNumber_ptr
43C45A:  LDR             R0, [R0]; MenuNumber
43C45C:  LDR.W           R0, [R0,R5,LSL#2]
43C460:  LDRSB.W         R1, [R0,#0x415]
43C464:  ADDS            R2, R0, R1
43C466:  LDRB.W          R2, [R2,#0x3D6]
43C46A:  CMP             R2, #0
43C46C:  ITT NE
43C46E:  UXTBNE          R1, R1
43C470:  STRBNE.W        R1, [R0,#0x416]
43C474:  LDR             R0, =(MenuNumber_ptr - 0x43C47A)
43C476:  ADD             R0, PC; MenuNumber_ptr
43C478:  LDR             R0, [R0]; MenuNumber
43C47A:  LDR.W           R0, [R0,R5,LSL#2]
43C47E:  LDRB.W          R1, [R0,#0x415]
43C482:  LDRB.W          R2, [R0,#0x416]
43C486:  CMP             R2, R1
43C488:  BEQ             loc_43C49A
43C48A:  LDR             R1, =(MenuNumber_ptr - 0x43C496)
43C48C:  MOVS            R2, #0x9D
43C48E:  STRB.W          R2, [R0,#0x416]
43C492:  ADD             R1, PC; MenuNumber_ptr
43C494:  LDR             R1, [R1]; MenuNumber
43C496:  LDR.W           R0, [R1,R5,LSL#2]
43C49A:  LDRB.W          R0, [R0,#0x3F6]
43C49E:  CMP             R0, #2
43C4A0:  BCC.W           locret_43C63E
43C4A4:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
43C4A8:  LDR             R2, =(unk_992228 - 0x43C4B2)
43C4AA:  VMOV            D17, R0, R1
43C4AE:  ADD             R2, PC; unk_992228
43C4B0:  VLDR            S0, [R2]
43C4B4:  VCVT.F64.F32    D16, S0
43C4B8:  VSUB.F64        D16, D17, D16
43C4BC:  VLDR            D17, =0.150000006
43C4C0:  VCMPE.F64       D16, D17
43C4C4:  VMRS            APSR_nzcv, FPSCR
43C4C8:  BLE.W           loc_43C5E0
43C4CC:  MOVS            R0, #0x1F
43C4CE:  BLX             j__ZN4CHID17IsPressedNegativeE10HIDMapping; CHID::IsPressedNegative(HIDMapping)
43C4D2:  CBNZ            R0, loc_43C4F0
43C4D4:  LDR             R0, =(MenuNumber_ptr - 0x43C4DA)
43C4D6:  ADD             R0, PC; MenuNumber_ptr
43C4D8:  LDR             R0, [R0]; MenuNumber
43C4DA:  LDR.W           R0, [R0,R5,LSL#2]
43C4DE:  LDRB.W          R0, [R0,#0x3F9]
43C4E2:  CBZ             R0, loc_43C554
43C4E4:  MOVS            R0, #0x3D ; '='
43C4E6:  MOVS            R1, #0
43C4E8:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
43C4EC:  CMP             R0, #1
43C4EE:  BNE             loc_43C554
43C4F0:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
43C4F4:  VMOV            D16, R0, R1
43C4F8:  LDR             R0, =(AudioEngine_ptr - 0x43C506)
43C4FA:  LDR             R1, =(unk_992228 - 0x43C508)
43C4FC:  MOVS            R2, #0; float
43C4FE:  VCVT.F32.F64    S0, D16
43C502:  ADD             R0, PC; AudioEngine_ptr
43C504:  ADD             R1, PC; unk_992228
43C506:  MOV.W           R3, #0x3F800000; float
43C50A:  LDR             R0, [R0]; AudioEngine ; this
43C50C:  VSTR            S0, [R1]
43C510:  MOVS            R1, #3; int
43C512:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
43C516:  LDR             R0, =(MenuNumber_ptr - 0x43C51E)
43C518:  LDR             R1, =(MenuNumber_ptr - 0x43C520)
43C51A:  ADD             R0, PC; MenuNumber_ptr
43C51C:  ADD             R1, PC; MenuNumber_ptr
43C51E:  LDR             R0, [R0]; MenuNumber
43C520:  LDR             R1, [R1]; MenuNumber
43C522:  LDR.W           R0, [R0,R5,LSL#2]
43C526:  LDRB.W          R2, [R0,#0x415]
43C52A:  SUBS            R2, #1
43C52C:  STRB.W          R2, [R0,#0x415]
43C530:  LDR.W           R0, [R1,R5,LSL#2]
43C534:  LDRSB.W         R2, [R0,#0x415]
43C538:  ADDS            R3, R0, R2
43C53A:  LDRB.W          R3, [R3,#0x3D6]
43C53E:  CBZ             R3, loc_43C54E
43C540:  ADD.W           R3, R2, R2,LSL#2
43C544:  ADD.W           R3, R0, R3,LSL#1
43C548:  LDRB.W          R3, [R3,#0x41]
43C54C:  CBNZ            R3, loc_43C554
43C54E:  CMP.W           R2, #0xFFFFFFFF
43C552:  BGT             loc_43C52A
43C554:  MOVS            R0, #0x1F
43C556:  BLX             j__ZN4CHID17IsPressedPositiveE10HIDMapping; CHID::IsPressedPositive(HIDMapping)
43C55A:  CBNZ            R0, loc_43C578
43C55C:  LDR             R0, =(MenuNumber_ptr - 0x43C562)
43C55E:  ADD             R0, PC; MenuNumber_ptr
43C560:  LDR             R0, [R0]; MenuNumber
43C562:  LDR.W           R0, [R0,R5,LSL#2]
43C566:  LDRB.W          R0, [R0,#0x3F9]
43C56A:  CBZ             R0, loc_43C5E0
43C56C:  MOVS            R0, #0x3C ; '<'
43C56E:  MOVS            R1, #0
43C570:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
43C574:  CMP             R0, #1
43C576:  BNE             loc_43C5E0
43C578:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
43C57C:  VMOV            D16, R0, R1
43C580:  LDR             R0, =(AudioEngine_ptr - 0x43C58E)
43C582:  LDR             R1, =(unk_992228 - 0x43C590)
43C584:  MOVS            R2, #0; float
43C586:  VCVT.F32.F64    S0, D16
43C58A:  ADD             R0, PC; AudioEngine_ptr
43C58C:  ADD             R1, PC; unk_992228
43C58E:  MOV.W           R3, #0x3F800000; float
43C592:  LDR             R0, [R0]; AudioEngine ; this
43C594:  VSTR            S0, [R1]
43C598:  MOVS            R1, #3; int
43C59A:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
43C59E:  LDR             R0, =(MenuNumber_ptr - 0x43C5A6)
43C5A0:  LDR             R1, =(MenuNumber_ptr - 0x43C5A8)
43C5A2:  ADD             R0, PC; MenuNumber_ptr
43C5A4:  ADD             R1, PC; MenuNumber_ptr
43C5A6:  LDR             R0, [R0]; MenuNumber
43C5A8:  LDR             R1, [R1]; MenuNumber
43C5AA:  LDR.W           R0, [R0,R5,LSL#2]
43C5AE:  LDRB.W          R3, [R0,#0x415]
43C5B2:  ADDS            R2, R3, #1
43C5B4:  STRB.W          R2, [R0,#0x415]
43C5B8:  LDR.W           R0, [R1,R5,LSL#2]
43C5BC:  LDRSB.W         R2, [R0,#0x415]
43C5C0:  ADDS            R3, R0, R2
43C5C2:  LDRB.W          R3, [R3,#0x3D6]
43C5C6:  CBZ             R3, loc_43C5D6
43C5C8:  ADD.W           R3, R2, R2,LSL#2
43C5CC:  ADD.W           R3, R0, R3,LSL#1
43C5D0:  LDRB.W          R3, [R3,#0x41]
43C5D4:  CBNZ            R3, loc_43C5E0
43C5D6:  LDRB.W          R4, [R0,#0x3F6]
43C5DA:  UXTB            R3, R2
43C5DC:  CMP             R2, R4
43C5DE:  BLT             loc_43C5B2
43C5E0:  LDR             R0, =(MenuNumber_ptr - 0x43C5E6)
43C5E2:  ADD             R0, PC; MenuNumber_ptr
43C5E4:  LDR             R0, [R0]; MenuNumber
43C5E6:  LDR.W           R0, [R0,R5,LSL#2]
43C5EA:  LDRSB.W         R1, [R0,#0x415]
43C5EE:  CMP.W           R1, #0xFFFFFFFF
43C5F2:  BLE             loc_43C640
43C5F4:  LDRB.W          R2, [R0,#0x3F6]
43C5F8:  CMP             R1, R2
43C5FA:  BLT             locret_43C63E
43C5FC:  MOVS            R1, #0
43C5FE:  STRB.W          R1, [R0,#0x415]
43C602:  LDR             R0, =(MenuNumber_ptr - 0x43C608)
43C604:  ADD             R0, PC; MenuNumber_ptr
43C606:  LDR             R0, [R0]; MenuNumber
43C608:  B               loc_43C61C
43C60A:  LDRB.W          R3, [R1,#0x3F6]
43C60E:  CMP             R2, R3
43C610:  IT GE
43C612:  POPGE           {R4,R5,R7,PC}
43C614:  UXTB            R2, R2
43C616:  ADDS            R2, #1
43C618:  STRB.W          R2, [R1,#0x415]
43C61C:  LDR.W           R1, [R0,R5,LSL#2]
43C620:  LDRSB.W         R2, [R1,#0x415]
43C624:  ADDS            R3, R1, R2
43C626:  LDRB.W          R3, [R3,#0x3D6]
43C62A:  CMP             R3, #0
43C62C:  BEQ             loc_43C60A
43C62E:  ADD.W           R3, R2, R2,LSL#2
43C632:  ADD.W           R3, R1, R3,LSL#1
43C636:  LDRB.W          R3, [R3,#0x41]
43C63A:  CMP             R3, #0
43C63C:  BEQ             loc_43C60A
43C63E:  POP             {R4,R5,R7,PC}
43C640:  LDRB.W          R1, [R0,#0x3F6]
43C644:  ADDS            R1, #0xFF
43C646:  STRB.W          R1, [R0,#0x415]
43C64A:  LDR             R0, =(MenuNumber_ptr - 0x43C650)
43C64C:  ADD             R0, PC; MenuNumber_ptr
43C64E:  LDR             R2, [R0]; MenuNumber
43C650:  B               loc_43C658
43C652:  SUBS            R1, #1
43C654:  STRB.W          R1, [R0,#0x415]
43C658:  LDR.W           R0, [R2,R5,LSL#2]
43C65C:  LDRSB.W         R1, [R0,#0x415]
43C660:  ADDS            R3, R0, R1
43C662:  LDRB.W          R3, [R3,#0x3D6]
43C666:  CBZ             R3, loc_43C680
43C668:  ADD.W           R3, R1, R1,LSL#2
43C66C:  ADD.W           R3, R0, R3,LSL#1
43C670:  LDRB.W          R3, [R3,#0x41]
43C674:  CMP             R3, #0
43C676:  BNE             loc_43C5F4
43C678:  CMP.W           R1, #0xFFFFFFFF
43C67C:  BGT             loc_43C652
43C67E:  B               loc_43C5F4
43C680:  CMP             R1, #0
43C682:  BGE             loc_43C652
43C684:  B               loc_43C5F4
