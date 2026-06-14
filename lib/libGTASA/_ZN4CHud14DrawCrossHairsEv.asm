; =========================================================
; Game Engine Function: _ZN4CHud14DrawCrossHairsEv
; Address            : 0x4371B0 - 0x4379EA
; =========================================================

4371B0:  PUSH            {R4-R7,LR}
4371B2:  ADD             R7, SP, #0xC
4371B4:  PUSH.W          {R8-R11}
4371B8:  SUB             SP, SP, #4
4371BA:  VPUSH           {D8-D15}
4371BE:  SUB             SP, SP, #0x48
4371C0:  MOV             R4, SP
4371C2:  BFC.W           R4, #0, #4
4371C6:  MOV             SP, R4
4371C8:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4371D8)
4371CC:  MOV.W           R2, #0x194
4371D0:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x4371DA)
4371D4:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4371D6:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
4371D8:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
4371DA:  LDR             R1, [R1]; CWorld::Players ...
4371DC:  LDR             R0, [R0]; CWorld::PlayerInFocus
4371DE:  SMULBB.W        R0, R0, R2
4371E2:  LDR             R5, [R1,R0]
4371E4:  CMP             R5, #0
4371E6:  BEQ.W           loc_4378F6
4371EA:  LDR.W           R0, =(TheCamera_ptr - 0x4371F8)
4371EE:  MOVS            R4, #0
4371F0:  LDRSB.W         R2, [R5,#0x71C]
4371F4:  ADD             R0, PC; TheCamera_ptr
4371F6:  LDR             R0, [R0]; TheCamera
4371F8:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
4371FC:  ADD.W           R1, R1, R1,LSL#5
437200:  ADD.W           R0, R0, R1,LSL#4
437204:  RSB.W           R1, R2, R2,LSL#3
437208:  LDRH.W          R9, [R0,#0x17E]
43720C:  ADD.W           R0, R5, R1,LSL#2
437210:  LDR.W           R8, [R0,#0x5A4]
437214:  SUB.W           R1, R9, #7; switch 45 cases
437218:  CMP             R1, #0x2C ; ','
43721A:  BHI             def_43721C; jumptable 0043721C default case, cases 9-15,17-33,35-44,47-50
43721C:  TBH.W           [PC,R1,LSL#1]; switch jump
437220:  DCW 0x2D; jump table for switch statement
437222:  DCW 0x2D
437224:  DCW 0x33
437226:  DCW 0x33
437228:  DCW 0x33
43722A:  DCW 0x33
43722C:  DCW 0x33
43722E:  DCW 0x33
437230:  DCW 0x33
437232:  DCW 0x374
437234:  DCW 0x33
437236:  DCW 0x33
437238:  DCW 0x33
43723A:  DCW 0x33
43723C:  DCW 0x33
43723E:  DCW 0x33
437240:  DCW 0x33
437242:  DCW 0x33
437244:  DCW 0x33
437246:  DCW 0x33
437248:  DCW 0x33
43724A:  DCW 0x33
43724C:  DCW 0x33
43724E:  DCW 0x33
437250:  DCW 0x33
437252:  DCW 0x33
437254:  DCW 0x33
437256:  DCW 0x2D
437258:  DCW 0x33
43725A:  DCW 0x33
43725C:  DCW 0x33
43725E:  DCW 0x33
437260:  DCW 0x33
437262:  DCW 0x33
437264:  DCW 0x33
437266:  DCW 0x33
437268:  DCW 0x33
43726A:  DCW 0x33
43726C:  DCW 0x2D
43726E:  DCW 0x2D
437270:  DCW 0x33
437272:  DCW 0x33
437274:  DCW 0x33
437276:  DCW 0x33
437278:  DCW 0x2D
43727A:  ADDW            R0, R0, #0x5A4; jumptable 0043721C cases 7,8,34,45,46,51
43727E:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
437282:  EOR.W           R4, R0, #1
437286:  SUB.W           R0, R9, #0x27 ; '''; jumptable 0043721C default case, cases 9-15,17-33,35-44,47-50
43728A:  MOVS            R6, #0
43728C:  CMP             R0, #0xD
43728E:  BHI             loc_4372A0
437290:  MOVS            R1, #1
437292:  LSL.W           R0, R1, R0
437296:  MOVW            R1, #0x200B
43729A:  TST             R0, R1
43729C:  IT NE
43729E:  MOVNE           R6, #1
4372A0:  LDR.W           R0, [R5,#0x720]
4372A4:  CBNZ            R0, loc_437320
4372A6:  LDR.W           R0, [R5,#0x444]
4372AA:  LDRB.W          R0, [R0,#0x34]
4372AE:  LSLS            R0, R0, #0x1C
4372B0:  BPL             loc_437320
4372B2:  LDR.W           R0, [R5,#0x440]; this
4372B6:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
4372BA:  CBZ             R0, loc_4372C8
4372BC:  LDR.W           R0, [R5,#0x440]; this
4372C0:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
4372C4:  LDRB            R0, [R0,#0xE]
4372C6:  CBNZ            R0, loc_437320
4372C8:  SUB.W           R0, R9, #0x35 ; '5'
4372CC:  CMP             R0, #0xC
4372CE:  BHI             loc_437320
4372D0:  MOVS            R1, #1
4372D2:  LSL.W           R0, R1, R0
4372D6:  MOVW            R1, #0x1005
4372DA:  TST             R0, R1
4372DC:  ITTT NE
4372DE:  LDRNE.W         R0, [R5,#0x44C]
4372E2:  ORRNE.W         R0, R0, #2
4372E6:  CMPNE           R0, #0x3B ; ';'
4372E8:  BEQ             loc_437320
4372EA:  SUB.W           R0, R8, #0x25 ; '%'
4372EE:  CMP             R0, #2
4372F0:  ITT CS
4372F2:  SUBCS.W         R0, R8, #0x16
4372F6:  CMPCS           R0, #0xB
4372F8:  BHI             loc_437320
4372FA:  LDR.W           R0, =(TheCamera_ptr - 0x43730E)
4372FE:  CMP.W           R9, #0x35 ; '5'
437302:  MOV.W           R2, #0
437306:  MOV.W           R1, #0
43730A:  ADD             R0, PC; TheCamera_ptr
43730C:  LDR             R0, [R0]; TheCamera
43730E:  LDRB.W          R0, [R0,#(byte_951FFE - 0x951FA8)]
437312:  IT NE
437314:  MOVNE           R2, #1
437316:  CMP             R0, #0
437318:  IT EQ
43731A:  MOVEQ           R1, #1
43731C:  ORR.W           R6, R2, R1
437320:  CBNZ            R4, loc_437338
437322:  LDR.W           R0, =(_ZN11CTheScripts14bDrawCrossHairE_ptr - 0x43732A)
437326:  ADD             R0, PC; _ZN11CTheScripts14bDrawCrossHairE_ptr
437328:  LDR             R0, [R0]; CTheScripts::bDrawCrossHair ...
43732A:  LDR             R0, [R0]; CTheScripts::bDrawCrossHair
43732C:  CMP             R0, #0
43732E:  IT NE
437330:  MOVNE           R0, #1
437332:  ORRS            R0, R6
437334:  BEQ.W           loc_4378F6
437338:  LDR.W           R0, =(RsGlobal_ptr - 0x437342)
43733C:  MOVS            R1, #2
43733E:  ADD             R0, PC; RsGlobal_ptr
437340:  LDR             R0, [R0]; RsGlobal
437342:  VLDR            S0, [R0,#4]
437346:  VLDR            S2, [R0,#8]
43734A:  MOVS            R0, #9
43734C:  VCVT.F32.S32    S20, S0
437350:  VCVT.F32.S32    S18, S2
437354:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
437358:  MOVS            R0, #8
43735A:  MOVS            R1, #0
43735C:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
437360:  VMOV.F32        S16, #0.5
437364:  CMP             R6, #1
437366:  BNE.W           loc_4374C8
43736A:  SUB.W           R0, R9, #0x35 ; '5'
43736E:  CMP             R0, #0xC
437370:  BHI.W           loc_4374C8
437374:  MOVS            R1, #1
437376:  LSL.W           R0, R1, R0
43737A:  MOVW            R1, #0x1005
43737E:  TST             R0, R1
437380:  BEQ.W           loc_4374C8
437384:  LDR.W           R0, =(RsGlobal_ptr - 0x437390)
437388:  LDR.W           R1, =(_ZN7CCamera22m_f3rdPersonCHairMultYE_ptr - 0x437392)
43738C:  ADD             R0, PC; RsGlobal_ptr
43738E:  ADD             R1, PC; _ZN7CCamera22m_f3rdPersonCHairMultYE_ptr
437390:  LDR             R0, [R0]; RsGlobal
437392:  LDR             R1, [R1]; CCamera::m_f3rdPersonCHairMultY ...
437394:  VLDR            S2, [R0,#8]
437398:  VLDR            S0, [R0,#4]
43739C:  LDR.W           R0, =(_ZN7CCamera22m_f3rdPersonCHairMultXE_ptr - 0x4373B0)
4373A0:  VCVT.F32.S32    S2, S2
4373A4:  VCVT.F32.S32    S0, S0
4373A8:  VLDR            S4, [R1]
4373AC:  ADD             R0, PC; _ZN7CCamera22m_f3rdPersonCHairMultXE_ptr
4373AE:  LDR             R0, [R0]; CCamera::m_f3rdPersonCHairMultX ...
4373B0:  VLDR            S6, [R0]
4373B4:  VMUL.F32        S21, S4, S2
4373B8:  MOV             R0, R5; this
4373BA:  VMUL.F32        S20, S6, S0
4373BE:  BLX             j__ZN10CPlayerPed23GetWeaponRadiusOnScreenEv; CPlayerPed::GetWeaponRadiusOnScreen(void)
4373C2:  VLDR            S0, =0.2
4373C6:  VMOV            S18, R0
4373CA:  VCMP.F32        S18, S0
4373CE:  VMRS            APSR_nzcv, FPSCR
4373D2:  BNE             loc_437408
4373D4:  VMOV.F32        S22, S20
4373D8:  ADR.W           R0, dword_4379F0
4373DC:  VMOV.F32        S23, S21
4373E0:  VLD1.64         {D16-D17}, [R0@128]
4373E4:  ADD             R5, SP, #0xA8+var_7C
4373E6:  MOVS            R0, #0xFF
4373E8:  ADD             R4, SP, #0xA8+var_78
4373EA:  STR             R0, [SP,#0xA8+var_A8]; unsigned __int8
4373EC:  MOV             R0, R5; this
4373EE:  MOVS            R1, #0xFF; unsigned __int8
4373F0:  MOVS            R2, #0xFF; unsigned __int8
4373F2:  MOVS            R3, #0xFF; unsigned __int8
4373F4:  VADD.F32        Q8, Q5, Q8
4373F8:  VST1.64         {D16-D17}, [R4@128]
4373FC:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
437400:  MOV             R0, R4
437402:  MOV             R1, R5
437404:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
437408:  LDR.W           R0, =(RsGlobal_ptr - 0x437418)
43740C:  ADD             R5, SP, #0xA8+var_7C
43740E:  VLDR            S2, =448.0
437412:  MOVS            R6, #0xFF
437414:  ADD             R0, PC; RsGlobal_ptr
437416:  MOVS            R1, #0xFF; unsigned __int8
437418:  MOVS            R2, #0xFF; unsigned __int8
43741A:  MOVS            R3, #0xFF; unsigned __int8
43741C:  LDR             R0, [R0]; RsGlobal
43741E:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
437420:  VMOV            S0, R0
437424:  MOV             R0, R5; this
437426:  VCVT.F32.S32    S0, S0
43742A:  STR             R6, [SP,#0xA8+var_A8]; unsigned __int8
43742C:  VDIV.F32        S0, S0, S2
437430:  VLDR            S2, =64.0
437434:  VMUL.F32        S0, S0, S2
437438:  VMUL.F32        S24, S18, S0
43743C:  VMUL.F32        S0, S24, S16
437440:  VADD.F32        S4, S21, S0
437444:  VADD.F32        S2, S20, S0
437448:  VSUB.F32        S22, S4, S24
43744C:  VSUB.F32        S20, S2, S24
437450:  VADD.F32        S18, S0, S22
437454:  VSTR            S22, [SP,#0xA8+var_6C]
437458:  VADD.F32        S16, S0, S20
43745C:  VSTR            S20, [SP,#0xA8+var_78]
437460:  VSTR            S16, [SP,#0xA8+var_70]
437464:  VSTR            S18, [SP,#0xA8+var_74]
437468:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43746C:  LDR.W           R0, =(_ZN4CHud7SpritesE_ptr - 0x437478)
437470:  ADD             R1, SP, #0xA8+var_78
437472:  MOV             R2, R5
437474:  ADD             R0, PC; _ZN4CHud7SpritesE_ptr
437476:  LDR             R0, [R0]; CHud::Sprites ...
437478:  ADDS            R4, R0, #4
43747A:  MOV             R0, R4
43747C:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
437480:  VADD.F32        S26, S24, S20
437484:  ADD             R5, SP, #0xA8+var_7C
437486:  MOVS            R1, #0xFF; unsigned __int8
437488:  MOVS            R2, #0xFF; unsigned __int8
43748A:  MOV             R0, R5; this
43748C:  MOVS            R3, #0xFF; unsigned __int8
43748E:  VSTR            S22, [SP,#0xA8+var_6C]
437492:  STR             R6, [SP,#0xA8+var_A8]; unsigned __int8
437494:  VSTR            S26, [SP,#0xA8+var_78]
437498:  VSTR            S16, [SP,#0xA8+var_70]
43749C:  VSTR            S18, [SP,#0xA8+var_74]
4374A0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4374A4:  ADD             R1, SP, #0xA8+var_78
4374A6:  MOV             R0, R4
4374A8:  MOV             R2, R5
4374AA:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
4374AE:  VADD.F32        S22, S24, S22
4374B2:  B               loc_4378A0
4374B4:  DCFS 0.2
4374B8:  DCFS 448.0
4374BC:  DCFS 64.0
4374C0:  DCFS 0.275
4374C4:  DCFS 0.0
4374C8:  LDR.W           R0, =(_ZN11CTheScripts14bDrawCrossHairE_ptr - 0x4374D8)
4374CC:  VMUL.F32        S18, S18, S16
4374D0:  VMUL.F32        S20, S20, S16
4374D4:  ADD             R0, PC; _ZN11CTheScripts14bDrawCrossHairE_ptr
4374D6:  LDR             R0, [R0]; CTheScripts::bDrawCrossHair ...
4374D8:  LDR             R0, [R0]; CTheScripts::bDrawCrossHair
4374DA:  CMP             R0, #2
4374DC:  BNE.W           loc_4377EC
4374E0:  MOVS            R0, #9
4374E2:  MOVS            R1, #2
4374E4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4374E8:  LDR.W           R0, =(RsGlobal_ptr - 0x4374F4)
4374EC:  LDR.W           R2, =(_ZN11CTheScripts14bDrawCrossHairE_ptr - 0x4374F6)
4374F0:  ADD             R0, PC; RsGlobal_ptr
4374F2:  ADD             R2, PC; _ZN11CTheScripts14bDrawCrossHairE_ptr
4374F4:  LDR             R1, [R0]; RsGlobal
4374F6:  LDR             R2, [R2]; CTheScripts::bDrawCrossHair ...
4374F8:  LDRD.W          R0, R1, [R1,#(dword_9FC900 - 0x9FC8FC)]
4374FC:  CMP             R0, R1
4374FE:  MOV             R3, R0
437500:  IT GT
437502:  MOVGT           R3, R1
437504:  VMOV            S0, R3
437508:  VCVT.F32.S32    S22, S0
43750C:  LDR             R4, [R2]; CTheScripts::bDrawCrossHair
43750E:  CMP             R4, #2
437510:  IT NE
437512:  CMPNE.W         R8, #0x2B ; '+'
437516:  BEQ             loc_437520
437518:  CMP.W           R8, #0x22 ; '"'
43751C:  BNE.W           loc_43794C
437520:  MOV             R0, R8
437522:  MOVS            R1, #1
437524:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
437528:  LDR             R0, [R0,#0xC]
43752A:  CMP             R0, #0
43752C:  BGT             loc_43753E
43752E:  LDR.W           R0, =(_ZN11CTheScripts14bDrawCrossHairE_ptr - 0x437536)
437532:  ADD             R0, PC; _ZN11CTheScripts14bDrawCrossHairE_ptr
437534:  LDR             R0, [R0]; CTheScripts::bDrawCrossHair ...
437536:  LDR             R0, [R0]; CTheScripts::bDrawCrossHair
437538:  CMP             R0, #2
43753A:  BNE.W           def_437954; jumptable 00437954 default case, cases 9-15,17-39,41-50
43753E:  ADR.W           R0, aGta3_2; "gta3"
437542:  BLX             j__ZN22TextureDatabaseRuntime11GetDatabaseEPKc; TextureDatabaseRuntime::GetDatabase(char const*)
437546:  BLX             j__ZN22TextureDatabaseRuntime8RegisterEPS_; TextureDatabaseRuntime::Register(TextureDatabaseRuntime*)
43754A:  LDR.W           R0, =(_ZN11CTheScripts14bDrawCrossHairE_ptr - 0x43755C)
43754E:  ADR.W           R1, dword_437A64
437552:  CMP             R4, #2
437554:  VLDR            S2, =0.275
437558:  ADD             R0, PC; _ZN11CTheScripts14bDrawCrossHairE_ptr
43755A:  IT EQ
43755C:  ADDEQ           R1, #4
43755E:  VLDR            S0, [R1]
437562:  CMP.W           R8, #0x2B ; '+'
437566:  LDR             R0, [R0]; CTheScripts::bDrawCrossHair ...
437568:  IT EQ
43756A:  VMOVEQ.F32      S0, S2
43756E:  LDR.W           R1, =(byte_61CD7E - 0x437584)
437572:  ADR.W           R3, aCameracrosshai; "cameraCrosshair"
437576:  VMUL.F32        S26, S0, S22
43757A:  LDR             R2, [R0]; CTheScripts::bDrawCrossHair
43757C:  ADR.W           R0, aSnipercrosshai; "SNIPERcrosshair"
437580:  ADD             R1, PC; byte_61CD7E ; char *
437582:  CMP             R2, #2
437584:  IT EQ
437586:  MOVEQ           R0, R3
437588:  CMP.W           R8, #0x2B ; '+'
43758C:  IT EQ
43758E:  MOVEQ           R0, R3; char *
437590:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
437594:  VLDR            S24, =0.0
437598:  MOV             R4, R0
43759A:  VMOV.F32        S22, S24
43759E:  CMP             R4, #0
4375A0:  BEQ.W           def_437954; jumptable 00437954 default case, cases 9-15,17-39,41-50
4375A4:  CMP.W           R9, #7
4375A8:  BNE.W           loc_4376AC
4375AC:  LDR.W           R0, =(RsGlobal_ptr - 0x4375BE)
4375B0:  VMOV.F32        S30, #1.0
4375B4:  VSUB.F32        S28, S18, S26
4375B8:  ADD             R5, SP, #0xA8+var_7C
4375BA:  ADD             R0, PC; RsGlobal_ptr
4375BC:  MOV.W           R9, #0
4375C0:  MOV.W           R8, #0xFF
4375C4:  MOVS            R1, #0; unsigned __int8
4375C6:  LDR             R6, [R0]; RsGlobal
4375C8:  MOV             R0, R5; this
4375CA:  MOVS            R2, #0; unsigned __int8
4375CC:  MOVS            R3, #0; unsigned __int8
4375CE:  VLDR            S0, [R6,#4]
4375D2:  VADD.F32        S2, S28, S30
4375D6:  VCVT.F32.S32    S0, S0
4375DA:  STR.W           R9, [SP,#0xA8+var_78]
4375DE:  STR.W           R9, [SP,#0xA8+var_6C]
4375E2:  STR.W           R8, [SP,#0xA8+var_A8]; unsigned __int8
4375E6:  VSTR            S2, [SP,#0xA8+var_74]
4375EA:  VSTR            S0, [SP,#0xA8+var_70]
4375EE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4375F2:  ADD             R0, SP, #0xA8+var_78
4375F4:  MOV             R1, R5
4375F6:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
4375FA:  VMOV.F32        S17, #-1.0
4375FE:  VLDR            S0, [R6,#4]
437602:  VADD.F32        S19, S18, S26
437606:  VLDR            S2, [R6,#8]
43760A:  VCVT.F32.S32    S0, S0
43760E:  ADD             R5, SP, #0xA8+var_7C
437610:  VCVT.F32.S32    S2, S2
437614:  MOVS            R1, #0; unsigned __int8
437616:  MOV             R0, R5; this
437618:  MOVS            R2, #0; unsigned __int8
43761A:  MOVS            R3, #0; unsigned __int8
43761C:  STR.W           R9, [SP,#0xA8+var_78]
437620:  STR.W           R8, [SP,#0xA8+var_A8]; unsigned __int8
437624:  VADD.F32        S4, S19, S17
437628:  VSTR            S4, [SP,#0xA8+var_6C]
43762C:  VSTR            S0, [SP,#0xA8+var_70]
437630:  VSTR            S2, [SP,#0xA8+var_74]
437634:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
437638:  ADD             R0, SP, #0xA8+var_78
43763A:  MOV             R1, R5
43763C:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
437640:  VSUB.F32        S0, S20, S26
437644:  ADD             R5, SP, #0xA8+var_7C
437646:  MOVS            R1, #0; unsigned __int8
437648:  MOVS            R2, #0; unsigned __int8
43764A:  MOV             R0, R5; this
43764C:  MOVS            R3, #0; unsigned __int8
43764E:  VSTR            S28, [SP,#0xA8+var_6C]
437652:  STR.W           R9, [SP,#0xA8+var_78]
437656:  STR.W           R8, [SP,#0xA8+var_A8]; unsigned __int8
43765A:  VADD.F32        S0, S0, S30
43765E:  VSTR            S0, [SP,#0xA8+var_70]
437662:  VSTR            S19, [SP,#0xA8+var_74]
437666:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43766A:  ADD             R0, SP, #0xA8+var_78
43766C:  MOV             R1, R5
43766E:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
437672:  VADD.F32        S0, S20, S26
437676:  VLDR            S2, [R6,#4]
43767A:  ADD             R5, SP, #0xA8+var_7C
43767C:  MOVS            R1, #0; unsigned __int8
43767E:  VCVT.F32.S32    S2, S2
437682:  MOVS            R2, #0; unsigned __int8
437684:  MOV             R0, R5; this
437686:  MOVS            R3, #0; unsigned __int8
437688:  STR.W           R8, [SP,#0xA8+var_A8]; float
43768C:  VADD.F32        S0, S0, S17
437690:  VSTR            S0, [SP,#0xA8+var_78]
437694:  VSTR            S28, [SP,#0xA8+var_6C]
437698:  VSTR            S19, [SP,#0xA8+var_74]
43769C:  VSTR            S2, [SP,#0xA8+var_70]
4376A0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4376A4:  ADD             R0, SP, #0xA8+var_78
4376A6:  MOV             R1, R5
4376A8:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
4376AC:  MOVS            R0, #6
4376AE:  MOVS            R1, #0
4376B0:  MOV.W           R10, #0
4376B4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4376B8:  MOVS            R0, #2
4376BA:  MOVS            R1, #3
4376BC:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4376C0:  LDR             R1, [R4]
4376C2:  MOVS            R0, #1
4376C4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4376C8:  VMUL.F32        S16, S26, S16
4376CC:  MOV             R0, #0x3C4CCCCD
4376D4:  MOVW            R8, #0
4376D8:  STRD.W          R0, R10, [SP,#0xA8+var_84]; float
4376DC:  MOVW            R0, #0xD70A
4376E0:  MOV.W           R11, #0xFF
4376E4:  MOVT            R0, #0x3C23
4376E8:  MOVT            R8, #0x4120
4376EC:  STRD.W          R11, R11, [SP,#0xA8+var_A4]; float
4376F0:  STRD.W          R11, R11, [SP,#0xA8+var_9C]; unsigned __int8
4376F4:  MOV             R5, R0
4376F6:  STR             R0, [SP,#0xA8+var_94]; float
4376F8:  MOV             R2, R8; float
4376FA:  VSUB.F32        S0, S20, S16
4376FE:  STRD.W          R11, R10, [SP,#0xA8+var_90]; float
437702:  VSUB.F32        S2, S18, S16
437706:  STR.W           R10, [SP,#0xA8+var_88]; unsigned __int8
43770A:  VMOV            R4, S16
43770E:  VSTR            S16, [SP,#0xA8+var_A8]
437712:  VSUB.F32        S0, S0, S24
437716:  VSUB.F32        S2, S2, S22
43771A:  VMOV            R9, S0
43771E:  VMOV            R6, S2
437722:  MOV             R3, R4; float
437724:  MOV             R0, R9; this
437726:  MOV             R1, R6; float
437728:  BLX             j__ZN7CSprite18RenderOneXLUSpriteEfffffhhhsfhhhff; CSprite::RenderOneXLUSprite(float,float,float,float,float,uchar,uchar,uchar,short,float,uchar,uchar,uchar,float,float)
43772C:  VADD.F32        S0, S20, S16
437730:  MOV             R0, #0x3C4CCCCD
437738:  MOV             R1, R6; float
43773A:  STRD.W          R0, R10, [SP,#0xA8+var_84]; float
43773E:  MOVS            R0, #1
437740:  STRD.W          R11, R11, [SP,#0xA8+var_A4]; float
437744:  MOV             R2, R8; float
437746:  STRD.W          R11, R11, [SP,#0xA8+var_9C]; unsigned __int8
43774A:  MOV             R3, R4; float
43774C:  STRD.W          R5, R11, [SP,#0xA8+var_94]; float
437750:  STRD.W          R0, R10, [SP,#0xA8+var_8C]; unsigned __int8
437754:  VADD.F32        S0, S24, S0
437758:  VSTR            S16, [SP,#0xA8+var_A8]
43775C:  VMOV            R5, S0
437760:  MOV             R0, R5; this
437762:  BLX             j__ZN7CSprite18RenderOneXLUSpriteEfffffhhhsfhhhff; CSprite::RenderOneXLUSprite(float,float,float,float,float,uchar,uchar,uchar,short,float,uchar,uchar,uchar,float,float)
437766:  VADD.F32        S0, S18, S16
43776A:  MOV             R0, #0x3C4CCCCD
437772:  MOV             R2, R8; float
437774:  STRD.W          R0, R10, [SP,#0xA8+var_84]; float
437778:  MOV             R0, #0x3C23D70A
437780:  STRD.W          R11, R11, [SP,#0xA8+var_A4]; float
437784:  STRD.W          R11, R11, [SP,#0xA8+var_9C]; unsigned __int8
437788:  MOV             R3, R4; float
43778A:  STRD.W          R0, R11, [SP,#0xA8+var_94]; float
43778E:  MOVS            R0, #1
437790:  STR.W           R10, [SP,#0xA8+var_8C]; unsigned __int8
437794:  VADD.F32        S0, S0, S22
437798:  STR             R0, [SP,#0xA8+var_88]; unsigned __int8
43779A:  MOV             R0, R9; this
43779C:  VSTR            S16, [SP,#0xA8+var_A8]
4377A0:  VMOV            R6, S0
4377A4:  MOV             R1, R6; float
4377A6:  BLX             j__ZN7CSprite18RenderOneXLUSpriteEfffffhhhsfhhhff; CSprite::RenderOneXLUSprite(float,float,float,float,float,uchar,uchar,uchar,short,float,uchar,uchar,uchar,float,float)
4377AA:  MOVW            R0, #0xCCCD
4377AE:  MOV             R1, R6; float
4377B0:  MOVT            R0, #0x3C4C
4377B4:  MOV             R2, R8; float
4377B6:  STR             R0, [SP,#0xA8+var_84]; float
4377B8:  MOVS            R0, #1
4377BA:  STR             R0, [SP,#0xA8+var_88]; unsigned __int8
4377BC:  MOV             R3, R4; float
4377BE:  STR.W           R10, [SP,#0xA8+var_80]; float
4377C2:  STRD.W          R11, R0, [SP,#0xA8+var_90]; float
4377C6:  MOV             R0, #0x3C23D70A
4377CE:  STR             R0, [SP,#0xA8+var_94]; float
4377D0:  MOV             R0, R5; this
4377D2:  STRD.W          R11, R11, [SP,#0xA8+var_9C]; unsigned __int8
4377D6:  STRD.W          R11, R11, [SP,#0xA8+var_A4]; float
4377DA:  VSTR            S16, [SP,#0xA8+var_A8]
4377DE:  BLX             j__ZN7CSprite18RenderOneXLUSpriteEfffffhhhsfhhhff; CSprite::RenderOneXLUSprite(float,float,float,float,float,uchar,uchar,uchar,short,float,uchar,uchar,uchar,float,float)
4377E2:  MOVS            R0, #8
4377E4:  MOVS            R1, #0
4377E6:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4377EA:  B               def_437954; jumptable 00437954 default case, cases 9-15,17-39,41-50
4377EC:  SUB.W           R0, R9, #0x22 ; '"'
4377F0:  CMP             R0, #0xB
4377F2:  BHI.W           loc_4374E0
4377F6:  MOVS            R1, #1
4377F8:  LSL.W           R0, R1, R0
4377FC:  MOVW            R1, #0x981
437800:  TST             R0, R1
437802:  BEQ.W           loc_4374E0
437806:  LDR             R0, =(RsGlobal_ptr - 0x437814)
437808:  ADD             R5, SP, #0xA8+var_7C
43780A:  VLDR            S2, =448.0
43780E:  MOVS            R6, #0xFF
437810:  ADD             R0, PC; RsGlobal_ptr
437812:  MOVS            R1, #0xFF; unsigned __int8
437814:  MOVS            R2, #0xFF; unsigned __int8
437816:  MOVS            R3, #0xFF; unsigned __int8
437818:  LDR             R0, [R0]; RsGlobal
43781A:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
43781C:  VMOV            S0, R0
437820:  MOV             R0, R5; this
437822:  VCVT.F32.S32    S0, S0
437826:  STR             R6, [SP,#0xA8+var_A8]; unsigned __int8
437828:  VDIV.F32        S0, S0, S2
43782C:  VLDR            S2, =64.0
437830:  VMUL.F32        S22, S0, S2
437834:  VMUL.F32        S0, S22, S16
437838:  VSUB.F32        S24, S18, S0
43783C:  VSUB.F32        S20, S20, S0
437840:  VADD.F32        S18, S0, S24
437844:  VSTR            S24, [SP,#0xA8+var_6C]
437848:  VADD.F32        S16, S0, S20
43784C:  VSTR            S20, [SP,#0xA8+var_78]
437850:  VSTR            S16, [SP,#0xA8+var_70]
437854:  VSTR            S18, [SP,#0xA8+var_74]
437858:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43785C:  LDR             R0, =(_ZN4CHud7SpritesE_ptr - 0x437866)
43785E:  ADD             R1, SP, #0xA8+var_78
437860:  MOV             R2, R5
437862:  ADD             R0, PC; _ZN4CHud7SpritesE_ptr
437864:  LDR             R0, [R0]; CHud::Sprites ...
437866:  ADDS            R4, R0, #4
437868:  MOV             R0, R4
43786A:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
43786E:  VADD.F32        S26, S22, S20
437872:  ADD             R5, SP, #0xA8+var_7C
437874:  MOVS            R1, #0xFF; unsigned __int8
437876:  MOVS            R2, #0xFF; unsigned __int8
437878:  MOV             R0, R5; this
43787A:  MOVS            R3, #0xFF; unsigned __int8
43787C:  VSTR            S24, [SP,#0xA8+var_6C]
437880:  STR             R6, [SP,#0xA8+var_A8]; unsigned __int8
437882:  VSTR            S26, [SP,#0xA8+var_78]
437886:  VSTR            S16, [SP,#0xA8+var_70]
43788A:  VSTR            S18, [SP,#0xA8+var_74]
43788E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
437892:  ADD             R1, SP, #0xA8+var_78
437894:  MOV             R0, R4
437896:  MOV             R2, R5
437898:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
43789C:  VADD.F32        S22, S22, S24
4378A0:  ADD             R5, SP, #0xA8+var_7C
4378A2:  MOVS            R1, #0xFF; unsigned __int8
4378A4:  MOVS            R2, #0xFF; unsigned __int8
4378A6:  MOVS            R3, #0xFF; unsigned __int8
4378A8:  MOV             R0, R5; this
4378AA:  VSTR            S22, [SP,#0xA8+var_6C]
4378AE:  VSTR            S20, [SP,#0xA8+var_78]
4378B2:  VSTR            S16, [SP,#0xA8+var_70]
4378B6:  VSTR            S18, [SP,#0xA8+var_74]
4378BA:  STR             R6, [SP,#0xA8+var_A8]; unsigned __int8
4378BC:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4378C0:  ADD             R1, SP, #0xA8+var_78
4378C2:  MOV             R0, R4
4378C4:  MOV             R2, R5
4378C6:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
4378CA:  ADD             R5, SP, #0xA8+var_7C
4378CC:  MOVS            R1, #0xFF; unsigned __int8
4378CE:  MOVS            R2, #0xFF; unsigned __int8
4378D0:  MOVS            R3, #0xFF; unsigned __int8
4378D2:  MOV             R0, R5; this
4378D4:  VSTR            S22, [SP,#0xA8+var_6C]
4378D8:  VSTR            S26, [SP,#0xA8+var_78]
4378DC:  VSTR            S16, [SP,#0xA8+var_70]
4378E0:  VSTR            S18, [SP,#0xA8+var_74]
4378E4:  STR             R6, [SP,#0xA8+var_A8]; unsigned __int8
4378E6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4378EA:  ADD             R1, SP, #0xA8+var_78
4378EC:  MOV             R0, R4
4378EE:  MOV             R2, R5
4378F0:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
4378F4:  B               def_437954; jumptable 00437954 default case, cases 9-15,17-39,41-50
4378F6:  SUB.W           R4, R7, #-var_60
4378FA:  MOV             SP, R4
4378FC:  VPOP            {D8-D15}
437900:  ADD             SP, SP, #4
437902:  POP.W           {R8-R11}
437906:  POP             {R4-R7,PC}
437908:  MOV.W           R0, #0xFFFFFFFF; jumptable 0043721C case 16
43790C:  MOVS            R1, #0; bool
43790E:  MOVS            R4, #0
437910:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
437914:  CMP             R0, #0
437916:  BEQ.W           loc_4379E4
43791A:  MOV.W           R0, #0xFFFFFFFF; int
43791E:  MOVS            R1, #0; bool
437920:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
437924:  LDRH            R0, [R0,#0x26]
437926:  CMP.W           R0, #0x208
43792A:  BEQ             loc_437946
43792C:  MOV.W           R0, #0xFFFFFFFF; int
437930:  MOVS            R1, #0; bool
437932:  MOVS            R4, #0
437934:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
437938:  LDRH            R0, [R0,#0x26]
43793A:  MOVW            R1, #0x1A9
43793E:  MOVS            R6, #0
437940:  CMP             R0, R1
437942:  BNE.W           loc_4372A0
437946:  MOVS            R6, #0
437948:  MOVS            R4, #1
43794A:  B               loc_4372A0
43794C:  SUB.W           R2, R9, #8; switch 45 cases
437950:  CMP             R2, #0x2C ; ','
437952:  BHI             def_437954; jumptable 00437954 default case, cases 9-15,17-39,41-50
437954:  TBB.W           [PC,R2]; switch jump
437958:  DCB 0x24; jump table for switch statement
437959:  DCB 0x17
43795A:  DCB 0x17
43795B:  DCB 0x17
43795C:  DCB 0x17
43795D:  DCB 0x17
43795E:  DCB 0x17
43795F:  DCB 0x17
437960:  DCB 0x24
437961:  DCB 0x17
437962:  DCB 0x17
437963:  DCB 0x17
437964:  DCB 0x17
437965:  DCB 0x17
437966:  DCB 0x17
437967:  DCB 0x17
437968:  DCB 0x17
437969:  DCB 0x17
43796A:  DCB 0x17
43796B:  DCB 0x17
43796C:  DCB 0x17
43796D:  DCB 0x17
43796E:  DCB 0x17
43796F:  DCB 0x17
437970:  DCB 0x17
437971:  DCB 0x17
437972:  DCB 0x17
437973:  DCB 0x17
437974:  DCB 0x17
437975:  DCB 0x17
437976:  DCB 0x17
437977:  DCB 0x17
437978:  DCB 0x24
437979:  DCB 0x17
43797A:  DCB 0x17
43797B:  DCB 0x17
43797C:  DCB 0x17
43797D:  DCB 0x17
43797E:  DCB 0x17
43797F:  DCB 0x17
437980:  DCB 0x17
437981:  DCB 0x17
437982:  DCB 0x17
437983:  DCB 0x24
437984:  DCB 0x24
437985:  ALIGN 2
437986:  MOVS            R0, #0xA; jumptable 00437954 default case, cases 9-15,17-39,41-50
437988:  MOVS            R1, #5
43798A:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43798E:  MOVS            R0, #0xB
437990:  MOVS            R1, #6
437992:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
437996:  MOVS            R0, #8
437998:  MOVS            R1, #1
43799A:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43799E:  B               loc_4378F6
4379A0:  VMOV            S0, R1; jumptable 00437954 cases 8,16,40,51,52
4379A4:  VLDR            S2, =448.0
4379A8:  VMOV            S4, R0
4379AC:  VLDR            S6, =640.0
4379B0:  VCVT.F32.S32    S0, S0
4379B4:  LDR             R0, =(_ZN4CHud7SpritesE_ptr - 0x4379BE)
4379B6:  VCVT.F32.S32    S4, S4
4379BA:  ADD             R0, PC; _ZN4CHud7SpritesE_ptr
4379BC:  LDR             R0, [R0]; CHud::Sprites ...
4379BE:  VDIV.F32        S0, S0, S2
4379C2:  LDR             R4, [R0,#(dword_990C30 - 0x990C28)]
4379C4:  VDIV.F32        S2, S4, S6
4379C8:  VMOV.F32        S4, #20.0
4379CC:  VLDR            S6, =0.04
4379D0:  VMUL.F32        S26, S22, S6
4379D4:  VMUL.F32        S22, S0, S4
4379D8:  VMUL.F32        S24, S2, S4
4379DC:  CMP             R4, #0
4379DE:  BNE.W           loc_4375A4
4379E2:  B               def_437954; jumptable 00437954 default case, cases 9-15,17-39,41-50
4379E4:  MOVS            R6, #0
4379E6:  B.W             loc_4372A0
