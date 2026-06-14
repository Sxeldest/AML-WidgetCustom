; =========================================================
; Game Engine Function: _ZN4CHud24DrawSuccessFailedMessageEv
; Address            : 0x4392A8 - 0x4396A2
; =========================================================

4392A8:  PUSH            {R4,R5,R7,LR}
4392AA:  ADD             R7, SP, #8
4392AC:  SUB             SP, SP, #0x10
4392AE:  LDR.W           R0, =(byte_992050 - 0x4392B6)
4392B2:  ADD             R0, PC; byte_992050
4392B4:  LDRB            R0, [R0]
4392B6:  DMB.W           ISH
4392BA:  TST.W           R0, #1
4392BE:  BNE             loc_439314
4392C0:  LDR.W           R0, =(byte_992050 - 0x4392C8)
4392C4:  ADD             R0, PC; byte_992050 ; __guard *
4392C6:  BLX             j___cxa_guard_acquire
4392CA:  CBZ             R0, loc_439314
4392CC:  LDR.W           R0, =(RsGlobal_ptr - 0x4392D8)
4392D0:  VLDR            S2, =-448.0
4392D4:  ADD             R0, PC; RsGlobal_ptr
4392D6:  LDR.W           R1, =(dword_99204C - 0x4392E0)
4392DA:  LDR             R0, [R0]; RsGlobal
4392DC:  ADD             R1, PC; dword_99204C
4392DE:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
4392E0:  VMOV            S0, R0
4392E4:  ADD.W           R0, R0, R0,LSR#31
4392E8:  VCVT.F32.S32    S0, S0
4392EC:  ASRS            R0, R0, #1
4392EE:  VMOV            S4, R0
4392F2:  LDR.W           R0, =(byte_992050 - 0x4392FE)
4392F6:  VCVT.F32.S32    S4, S4
4392FA:  ADD             R0, PC; byte_992050 ; __guard *
4392FC:  VDIV.F32        S0, S0, S2
439300:  VMOV.F32        S2, #10.0
439304:  VMUL.F32        S0, S0, S2
439308:  VADD.F32        S0, S4, S0
43930C:  VSTR            S0, [R1]
439310:  BLX             j___cxa_guard_release
439314:  LDR.W           R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x43931C)
439318:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
43931A:  LDR             R0, [R0]; CHud::m_BigMessage ...
43931C:  LDRH            R0, [R0]; CHud::m_BigMessage
43931E:  CMP             R0, #0
439320:  BEQ.W           loc_439486
439324:  LDR             R0, =(BigMessageInUse_ptr - 0x43932A)
439326:  ADD             R0, PC; BigMessageInUse_ptr
439328:  LDR             R0, [R0]; BigMessageInUse
43932A:  VLDR            S0, [R0]
43932E:  VCMP.F32        S0, #0.0
439332:  VMRS            APSR_nzcv, FPSCR
439336:  BEQ.W           loc_439494
43933A:  MOVS            R0, #0; this
43933C:  MOVS            R1, #0; unsigned __int8
43933E:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
439342:  LDR.W           R0, =(RsGlobal_ptr - 0x43934E)
439346:  VLDR            S2, =448.0
43934A:  ADD             R0, PC; RsGlobal_ptr
43934C:  VLDR            D17, =1.8
439350:  LDR             R5, [R0]; RsGlobal
439352:  LDR             R0, [R5,#(dword_9FC904 - 0x9FC8FC)]
439354:  VMOV            S0, R0
439358:  VCVT.F32.S32    S0, S0
43935C:  VDIV.F32        S0, S0, S2
439360:  VCVT.F64.F32    D16, S0
439364:  VMUL.F64        D16, D16, D17
439368:  VCVT.F32.F64    S0, D16
43936C:  VMOV            R0, S0; this
439370:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
439374:  MOVS            R0, #(stderr+1); this
439376:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
43937A:  MOVS            R0, #0; this
43937C:  BLX             j__ZN5CFont10SetJustifyEh; CFont::SetJustify(uchar)
439380:  MOVS            R0, #0; this
439382:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
439386:  LDR             R0, [R5,#(dword_9FC900 - 0x9FC8FC)]
439388:  VLDR            S2, =640.0
43938C:  VMOV            S0, R0
439390:  VCVT.F32.S32    S0, S0
439394:  VDIV.F32        S0, S0, S2
439398:  VLDR            S2, =590.0
43939C:  VMUL.F32        S0, S0, S2
4393A0:  VMOV            R0, S0; this
4393A4:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
4393A8:  MOVS            R0, #(stderr+3); this
4393AA:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
4393AE:  MOVS            R0, #(stderr+2); this
4393B0:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
4393B4:  LDR             R0, =(BigMessageAlpha_ptr - 0x4393C0)
4393B6:  MOVS            R1, #0; unsigned __int8
4393B8:  MOVS            R2, #0; unsigned __int8
4393BA:  MOVS            R3, #0; unsigned __int8
4393BC:  ADD             R0, PC; BigMessageAlpha_ptr
4393BE:  LDR             R4, [R0]; BigMessageAlpha
4393C0:  VLDR            S0, [R4]
4393C4:  VCVT.U32.F32    S0, S0
4393C8:  VMOV            R0, S0
4393CC:  STR             R0, [SP,#0x18+var_18]; unsigned __int8
4393CE:  ADD             R0, SP, #0x18+var_C; this
4393D0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4393D4:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
4393D8:  VLDR            S0, [R4]
4393DC:  ADD             R4, SP, #0x18+var_10
4393DE:  LDR             R0, =(HudColour_ptr - 0x4393EA)
4393E0:  MOVS            R2, #7; unsigned __int8
4393E2:  VCVT.U32.F32    S0, S0
4393E6:  ADD             R0, PC; HudColour_ptr
4393E8:  LDR             R1, [R0]; HudColour ; unsigned __int8
4393EA:  MOV             R0, R4; this
4393EC:  VMOV            R3, S0
4393F0:  BLX             j__ZN11CHudColours6GetRGBEhh; CHudColours::GetRGB(uchar,uchar)
4393F4:  MOV             R0, R4
4393F6:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
4393FA:  LDR             R0, [R5,#(dword_9FC900 - 0x9FC8FC)]
4393FC:  LDR             R2, =(BigMessageX_ptr - 0x439408)
4393FE:  SUB.W           R3, R0, #0x14
439402:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x43940E)
439404:  ADD             R2, PC; BigMessageX_ptr
439406:  VMOV            S0, R3
43940A:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
43940C:  LDR             R2, [R2]; BigMessageX
43940E:  VCVT.F32.S32    S4, S0
439412:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
439414:  VLDR            S2, [R2]
439418:  VLDR            S0, [R1]
43941C:  VCMPE.F32       S2, S4
439420:  VMRS            APSR_nzcv, FPSCR
439424:  BGE             loc_43950C
439426:  VLDR            S4, =50.0
43942A:  LDR             R1, =(BigMessageAlpha_ptr - 0x439436)
43942C:  VDIV.F32        S0, S0, S4
439430:  LDR             R2, =(BigMessageX_ptr - 0x439438)
439432:  ADD             R1, PC; BigMessageAlpha_ptr
439434:  ADD             R2, PC; BigMessageX_ptr
439436:  LDR             R1, [R1]; BigMessageAlpha
439438:  LDR             R2, [R2]; BigMessageX
43943A:  VLDR            S4, =1000.0
43943E:  VMUL.F32        S0, S0, S4
439442:  VLDR            S4, =0.3
439446:  VCVT.U32.F32    S0, S0
43944A:  VCVT.F32.U32    S0, S0
43944E:  VMUL.F32        S0, S0, S4
439452:  VLDR            S4, [R1]
439456:  VADD.F32        S2, S2, S0
43945A:  VADD.F32        S0, S4, S0
43945E:  VLDR            S4, =255.0
439462:  VSTR            S2, [R2]
439466:  VCMPE.F32       S0, S4
43946A:  VSTR            S0, [R1]
43946E:  VMRS            APSR_nzcv, FPSCR
439472:  BLE.W           loc_439594
439476:  LDR             R1, =(BigMessageAlpha_ptr - 0x439482)
439478:  MOVS            R2, #0x437F0000
43947E:  ADD             R1, PC; BigMessageAlpha_ptr
439480:  LDR             R1, [R1]; BigMessageAlpha
439482:  STR             R2, [R1]
439484:  B               loc_439594
439486:  LDR             R0, =(BigMessageInUse_ptr - 0x43948E)
439488:  MOVS            R1, #0
43948A:  ADD             R0, PC; BigMessageInUse_ptr
43948C:  LDR             R0, [R0]; BigMessageInUse
43948E:  STR             R1, [R0]
439490:  ADD             SP, SP, #0x10
439492:  POP             {R4,R5,R7,PC}
439494:  LDR             R0, =(BigMessageInUse_ptr - 0x4394A0)
439496:  MOV.W           R5, #0x3F800000
43949A:  LDR             R2, =(_ZN4CHud12m_BigMessageE_ptr - 0x4394A4)
43949C:  ADD             R0, PC; BigMessageInUse_ptr
43949E:  LDR             R3, =(BigMessageX_ptr - 0x4394AA)
4394A0:  ADD             R2, PC; _ZN4CHud12m_BigMessageE_ptr
4394A2:  LDR             R1, =(BigMessageAlpha_ptr - 0x4394AE)
4394A4:  LDR             R0, [R0]; BigMessageInUse
4394A6:  ADD             R3, PC; BigMessageX_ptr
4394A8:  LDR             R2, [R2]; CHud::m_BigMessage ...
4394AA:  ADD             R1, PC; BigMessageAlpha_ptr
4394AC:  LDR             R3, [R3]; BigMessageX
4394AE:  STR             R5, [R0]
4394B0:  MOVS            R5, #0
4394B2:  LDRH.W          R0, [R2,#(word_99126C - 0x990F6C)]
4394B6:  MOVT            R5, #0xC270
4394BA:  LDRH.W          R2, [R2,#(word_99146C - 0x990F6C)]
4394BE:  LDR             R1, [R1]; BigMessageAlpha
4394C0:  ORRS            R0, R2
4394C2:  STR             R5, [R3]
4394C4:  MOVS            R3, #0; unsigned __int16 *
4394C6:  LSLS            R0, R0, #0x10
4394C8:  STR             R3, [R1]
4394CA:  BEQ             loc_4395BA
4394CC:  LDR             R0, =(RsGlobal_ptr - 0x4394DA)
4394CE:  VMOV.F32        S4, #25.0
4394D2:  VLDR            S2, =448.0
4394D6:  ADD             R0, PC; RsGlobal_ptr
4394D8:  LDR             R0, [R0]; RsGlobal
4394DA:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
4394DC:  VMOV            S0, R0
4394E0:  ADD.W           R0, R0, R0,LSR#31
4394E4:  VCVT.F32.S32    S0, S0
4394E8:  ASRS            R0, R0, #1
4394EA:  VMOV            S6, R0
4394EE:  VCVT.F32.S32    S6, S6
4394F2:  VDIV.F32        S0, S0, S2
4394F6:  VMOV.F32        S2, #-10.0
4394FA:  VMUL.F32        S2, S0, S2
4394FE:  VMUL.F32        S0, S0, S4
439502:  VADD.F32        S2, S6, S2
439506:  VADD.F32        S0, S0, S2
43950A:  B               loc_439696
43950C:  LDR             R1, =(BigMessageInUse_ptr - 0x439516)
43950E:  VLDR            S4, =120.0
439512:  ADD             R1, PC; BigMessageInUse_ptr
439514:  LDR             R1, [R1]; BigMessageInUse
439516:  VLDR            S2, [R1]
43951A:  VADD.F32        S2, S0, S2
43951E:  VCMPE.F32       S2, S4
439522:  VSTR            S2, [R1]
439526:  VMRS            APSR_nzcv, FPSCR
43952A:  BGE             loc_439538
43952C:  LDR             R1, =(BigMessageAlpha_ptr - 0x439532)
43952E:  ADD             R1, PC; BigMessageAlpha_ptr
439530:  LDR             R1, [R1]; BigMessageAlpha
439532:  VLDR            S0, [R1]
439536:  B               loc_439578
439538:  VLDR            S2, =50.0
43953C:  MOVS            R3, #0
43953E:  LDR             R1, =(BigMessageAlpha_ptr - 0x43954E)
439540:  MOVT            R3, #0x42F0
439544:  VDIV.F32        S0, S0, S2
439548:  LDR             R2, =(BigMessageInUse_ptr - 0x439550)
43954A:  ADD             R1, PC; BigMessageAlpha_ptr
43954C:  ADD             R2, PC; BigMessageInUse_ptr
43954E:  LDR             R1, [R1]; BigMessageAlpha
439550:  LDR             R2, [R2]; BigMessageInUse
439552:  VLDR            S2, =1000.0
439556:  VMUL.F32        S0, S0, S2
43955A:  VLDR            S2, =-0.3
43955E:  VCVT.U32.F32    S0, S0
439562:  VCVT.F32.U32    S0, S0
439566:  STR             R3, [R2]
439568:  VMUL.F32        S0, S0, S2
43956C:  VLDR            S2, [R1]
439570:  VADD.F32        S0, S2, S0
439574:  VSTR            S0, [R1]
439578:  VCMPE.F32       S0, #0.0
43957C:  VMRS            APSR_nzcv, FPSCR
439580:  BGT             loc_439594
439582:  LDR             R1, =(_ZN4CHud12m_BigMessageE_ptr - 0x43958C)
439584:  MOVS            R3, #0; unsigned __int16 *
439586:  LDR             R2, =(BigMessageAlpha_ptr - 0x43958E)
439588:  ADD             R1, PC; _ZN4CHud12m_BigMessageE_ptr
43958A:  ADD             R2, PC; BigMessageAlpha_ptr
43958C:  LDR             R1, [R1]; CHud::m_BigMessage ...
43958E:  LDR             R2, [R2]; BigMessageAlpha
439590:  STRH            R3, [R1]; CHud::m_BigMessage
439592:  STR             R3, [R2]
439594:  ADD.W           R0, R0, R0,LSR#31
439598:  LDR             R1, =(dword_99204C - 0x4395A2)
43959A:  LDR             R2, =(_ZN4CHud12m_BigMessageE_ptr - 0x4395A8)
43959C:  ASRS            R0, R0, #1
43959E:  ADD             R1, PC; dword_99204C
4395A0:  VMOV            S0, R0
4395A4:  ADD             R2, PC; _ZN4CHud12m_BigMessageE_ptr
4395A6:  VCVT.F32.S32    S0, S0
4395AA:  LDR             R1, [R1]; float
4395AC:  LDR             R2, [R2]; CFont *
4395AE:  VMOV            R0, S0; this
4395B2:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
4395B6:  ADD             SP, SP, #0x10
4395B8:  POP             {R4,R5,R7,PC}
4395BA:  LDR             R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x4395C0)
4395BC:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
4395BE:  LDR             R0, [R0]; CHud::m_BigMessage ...
4395C0:  LDRH.W          R0, [R0,#(word_99116C - 0x990F6C)]
4395C4:  CMP             R0, #0
4395C6:  BNE             loc_439664
4395C8:  LDR             R0, =(RsGlobal_ptr - 0x4395D2)
4395CA:  VLDR            S2, =-448.0
4395CE:  ADD             R0, PC; RsGlobal_ptr
4395D0:  LDR             R2, =(_ZN4CHud12m_BigMessageE_ptr - 0x4395D8)
4395D2:  LDR             R0, [R0]; RsGlobal
4395D4:  ADD             R2, PC; _ZN4CHud12m_BigMessageE_ptr
4395D6:  LDRD.W          R1, R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
4395DA:  VMOV            S0, R0
4395DE:  ADD.W           R0, R0, R0,LSR#31
4395E2:  LDR             R2, [R2]; float
4395E4:  VCVT.F32.S32    S0, S0
4395E8:  ASRS            R0, R0, #1
4395EA:  VMOV            S4, R0
4395EE:  ADD.W           R0, R1, R1,LSR#31
4395F2:  VCVT.F32.S32    S4, S4
4395F6:  ASRS            R0, R0, #1
4395F8:  VDIV.F32        S0, S0, S2
4395FC:  VMOV.F32        S2, #10.0
439600:  VMUL.F32        S0, S0, S2
439604:  VMOV            S2, R0
439608:  VCVT.F32.S32    S2, S2
43960C:  VADD.F32        S0, S4, S0
439610:  VMOV            R0, S2; this
439614:  VMOV            R1, S0; float
439618:  BLX             j__ZN5CFont14GetNumberLinesEffPt; CFont::GetNumberLines(float,float,ushort *)
43961C:  CMP             R0, #2
43961E:  BLT             loc_439664
439620:  LDR             R0, =(RsGlobal_ptr - 0x43962E)
439622:  VMOV.F32        S4, #-15.0
439626:  VLDR            S2, =448.0
43962A:  ADD             R0, PC; RsGlobal_ptr
43962C:  LDR             R0, [R0]; RsGlobal
43962E:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
439630:  VMOV            S0, R0
439634:  ADD.W           R0, R0, R0,LSR#31
439638:  VCVT.F32.S32    S0, S0
43963C:  ASRS            R0, R0, #1
43963E:  VMOV            S6, R0
439642:  VCVT.F32.S32    S6, S6
439646:  VDIV.F32        S0, S0, S2
43964A:  VMOV.F32        S2, #-10.0
43964E:  VMUL.F32        S2, S0, S2
439652:  VMUL.F32        S0, S0, S4
439656:  VADD.F32        S2, S6, S2
43965A:  VADD.F32        S0, S2, S0
43965E:  B               loc_439696
439660:  DCFS -448.0
439664:  LDR             R0, =(RsGlobal_ptr - 0x43966E)
439666:  VLDR            S2, =-448.0
43966A:  ADD             R0, PC; RsGlobal_ptr
43966C:  LDR             R0, [R0]; RsGlobal
43966E:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
439670:  VMOV            S0, R0
439674:  ADD.W           R0, R0, R0,LSR#31
439678:  VCVT.F32.S32    S0, S0
43967C:  ASRS            R0, R0, #1
43967E:  VMOV            S4, R0
439682:  VCVT.F32.S32    S4, S4
439686:  VDIV.F32        S0, S0, S2
43968A:  VMOV.F32        S2, #10.0
43968E:  VMUL.F32        S0, S0, S2
439692:  VADD.F32        S0, S4, S0
439696:  LDR             R0, =(dword_99204C - 0x43969C)
439698:  ADD             R0, PC; dword_99204C
43969A:  VSTR            S0, [R0]
43969E:  ADD             SP, SP, #0x10
4396A0:  POP             {R4,R5,R7,PC}
