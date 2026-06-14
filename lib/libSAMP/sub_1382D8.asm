; =========================================================
; Game Engine Function: sub_1382D8
; Address            : 0x1382D8 - 0x138626
; =========================================================

1382D8:  PUSH            {R4-R7,LR}
1382DA:  ADD             R7, SP, #0xC
1382DC:  PUSH.W          {R8-R11}
1382E0:  SUB             SP, SP, #4
1382E2:  VPUSH           {D8-D12}
1382E6:  SUB             SP, SP, #0x68
1382E8:  MOV             R10, R0
1382EA:  LDR             R0, [R0,#0x68]
1382EC:  STR             R1, [SP,#0xB0+var_A4]
1382EE:  CMP             R0, #0
1382F0:  BEQ.W           loc_138618
1382F4:  VMOV.F32        S24, #3.0
1382F8:  ADD             R0, SP, #0xB0+var_6C
1382FA:  ADDS            R0, #1
1382FC:  STR             R0, [SP,#0xB0+var_A8]
1382FE:  ADD             R0, SP, #0xB0+var_60
138300:  ADD.W           R4, R10, #0x54 ; 'T'
138304:  ADDS            R6, R0, #4
138306:  ADD.W           R11, SP, #0xB0+var_A0
13830A:  VLDR            S16, =0.02
13830E:  MOV.W           R8, #0
138312:  VLDR            S18, =0.3
138316:  VLDR            S20, =0.85
13831A:  VLDR            S22, =0.0039216
13831E:  LDR.W           R1, [R10,#0x64]
138322:  MOV             R2, #0xC0C0C0C1
13832A:  LDR.W           R0, [R10,#0x58]
13832E:  UMULL.W         R2, R3, R1, R2
138332:  LSRS            R2, R3, #7
138334:  MOVS            R3, #0xAA
138336:  MLS.W           R1, R2, R3, R1
13833A:  LDR.W           R0, [R0,R2,LSL#2]
13833E:  ADD.W           R1, R1, R1,LSL#1
138342:  ADD.W           R9, R0, R1,LSL#3
138346:  LDRH.W          R2, [R0,R1,LSL#3]
13834A:  ADD.W           R1, R9, #4
13834E:  MOV             R0, R6
138350:  STRH.W          R2, [SP,#0xB0+var_60]
138354:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
138358:  LDRD.W          R1, R2, [R9,#0x10]
13835C:  LDRH.W          R0, [SP,#0xB0+var_60]
138360:  STRD.W          R1, R2, [SP,#0xB0+var_50]
138364:  BL              sub_15E580
138368:  CMP             R0, #0
13836A:  BEQ.W           loc_1385FA
13836E:  LDRH.W          R0, [SP,#0xB0+var_60]
138372:  MOV             R5, R6
138374:  MOV             R6, R4
138376:  BL              sub_15E670
13837A:  MOV             R1, R0; s
13837C:  ADD             R4, SP, #0xB0+var_6C
13837E:  ADD.W           R9, SP, #0xB0+var_84
138382:  MOV             R0, R4; int
138384:  BL              sub_DC6DC
138388:  LDRH.W          R1, [SP,#0xB0+var_60]; int
13838C:  MOV             R0, R9; this
13838E:  BLX             j__ZNSt6__ndk19to_stringEi; std::to_string(int)
138392:  LDR             R2, =(asc_898D5 - 0x138398); " (" ...
138394:  ADD             R2, PC; " ("
138396:  MOV             R0, R9; int
138398:  MOVS            R1, #0; int
13839A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
13839E:  VLDR            D16, [R0]
1383A2:  MOV.W           R9, #0
1383A6:  LDR             R2, [R0,#8]
1383A8:  LDR             R1, =(unk_901C1 - 0x1383B0)
1383AA:  STR             R2, [SP,#0xB0+var_70]
1383AC:  ADD             R1, PC; unk_901C1 ; s
1383AE:  VSTR            D16, [SP,#0xB0+var_78]
1383B2:  STRD.W          R9, R9, [R0]
1383B6:  STR.W           R9, [R0,#8]
1383BA:  ADD             R0, SP, #0xB0+var_78; int
1383BC:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
1383C0:  VLDR            D16, [R0]
1383C4:  LDR             R1, [R0,#8]
1383C6:  STR             R1, [SP,#0xB0+var_98]
1383C8:  VSTR            D16, [SP,#0xB0+var_A0]
1383CC:  STRD.W          R9, R9, [R0]
1383D0:  STR.W           R9, [R0,#8]
1383D4:  LDRB.W          R0, [SP,#0xB0+var_A0]
1383D8:  LDRD.W          R2, R1, [SP,#0xB0+var_A0+4]
1383DC:  ANDS.W          R3, R0, #1
1383E0:  ADD             R3, SP, #0xB0+var_A0
1383E2:  ITT EQ
1383E4:  ADDEQ           R1, R3, #1
1383E6:  LSREQ           R2, R0, #1
1383E8:  MOV             R0, R4
1383EA:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
1383EE:  LDRB.W          R0, [SP,#0xB0+var_A0]
1383F2:  MOV             R4, R6
1383F4:  LSLS            R0, R0, #0x1F
1383F6:  ITT NE
1383F8:  LDRNE           R0, [SP,#0xB0+var_98]; void *
1383FA:  BLXNE           j__ZdlPv; operator delete(void *)
1383FE:  LDRB.W          R0, [SP,#0xB0+var_78]
138402:  MOV             R6, R5
138404:  LSLS            R0, R0, #0x1F
138406:  ITT NE
138408:  LDRNE           R0, [SP,#0xB0+var_70]; void *
13840A:  BLXNE           j__ZdlPv; operator delete(void *)
13840E:  LDRB.W          R0, [SP,#0xB0+var_84]
138412:  MOV             R9, R4
138414:  LSLS            R0, R0, #0x1F
138416:  ITT NE
138418:  LDRNE           R0, [SP,#0xB0+var_7C]; void *
13841A:  BLXNE           j__ZdlPv; operator delete(void *)
13841E:  LDRB.W          R0, [SP,#0xB0+var_5C]
138422:  MOVS            R4, #0
138424:  LDR             R1, [SP,#0xB0+var_58]
138426:  LSLS            R2, R0, #0x1F
138428:  IT EQ
13842A:  LSREQ           R1, R0, #1
13842C:  CMP             R1, #0
13842E:  BEQ             loc_1384D0
138430:  LDR             R1, =(a5+4 - 0x138436); "[" ...
138432:  ADD             R1, PC; "["
138434:  ADD             R5, SP, #0xB0+var_84
138436:  MOV             R2, R6
138438:  MOV             R0, R5
13843A:  BLX             j__ZNSt6__ndk1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_; std::operator+<char>(char const*,std::string const&)
13843E:  LDR             R1, =(unk_8919A - 0x138444)
138440:  ADD             R1, PC; unk_8919A ; s
138442:  MOV             R0, R5; int
138444:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
138448:  VLDR            D16, [R0]
13844C:  LDR             R1, [R0,#8]
13844E:  STR             R1, [SP,#0xB0+var_98]
138450:  VSTR            D16, [SP,#0xB0+var_A0]
138454:  STRD.W          R4, R4, [R0]
138458:  STR             R4, [R0,#8]
13845A:  LDRB.W          R0, [SP,#0xB0+var_6C]
13845E:  LDRD.W          R2, R1, [SP,#0xB0+var_68]
138462:  ANDS.W          R3, R0, #1
138466:  LDR             R3, [SP,#0xB0+var_A8]
138468:  ITT EQ
13846A:  MOVEQ           R1, R3
13846C:  LSREQ           R2, R0, #1
13846E:  ADD             R0, SP, #0xB0+var_90
138470:  BL              sub_164D04
138474:  LDRB.W          R0, [SP,#0xB0+var_90]
138478:  LDRD.W          R2, R1, [SP,#0xB0+var_8C]
13847C:  ANDS.W          R3, R0, #1
138480:  ADD             R3, SP, #0xB0+var_90
138482:  ITT EQ
138484:  ADDEQ           R1, R3, #1
138486:  LSREQ           R2, R0, #1
138488:  MOV             R0, R11
13848A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
13848E:  VLDR            D16, [R0]
138492:  LDR             R1, [R0,#8]
138494:  STR             R1, [SP,#0xB0+var_70]
138496:  VSTR            D16, [SP,#0xB0+var_78]
13849A:  STRD.W          R4, R4, [R0]
13849E:  STR             R4, [R0,#8]
1384A0:  LDRB.W          R0, [SP,#0xB0+var_90]
1384A4:  LSLS            R0, R0, #0x1F
1384A6:  ITT NE
1384A8:  LDRNE           R0, [SP,#0xB0+var_88]; void *
1384AA:  BLXNE           j__ZdlPv; operator delete(void *)
1384AE:  LDRB.W          R0, [SP,#0xB0+var_A0]
1384B2:  MOV             R4, R9
1384B4:  LSLS            R0, R0, #0x1F
1384B6:  ITT NE
1384B8:  LDRNE           R0, [SP,#0xB0+var_98]; void *
1384BA:  BLXNE           j__ZdlPv; operator delete(void *)
1384BE:  LDRB.W          R0, [SP,#0xB0+var_84]
1384C2:  ADD             R5, SP, #0xB0+var_84
1384C4:  LSLS            R0, R0, #0x1F
1384C6:  ITT NE
1384C8:  LDRNE           R0, [SP,#0xB0+var_7C]; void *
1384CA:  BLXNE           j__ZdlPv; operator delete(void *)
1384CE:  B               loc_13851A
1384D0:  LDRB.W          R0, [SP,#0xB0+var_6C]
1384D4:  LDRD.W          R2, R1, [SP,#0xB0+var_68]
1384D8:  ANDS.W          R3, R0, #1
1384DC:  LDR             R3, [SP,#0xB0+var_A8]
1384DE:  ITT EQ
1384E0:  MOVEQ           R1, R3
1384E2:  LSREQ           R2, R0, #1
1384E4:  MOV             R0, R11
1384E6:  BL              sub_164D04
1384EA:  LDR             R2, =(unk_84840 - 0x1384F0)
1384EC:  ADD             R2, PC; unk_84840 ; s
1384EE:  MOV             R0, R11; int
1384F0:  MOVS            R1, #0; int
1384F2:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
1384F6:  VLDR            D16, [R0]
1384FA:  LDR             R1, [R0,#8]
1384FC:  STR             R1, [SP,#0xB0+var_70]
1384FE:  VSTR            D16, [SP,#0xB0+var_78]
138502:  STRD.W          R4, R4, [R0]
138506:  STR             R4, [R0,#8]
138508:  LDRB.W          R0, [SP,#0xB0+var_A0]
13850C:  LSLS            R0, R0, #0x1F
13850E:  ITT NE
138510:  LDRNE           R0, [SP,#0xB0+var_98]; void *
138512:  BLXNE           j__ZdlPv; operator delete(void *)
138516:  MOV             R4, R9
138518:  ADD             R5, SP, #0xB0+var_84
13851A:  ADD.W           R8, R8, #1
13851E:  LDR             R1, [SP,#0xB0+var_50]
138520:  LDRB.W          R2, [SP,#0xB0+var_5C]
138524:  VMOV.F32        S2, S18
138528:  VMOV            S0, R8
13852C:  ORR.W           R1, R1, #0xFF
138530:  LDR             R0, [SP,#0xB0+var_58]
138532:  REV             R1, R1
138534:  VCVT.F32.S32    S0, S0
138538:  LSLS            R3, R2, #0x1F
13853A:  IT EQ
13853C:  LSREQ           R0, R2, #1
13853E:  CMP             R0, #0
138540:  ITT EQ
138542:  MOVWEQ          R1, #0xBB85
138546:  MOVTEQ          R1, #0xFF65
13854A:  UBFX.W          R0, R1, #0x10, #8
13854E:  UBFX.W          R2, R1, #8, #8
138552:  VLDR            S4, [R10,#0x18]
138556:  VMOV            S6, R0
13855A:  UXTB            R0, R1
13855C:  VMOV            S10, R0
138560:  MOV.W           R0, #0x3F800000
138564:  VMOV            S8, R2
138568:  STR             R0, [SP,#0xB0+var_94]
13856A:  VMLA.F32        S2, S0, S16
13856E:  VLDR            S0, [R10,#0x14]
138572:  VCVT.F32.U32    S6, S6
138576:  VCVT.F32.U32    S8, S8
13857A:  VCVT.F32.U32    S10, S10
13857E:  VMUL.F32        S0, S0, S20
138582:  VMUL.F32        S2, S2, S4
138586:  VMUL.F32        S4, S6, S22
13858A:  VMUL.F32        S6, S8, S22
13858E:  VMUL.F32        S8, S10, S22
138592:  VSTR            S0, [SP,#0xB0+var_90]
138596:  VSTR            S2, [SP,#0xB0+var_8C]
13859A:  VSTR            S4, [SP,#0xB0+var_98]
13859E:  VSTR            S6, [SP,#0xB0+var_A0+4]
1385A2:  VSTR            S8, [SP,#0xB0+var_A0]
1385A6:  ADD             R1, SP, #0xB0+var_78
1385A8:  MOV             R0, R5
1385AA:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
1385AE:  LDR             R0, =(off_234980 - 0x1385B4)
1385B0:  ADD             R0, PC; off_234980
1385B2:  LDR             R0, [R0]; dword_238EC0
1385B4:  VLDR            S0, [R0]
1385B8:  VDIV.F32        S0, S0, S24
1385BC:  MOVS            R0, #1
1385BE:  ADD             R1, SP, #0xB0+var_90; int
1385C0:  STR             R0, [SP,#0xB0+var_B0]; int
1385C2:  MOV             R2, R11; int
1385C4:  LDR             R0, [SP,#0xB0+var_A4]; int
1385C6:  MOV             R3, R5; int
1385C8:  VSTR            S0, [SP,#0xB0+var_AC]
1385CC:  BL              sub_12AE34
1385D0:  LDRB.W          R0, [SP,#0xB0+var_84]
1385D4:  LSLS            R0, R0, #0x1F
1385D6:  ITT NE
1385D8:  LDRNE           R0, [SP,#0xB0+var_7C]; void *
1385DA:  BLXNE           j__ZdlPv; operator delete(void *)
1385DE:  LDRB.W          R0, [SP,#0xB0+var_78]
1385E2:  LSLS            R0, R0, #0x1F
1385E4:  ITT NE
1385E6:  LDRNE           R0, [SP,#0xB0+var_70]; void *
1385E8:  BLXNE           j__ZdlPv; operator delete(void *)
1385EC:  LDRB.W          R0, [SP,#0xB0+var_6C]
1385F0:  LSLS            R0, R0, #0x1F
1385F2:  ITT NE
1385F4:  LDRNE           R0, [SP,#0xB0+var_64]; void *
1385F6:  BLXNE           j__ZdlPv; operator delete(void *)
1385FA:  MOV             R0, R4
1385FC:  BL              sub_139B94
138600:  LDRB.W          R0, [SP,#0xB0+var_5C]
138604:  LSLS            R0, R0, #0x1F
138606:  ITT NE
138608:  LDRNE           R0, [SP,#0xB0+var_54]; void *
13860A:  BLXNE           j__ZdlPv; operator delete(void *)
13860E:  LDR.W           R0, [R10,#0x68]
138612:  CMP             R0, #0
138614:  BNE.W           loc_13831E
138618:  ADD             SP, SP, #0x68 ; 'h'
13861A:  VPOP            {D8-D12}
13861E:  ADD             SP, SP, #4
138620:  POP.W           {R8-R11}
138624:  POP             {R4-R7,PC}
