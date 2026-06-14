; =========================================================
; Game Engine Function: _ZN12CMenuManager9UserInputEv
; Address            : 0x4332CC - 0x4339C8
; =========================================================

4332CC:  PUSH            {R4-R7,LR}
4332CE:  ADD             R7, SP, #0xC
4332D0:  PUSH.W          {R8-R11}
4332D4:  SUB             SP, SP, #4
4332D6:  VPUSH           {D8}
4332DA:  SUB             SP, SP, #0x10
4332DC:  MOV             R11, R0
4332DE:  MOVW            R0, #0x1AAE
4332E2:  LDRB.W          R0, [R11,R0]
4332E6:  CMP             R0, #0
4332E8:  BNE.W           loc_433936
4332EC:  MOVW            R0, #0x1AAD
4332F0:  LDRB.W          R1, [R11,R0]
4332F4:  CMP             R1, #0
4332F6:  BNE.W           loc_433936
4332FA:  ADD             R0, R11
4332FC:  STR             R0, [SP,#0x38+var_30]
4332FE:  MOVS            R0, #0
433300:  STRB.W          R0, [SP,#0x38+var_2C]
433304:  STRB.W          R0, [R7,#var_2B]
433308:  STRB.W          R0, [R7,#var_2A]
43330C:  STRB.W          R0, [R7,#var_29]
433310:  LDRB.W          R0, [R11,#0x7C]
433314:  CMP             R0, #0
433316:  BNE             loc_433346
433318:  MOVW            R0, #0x1ABC
43331C:  LDR.W           R0, [R11,R0]
433320:  CMP             R0, #0
433322:  ITTT NE
433324:  MOVNE.W         R1, #0x1AC0
433328:  LDRNE.W         R1, [R11,R1]
43332C:  CMPNE           R1, #0
43332E:  BEQ             loc_433346
433330:  LDR.W           R2, [R11,#0x80]
433334:  CMP             R0, R2
433336:  ITT EQ
433338:  LDREQ.W         R0, [R11,#0x84]
43333C:  CMPEQ           R1, R0
43333E:  BEQ             loc_433346
433340:  MOVS            R0, #1
433342:  STRB.W          R0, [R11,#0x7C]
433346:  LDR.W           R1, =(aScreens_ptr - 0x433354)
43334A:  MOVS            R4, #0xE2
43334C:  LDR.W           R0, =(byte_6AB468 - 0x43335A)
433350:  ADD             R1, PC; aScreens_ptr
433352:  LDR.W           R8, =(byte_6AB468 - 0x433362)
433356:  ADD             R0, PC; byte_6AB468
433358:  LDR.W           R2, [R11,#0x38]
43335C:  LDR             R6, [R1]; "FEP_STA" ...
43335E:  ADD             R8, PC; byte_6AB468
433360:  LDR.W           R1, =(TheText_ptr - 0x43336E)
433364:  STRB            R2, [R0]
433366:  MOVW            R0, #0x1AC8
43336A:  ADD             R1, PC; TheText_ptr
43336C:  ADD.W           R9, R11, R0
433370:  MOVS            R0, #0
433372:  LDR.W           R10, [R1]; TheText
433376:  MOV             R5, R0
433378:  LDRSB.W         R0, [R11,#0x121]
43337C:  SMLABB.W        R0, R0, R4, R6
433380:  LDRB            R1, [R0,#0xA]
433382:  CMP             R1, #2
433384:  BCC             loc_433418
433386:  ADD.W           R1, R0, #0xB; CKeyGen *
43338A:  MOV             R0, R10; this
43338C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
433390:  MOVS            R1, #(stderr+1); unsigned __int16 *
433392:  MOVS            R2, #0; unsigned __int8
433394:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
433398:  LDRSB.W         R0, [R11,#0x121]
43339C:  SMLABB.W        R0, R0, R4, R6
4333A0:  LDRSH.W         R0, [R0,#0x18]
4333A4:  VMOV            S0, R0
4333A8:  MOV             R0, R11; this
4333AA:  VCVT.F32.S32    S0, S0
4333AE:  VMOV            R1, S0; float
4333B2:  VLDR            S0, [R11,#0x84]
4333B6:  VCVT.F32.S32    S16, S0
4333BA:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
4333BE:  VMOV            S0, R0
4333C2:  VCMPE.F32       S0, S16
4333C6:  VMRS            APSR_nzcv, FPSCR
4333CA:  BGE             loc_433404
4333CC:  LDRSB.W         R0, [R11,#0x121]
4333D0:  SMLABB.W        R0, R0, R4, R6
4333D4:  LDRSH.W         R0, [R0,#0x18]
4333D8:  ADDS            R0, #0x1A
4333DA:  VMOV            S0, R0
4333DE:  MOV             R0, R11; this
4333E0:  VCVT.F32.S32    S0, S0
4333E4:  VMOV            R1, S0; float
4333E8:  VLDR            S0, [R11,#0x84]
4333EC:  VCVT.F32.S32    S16, S0
4333F0:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
4333F4:  VMOV            S0, R0
4333F8:  VCMPE.F32       S0, S16
4333FC:  VMRS            APSR_nzcv, FPSCR
433400:  BGT.W           loc_433524
433404:  LDRB.W          R0, [R11,#0x7C]
433408:  CMP             R0, #0
43340A:  ITTT NE
43340C:  LDRSBNE.W       R0, [R8]
433410:  STRNE.W         R0, [R9]
433414:  STRNE.W         R0, [R11,#0x38]
433418:  ADDS            R6, #0x12
43341A:  ADDS            R0, R5, #1
43341C:  CMP             R5, #0xB
43341E:  BLT             loc_433376
433420:  LDRB.W          R0, [R11,#0x7C]
433424:  CBZ             R0, loc_43347C
433426:  LDR.W           R1, =(byte_6AB468 - 0x433432)
43342A:  LDR.W           R0, [R11,#0x38]
43342E:  ADD             R1, PC; byte_6AB468
433430:  LDRSB.W         R1, [R1]
433434:  CMP             R0, R1
433436:  BEQ             loc_43347C
433438:  LDR.W           R1, =(aScreens_ptr - 0x433446)
43343C:  MOVS            R3, #0xE2
43343E:  LDRSB.W         R2, [R11,#0x121]
433442:  ADD             R1, PC; aScreens_ptr
433444:  LDR             R1, [R1]; "FEP_STA" ...
433446:  SMLABB.W        R1, R2, R3, R1
43344A:  ADD.W           R2, R0, R0,LSL#3
43344E:  ADD.W           R1, R1, R2,LSL#1
433452:  LDRB            R1, [R1,#0xA]
433454:  CMP             R1, #1
433456:  BNE             loc_433468
433458:  ADDS            R0, #1
43345A:  STR.W           R0, [R11,#0x38]
43345E:  LDR.W           R0, [R9]
433462:  ADDS            R0, #1
433464:  STR.W           R0, [R9]
433468:  LDR.W           R0, =(AudioEngine_ptr - 0x433478)
43346C:  MOVS            R1, #3; int
43346E:  MOVS            R2, #0; float
433470:  MOV.W           R3, #0x3F800000; float
433474:  ADD             R0, PC; AudioEngine_ptr
433476:  LDR             R0, [R0]; AudioEngine ; this
433478:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
43347C:  LDRD.W          R2, R3, [R11,#0x80]
433480:  MOVW            R6, #0x1ABC
433484:  LDRD.W          R1, R0, [R11,#0xA4]
433488:  STR.W           R2, [R11,R6]
43348C:  MOV.W           R2, #0x1AC0
433490:  CMP.W           R1, #0xFFFFFFFF
433494:  STR.W           R3, [R11,R2]
433498:  LDR.W           R2, =(RsGlobal_ptr - 0x4334AC)
43349C:  STRD.W          R1, R0, [R11,#0x80]
4334A0:  ITT LE
4334A2:  MOVLE           R1, #0
4334A4:  STRLE.W         R1, [R11,#0x80]
4334A8:  ADD             R2, PC; RsGlobal_ptr
4334AA:  LDR             R2, [R2]; RsGlobal
4334AC:  LDR             R2, [R2,#(dword_9FC900 - 0x9FC8FC)]
4334AE:  CMP             R1, R2
4334B0:  LDR.W           R1, =(RsGlobal_ptr - 0x4334C2)
4334B4:  IT GT
4334B6:  STRGT.W         R2, [R11,#0x80]
4334BA:  CMP.W           R0, #0xFFFFFFFF
4334BE:  ADD             R1, PC; RsGlobal_ptr
4334C0:  ITT LE
4334C2:  MOVLE           R0, #0
4334C4:  STRLE.W         R0, [R11,#0x84]
4334C8:  LDR             R1, [R1]; RsGlobal
4334CA:  LDR             R1, [R1,#(dword_9FC904 - 0x9FC8FC)]
4334CC:  CMP             R0, R1
4334CE:  IT GT
4334D0:  STRGT.W         R1, [R11,#0x84]
4334D4:  LDRB.W          R0, [R11,#0x121]
4334D8:  CMP             R0, #0x27 ; '''
4334DA:  BNE             loc_4334F4
4334DC:  LDR             R0, [SP,#0x38+var_30]
4334DE:  LDRB            R0, [R0]
4334E0:  CMP             R0, #0
4334E2:  BNE.W           loc_4337BA
4334E6:  SUB.W           R1, R7, #-var_2B; unsigned __int8 *
4334EA:  ADD             R2, SP, #0x38+var_2C; unsigned __int8 *
4334EC:  MOV             R0, R11; this
4334EE:  BLX             j__ZN12CMenuManager23RedefineScreenUserInputEPhS0_; CMenuManager::RedefineScreenUserInput(uchar *,uchar *)
4334F2:  B               loc_4337BA
4334F4:  MOV             R0, R11; this
4334F6:  BLX             j__ZN12CMenuManager22GetNumberOfMenuOptionsEv; CMenuManager::GetNumberOfMenuOptions(void)
4334FA:  CMP             R0, #2
4334FC:  BCC             loc_4335C0
4334FE:  SUB.W           R1, R7, #-var_2A; unsigned __int8 *
433502:  SUB.W           R2, R7, #-var_29; unsigned __int8 *
433506:  MOV             R0, R11; this
433508:  BLX             j__ZN12CMenuManager21AdditionalOptionInputEPhS0_; CMenuManager::AdditionalOptionInput(uchar *,uchar *)
43350C:  MOV             R0, R11; this
43350E:  BLX             j__ZN12CMenuManager22CheckFrontEndDownInputEv; CMenuManager::CheckFrontEndDownInput(void)
433512:  CMP             R0, #0
433514:  BEQ             loc_4335AA
433516:  MOVS            R0, #0
433518:  STRB.W          R0, [R11,#0x7C]
43351C:  MOVS            R0, #1
43351E:  STRB.W          R0, [R7,#var_29]
433522:  B               loc_4335C0
433524:  LDR.W           R0, =(byte_990C00 - 0x43352C)
433528:  ADD             R0, PC; byte_990C00
43352A:  LDRB            R0, [R0]
43352C:  DMB.W           ISH
433530:  TST.W           R0, #1
433534:  BNE             loc_43354C
433536:  LDR.W           R0, =(byte_990C00 - 0x43353E)
43353A:  ADD             R0, PC; byte_990C00 ; __guard *
43353C:  BLX             j___cxa_guard_acquire
433540:  CBZ             R0, loc_43354C
433542:  LDR.W           R0, =(byte_990C00 - 0x43354A)
433546:  ADD             R0, PC; byte_990C00 ; __guard *
433548:  BLX             j___cxa_guard_release
43354C:  STR.W           R5, [R9]
433550:  MOVW            R0, #0x1ABC
433554:  LDR.W           R0, [R11,R0]
433558:  CMP             R0, #0
43355A:  ITTT NE
43355C:  MOVNE.W         R1, #0x1AC0
433560:  LDRNE.W         R1, [R11,R1]
433564:  CMPNE           R1, #0
433566:  BEQ             loc_433582
433568:  LDR.W           R2, [R11,#0x80]
43356C:  CMP             R0, R2
43356E:  ITT EQ
433570:  LDREQ.W         R0, [R11,#0x84]
433574:  CMPEQ           R1, R0
433576:  BEQ             loc_433582
433578:  MOVS            R0, #1
43357A:  STRB.W          R0, [R11,#0x7C]
43357E:  STR.W           R5, [R11,#0x38]
433582:  LDRSB.W         R0, [R11,#0x121]
433586:  MOVS            R1, #0xE2
433588:  SMLABB.W        R0, R0, R1, R6
43358C:  LDRB            R0, [R0,#0xA]
43358E:  SUB.W           R1, R0, #0x1B
433592:  CMP             R1, #3
433594:  ITT CS
433596:  SUBCS           R0, #0x40 ; '@'
433598:  CMPCS           R0, #2
43359A:  BCC.W           loc_433420
43359E:  MOVW            R0, #0x1AC4
4335A2:  MOVS            R1, #2
4335A4:  STR.W           R1, [R11,R0]
4335A8:  B               loc_433420
4335AA:  MOV             R0, R11; this
4335AC:  BLX             j__ZN12CMenuManager20CheckFrontEndUpInputEv; CMenuManager::CheckFrontEndUpInput(void)
4335B0:  CMP             R0, #0
4335B2:  ITTTT NE
4335B4:  MOVNE           R0, #0
4335B6:  STRBNE.W        R0, [R11,#0x7C]
4335BA:  MOVNE           R0, #1
4335BC:  STRBNE.W        R0, [R7,#var_2A]
4335C0:  LDR.W           R0, [R11,#0x38]
4335C4:  CMP             R0, #0
4335C6:  ITT EQ
4335C8:  LDRBEQ.W        R0, [R11,#0x121]
4335CC:  CMPEQ           R0, #0x2A ; '*'
4335CE:  BEQ             loc_43365E
4335D0:  MOVS            R0, #0; this
4335D2:  MOVS            R4, #0
4335D4:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
4335D8:  MOVS            R0, #0x35 ; '5'
4335DA:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
4335DE:  CBZ             R0, loc_433648
4335E0:  MOVS            R0, #1
4335E2:  STRB.W          R4, [R11,#0x7C]
4335E6:  STRB.W          R0, [R7,#var_2B]
4335EA:  MOVS            R0, #0; this
4335EC:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
4335F0:  LDR.W           R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x4335F8)
4335F4:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
4335F6:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
4335F8:  LDRB            R0, [R0]; CPad::NewMouseControllerState
4335FA:  CMP             R0, #0
4335FC:  BNE             loc_433692
4335FE:  LDR.W           R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x433606)
433602:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
433604:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
433606:  LDRB            R0, [R0]; CPad::OldMouseControllerState
433608:  CMP             R0, #0
43360A:  BEQ             loc_433692
43360C:  MOVW            R0, #0x1AC4
433610:  LDR.W           R0, [R11,R0]
433614:  CMP             R0, #2
433616:  BNE             loc_433692
433618:  LDRB.W          R0, [R11,#0x121]
43361C:  CMP             R0, #5
43361E:  BNE             loc_433686
433620:  MOVS            R1, #0
433622:  MOV             R0, R11; this
433624:  MOVT            R1, #0x43C2; float
433628:  LDR.W           R4, [R11,#0x84]
43362C:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
433630:  VMOV            S0, R4
433634:  VMOV            S2, R0
433638:  VCVT.F32.S32    S0, S0
43363C:  VCMPE.F32       S2, S0
433640:  VMRS            APSR_nzcv, FPSCR
433644:  BLT             loc_43368C
433646:  B               loc_433692
433648:  MOVS            R0, #0; this
43364A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
43364E:  LDRH            R1, [R0,#0x20]
433650:  CMP             R1, #0
433652:  BEQ             loc_4335EA
433654:  LDRH.W          R0, [R0,#0x50]
433658:  CMP             R0, #0
43365A:  BNE             loc_4335EA
43365C:  B               loc_4335E0
43365E:  MOVS            R0, #0; this
433660:  MOVS            R4, #0
433662:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433666:  MOVS            R0, #0x35 ; '5'
433668:  BLX             j__Z17LIB_KeyboardState13OSKeyboardKey; LIB_KeyboardState(OSKeyboardKey)
43366C:  CMP             R0, #0
43366E:  BEQ             loc_4335E0
433670:  MOVS            R0, #0; this
433672:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433676:  LDRH            R1, [R0,#0x20]
433678:  CMP             R1, #0
43367A:  BNE             loc_4335EA
43367C:  LDRH.W          R0, [R0,#0x50]
433680:  CMP             R0, #0
433682:  BNE             loc_4335E0
433684:  B               loc_4335EA
433686:  LDRB.W          R0, [R11,#0x7C]
43368A:  CBZ             R0, loc_433692
43368C:  MOVS            R0, #1
43368E:  STRB.W          R0, [R7,#var_2B]
433692:  MOVS            R0, #0; this
433694:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433698:  LDR.W           R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x4336A0)
43369C:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
43369E:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
4336A0:  LDRB            R0, [R0]; CPad::NewMouseControllerState
4336A2:  CBZ             R0, loc_4336D6
4336A4:  MOVW            R0, #0x1AC4
4336A8:  LDR.W           R0, [R11,R0]
4336AC:  CMP             R0, #0xF
4336AE:  BHI             loc_4336D6
4336B0:  MOVS            R1, #1
4336B2:  LSL.W           R0, R1, R0
4336B6:  MOVW            R1, #0x5540
4336BA:  TST             R0, R1
4336BC:  BNE             loc_4336CE
4336BE:  MOVW            R1, #0xAA80
4336C2:  TST             R0, R1
4336C4:  BEQ             loc_4336D6
4336C6:  MOV             R0, R11
4336C8:  MOV.W           R1, #0xFFFFFFFF
4336CC:  B               loc_4336D2
4336CE:  MOV             R0, R11; this
4336D0:  MOVS            R1, #1; signed __int8
4336D2:  BLX             j__ZN12CMenuManager19CheckSliderMovementEa; CMenuManager::CheckSliderMovement(signed char)
4336D6:  MOVS            R0, #0; this
4336D8:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
4336DC:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x4336E2)
4336DE:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
4336E0:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
4336E2:  LDRB            R0, [R0]; CPad::NewMouseControllerState
4336E4:  CBZ             R0, loc_4336F0
4336E6:  LDR             R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x4336EC)
4336E8:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
4336EA:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
4336EC:  LDRB            R0, [R0]; CPad::OldMouseControllerState
4336EE:  CBZ             R0, loc_433710
4336F0:  MOVS            R0, #0; this
4336F2:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
4336F6:  MOVS            R0, #0x51 ; 'Q'
4336F8:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
4336FC:  CBNZ            R0, loc_433710
4336FE:  MOVS            R0, #0; this
433700:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433704:  MOVS            R0, #0x52 ; 'R'
433706:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
43370A:  CMP             R0, #0
43370C:  BEQ.W           loc_43395A
433710:  LDR             R0, =(aScreens_ptr - 0x43371C)
433712:  MOVS            R3, #0xE2
433714:  LDRSB.W         R1, [R11,#0x121]
433718:  ADD             R0, PC; aScreens_ptr
43371A:  LDR.W           R2, [R11,#0x38]
43371E:  LDR             R0, [R0]; "FEP_STA" ...
433720:  SMLABB.W        R0, R1, R3, R0
433724:  ADD.W           R1, R2, R2,LSL#3
433728:  ADD.W           R0, R0, R1,LSL#1
43372C:  LDRB            R0, [R0,#0xA]
43372E:  SUB.W           R1, R0, #0x1B
433732:  CMP             R1, #2
433734:  ITT CS
433736:  SUBCS.W         R1, R0, #0x40 ; '@'
43373A:  CMPCS           R1, #2
43373C:  BCS             loc_433746
43373E:  LDR             R0, =(AudioEngine_ptr - 0x433746)
433740:  MOVS            R1, #1
433742:  ADD             R0, PC; AudioEngine_ptr
433744:  B               loc_433750
433746:  CMP             R0, #0x1D
433748:  BNE             loc_43375C
43374A:  LDR             R0, =(AudioEngine_ptr - 0x433752)
43374C:  MOVS            R1, #5; int
43374E:  ADD             R0, PC; AudioEngine_ptr
433750:  LDR             R0, [R0]; AudioEngine ; this
433752:  MOVS            R2, #0; float
433754:  MOV.W           R3, #0x3F800000; float
433758:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
43375C:  MOVS            R0, #0; this
43375E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433762:  LDRH            R1, [R0,#0x1E]; int
433764:  CBZ             R1, loc_43376C
433766:  LDRH.W          R0, [R0,#0x4E]
43376A:  CBZ             R0, loc_43377A
43376C:  MOVS            R0, #0; this
43376E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433772:  BLX             j__ZN4CPad17GetEscapeJustDownEv; CPad::GetEscapeJustDown(void)
433776:  CMP             R0, #1
433778:  BNE             loc_4337A0
43377A:  LDRB.W          R0, [R11,#0x121]
43377E:  SUBS            R0, #0xE
433780:  UBFX.W          R1, R0, #1, #7
433784:  ORR.W           R0, R1, R0,LSL#7
433788:  UXTB            R0, R0
43378A:  CMP             R0, #0xF
43378C:  BHI.W           loc_43394C
433790:  MOVS            R1, #1
433792:  LSL.W           R0, R1, R0
433796:  MOVW            R1, #0xC417
43379A:  TST             R0, R1
43379C:  BEQ.W           loc_43394C
4337A0:  LDRB.W          R0, [R7,#var_29]
4337A4:  LDRB.W          R1, [R7,#var_2A]
4337A8:  LDRB.W          R2, [R7,#var_2B]
4337AC:  ORRS            R0, R1
4337AE:  ORRS            R0, R2
4337B0:  LSLS            R0, R0, #0x18
4337B2:  ITT NE
4337B4:  MOVNE           R0, #0
4337B6:  STRBNE.W        R0, [SP,#0x38+var_2C]
4337BA:  MOVS            R0, #0x51 ; 'Q'
4337BC:  BLX             j__Z18LIB_KeyboardIsDown13OSKeyboardKey; LIB_KeyboardIsDown(OSKeyboardKey)
4337C0:  CBZ             R0, loc_433818
4337C2:  LDR             R0, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x4337CA)
4337C4:  LDR             R1, =(dword_990C04 - 0x4337CC)
4337C6:  ADD             R0, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
4337C8:  ADD             R1, PC; dword_990C04
4337CA:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode ...
4337CC:  LDR             R1, [R1]
4337CE:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode
4337D0:  SUBS            R1, R0, R1; int
4337D2:  CMP             R1, #0xC9
4337D4:  BCC             loc_4338B4
4337D6:  LDR             R1, =(aScreens_ptr - 0x4337E2)
4337D8:  MOVS            R6, #0xE2
4337DA:  LDRSB.W         R2, [R11,#0x121]
4337DE:  ADD             R1, PC; aScreens_ptr
4337E0:  LDR.W           R3, [R11,#0x38]
4337E4:  LDR             R1, [R1]; "FEP_STA" ...
4337E6:  SMLABB.W        R1, R2, R6, R1
4337EA:  ADD.W           R2, R3, R3,LSL#3
4337EE:  ADD.W           R1, R1, R2,LSL#1
4337F2:  LDRB            R1, [R1,#0xA]
4337F4:  CMP             R1, #0x1D
4337F6:  BHI             loc_433806
4337F8:  MOVS            R2, #1
4337FA:  MOVS            R3, #0
4337FC:  LSLS            R2, R1
4337FE:  MOVT            R3, #0x3820
433802:  TST             R2, R3
433804:  BNE             loc_43380E
433806:  SUBS            R1, #0x40 ; '@'
433808:  CMP             R1, #2
43380A:  BCS.W           loc_433944
43380E:  LDR             R1, =(dword_990C04 - 0x433816)
433810:  MOVS            R5, #0xFF
433812:  ADD             R1, PC; dword_990C04
433814:  STR             R0, [R1]
433816:  B               loc_4338B6
433818:  MOVS            R0, #0; this
43381A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
43381E:  MOVS            R0, #0; this
433820:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433824:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
433828:  CMP             R0, #0
43382A:  BLT             loc_4337C2
43382C:  MOVS            R0, #0; this
43382E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433832:  LDRH            R0, [R0,#0x14]
433834:  CMP             R0, #0
433836:  BNE             loc_4337C2
433838:  MOVS            R0, #0x52 ; 'R'
43383A:  BLX             j__Z18LIB_KeyboardIsDown13OSKeyboardKey; LIB_KeyboardIsDown(OSKeyboardKey)
43383E:  CBNZ            R0, loc_433860
433840:  MOVS            R0, #0; this
433842:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433846:  MOVS            R0, #0; this
433848:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
43384C:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
433850:  CMP             R0, #0
433852:  BGT             loc_433860
433854:  MOVS            R0, #0; this
433856:  MOVS            R5, #0
433858:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
43385C:  LDRH            R0, [R0,#0x16]
43385E:  CBZ             R0, loc_4338B6
433860:  LDR             R0, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x433868)
433862:  LDR             R1, =(dword_990C08 - 0x43386A)
433864:  ADD             R0, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
433866:  ADD             R1, PC; dword_990C08
433868:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode ...
43386A:  LDR             R1, [R1]
43386C:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode
43386E:  SUBS            R1, R0, R1
433870:  CMP             R1, #0xC9
433872:  BCC             loc_4338B4
433874:  LDR             R1, =(aScreens_ptr - 0x433880)
433876:  MOVS            R6, #0xE2
433878:  LDRSB.W         R2, [R11,#0x121]
43387C:  ADD             R1, PC; aScreens_ptr
43387E:  LDR.W           R3, [R11,#0x38]
433882:  LDR             R1, [R1]; "FEP_STA" ...
433884:  SMLABB.W        R1, R2, R6, R1
433888:  ADD.W           R2, R3, R3,LSL#3
43388C:  ADD.W           R1, R1, R2,LSL#1
433890:  LDRB            R1, [R1,#0xA]
433892:  CMP             R1, #0x1D
433894:  BHI             loc_4338A4
433896:  MOVS            R2, #1
433898:  MOVS            R3, #0
43389A:  LSLS            R2, R1
43389C:  MOVT            R3, #0x3820
4338A0:  TST             R2, R3
4338A2:  BNE             loc_4338AC
4338A4:  SUBS            R1, #0x40 ; '@'
4338A6:  CMP             R1, #2
4338A8:  BCS.W           loc_4339C4
4338AC:  MOVS            R5, #1
4338AE:  LDR             R1, =(dword_990C08 - 0x4338B4)
4338B0:  ADD             R1, PC; dword_990C08
4338B2:  B               loc_433814
4338B4:  MOVS            R5, #0
4338B6:  MOVS            R0, #0; this
4338B8:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
4338BC:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x4338C2)
4338BE:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
4338C0:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
4338C2:  LDRB            R0, [R0,#(_ZN4CPad23NewMouseControllerStateE+3 - 0x959AF4)]; CPad::NewMouseControllerState
4338C4:  CBZ             R0, loc_4338D4
4338C6:  LDR             R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x4338CC)
4338C8:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
4338CA:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
4338CC:  LDRB            R0, [R0,#(_ZN4CPad23OldMouseControllerStateE+3 - 0x959B08)]; CPad::OldMouseControllerState
4338CE:  CBNZ            R0, loc_4338D4
4338D0:  MOVS            R4, #1
4338D2:  B               loc_4338F0
4338D4:  MOVS            R0, #0; this
4338D6:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
4338DA:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x4338E0)
4338DC:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
4338DE:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
4338E0:  LDRB            R0, [R0,#(word_959AF8 - 0x959AF4)]
4338E2:  CBZ             R0, loc_4338FC
4338E4:  LDR             R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x4338EA)
4338E6:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
4338E8:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
4338EA:  LDRB            R0, [R0,#(word_959B0C - 0x959B08)]
4338EC:  CBNZ            R0, loc_4338FC
4338EE:  MOVS            R4, #0xFF
4338F0:  LDRB.W          R0, [R11,#0x121]
4338F4:  CMP             R0, #5
4338F6:  IT EQ
4338F8:  MOVEQ           R4, R5
4338FA:  B               loc_4338FE
4338FC:  MOV             R4, R5
4338FE:  MOV             R0, R11; this
433900:  BLX             j__ZN12CMenuManager23CheckFrontEndRightInputEv; CMenuManager::CheckFrontEndRightInput(void)
433904:  CBZ             R0, loc_43390A
433906:  MOVS            R4, #1
433908:  B               loc_433914
43390A:  MOV             R0, R11; this
43390C:  BLX             j__ZN12CMenuManager22CheckFrontEndLeftInputEv; CMenuManager::CheckFrontEndLeftInput(void)
433910:  CBZ             R0, loc_43391A
433912:  MOVS            R4, #0xFF
433914:  MOVS            R0, #0
433916:  STRB.W          R0, [R11,#0x7C]
43391A:  LDRB.W          R3, [R7,#var_2B]; unsigned __int8
43391E:  SXTB            R6, R4
433920:  LDRB.W          R2, [R7,#var_2A]; unsigned __int8
433924:  LDRB.W          R1, [R7,#var_29]; unsigned __int8
433928:  LDRB.W          R0, [SP,#0x38+var_2C]
43392C:  STRD.W          R0, R6, [SP,#0x38+var_38]; unsigned __int8
433930:  MOV             R0, R11; this
433932:  BLX             j__ZN12CMenuManager16ProcessUserInputEhhhha; CMenuManager::ProcessUserInput(uchar,uchar,uchar,uchar,signed char)
433936:  ADD             SP, SP, #0x10
433938:  VPOP            {D8}
43393C:  ADD             SP, SP, #4
43393E:  POP.W           {R8-R11}
433942:  POP             {R4-R7,PC}
433944:  LDR             R1, =(dword_990C04 - 0x43394C)
433946:  MOVS            R5, #0
433948:  ADD             R1, PC; dword_990C04
43394A:  B               loc_433814
43394C:  MOVS            R0, #0
43394E:  STRB.W          R0, [R11,#0x7C]
433952:  MOVS            R0, #1
433954:  STRB.W          R0, [SP,#0x38+var_2C]
433958:  B               loc_4337A0
43395A:  MOVS            R0, #0; this
43395C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433960:  LDRH            R1, [R0,#0x14]; int
433962:  CBZ             R1, loc_43396E
433964:  LDRH.W          R0, [R0,#0x44]
433968:  CMP             R0, #0
43396A:  BEQ.W           loc_433710
43396E:  MOVS            R0, #0; this
433970:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433974:  LDRH            R1, [R0,#0x16]; int
433976:  CBZ             R1, loc_433982
433978:  LDRH.W          R0, [R0,#0x46]
43397C:  CMP             R0, #0
43397E:  BEQ.W           loc_433710
433982:  MOVS            R0, #0; this
433984:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
433988:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x43398E)
43398A:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
43398C:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
43398E:  LDRB            R0, [R0,#(_ZN4CPad23NewMouseControllerStateE+3 - 0x959AF4)]; CPad::NewMouseControllerState
433990:  CBZ             R0, loc_4339A0
433992:  LDR             R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x433998)
433994:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
433996:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
433998:  LDRB            R0, [R0,#(_ZN4CPad23OldMouseControllerStateE+3 - 0x959B08)]; CPad::OldMouseControllerState
43399A:  CMP             R0, #0
43399C:  BEQ.W           loc_433710
4339A0:  MOVS            R0, #0; this
4339A2:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
4339A6:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x4339AC)
4339A8:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
4339AA:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
4339AC:  LDRB            R0, [R0,#(word_959AF8 - 0x959AF4)]
4339AE:  CMP             R0, #0
4339B0:  BEQ.W           loc_43375C
4339B4:  LDR             R0, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x4339BA)
4339B6:  ADD             R0, PC; _ZN4CPad23OldMouseControllerStateE_ptr
4339B8:  LDR             R0, [R0]; CPad::OldMouseControllerState ...
4339BA:  LDRB            R0, [R0,#(word_959B0C - 0x959B08)]
4339BC:  CMP             R0, #0
4339BE:  BEQ.W           loc_433710
4339C2:  B               loc_43375C
4339C4:  MOVS            R5, #0
4339C6:  B               loc_4338AE
