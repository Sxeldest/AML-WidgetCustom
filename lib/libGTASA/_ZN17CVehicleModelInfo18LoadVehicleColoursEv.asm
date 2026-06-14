; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo18LoadVehicleColoursEv
; Address            : 0x46C3C0 - 0x46C7A4
; =========================================================

46C3C0:  PUSH            {R4-R7,LR}
46C3C2:  ADD             R7, SP, #0xC
46C3C4:  PUSH.W          {R8-R11}
46C3C8:  SUB.W           SP, SP, #0x5D0
46C3CC:  SUB             SP, SP, #4
46C3CE:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x46C3DA)
46C3D2:  ADR.W           R1, aR_18; "r"
46C3D6:  ADD             R0, PC; __stack_chk_guard_ptr
46C3D8:  LDR             R0, [R0]; __stack_chk_guard
46C3DA:  LDR             R0, [R0]
46C3DC:  STR.W           R0, [R7,#var_20]
46C3E0:  ADR.W           R0, aDataCarcolsDat; "DATA\\CARCOLS.DAT"
46C3E4:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
46C3E8:  ADD             R5, SP, #0x5F0+var_420
46C3EA:  MOV.W           R2, #(elf_hash_bucket+0x304); char *
46C3EE:  MOV             R4, R0
46C3F0:  MOV             R1, R5; unsigned int
46C3F2:  BLX             j__ZN8CFileMgr8ReadLineEjPci; CFileMgr::ReadLine(uint,char *,int)
46C3F6:  CMP             R0, #1
46C3F8:  BNE.W           loc_46C77E
46C3FC:  ADD             R0, SP, #0x5F0+var_4EC
46C3FE:  MOV.W           R10, #0
46C402:  ADD.W           R1, R0, #0x7C ; '|'
46C406:  STR             R1, [SP,#0x5F0+var_534]
46C408:  ADD.W           R1, R0, #0x78 ; 'x'
46C40C:  STR             R1, [SP,#0x5F0+var_538]
46C40E:  ADD.W           R1, R0, #0x6C ; 'l'
46C412:  STR             R1, [SP,#0x5F0+var_53C]
46C414:  ADD.W           R1, R0, #0x68 ; 'h'
46C418:  STR             R1, [SP,#0x5F0+var_540]
46C41A:  ADD.W           R1, R0, #0x5C ; '\'
46C41E:  STR             R1, [SP,#0x5F0+var_544]
46C420:  ADD.W           R1, R0, #0x58 ; 'X'
46C424:  STR             R1, [SP,#0x5F0+var_548]
46C426:  ADD.W           R1, R0, #0x4C ; 'L'
46C42A:  STR             R1, [SP,#0x5F0+var_54C]
46C42C:  ADD.W           R1, R0, #0x48 ; 'H'
46C430:  STR             R1, [SP,#0x5F0+var_550]
46C432:  ADD.W           R1, R0, #0x3C ; '<'
46C436:  STR             R1, [SP,#0x5F0+var_554]
46C438:  ADD.W           R1, R0, #0x38 ; '8'
46C43C:  STR             R1, [SP,#0x5F0+var_558]
46C43E:  ADD.W           R1, R0, #0x2C ; ','
46C442:  STR             R1, [SP,#0x5F0+var_55C]
46C444:  ADD.W           R1, R0, #0x28 ; '('
46C448:  STR             R1, [SP,#0x5F0+var_560]
46C44A:  ADD.W           R1, R0, #0x1C
46C44E:  STR             R1, [SP,#0x5F0+var_564]
46C450:  ADD.W           R1, R0, #0x18
46C454:  STR             R1, [SP,#0x5F0+var_568]
46C456:  ADD.W           R1, R0, #0xC
46C45A:  STR             R1, [SP,#0x5F0+var_56C]
46C45C:  ADD.W           R1, R0, #8
46C460:  STR             R1, [SP,#0x5F0+var_570]
46C462:  ADD.W           R1, R0, #0x74 ; 't'
46C466:  STR             R1, [SP,#0x5F0+var_4F0]
46C468:  ADD.W           R1, R0, #0x70 ; 'p'
46C46C:  STR             R1, [SP,#0x5F0+var_4F4]
46C46E:  ADD.W           R1, R0, #0x64 ; 'd'
46C472:  STR             R1, [SP,#0x5F0+var_4F8]
46C474:  ADD.W           R1, R0, #0x60 ; '`'
46C478:  STR             R1, [SP,#0x5F0+var_4FC]
46C47A:  ADD.W           R1, R0, #0x54 ; 'T'
46C47E:  STR             R1, [SP,#0x5F0+var_500]
46C480:  ADD.W           R1, R0, #0x50 ; 'P'
46C484:  STR             R1, [SP,#0x5F0+var_504]
46C486:  ADD.W           R1, R0, #0x44 ; 'D'
46C48A:  STR             R1, [SP,#0x5F0+var_508]
46C48C:  ADDS            R1, R0, #4
46C48E:  STR             R1, [SP,#0x5F0+var_50C]
46C490:  ADD.W           R1, R0, #0x40 ; '@'
46C494:  STR             R1, [SP,#0x5F0+var_510]
46C496:  ADD.W           R1, R0, #0x34 ; '4'
46C49A:  STR             R1, [SP,#0x5F0+var_514]
46C49C:  ADD.W           R1, R0, #0x30 ; '0'
46C4A0:  STR             R1, [SP,#0x5F0+var_518]
46C4A2:  ADD.W           R1, R0, #0x24 ; '$'
46C4A6:  STR             R1, [SP,#0x5F0+var_51C]
46C4A8:  ADD.W           R1, R0, #0x20 ; ' '
46C4AC:  STR             R1, [SP,#0x5F0+var_520]
46C4AE:  ADD.W           R1, R0, #0x14
46C4B2:  ADDS            R0, #0x10
46C4B4:  STR             R0, [SP,#0x5F0+var_528]
46C4B6:  MOV.W           R8, #0x20 ; ' '
46C4BA:  LDR             R0, =(_ZN17CVehicleModelInfo21ms_vehicleColourTableE_ptr - 0x46C4C6)
46C4BC:  MOV.W           R9, #0
46C4C0:  STR             R1, [SP,#0x5F0+var_524]
46C4C2:  ADD             R0, PC; _ZN17CVehicleModelInfo21ms_vehicleColourTableE_ptr
46C4C4:  LDR             R0, [R0]; CVehicleModelInfo::ms_vehicleColourTable ...
46C4C6:  STR             R0, [SP,#0x5F0+var_574]
46C4C8:  MOVS            R0, #0
46C4CA:  STRD.W          R4, R0, [SP,#0x5F0+var_530]
46C4CE:  ADD.W           R11, SP, #0x5F0+var_420
46C4D2:  MOVS            R0, #0
46C4D4:  LDRB            R3, [R5,R0]
46C4D6:  MOV             R2, R11
46C4D8:  ADD.W           R11, R2, #1
46C4DC:  ADDS            R0, #1
46C4DE:  CMP             R3, #0xA
46C4E0:  BEQ             loc_46C4EA
46C4E2:  SUBS            R1, R3, #1
46C4E4:  UXTB            R1, R1
46C4E6:  CMP             R1, #0x20 ; ' '
46C4E8:  BCC             loc_46C4D4
46C4EA:  ADDS            R1, R5, R0
46C4EC:  B               loc_46C4F2
46C4EE:  LDRB.W          R3, [R2,#1]!
46C4F2:  UXTB            R3, R3; int
46C4F4:  CMP             R3, #0x2B ; '+'
46C4F6:  BGT             loc_46C502
46C4F8:  CMP             R3, #0xD
46C4FA:  BNE             loc_46C50C
46C4FC:  STRB.W          R8, [R2]
46C500:  B               loc_46C4EE
46C502:  CMP             R3, #0x2C ; ','
46C504:  IT EQ
46C506:  STRBEQ.W        R8, [R2]
46C50A:  B               loc_46C4EE
46C50C:  CMP             R3, #0
46C50E:  IT NE
46C510:  CMPNE           R3, #0xA
46C512:  BNE             loc_46C4EE
46C514:  STRB.W          R10, [R2]
46C518:  LDRB.W          R2, [R1,#-1]
46C51C:  CMP             R2, #0
46C51E:  IT NE
46C520:  CMPNE           R2, #0x23 ; '#'
46C522:  BEQ.W           loc_46C76C
46C526:  CMP.W           R9, #0
46C52A:  BEQ             loc_46C590
46C52C:  CMP             R2, #0x65 ; 'e'
46C52E:  BNE             loc_46C53C
46C530:  LDRB            R0, [R5,R0]
46C532:  CMP             R0, #0x6E ; 'n'
46C534:  ITT EQ
46C536:  LDRBEQ          R0, [R1,#1]
46C538:  CMPEQ           R0, #0x64 ; 'd'
46C53A:  BEQ             loc_46C5CA
46C53C:  CMP.W           R9, #3
46C540:  BEQ             loc_46C5D6
46C542:  CMP.W           R9, #2
46C546:  BEQ.W           loc_46C6BC
46C54A:  CMP.W           R9, #1
46C54E:  BNE.W           loc_46C76C
46C552:  ADD             R0, SP, #0x5F0+var_46C
46C554:  ADR             R1, aDDD_0; "%d %d %d"
46C556:  ADD             R2, SP, #0x5F0+var_464
46C558:  ADD             R3, SP, #0x5F0+var_468
46C55A:  STR             R0, [SP,#0x5F0+var_5F0]
46C55C:  MOV             R0, R5; s
46C55E:  BLX             sscanf
46C562:  LDR             R1, [SP,#0x5F0+var_574]
46C564:  MOVS            R2, #0xFF
46C566:  LDR             R3, [SP,#0x5F0+var_52C]
46C568:  LDR             R0, [SP,#0x5F0+var_464]
46C56A:  STRB.W          R0, [R1,R3,LSL#2]
46C56E:  ADD.W           R1, R1, R3,LSL#2
46C572:  LDR             R0, [SP,#0x5F0+var_468]
46C574:  STRB            R0, [R1,#1]
46C576:  LDR             R0, [SP,#0x5F0+var_46C]
46C578:  STRB            R2, [R1,#3]
46C57A:  STRB            R0, [R1,#2]
46C57C:  MOV.W           R0, #0xFFFFFFFF
46C580:  LDRB.W          R1, [R11,R0]
46C584:  ADDS            R0, #1
46C586:  CMP             R1, #0x23 ; '#'
46C588:  BNE             loc_46C580
46C58A:  ADDS            R3, #1
46C58C:  STR             R3, [SP,#0x5F0+var_52C]
46C58E:  B               loc_46C5D0
46C590:  CMP             R2, #0x63 ; 'c'
46C592:  BNE             loc_46C5CA
46C594:  LDRB            R2, [R5,R0]
46C596:  CMP             R2, #0x6F ; 'o'
46C598:  ITT EQ
46C59A:  LDRBEQ          R2, [R1,#1]
46C59C:  CMPEQ           R2, #0x6C ; 'l'
46C59E:  BEQ             loc_46C5D0
46C5A0:  LDRB            R2, [R5,R0]
46C5A2:  CMP             R2, #0x61 ; 'a'
46C5A4:  BNE             loc_46C5B4
46C5A6:  LDRB            R2, [R1,#1]
46C5A8:  CMP             R2, #0x72 ; 'r'
46C5AA:  ITT EQ
46C5AC:  LDRBEQ          R2, [R1,#2]
46C5AE:  CMPEQ           R2, #0x34 ; '4'
46C5B0:  BEQ.W           loc_46C768
46C5B4:  LDRB            R0, [R5,R0]
46C5B6:  CMP             R0, #0x61 ; 'a'
46C5B8:  BNE             loc_46C5CA
46C5BA:  LDRB            R0, [R1,#1]
46C5BC:  MOV.W           R9, #0
46C5C0:  CMP             R0, #0x72 ; 'r'
46C5C2:  IT EQ
46C5C4:  MOVEQ.W         R9, #2
46C5C8:  B               loc_46C76C
46C5CA:  MOV.W           R9, #0
46C5CE:  B               loc_46C76C
46C5D0:  MOV.W           R9, #1
46C5D4:  B               loc_46C76C
46C5D6:  LDR             R0, [SP,#0x5F0+var_4F8]
46C5D8:  ADD.W           R11, SP, #0x5F0+var_460
46C5DC:  STR             R0, [SP,#0x5F0+var_590]
46C5DE:  ADD             R3, SP, #0x5F0+var_4EC
46C5E0:  LDR             R0, [SP,#0x5F0+var_540]
46C5E2:  MOV             R2, R11
46C5E4:  STR             R0, [SP,#0x5F0+var_58C]
46C5E6:  LDR             R0, [SP,#0x5F0+var_53C]
46C5E8:  STR             R0, [SP,#0x5F0+var_588]
46C5EA:  LDR             R0, [SP,#0x5F0+var_4F4]
46C5EC:  STR             R0, [SP,#0x5F0+var_584]
46C5EE:  LDR             R0, [SP,#0x5F0+var_4F0]
46C5F0:  STR             R0, [SP,#0x5F0+var_580]
46C5F2:  LDR             R0, [SP,#0x5F0+var_538]
46C5F4:  STR             R0, [SP,#0x5F0+var_57C]
46C5F6:  LDR             R0, [SP,#0x5F0+var_534]
46C5F8:  STR             R0, [SP,#0x5F0+var_578]
46C5FA:  LDR             R0, [SP,#0x5F0+var_508]
46C5FC:  STR             R0, [SP,#0x5F0+var_5B0]
46C5FE:  LDR             R0, [SP,#0x5F0+var_550]
46C600:  STR             R0, [SP,#0x5F0+var_5AC]
46C602:  LDR             R0, [SP,#0x5F0+var_54C]
46C604:  STR             R0, [SP,#0x5F0+var_5A8]
46C606:  LDR             R0, [SP,#0x5F0+var_504]
46C608:  STR             R0, [SP,#0x5F0+var_5A4]
46C60A:  LDR             R0, [SP,#0x5F0+var_500]
46C60C:  STR             R0, [SP,#0x5F0+var_5A0]
46C60E:  LDR             R0, [SP,#0x5F0+var_548]
46C610:  STR             R0, [SP,#0x5F0+var_59C]
46C612:  LDR             R0, [SP,#0x5F0+var_544]
46C614:  STR             R0, [SP,#0x5F0+var_598]
46C616:  LDR             R0, [SP,#0x5F0+var_4FC]
46C618:  STR             R0, [SP,#0x5F0+var_594]
46C61A:  LDR             R0, [SP,#0x5F0+var_51C]
46C61C:  STR             R0, [SP,#0x5F0+var_5D0]
46C61E:  LDR             R0, [SP,#0x5F0+var_560]
46C620:  STR             R0, [SP,#0x5F0+var_5CC]
46C622:  LDR             R0, [SP,#0x5F0+var_55C]
46C624:  STR             R0, [SP,#0x5F0+var_5C8]
46C626:  LDR             R0, [SP,#0x5F0+var_518]
46C628:  STR             R0, [SP,#0x5F0+var_5C4]
46C62A:  LDR             R0, [SP,#0x5F0+var_514]
46C62C:  STR             R0, [SP,#0x5F0+var_5C0]
46C62E:  LDR             R0, [SP,#0x5F0+var_558]
46C630:  STR             R0, [SP,#0x5F0+var_5BC]
46C632:  LDR             R0, [SP,#0x5F0+var_554]
46C634:  STR             R0, [SP,#0x5F0+var_5B8]
46C636:  LDR             R0, [SP,#0x5F0+var_510]
46C638:  STR             R0, [SP,#0x5F0+var_5B4]
46C63A:  LDR             R0, [SP,#0x5F0+var_50C]
46C63C:  STR             R0, [SP,#0x5F0+var_5F0]
46C63E:  LDR.W           R9, [SP,#0x5F0+var_570]
46C642:  LDR             R0, [SP,#0x5F0+var_56C]
46C644:  STR.W           R9, [SP,#0x5F0+var_5EC]
46C648:  STR             R0, [SP,#0x5F0+var_5E8]
46C64A:  LDR             R0, [SP,#0x5F0+var_528]
46C64C:  STR             R0, [SP,#0x5F0+var_5E4]
46C64E:  LDR             R0, [SP,#0x5F0+var_524]
46C650:  LDR             R1, =(aSDDDDDDDDDDDDD_0 - 0x46C65A); "%s %d %d %d %d %d %d %d %d %d %d %d %d "...
46C652:  STR             R0, [SP,#0x5F0+var_5E0]
46C654:  LDR             R0, [SP,#0x5F0+var_568]
46C656:  ADD             R1, PC; "%s %d %d %d %d %d %d %d %d %d %d %d %d "...
46C658:  STR             R0, [SP,#0x5F0+var_5DC]
46C65A:  LDR             R0, [SP,#0x5F0+var_564]
46C65C:  STR             R0, [SP,#0x5F0+var_5D8]
46C65E:  LDR             R0, [SP,#0x5F0+var_520]
46C660:  STR             R0, [SP,#0x5F0+var_5D4]
46C662:  MOV             R0, R5; s
46C664:  BLX             sscanf
46C668:  SUBS            R0, #1
46C66A:  ASRS            R1, R0, #0x1F
46C66C:  ADD.W           R4, R0, R1,LSR#30
46C670:  MOV             R0, R11; this
46C672:  MOVS            R1, #0; char *
46C674:  ASRS            R6, R4, #2
46C676:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
46C67A:  MOVS            R1, #0xFF
46C67C:  TST.W           R1, R4,ASR#2
46C680:  STRB.W          R6, [R0,#0x368]
46C684:  BEQ             loc_46C758
46C686:  LDR             R4, [SP,#0x5F0+var_530]
46C688:  MOVS            R1, #0
46C68A:  MOV             R2, R9
46C68C:  ADDS            R6, R0, R1
46C68E:  LDR.W           R3, [R2,#-8]
46C692:  ADDS            R1, #1
46C694:  MOV.W           R9, #3
46C698:  STRB.W          R3, [R6,#0x348]
46C69C:  LDR.W           R3, [R2,#-4]
46C6A0:  STRB.W          R3, [R6,#0x350]
46C6A4:  LDR             R3, [R2]
46C6A6:  STRB.W          R3, [R6,#0x358]
46C6AA:  LDR             R3, [R2,#4]
46C6AC:  ADDS            R2, #0x10
46C6AE:  STRB.W          R3, [R6,#0x360]
46C6B2:  LDRB.W          R3, [R0,#0x368]
46C6B6:  CMP             R1, R3
46C6B8:  BLT             loc_46C68C
46C6BA:  B               loc_46C76C
46C6BC:  LDR             R0, [SP,#0x5F0+var_508]
46C6BE:  ADD.W           R11, SP, #0x5F0+var_460
46C6C2:  STR             R0, [SP,#0x5F0+var_5D0]
46C6C4:  ADR             R1, aSDDDDDDDDDDDDD; "%s %d %d %d %d %d %d %d %d %d %d %d %d "...
46C6C6:  LDR             R0, [SP,#0x5F0+var_504]
46C6C8:  ADD             R3, SP, #0x5F0+var_4EC
46C6CA:  STR             R0, [SP,#0x5F0+var_5CC]
46C6CC:  MOV             R2, R11
46C6CE:  LDR             R0, [SP,#0x5F0+var_500]
46C6D0:  STR             R0, [SP,#0x5F0+var_5C8]
46C6D2:  LDR             R0, [SP,#0x5F0+var_4FC]
46C6D4:  STR             R0, [SP,#0x5F0+var_5C4]
46C6D6:  LDR             R0, [SP,#0x5F0+var_4F8]
46C6D8:  STR             R0, [SP,#0x5F0+var_5C0]
46C6DA:  LDR             R0, [SP,#0x5F0+var_4F4]
46C6DC:  STR             R0, [SP,#0x5F0+var_5BC]
46C6DE:  LDR             R0, [SP,#0x5F0+var_4F0]
46C6E0:  STR             R0, [SP,#0x5F0+var_5B8]
46C6E2:  LDR.W           R9, [SP,#0x5F0+var_50C]
46C6E6:  LDR             R0, [SP,#0x5F0+var_528]
46C6E8:  STR.W           R9, [SP,#0x5F0+var_5F0]
46C6EC:  STR             R0, [SP,#0x5F0+var_5EC]
46C6EE:  LDR             R0, [SP,#0x5F0+var_524]
46C6F0:  STR             R0, [SP,#0x5F0+var_5E8]
46C6F2:  LDR             R0, [SP,#0x5F0+var_520]
46C6F4:  STR             R0, [SP,#0x5F0+var_5E4]
46C6F6:  LDR             R0, [SP,#0x5F0+var_51C]
46C6F8:  STR             R0, [SP,#0x5F0+var_5E0]
46C6FA:  LDR             R0, [SP,#0x5F0+var_518]
46C6FC:  STR             R0, [SP,#0x5F0+var_5DC]
46C6FE:  LDR             R0, [SP,#0x5F0+var_514]
46C700:  STR             R0, [SP,#0x5F0+var_5D8]
46C702:  LDR             R0, [SP,#0x5F0+var_510]
46C704:  STR             R0, [SP,#0x5F0+var_5D4]
46C706:  MOV             R0, R5; s
46C708:  BLX             sscanf
46C70C:  SUBS            R0, #1
46C70E:  MOVS            R1, #0; char *
46C710:  ADD.W           R6, R0, R0,LSR#31
46C714:  MOV             R0, R11; this
46C716:  ASRS            R4, R6, #1
46C718:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
46C71C:  MOVS            R1, #0xFF
46C71E:  TST.W           R1, R6,ASR#1
46C722:  STRB.W          R4, [R0,#0x368]
46C726:  BEQ             loc_46C760
46C728:  LDR             R4, [SP,#0x5F0+var_530]
46C72A:  MOVS            R1, #0
46C72C:  MOV             R2, R9
46C72E:  ADDS            R6, R0, R1
46C730:  LDR.W           R3, [R2,#-4]
46C734:  ADDS            R1, #1
46C736:  MOV.W           R9, #2
46C73A:  STRB.W          R3, [R6,#0x348]
46C73E:  LDR             R3, [R2]
46C740:  ADDS            R2, #0x10
46C742:  STRB.W          R10, [R6,#0x358]
46C746:  STRB.W          R3, [R6,#0x350]
46C74A:  STRB.W          R10, [R6,#0x360]
46C74E:  LDRB.W          R3, [R0,#0x368]
46C752:  CMP             R1, R3
46C754:  BLT             loc_46C72E
46C756:  B               loc_46C76C
46C758:  MOV.W           R9, #3
46C75C:  LDR             R4, [SP,#0x5F0+var_530]
46C75E:  B               loc_46C76C
46C760:  MOV.W           R9, #2
46C764:  LDR             R4, [SP,#0x5F0+var_530]
46C766:  B               loc_46C76C
46C768:  MOV.W           R9, #3
46C76C:  MOV             R0, R4; this
46C76E:  MOV             R1, R5; unsigned int
46C770:  MOV.W           R2, #(elf_hash_bucket+0x304); char *
46C774:  BLX             j__ZN8CFileMgr8ReadLineEjPci; CFileMgr::ReadLine(uint,char *,int)
46C778:  CMP             R0, #0
46C77A:  BNE.W           loc_46C4CE
46C77E:  MOV             R0, R4; this
46C780:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
46C784:  LDR             R0, =(__stack_chk_guard_ptr - 0x46C78E)
46C786:  LDR.W           R1, [R7,#var_20]
46C78A:  ADD             R0, PC; __stack_chk_guard_ptr
46C78C:  LDR             R0, [R0]; __stack_chk_guard
46C78E:  LDR             R0, [R0]
46C790:  SUBS            R0, R0, R1
46C792:  ITTTT EQ
46C794:  ADDEQ.W         SP, SP, #0x5D0
46C798:  ADDEQ           SP, SP, #4
46C79A:  POPEQ.W         {R8-R11}
46C79E:  POPEQ           {R4-R7,PC}
46C7A0:  BLX             __stack_chk_fail
