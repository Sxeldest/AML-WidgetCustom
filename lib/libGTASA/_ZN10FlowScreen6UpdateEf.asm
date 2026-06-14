; =========================================================
; Game Engine Function: _ZN10FlowScreen6UpdateEf
; Address            : 0x29D304 - 0x29D846
; =========================================================

29D304:  PUSH            {R4-R7,LR}
29D306:  ADD             R7, SP, #0xC
29D308:  PUSH.W          {R8,R9,R11}
29D30C:  VPUSH           {D8-D9}
29D310:  SUB             SP, SP, #0x108
29D312:  MOV             R4, R0
29D314:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x29D31E)
29D318:  MOV             R8, R1
29D31A:  ADD             R0, PC; __stack_chk_guard_ptr
29D31C:  LDR             R0, [R0]; __stack_chk_guard
29D31E:  LDR             R0, [R0]
29D320:  STR             R0, [SP,#0x130+var_2C]
29D322:  LDR             R5, [R4,#0x30]
29D324:  BLX             j__Z11LeftPressedv; LeftPressed(void)
29D328:  CMP             R0, #1
29D32A:  BNE             loc_29D35A
29D32C:  LDR             R1, [R4,#0x30]
29D32E:  MOVS            R0, #0
29D330:  STRB.W          R0, [R4,#0x38]
29D334:  CMP             R1, #0
29D336:  SUB.W           R2, R1, #1
29D33A:  STR             R2, [R4,#0x30]
29D33C:  BGT             loc_29D35A
29D33E:  STR             R0, [R4,#0x30]
29D340:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
29D344:  CBNZ            R0, loc_29D35A
29D346:  LDR.W           R0, =(AudioEngine_ptr - 0x29D356)
29D34A:  MOVS            R1, #4; int
29D34C:  MOVS            R2, #0; float
29D34E:  MOV.W           R3, #0x3F800000; float
29D352:  ADD             R0, PC; AudioEngine_ptr
29D354:  LDR             R0, [R0]; AudioEngine ; this
29D356:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
29D35A:  BLX             j__Z12RightPressedv; RightPressed(void)
29D35E:  CMP             R0, #1
29D360:  BNE             loc_29D390
29D362:  LDR             R0, [R4,#0x30]
29D364:  MOVS            R2, #0
29D366:  LDR             R1, [R4,#0x40]
29D368:  STRB.W          R2, [R4,#0x38]
29D36C:  ADDS            R2, R0, #1
29D36E:  CMP             R2, R1
29D370:  STR             R2, [R4,#0x30]
29D372:  BCC             loc_29D390
29D374:  STR             R0, [R4,#0x30]
29D376:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
29D37A:  CBNZ            R0, loc_29D390
29D37C:  LDR.W           R0, =(AudioEngine_ptr - 0x29D38C)
29D380:  MOVS            R1, #4; int
29D382:  MOVS            R2, #0; float
29D384:  MOV.W           R3, #0x3F800000; float
29D388:  ADD             R0, PC; AudioEngine_ptr
29D38A:  LDR             R0, [R0]; AudioEngine ; this
29D38C:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
29D390:  MOVS            R0, #0x40 ; '@'
29D392:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
29D396:  CMP             R0, #1
29D398:  BNE             loc_29D3CA
29D39A:  MOVS            R0, #0x40 ; '@'
29D39C:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
29D3A0:  CMP             R0, #1
29D3A2:  BNE             loc_29D3CA
29D3A4:  LDR.W           R0, =(gMobileMenu_ptr - 0x29D3B0)
29D3A8:  VMOV.F32        S0, #1.0
29D3AC:  ADD             R0, PC; gMobileMenu_ptr
29D3AE:  LDR             R0, [R0]; gMobileMenu
29D3B0:  LDRD.W          R1, R0, [R0,#(dword_6E0090 - 0x6E006C)]
29D3B4:  ADD.W           R0, R0, R1,LSL#2
29D3B8:  LDR.W           R0, [R0,#-4]
29D3BC:  VLDR            S2, [R0,#8]
29D3C0:  VCMPE.F32       S2, S0
29D3C4:  VMRS            APSR_nzcv, FPSCR
29D3C8:  BGE             loc_29D496
29D3CA:  LDRB            R0, [R4,#0xC]
29D3CC:  CBZ             R0, loc_29D3FC
29D3CE:  BLX             j__Z11BackPressedv; BackPressed(void)
29D3D2:  CMP             R0, #1
29D3D4:  BNE             loc_29D3FC
29D3D6:  LDR.W           R0, =(gMobileMenu_ptr - 0x29D3E2)
29D3DA:  VMOV.F32        S0, #1.0
29D3DE:  ADD             R0, PC; gMobileMenu_ptr
29D3E0:  LDR             R0, [R0]; gMobileMenu
29D3E2:  LDRD.W          R1, R0, [R0,#(dword_6E0090 - 0x6E006C)]
29D3E6:  ADD.W           R0, R0, R1,LSL#2
29D3EA:  LDR.W           R0, [R0,#-4]
29D3EE:  VLDR            S2, [R0,#8]
29D3F2:  VCMPE.F32       S2, S0
29D3F6:  VMRS            APSR_nzcv, FPSCR
29D3FA:  BGE             loc_29D460
29D3FC:  LDR             R0, [R4,#0x30]
29D3FE:  LDR.W           R1, =(gMobileMenu_ptr - 0x29D40A)
29D402:  VMOV            S0, R0
29D406:  ADD             R1, PC; gMobileMenu_ptr
29D408:  VCVT.F32.S32    S2, S0
29D40C:  VLDR            S0, [R4,#0x34]
29D410:  LDR             R1, [R1]; gMobileMenu
29D412:  LDRB.W          R1, [R1,#(byte_6E00DA - 0x6E006C)]
29D416:  CMP             R1, #0
29D418:  VSUB.F32        S4, S2, S0
29D41C:  VLDR            S2, =0.1
29D420:  VMUL.F32        S16, S4, S2
29D424:  BEQ.W           loc_29D662
29D428:  LDR.W           R1, =(lastDevice_ptr - 0x29D434)
29D42C:  LDR.W           R2, =(gMobileMenu_ptr - 0x29D436)
29D430:  ADD             R1, PC; lastDevice_ptr
29D432:  ADD             R2, PC; gMobileMenu_ptr
29D434:  LDR             R1, [R1]; lastDevice
29D436:  LDR             R2, [R2]; gMobileMenu
29D438:  LDR             R1, [R1]
29D43A:  ADD.W           R2, R2, R1,LSL#2
29D43E:  LDR.W           R2, [R2,#0x90]
29D442:  CMP             R2, #0
29D444:  BEQ             loc_29D4CE
29D446:  CMP             R2, #3
29D448:  BEQ             loc_29D51C
29D44A:  CMP             R2, #2
29D44C:  BNE.W           loc_29D59C
29D450:  MOVS            R6, #0
29D452:  STRB.W          R6, [R4,#0x38]
29D456:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
29D45A:  STRD.W          R6, R0, [R4,#0x50]
29D45E:  B               loc_29D662
29D460:  LDR             R0, [R4]
29D462:  MOVS            R1, #0
29D464:  STRB.W          R1, [R4,#0x38]
29D468:  LDR             R1, [R0,#0x24]
29D46A:  MOV             R0, R4
29D46C:  BLX             R1
29D46E:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
29D472:  CMP             R0, #0
29D474:  BNE.W           loc_29D7A0
29D478:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x29D482)
29D47C:  LDR             R1, [SP,#0x130+var_2C]
29D47E:  ADD             R0, PC; __stack_chk_guard_ptr
29D480:  LDR             R0, [R0]; __stack_chk_guard
29D482:  LDR             R0, [R0]
29D484:  SUBS            R0, R0, R1
29D486:  BNE.W           loc_29D7BA
29D48A:  LDR.W           R0, =(AudioEngine_ptr - 0x29D494)
29D48E:  MOVS            R1, #2
29D490:  ADD             R0, PC; AudioEngine_ptr
29D492:  LDR             R0, [R0]; AudioEngine
29D494:  B               loc_29D5EC
29D496:  LDR             R0, [R4,#0x30]
29D498:  MOVS            R2, #0
29D49A:  LDR             R1, [R4,#0x44]
29D49C:  STRB.W          R2, [R4,#0x38]
29D4A0:  ADD.W           R0, R0, R0,LSL#1
29D4A4:  ADD.W           R0, R1, R0,LSL#2
29D4A8:  LDR             R0, [R0,#8]
29D4AA:  BLX             R0
29D4AC:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
29D4B0:  CMP             R0, #0
29D4B2:  BNE.W           loc_29D7A0
29D4B6:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x29D4C0)
29D4BA:  LDR             R1, [SP,#0x130+var_2C]
29D4BC:  ADD             R0, PC; __stack_chk_guard_ptr
29D4BE:  LDR             R0, [R0]; __stack_chk_guard
29D4C0:  LDR             R0, [R0]
29D4C2:  SUBS            R0, R0, R1
29D4C4:  BNE.W           loc_29D7BA
29D4C8:  LDR             R0, =(AudioEngine_ptr - 0x29D4CE)
29D4CA:  ADD             R0, PC; AudioEngine_ptr
29D4CC:  B               loc_29D5E8
29D4CE:  VLDR            S4, =0.15
29D4D2:  VLDR            S6, [R4,#0x50]
29D4D6:  VCMPE.F32       S6, S4
29D4DA:  VMRS            APSR_nzcv, FPSCR
29D4DE:  BLE.W           loc_29D604
29D4E2:  VMOV.F32        S8, #0.5
29D4E6:  VCMPE.F32       S6, S8
29D4EA:  VMRS            APSR_nzcv, FPSCR
29D4EE:  BGE.W           loc_29D604
29D4F2:  VLDR            S2, =0.85
29D4F6:  VADD.F32        S2, S0, S2
29D4FA:  VCVT.S32.F32    S2, S2
29D4FE:  VMOV            R1, S2
29D502:  CMP             R0, R1
29D504:  BNE.W           loc_29D812
29D508:  VADD.F32        S0, S0, S4
29D50C:  VCVT.S32.F32    S0, S0
29D510:  VMOV            R1, S0
29D514:  CMP             R0, R1
29D516:  BEQ.W           loc_29D662
29D51A:  B               loc_29D812
29D51C:  LDR             R0, =(gMobileMenu_ptr - 0x29D52A)
29D51E:  VMOV.F32        S10, #-1.0
29D522:  VLDR            S4, [R4,#0x48]
29D526:  ADD             R0, PC; gMobileMenu_ptr
29D528:  VLDR            S2, [R4,#0x40]
29D52C:  VLDR            S6, [R4,#0x50]
29D530:  LDR             R0, [R0]; gMobileMenu
29D532:  VLDR            S16, =0.0
29D536:  ADD.W           R0, R0, R1,LSL#3
29D53A:  VLDR            S8, [R0,#0x70]
29D53E:  VCVT.F32.U32    S2, S2
29D542:  VSUB.F32        S4, S4, S8
29D546:  VLDR            S8, =0.007
29D54A:  VMUL.F32        S4, S4, S8
29D54E:  VMOV.F32        S8, #1.0
29D552:  VADD.F32        S0, S4, S0
29D556:  VADD.F32        S2, S2, S8
29D55A:  VMOV.F32        S8, #0.5
29D55E:  VCMPE.F32       S0, S10
29D562:  VMRS            APSR_nzcv, FPSCR
29D566:  VMIN.F32        D1, D0, D1
29D56A:  VABS.F32        S0, S4
29D56E:  VADD.F32        S0, S6, S0
29D572:  IT LT
29D574:  VMOVLT.F32      S2, S10
29D578:  VADD.F32        S4, S2, S8
29D57C:  VCVT.S32.F32    S6, S4
29D580:  VSTR            S0, [R4,#0x50]
29D584:  VCVT.S32.F32    S0, S4
29D588:  VSTR            S6, [R4,#0x30]
29D58C:  VSTR            S2, [R4,#0x34]
29D590:  VMOV            R1, S0
29D594:  CMP             R1, #0
29D596:  BGE             loc_29D668
29D598:  MOVS            R0, #0
29D59A:  B               loc_29D670
29D59C:  VABS.F32        S0, S16
29D5A0:  VLDR            S2, =0.003
29D5A4:  VCMPE.F32       S0, S2
29D5A8:  VMRS            APSR_nzcv, FPSCR
29D5AC:  BGE             loc_29D662
29D5AE:  LDRB.W          R1, [R4,#0x38]
29D5B2:  CMP             R1, #0
29D5B4:  BEQ             loc_29D662
29D5B6:  MOVS            R1, #0
29D5B8:  ADD.W           R0, R0, R0,LSL#1
29D5BC:  STRB.W          R1, [R4,#0x38]
29D5C0:  LDR             R1, [R4,#0x44]
29D5C2:  ADD.W           R0, R1, R0,LSL#2
29D5C6:  LDR             R0, [R0,#8]
29D5C8:  BLX             R0
29D5CA:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
29D5CE:  CMP             R0, #0
29D5D0:  BNE.W           loc_29D7A0
29D5D4:  LDR             R0, =(__stack_chk_guard_ptr - 0x29D5DC)
29D5D6:  LDR             R1, [SP,#0x130+var_2C]
29D5D8:  ADD             R0, PC; __stack_chk_guard_ptr
29D5DA:  LDR             R0, [R0]; __stack_chk_guard
29D5DC:  LDR             R0, [R0]
29D5DE:  SUBS            R0, R0, R1
29D5E0:  BNE.W           loc_29D7BA
29D5E4:  LDR             R0, =(AudioEngine_ptr - 0x29D5EA)
29D5E6:  ADD             R0, PC; AudioEngine_ptr
29D5E8:  LDR             R0, [R0]; AudioEngine ; this
29D5EA:  MOVS            R1, #1; int
29D5EC:  MOVS            R2, #0; float
29D5EE:  MOV.W           R3, #0x3F800000; float
29D5F2:  ADD             SP, SP, #0x108
29D5F4:  VPOP            {D8-D9}
29D5F8:  POP.W           {R8,R9,R11}
29D5FC:  POP.W           {R4-R7,LR}
29D600:  B.W             j_j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; j_CAudioEngine::ReportFrontendAudioEvent(int,float,float)
29D604:  VCMPE.F32       S6, S2
29D608:  VMRS            APSR_nzcv, FPSCR
29D60C:  BGE             loc_29D662
29D60E:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
29D612:  LDR             R1, [R4,#0x54]
29D614:  SUBS            R0, R0, R1
29D616:  CMP             R0, #0xC7
29D618:  BHI             loc_29D662
29D61A:  LDR             R0, =(lastDevice_ptr - 0x29D622)
29D61C:  LDR             R1, =(gMobileMenu_ptr - 0x29D628)
29D61E:  ADD             R0, PC; lastDevice_ptr
29D620:  VLDR            S0, =320.0
29D624:  ADD             R1, PC; gMobileMenu_ptr
29D626:  LDR             R0, [R0]; lastDevice
29D628:  LDR             R1, [R1]; gMobileMenu
29D62A:  LDR             R0, [R0]
29D62C:  ADD.W           R1, R1, R0,LSL#3
29D630:  VLDR            S2, [R1,#0x74]
29D634:  VCMPE.F32       S2, S0
29D638:  VMRS            APSR_nzcv, FPSCR
29D63C:  BLE             loc_29D662
29D63E:  LDR             R1, =(gMobileMenu_ptr - 0x29D648)
29D640:  VLDR            S2, =120.0
29D644:  ADD             R1, PC; gMobileMenu_ptr
29D646:  LDR             R1, [R1]; gMobileMenu
29D648:  ADD.W           R0, R1, R0,LSL#3
29D64C:  VLDR            S0, [R0,#0x70]
29D650:  VCMPE.F32       S0, S2
29D654:  VMRS            APSR_nzcv, FPSCR
29D658:  BGE.W           loc_29D7CC
29D65C:  LDR             R0, [R4,#0x30]
29D65E:  SUBS            R1, R0, #2
29D660:  B               loc_29D812
29D662:  LDR             R1, [R4,#0x30]
29D664:  CMP             R1, #0
29D666:  BLT             loc_29D598
29D668:  LDR             R0, [R4,#0x40]
29D66A:  SUBS            R0, #1
29D66C:  CMP             R1, R0
29D66E:  BLS             loc_29D674
29D670:  MOV             R1, R0
29D672:  STR             R0, [R4,#0x30]
29D674:  CMP             R5, R1
29D676:  BEQ             loc_29D690
29D678:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
29D67C:  CBNZ            R0, loc_29D690
29D67E:  LDR             R0, =(AudioEngine_ptr - 0x29D68C)
29D680:  MOVS            R1, #3; int
29D682:  MOVS            R2, #0; float
29D684:  MOV.W           R3, #0x3F800000; float
29D688:  ADD             R0, PC; AudioEngine_ptr
29D68A:  LDR             R0, [R0]; AudioEngine ; this
29D68C:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
29D690:  LDR             R0, =(lastDevice_ptr - 0x29D69C)
29D692:  VMOV            S18, R8
29D696:  LDR             R1, =(gMobileMenu_ptr - 0x29D6A2)
29D698:  ADD             R0, PC; lastDevice_ptr
29D69A:  VLDR            S2, [R4,#0x34]
29D69E:  ADD             R1, PC; gMobileMenu_ptr
29D6A0:  VLDR            S0, [R4,#8]
29D6A4:  LDR             R0, [R0]; lastDevice
29D6A6:  VADD.F32        S4, S16, S2
29D6AA:  VMOV.F32        S2, #1.0
29D6AE:  LDR             R1, [R1]; gMobileMenu
29D6B0:  LDR             R0, [R0]
29D6B2:  ADD.W           R0, R1, R0,LSL#3
29D6B6:  LDR             R1, [R0,#0x70]
29D6B8:  VCMPE.F32       S0, S2
29D6BC:  STR             R1, [R4,#0x48]
29D6BE:  VMRS            APSR_nzcv, FPSCR
29D6C2:  LDR             R0, [R0,#0x74]
29D6C4:  STR             R0, [R4,#0x4C]
29D6C6:  VSTR            S4, [R4,#0x34]
29D6CA:  BGE             loc_29D6EC
29D6CC:  VMOV.F32        S4, #5.0
29D6D0:  VMUL.F32        S4, S18, S4
29D6D4:  VADD.F32        S0, S4, S0
29D6D8:  VCMPE.F32       S0, S2
29D6DC:  VSTR            S0, [R4,#8]
29D6E0:  VMRS            APSR_nzcv, FPSCR
29D6E4:  ITT GT
29D6E6:  MOVGT.W         R0, #0x3F800000
29D6EA:  STRGT           R0, [R4,#8]
29D6EC:  MOVS            R0, #1; bool
29D6EE:  BLX             j__Z18Menu_IsPlayingGameb; Menu_IsPlayingGame(bool)
29D6F2:  CMP             R0, #1
29D6F4:  BNE             loc_29D704
29D6F6:  LDR             R0, =(gMobileMenu_ptr - 0x29D6FC)
29D6F8:  ADD             R0, PC; gMobileMenu_ptr
29D6FA:  LDR             R0, [R0]; gMobileMenu
29D6FC:  LDRB.W          R0, [R0,#(word_6E00C0+1 - 0x6E006C)]
29D700:  CMP             R0, #0
29D702:  BEQ             loc_29D798
29D704:  VLDR            S0, =-0.35
29D708:  VLDR            S2, [R4,#0x20]
29D70C:  VMUL.F32        S0, S18, S0
29D710:  VADD.F32        S0, S2, S0
29D714:  VCMPE.F32       S0, #0.0
29D718:  VSTR            S0, [R4,#0x20]
29D71C:  VMRS            APSR_nzcv, FPSCR
29D720:  BGE             loc_29D798
29D722:  BLX             rand
29D726:  MOVW            R1, #0x5556
29D72A:  MOVS            R3, #0
29D72C:  MOVT            R1, #0x5555
29D730:  MOVT            R3, #0x40A0
29D734:  SMMUL.W         R2, R0, R1
29D738:  LDR             R1, [R4,#0x18]
29D73A:  ADD.W           R2, R2, R2,LSR#31
29D73E:  ADD.W           R2, R2, R2,LSL#1
29D742:  SUBS            R0, R0, R2
29D744:  STRD.W          R3, R0, [R4,#0x20]
29D748:  MOV             R0, R1
29D74A:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
29D74E:  LDR             R6, =(aMenuMainD - 0x29D75C); "menu_main%d"
29D750:  MOV.W           R9, #0
29D754:  LDR             R0, [R4,#0x1C]
29D756:  ADD             R5, SP, #0x130+var_12C
29D758:  ADD             R6, PC; "menu_main%d"
29D75A:  STRD.W          R0, R9, [R4,#0x18]
29D75E:  MOVS            R0, #0
29D760:  CBZ             R0, loc_29D76A
29D762:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
29D766:  STR.W           R9, [R4,#0x1C]
29D76A:  BLX             rand
29D76E:  ASRS            R1, R0, #0x1F
29D770:  ADD.W           R1, R0, R1,LSR#30
29D774:  BIC.W           R1, R1, #3
29D778:  SUBS            R0, R0, R1
29D77A:  MOV             R1, R6
29D77C:  ADDS            R2, R0, #1
29D77E:  MOV             R0, R5
29D780:  BL              sub_5E6BC0
29D784:  MOV             R0, R5; this
29D786:  BLX             j__ZN22TextureDatabaseRuntime10GetTextureEPKc; TextureDatabaseRuntime::GetTexture(char const*)
29D78A:  LDR             R1, [R0,#0x54]
29D78C:  ADDS            R1, #1
29D78E:  STR             R1, [R0,#0x54]
29D790:  LDR             R1, [R4,#0x18]
29D792:  STR             R0, [R4,#0x1C]
29D794:  CMP             R0, R1
29D796:  BEQ             loc_29D760
29D798:  MOV             R0, R8; this
29D79A:  MOVS            R1, #1; float
29D79C:  BLX             j__ZN22TextureDatabaseRuntime15UpdateStreamingEfb; TextureDatabaseRuntime::UpdateStreaming(float,bool)
29D7A0:  LDR             R0, =(__stack_chk_guard_ptr - 0x29D7A8)
29D7A2:  LDR             R1, [SP,#0x130+var_2C]
29D7A4:  ADD             R0, PC; __stack_chk_guard_ptr
29D7A6:  LDR             R0, [R0]; __stack_chk_guard
29D7A8:  LDR             R0, [R0]
29D7AA:  SUBS            R0, R0, R1
29D7AC:  ITTTT EQ
29D7AE:  ADDEQ           SP, SP, #0x108
29D7B0:  VPOPEQ          {D8-D9}
29D7B4:  POPEQ.W         {R8,R9,R11}
29D7B8:  POPEQ           {R4-R7,PC}
29D7BA:  BLX             __stack_chk_fail
29D7BE:  ALIGN 0x10
29D7C0:  DCFS 0.1
29D7C4:  DCFS 0.85
29D7C8:  DCFS 0.15
29D7CC:  VLDR            S2, =240.0
29D7D0:  VCMPE.F32       S0, S2
29D7D4:  VMRS            APSR_nzcv, FPSCR
29D7D8:  BGE             loc_29D7E6
29D7DA:  LDR             R0, [R4,#0x30]
29D7DC:  MOVS            R1, #1
29D7DE:  STRB.W          R1, [R4,#0x38]
29D7E2:  SUBS            R1, R0, #1
29D7E4:  B               loc_29D812
29D7E6:  VLDR            S2, =520.0
29D7EA:  VCMPE.F32       S0, S2
29D7EE:  VMRS            APSR_nzcv, FPSCR
29D7F2:  BLE             loc_29D7FA
29D7F4:  LDR             R0, [R4,#0x30]
29D7F6:  ADDS            R1, R0, #2
29D7F8:  B               loc_29D812
29D7FA:  VLDR            S2, =400.0
29D7FE:  LDR             R0, [R4,#0x30]
29D800:  VCMPE.F32       S0, S2
29D804:  VMRS            APSR_nzcv, FPSCR
29D808:  BLE             loc_29D81C
29D80A:  MOVS            R1, #1
29D80C:  STRB.W          R1, [R4,#0x38]
29D810:  ADDS            R1, R0, #1
29D812:  STR             R1, [R4,#0x30]
29D814:  CMP             R1, #0
29D816:  BGE.W           loc_29D668
29D81A:  B               loc_29D598
29D81C:  LDR             R1, [R4,#0x44]
29D81E:  ADD.W           R0, R0, R0,LSL#1
29D822:  ADD.W           R0, R1, R0,LSL#2
29D826:  LDR             R0, [R0,#8]
29D828:  BLX             R0
29D82A:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
29D82E:  CMP             R0, #0
29D830:  BNE             loc_29D7A0
29D832:  LDR             R0, =(__stack_chk_guard_ptr - 0x29D83A)
29D834:  LDR             R1, [SP,#0x130+var_2C]
29D836:  ADD             R0, PC; __stack_chk_guard_ptr
29D838:  LDR             R0, [R0]; __stack_chk_guard
29D83A:  LDR             R0, [R0]
29D83C:  SUBS            R0, R0, R1
29D83E:  BNE             loc_29D7BA
29D840:  LDR             R0, =(AudioEngine_ptr - 0x29D846)
29D842:  ADD             R0, PC; AudioEngine_ptr
29D844:  B               loc_29D5E8
