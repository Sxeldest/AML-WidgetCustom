; =========================================================
; Game Engine Function: _ZN8CVehicle17DoHeadLightEffectEiR7CMatrixhh
; Address            : 0x5902BC - 0x590670
; =========================================================

5902BC:  PUSH            {R4-R7,LR}
5902BE:  ADD             R7, SP, #0xC
5902C0:  PUSH.W          {R8-R11}
5902C4:  SUB             SP, SP, #4
5902C6:  VPUSH           {D8-D10}
5902CA:  SUB             SP, SP, #0x70
5902CC:  MOV             R11, R0
5902CE:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5902DA)
5902D0:  MOV             R5, R1
5902D2:  LDRSH.W         R1, [R11,#0x26]
5902D6:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5902D8:  MOV             R9, R2
5902DA:  MOVS            R2, #0
5902DC:  MOV             R6, R3
5902DE:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5902E0:  MOV             R3, R5
5902E2:  LDR.W           R0, [R0,R1,LSL#2]
5902E6:  ADD.W           R1, R5, R5,LSL#1
5902EA:  LDR             R0, [R0,#0x74]
5902EC:  ADD.W           R0, R0, R1,LSL#3
5902F0:  MOVS            R1, #0
5902F2:  VLDR            S18, [R0,#4]
5902F6:  VLDR            S16, [R0]
5902FA:  VCMP.F32        S18, #0.0
5902FE:  VLDR            S20, [R0,#8]
590302:  VMRS            APSR_nzcv, FPSCR
590306:  VCMP.F32        S16, #0.0
59030A:  MOV.W           R0, #0
59030E:  IT EQ
590310:  MOVEQ           R1, #1
590312:  VMRS            APSR_nzcv, FPSCR
590316:  VCMP.F32        S20, #0.0
59031A:  IT EQ
59031C:  MOVEQ           R2, #1
59031E:  CMP             R5, #1
590320:  IT NE
590322:  MOVNE           R3, #0
590324:  VMRS            APSR_nzcv, FPSCR
590328:  AND.W           R2, R2, R3
59032C:  AND.W           R1, R1, R2
590330:  MOV.W           R2, #0
590334:  IT EQ
590336:  MOVEQ           R2, #1
590338:  TST             R1, R2
59033A:  BNE.W           loc_590662
59033E:  LDR             R1, =(_ZN14MobileSettings8settingsE_ptr - 0x590344)
590340:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
590342:  LDR             R1, [R1]; MobileSettings::settings ...
590344:  LDR             R1, [R1,#(dword_6E03FC - 0x6E03F4)]
590346:  CMP             R1, #0
590348:  BEQ.W           loc_590662
59034C:  LDR.W           R0, [R11,#0x14]
590350:  CBZ             R0, loc_590368
590352:  VLDR            S0, =0.05
590356:  VLDR            S6, [R0,#0x18]
59035A:  VLDR            S4, [R0,#0x10]
59035E:  VLDR            S2, [R0,#0x14]
590362:  VMUL.F32        S0, S6, S0
590366:  B               loc_59038A
590368:  LDR.W           R4, [R11,#0x10]
59036C:  MOV             R0, R4; x
59036E:  BLX.W           sinf
590372:  MOV             R8, R0
590374:  MOV             R0, R4; x
590376:  BLX.W           cosf
59037A:  VMOV            S2, R0
59037E:  EOR.W           R0, R8, #0x80000000
590382:  VLDR            S0, =0.0
590386:  VMOV            S4, R0
59038A:  VLDR            S6, =0.05
59038E:  CMP             R6, #0
590390:  LDR.W           R8, [R7,#arg_0]
590394:  VMUL.F32        S2, S2, S6
590398:  STR             R6, [SP,#0xA8+var_60]
59039A:  VMUL.F32        S4, S4, S6
59039E:  VADD.F32        S6, S20, S0
5903A2:  VADD.F32        S2, S18, S2
5903A6:  VADD.F32        S0, S16, S4
5903AA:  VSTR            S6, [SP,#0xA8+var_3C]
5903AE:  VSTR            S2, [SP,#0xA8+var_40]
5903B2:  VSTR            S0, [SP,#0xA8+var_44]
5903B6:  BNE             loc_5903C8
5903B8:  VMOV.F32        S2, #-2.0
5903BC:  VMUL.F32        S2, S16, S2
5903C0:  VADD.F32        S0, S0, S2
5903C4:  VSTR            S0, [SP,#0xA8+var_44]
5903C8:  LDR             R0, =(TheCamera_ptr - 0x5903D2)
5903CA:  ADD             R2, SP, #0xA8+var_44
5903CC:  MOV             R1, R9
5903CE:  ADD             R0, PC; TheCamera_ptr
5903D0:  LDR             R4, [R0]; TheCamera
5903D2:  ADD             R0, SP, #0xA8+var_5C
5903D4:  LDR             R6, [R4,#(dword_951FBC - 0x951FA8)]
5903D6:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5903DA:  ADD.W           R0, R6, #0x30 ; '0'
5903DE:  CMP             R6, #0
5903E0:  VLDR            S0, [SP,#0xA8+var_5C]
5903E4:  VLDR            S2, [SP,#0xA8+var_58]
5903E8:  VLDR            S4, [SP,#0xA8+var_54]
5903EC:  IT EQ
5903EE:  ADDEQ           R0, R4, #4
5903F0:  VLDR            S6, [R0]
5903F4:  VLDR            S8, [R0,#4]
5903F8:  VLDR            S10, [R0,#8]
5903FC:  VSUB.F32        S0, S6, S0
590400:  VSUB.F32        S2, S8, S2
590404:  ADD             R0, SP, #0xA8+var_50; this
590406:  VSUB.F32        S4, S10, S4
59040A:  VSTR            S0, [SP,#0xA8+var_50]
59040E:  VSTR            S2, [SP,#0xA8+var_4C]
590412:  VSTR            S4, [SP,#0xA8+var_48]
590416:  BLX             j__ZN7CVector15NormaliseAndMagEv; CVector::NormaliseAndMag(void)
59041A:  MOV             R10, R0
59041C:  CMP.W           R8, #0
590420:  BNE.W           loc_590658
590424:  VLDR            S0, [R9,#0x10]
590428:  VLDR            S6, [SP,#0xA8+var_50]
59042C:  VLDR            S2, [R9,#0x14]
590430:  VLDR            S8, [SP,#0xA8+var_4C]
590434:  VMUL.F32        S0, S6, S0
590438:  VLDR            S4, [R9,#0x18]
59043C:  VMUL.F32        S2, S8, S2
590440:  VLDR            S10, [SP,#0xA8+var_48]
590444:  VMUL.F32        S4, S10, S4
590448:  VADD.F32        S0, S0, S2
59044C:  VADD.F32        S16, S0, S4
590450:  VCMPE.F32       S16, #0.0
590454:  VMRS            APSR_nzcv, FPSCR
590458:  BLE.W           loc_590658
59045C:  LDR             R0, =(TheCamera_ptr - 0x590462)
59045E:  ADD             R0, PC; TheCamera_ptr
590460:  LDR             R0, [R0]; TheCamera
590462:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
590466:  ADD.W           R1, R1, R1,LSL#5
59046A:  ADD.W           R0, R0, R1,LSL#4
59046E:  LDRH.W          R0, [R0,#0x17E]
590472:  CMP             R0, #0x10
590474:  BNE             loc_590486
590476:  MOV.W           R0, #0xFFFFFFFF; int
59047A:  MOVS            R1, #0; bool
59047C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
590480:  CMP             R0, R11
590482:  BEQ.W           loc_590658
590486:  LSLS            R0, R5, #1
590488:  LDR.W           R1, [R11,#0x5A4]
59048C:  ADD             R0, R11
59048E:  VMOV            S18, R10
590492:  MOV             R9, R8
590494:  CMP             R1, #6
590496:  BNE             loc_5904AE
590498:  LDRH.W          R2, [R11,#0x26]
59049C:  MOVW            R6, #0x1C1
5904A0:  ADR             R3, dword_59068C
5904A2:  CMP             R2, R6
5904A4:  IT EQ
5904A6:  ADDEQ           R3, #4
5904A8:  VLDR            S0, [R3]
5904AC:  B               loc_5904B2
5904AE:  VLDR            S0, =0.9
5904B2:  VSQRT.F32       S16, S16
5904B6:  LDR             R2, [SP,#0xA8+var_60]
5904B8:  ADD.W           R8, SP, #0xA8+var_44
5904BC:  ADDS            R6, R0, R2
5904BE:  VLDR            S2, =40.0
5904C2:  VCMPE.F32       S18, S2
5904C6:  VMRS            APSR_nzcv, FPSCR
5904CA:  BGE             loc_590576
5904CC:  VCMPE.F32       S16, S0
5904D0:  VMRS            APSR_nzcv, FPSCR
5904D4:  BLE             loc_590576
5904D6:  LDR.W           R2, [R11,#0x388]
5904DA:  ADDS            R0, R6, #4; this
5904DC:  MOV             R3, #0xFFFFFFC3
5904E0:  LDRB.W          R2, [R2,#0xD2]
5904E4:  ANDS.W          R2, R2, #0x40 ; '@'
5904E8:  MOV             R2, #0xFFFFFF96
5904EC:  IT EQ
5904EE:  MOVEQ           R3, #0xFFFFFF8C
5904F2:  IT EQ
5904F4:  MOVEQ           R2, #0xFFFFFFA0
5904F8:  CMP             R1, #6
5904FA:  BNE             loc_590512
5904FC:  LDRH.W          R1, [R11,#0x26]
590500:  MOVW            R4, #0x1C1
590504:  ADR             R5, dword_59069C
590506:  CMP             R1, R4
590508:  IT EQ
59050A:  ADDEQ           R5, #4
59050C:  VLDR            S0, [R5]
590510:  B               loc_590516
590512:  VLDR            S0, =0.075
590516:  LDR             R1, =(TheCamera_ptr - 0x590526)
590518:  MOVS            R5, #0
59051A:  VLDR            S2, =150.0
59051E:  MOVW            R4, #0x999A
590522:  ADD             R1, PC; TheCamera_ptr
590524:  MOVT            R5, #0x4170
590528:  MOVT            R4, #0x3E99
59052C:  UXTB            R3, R3
59052E:  LDR             R1, [R1]; TheCamera
590530:  UXTB            R2, R2; CEntity *
590532:  VLDR            S4, [R1,#0xEC]
590536:  MOVS            R1, #0
590538:  STRD.W          R1, R4, [SP,#0xA8+var_7C]; float
59053C:  VMUL.F32        S2, S4, S2
590540:  STRD.W          R1, R5, [SP,#0xA8+var_74]; float
590544:  MOVS            R5, #4
590546:  STRD.W          R1, R1, [SP,#0xA8+var_6C]; float
59054A:  VSTR            S16, [SP,#0xA8+var_80]
59054E:  STRD.W          R5, R1, [SP,#0xA8+var_94]; float
590552:  STRD.W          R1, R1, [SP,#0xA8+var_8C]; unsigned __int8
590556:  STR             R1, [SP,#0xA8+var_84]; unsigned __int8
590558:  MOVS            R1, #0xFF
59055A:  VSTR            S0, [SP,#0xA8+var_9C]
59055E:  STRD.W          R3, R1, [SP,#0xA8+var_A8]; unsigned __int8
590562:  MOV             R1, R11; unsigned int
590564:  MOV             R3, R2; unsigned __int8
590566:  STR.W           R8, [SP,#0xA8+var_A0]; unsigned __int8
59056A:  VSTR            S2, [SP,#0xA8+var_98]
59056E:  BLX.W           j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffhhhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,uchar,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
590572:  LDR.W           R1, [R11,#0x5A4]
590576:  VLDR            S0, =-150.0
59057A:  VMOV.F32        S2, #0.5
59057E:  VMOV.F32        S4, #1.0
590582:  VLDR            S6, =0.4
590586:  VDIV.F32        S0, S18, S0
59058A:  CMP             R1, #6
59058C:  VMUL.F32        S2, S16, S2
590590:  VLDR            S8, =0.3
590594:  VMUL.F32        S6, S16, S6
590598:  VADD.F32        S0, S0, S4
59059C:  VADD.F32        S2, S2, S8
5905A0:  VMUL.F32        S0, S0, S6
5905A4:  BNE             loc_5905C2
5905A6:  LDRH.W          R0, [R11,#0x26]
5905AA:  MOVW            R1, #0x1C1
5905AE:  CMP             R0, R1
5905B0:  ITTTT NE
5905B2:  VMOVNE.F32      S6, #4.0
5905B6:  VMULNE.F32      S0, S0, S6
5905BA:  VADDNE.F32      S2, S2, S2
5905BE:  VMINNE.F32      D1, D1, D2
5905C2:  LDR             R0, =(TheCamera_ptr - 0x5905D0)
5905C4:  ADR             R2, dword_5906BC
5905C6:  LDR.W           R1, [R11,#0x388]
5905CA:  ADR             R4, dword_5906C4
5905CC:  ADD             R0, PC; TheCamera_ptr
5905CE:  VLDR            S6, =150.0
5905D2:  MOVS            R5, #0
5905D4:  MOVS            R3, #1
5905D6:  LDR             R0, [R0]; TheCamera
5905D8:  MOVT            R5, #0x4170
5905DC:  LDR.W           R1, [R1,#0xD0]
5905E0:  VLDR            S4, [R0,#0xEC]
5905E4:  MOVS            R0, #0
5905E6:  ANDS.W          R1, R1, #0x400000
5905EA:  STRD.W          R0, R0, [SP,#0xA8+var_6C]; float
5905EE:  IT EQ
5905F0:  ADDEQ           R2, #4
5905F2:  CMP             R1, #0
5905F4:  IT EQ
5905F6:  ADDEQ           R4, #4
5905F8:  VMUL.F32        S4, S4, S6
5905FC:  VLDR            S10, [R4]
590600:  MOV.W           R1, #0x3F000000
590604:  STRD.W          R0, R5, [SP,#0xA8+var_74]; float
590608:  VMUL.F32        S6, S2, S10
59060C:  STRD.W          R0, R1, [SP,#0xA8+var_7C]; float
590610:  VSTR            S16, [SP,#0xA8+var_80]
590614:  MOV             R1, R11; unsigned int
590616:  STRD.W          R3, R0, [SP,#0xA8+var_94]; float
59061A:  STRD.W          R3, R0, [SP,#0xA8+var_8C]; unsigned __int8
59061E:  STR             R0, [SP,#0xA8+var_84]; unsigned __int8
590620:  MOVS            R0, #0x80
590622:  VSTR            S0, [SP,#0xA8+var_9C]
590626:  STR.W           R8, [SP,#0xA8+var_A0]; unsigned __int8
59062A:  STR             R0, [SP,#0xA8+var_A4]; unsigned __int8
59062C:  VSTR            S4, [SP,#0xA8+var_98]
590630:  VCVT.S32.F32    S0, S6
590634:  VLDR            S8, [R2]
590638:  VMUL.F32        S2, S2, S8
59063C:  VMOV            R0, S0
590640:  VCVT.S32.F32    S2, S2
590644:  UXTB            R0, R0
590646:  STR             R0, [SP,#0xA8+var_A8]; unsigned __int8
590648:  VMOV            R0, S2
59064C:  UXTB            R2, R0; CEntity *
59064E:  MOV             R0, R6; this
590650:  MOV             R3, R2; unsigned __int8
590652:  BLX.W           j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffhhhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,uchar,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
590656:  MOV             R8, R9
590658:  MOVS            R0, #0
59065A:  CMP.W           R8, #0
59065E:  IT EQ
590660:  MOVEQ           R0, #1
590662:  ADD             SP, SP, #0x70 ; 'p'
590664:  VPOP            {D8-D10}
590668:  ADD             SP, SP, #4
59066A:  POP.W           {R8-R11}
59066E:  POP             {R4-R7,PC}
