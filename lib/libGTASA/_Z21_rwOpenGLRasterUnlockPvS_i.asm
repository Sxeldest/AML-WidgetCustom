; =========================================================
; Game Engine Function: _Z21_rwOpenGLRasterUnlockPvS_i
; Address            : 0x1AE364 - 0x1AE7CC
; =========================================================

1AE364:  PUSH            {R4-R7,LR}
1AE366:  ADD             R7, SP, #0xC
1AE368:  PUSH.W          {R8-R11}
1AE36C:  SUB             SP, SP, #0x8C
1AE36E:  MOV             R10, R1
1AE370:  MOV             R0, R10
1AE372:  MOV             R5, R0
1AE374:  LDR             R0, [R5]
1AE376:  CMP             R5, R0
1AE378:  BNE             loc_1AE372
1AE37A:  LDRB.W          R0, [R10,#0x20]
1AE37E:  AND.W           R0, R0, #7
1AE382:  SUBS            R1, R0, #4
1AE384:  CMP             R1, #2
1AE386:  BCC             loc_1AE454
1AE388:  CMP             R0, #0
1AE38A:  BEQ             loc_1AE454
1AE38C:  CMP             R0, #2
1AE38E:  BNE.W           loc_1AE7C2
1AE392:  LDR             R0, [R5,#4]
1AE394:  CMP             R0, #0
1AE396:  ITT NE
1AE398:  LDRNE.W         R0, [R10,#4]
1AE39C:  CMPNE           R0, #0
1AE39E:  BEQ.W           loc_1AE7BE
1AE3A2:  BLX             j__Z30_rwOpenGLGetEngineWindowHeightv; _rwOpenGLGetEngineWindowHeight(void)
1AE3A6:  LDR.W           R0, =(RasterExtOffset_ptr - 0x1AE3B8)
1AE3AA:  MOVS            R1, #0; int
1AE3AC:  LDRD.W          R2, R3, [R5,#0xC]; unsigned int
1AE3B0:  MOV.W           R9, #0
1AE3B4:  ADD             R0, PC; RasterExtOffset_ptr
1AE3B6:  LDR             R0, [R0]; RasterExtOffset
1AE3B8:  LDR.W           R8, [R0]
1AE3BC:  MOVS            R0, #0; this
1AE3BE:  BLX             j__Z14emu_glViewportiiii; emu_glViewport(int,int,int,int)
1AE3C2:  MOVW            R0, #0x1701; unsigned int
1AE3C6:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1AE3CA:  BLX             j__Z18emu_glLoadIdentityv; emu_glLoadIdentity(void)
1AE3CE:  VLDR            S0, [R5,#0xC]
1AE3D2:  VMOV.I32        D17, #0
1AE3D6:  VLDR            S2, [R5,#0x10]
1AE3DA:  MOVS            R4, #0
1AE3DC:  VCVT.F64.S32    D16, S0
1AE3E0:  MOVW            R12, #0
1AE3E4:  MOVT            R4, #0xBFF0
1AE3E8:  MOVT            R12, #0x3FF0
1AE3EC:  VMOV            R2, R3, D16; double
1AE3F0:  VMOV            R0, R1, D17; double
1AE3F4:  VCVT.F64.S32    D16, S2
1AE3F8:  STRD.W          R9, R9, [SP,#0xA8+var_A8]; double
1AE3FC:  STRD.W          R9, R4, [SP,#0xA8+var_98]; double
1AE400:  STRD.W          R9, R12, [SP,#0xA8+var_90]; double
1AE404:  VSTR            D16, [SP,#0xA8+var_A0]
1AE408:  BLX             j__Z11emu_glOrthodddddd; emu_glOrtho(double,double,double,double,double,double)
1AE40C:  MOVW            R0, #0x1703; unsigned int
1AE410:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1AE414:  BLX             j__Z18emu_glLoadIdentityv; emu_glLoadIdentity(void)
1AE418:  MOV.W           R0, #0x1700; unsigned int
1AE41C:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1AE420:  ADD.W           R4, R5, R8
1AE424:  BLX             j__Z18emu_glLoadIdentityv; emu_glLoadIdentity(void)
1AE428:  CMP             R5, R10
1AE42A:  IT NE
1AE42C:  STRNE.W         R9, [R10,#4]
1AE430:  LDR             R0, [R4,#0x10]
1AE432:  SUBS            R0, #1
1AE434:  STR             R0, [R4,#0x10]
1AE436:  BNE             loc_1AE44A
1AE438:  LDR             R0, =(dgGGlobals_ptr - 0x1AE43E)
1AE43A:  ADD             R0, PC; dgGGlobals_ptr
1AE43C:  LDR             R0, [R0]; dgGGlobals
1AE43E:  LDR             R1, [R0,#(dword_6B31F8 - 0x6B31F4)]
1AE440:  LDR             R0, [R5,#4]
1AE442:  LDR             R1, [R1,#4]
1AE444:  BLX             R1
1AE446:  MOVS            R0, #0
1AE448:  STR             R0, [R5,#4]
1AE44A:  LDRH.W          R0, [R10,#0x30]
1AE44E:  BIC.W           R0, R0, #6
1AE452:  B               loc_1AE7BA
1AE454:  LDR.W           R0, [R10]
1AE458:  CMP             R0, R10
1AE45A:  BNE.W           loc_1AE7BE
1AE45E:  LDR.W           R2, [R10,#4]
1AE462:  CMP             R2, #0
1AE464:  BEQ.W           loc_1AE7BE
1AE468:  LDRB.W          R0, [R10,#0x30]
1AE46C:  LSLS            R0, R0, #0x1D
1AE46E:  BPL.W           loc_1AE7AA
1AE472:  LDR             R0, =(RasterExtOffset_ptr - 0x1AE47E)
1AE474:  MOVS            R4, #0
1AE476:  LDRB.W          R3, [R10,#0x22]
1AE47A:  ADD             R0, PC; RasterExtOffset_ptr
1AE47C:  LDR             R0, [R0]; RasterExtOffset
1AE47E:  LDR.W           R8, [R0]
1AE482:  MOV.W           R0, #0xF00
1AE486:  AND.W           R0, R0, R3,LSL#8
1AE48A:  SUB.W           R1, R0, #0x100
1AE48E:  LSRS            R0, R1, #8
1AE490:  CMP             R0, #5
1AE492:  MOV.W           R0, #0
1AE496:  BHI             loc_1AE4A0
1AE498:  LDR             R0, =(unk_5E87B0 - 0x1AE4A0)
1AE49A:  ASRS            R1, R1, #6
1AE49C:  ADD             R0, PC; unk_5E87B0
1AE49E:  LDR             R0, [R0,R1]
1AE4A0:  LDR.W           R1, [R10,R8]
1AE4A4:  CMP             R0, #2
1AE4A6:  AND.W           R3, R3, #0x10
1AE4AA:  IT CC
1AE4AC:  MOVCC           R4, #1
1AE4AE:  CMP             R1, #0
1AE4B0:  AND.W           R4, R4, R3,LSR#4
1AE4B4:  BEQ             loc_1AE4BC
1AE4B6:  LDR             R3, [R1,#0x10]
1AE4B8:  CMP             R3, R0
1AE4BA:  BEQ             loc_1AE4DC
1AE4BC:  LDRD.W          R1, R2, [R10,#0xC]
1AE4C0:  MOV             R3, R4
1AE4C2:  BLX             j__ZN9RQTexture6CreateE15RQTextureFormatjjb; RQTexture::Create(RQTextureFormat,uint,uint,bool)
1AE4C6:  STR.W           R0, [R10,R8]
1AE4CA:  MOVS            R2, #0
1AE4CC:  LDR             R1, [R0]
1AE4CE:  LDR             R3, [R1,#0xC]
1AE4D0:  MOVS            R1, #0
1AE4D2:  BLX             R3
1AE4D4:  LDR.W           R1, [R10,R8]
1AE4D8:  LDR.W           R2, [R10,#4]
1AE4DC:  LDR             R0, [R1]
1AE4DE:  LDR             R3, [R0,#0x14]
1AE4E0:  MOV             R0, R1
1AE4E2:  MOVS            R1, #0
1AE4E4:  BLX             R3
1AE4E6:  CMP             R4, #1
1AE4E8:  BNE.W           loc_1AE78A
1AE4EC:  LDRD.W          R1, R4, [R10,#0xC]
1AE4F0:  ADDS            R0, R1, R4
1AE4F2:  CMP             R0, #3
1AE4F4:  BLT.W           loc_1AE78A
1AE4F8:  MOVS            R6, #0
1AE4FA:  STR.W           R10, [SP,#0xA8+var_48]
1AE4FE:  STR.W           R8, [SP,#0xA8+var_84]
1AE502:  MOV             R0, R4
1AE504:  MOV             R5, R1
1AE506:  MOVS            R1, #0
1AE508:  CMP.W           R1, R0,ASR#1
1AE50C:  MOV.W           R4, #1
1AE510:  IT NE
1AE512:  ASRNE           R4, R0, #1
1AE514:  LDR.W           R0, [R10,R8]; this
1AE518:  CMP.W           R1, R5,ASR#1
1AE51C:  MOV.W           R1, #1
1AE520:  IT NE
1AE522:  ASRNE           R1, R5, #1
1AE524:  STR             R1, [SP,#0xA8+var_20]
1AE526:  BLX             j__ZNK9RQTexture16GetNumComponentsEv; RQTexture::GetNumComponents(void)
1AE52A:  CMP             R0, #4
1AE52C:  ADD.W           R6, R6, #1
1AE530:  STR             R4, [SP,#0xA8+var_50]
1AE532:  STR             R6, [SP,#0xA8+var_80]
1AE534:  BNE.W           loc_1AE676
1AE538:  LDR             R3, [SP,#0xA8+var_20]
1AE53A:  CMP             R4, #1
1AE53C:  BLT.W           loc_1AE766
1AE540:  LDR             R0, [SP,#0xA8+var_48]
1AE542:  LDR             R0, [R0,#4]
1AE544:  STR             R0, [SP,#0xA8+var_60]
1AE546:  ADD.W           R0, R0, R5,LSL#2
1AE54A:  STR             R0, [SP,#0xA8+var_64]
1AE54C:  ADDS            R1, R0, #5
1AE54E:  STR             R1, [SP,#0xA8+var_68]
1AE550:  ADDS            R1, R0, #6
1AE552:  STR             R1, [SP,#0xA8+var_6C]
1AE554:  ADDS            R1, R0, #4
1AE556:  STR             R1, [SP,#0xA8+var_70]
1AE558:  ADDS            R1, R0, #1
1AE55A:  STR             R1, [SP,#0xA8+var_74]
1AE55C:  LSLS            R1, R5, #3
1AE55E:  MOVS            R5, #0
1AE560:  STR             R1, [SP,#0xA8+var_58]
1AE562:  LSLS            R1, R3, #2
1AE564:  STR             R1, [SP,#0xA8+var_5C]
1AE566:  MOVS            R1, #0
1AE568:  STR             R1, [SP,#0xA8+var_4C]
1AE56A:  ADDS            R1, R0, #2
1AE56C:  ADDS            R0, #3
1AE56E:  STR             R0, [SP,#0xA8+var_7C]
1AE570:  MOVS            R0, #0
1AE572:  STR             R1, [SP,#0xA8+var_78]
1AE574:  MOVW            R9, #:lower16:(elf_hash_chain+0xFD98)
1AE578:  MOVW            R11, #0
1AE57C:  CMP             R3, #1
1AE57E:  MOVT            R9, #:upper16:(elf_hash_chain+0xFD98)
1AE582:  MOVT            R11, #0x1FF
1AE586:  STR             R0, [SP,#0xA8+var_54]
1AE588:  BLT             loc_1AE65C
1AE58A:  LDR             R0, [SP,#0xA8+var_60]
1AE58C:  MOVS            R2, #0
1AE58E:  LDR             R1, [SP,#0xA8+var_4C]
1AE590:  MOVS            R6, #7
1AE592:  STR             R5, [SP,#0xA8+var_2C]
1AE594:  ADD             R0, R1
1AE596:  STR             R0, [SP,#0xA8+var_28]
1AE598:  LDR             R0, [SP,#0xA8+var_68]
1AE59A:  ADD             R0, R1
1AE59C:  STR             R0, [SP,#0xA8+var_24]
1AE59E:  LDR             R0, [SP,#0xA8+var_6C]
1AE5A0:  ADD             R0, R1
1AE5A2:  STR             R0, [SP,#0xA8+var_30]
1AE5A4:  LDR             R0, [SP,#0xA8+var_64]
1AE5A6:  ADD             R0, R1
1AE5A8:  STR             R0, [SP,#0xA8+var_38]
1AE5AA:  LDR             R0, [SP,#0xA8+var_70]
1AE5AC:  ADD             R0, R1
1AE5AE:  STR             R0, [SP,#0xA8+var_34]
1AE5B0:  LDR             R0, [SP,#0xA8+var_74]
1AE5B2:  ADD             R0, R1
1AE5B4:  STR             R0, [SP,#0xA8+var_3C]
1AE5B6:  LDR             R0, [SP,#0xA8+var_78]
1AE5B8:  ADD             R0, R1
1AE5BA:  STR             R0, [SP,#0xA8+var_40]
1AE5BC:  LDR             R0, [SP,#0xA8+var_7C]
1AE5BE:  ADD             R0, R1
1AE5C0:  STR             R0, [SP,#0xA8+var_44]
1AE5C2:  LDR.W           R12, [SP,#0xA8+var_28]
1AE5C6:  LDR             R4, [SP,#0xA8+var_38]
1AE5C8:  ADD.W           R1, R12, R2,LSL#3
1AE5CC:  ADD.W           LR, R12, R6
1AE5D0:  LDRB.W          R5, [LR,#-7]
1AE5D4:  LDRB            R3, [R1,#4]
1AE5D6:  LDRB            R0, [R1,#1]
1AE5D8:  ADD             R3, R5
1AE5DA:  ADDS            R5, R4, R6
1AE5DC:  LDRB.W          LR, [R1,#2]
1AE5E0:  LDRB.W          R5, [R5,#-7]
1AE5E4:  LDRB.W          R10, [R1,#3]
1AE5E8:  ADD             R3, R5
1AE5EA:  LDR             R5, [SP,#0xA8+var_34]
1AE5EC:  LDRB.W          R8, [R4,R6]
1AE5F0:  LDRB.W          R5, [R5,R2,LSL#3]
1AE5F4:  ADD             R3, R5
1AE5F6:  LDRB            R5, [R1,#5]
1AE5F8:  LDRB            R1, [R1,#6]
1AE5FA:  ADD             R0, R5
1AE5FC:  LDR             R5, [SP,#0xA8+var_3C]
1AE5FE:  ADD             R1, LR
1AE600:  MOV.W           LR, #0xFF000000
1AE604:  LDRB.W          R5, [R5,R2,LSL#3]
1AE608:  ADD             R0, R5
1AE60A:  LDR             R5, [SP,#0xA8+var_24]
1AE60C:  LDRB.W          R5, [R5,R2,LSL#3]
1AE610:  ADD             R0, R5
1AE612:  LDR             R5, [SP,#0xA8+var_40]
1AE614:  AND.W           R0, R9, R0,LSL#6
1AE618:  LDRB.W          R4, [R5,R2,LSL#3]
1AE61C:  ORR.W           R0, R0, R3,LSR#2
1AE620:  LDR             R5, [SP,#0xA8+var_30]
1AE622:  LDR             R3, [SP,#0xA8+var_44]
1AE624:  ADD             R1, R4
1AE626:  LDRB.W          R4, [R5,R2,LSL#3]
1AE62A:  LDRB.W          R3, [R3,R2,LSL#3]
1AE62E:  LDR             R5, [SP,#0xA8+var_2C]
1AE630:  ADD             R1, R4
1AE632:  LDRB.W          R4, [R12,R6]
1AE636:  ADDS            R6, #8
1AE638:  AND.W           R1, R11, R1,LSL#14
1AE63C:  ADD             R4, R10
1AE63E:  ORRS            R0, R1
1AE640:  LDR             R1, [SP,#0xA8+var_48]
1AE642:  ADD             R3, R4
1AE644:  ADD             R3, R8
1AE646:  LDR             R1, [R1,#4]
1AE648:  AND.W           R3, LR, R3,LSL#22
1AE64C:  ADD             R1, R5
1AE64E:  ORRS            R0, R3
1AE650:  LDR             R3, [SP,#0xA8+var_20]
1AE652:  STR.W           R0, [R1,R2,LSL#2]
1AE656:  ADDS            R2, #1
1AE658:  CMP             R2, R3
1AE65A:  BLT             loc_1AE5C2
1AE65C:  LDR             R0, [SP,#0xA8+var_58]
1AE65E:  LDR             R1, [SP,#0xA8+var_4C]
1AE660:  LDR             R4, [SP,#0xA8+var_50]
1AE662:  ADD             R1, R0
1AE664:  LDR             R0, [SP,#0xA8+var_5C]
1AE666:  STR             R1, [SP,#0xA8+var_4C]
1AE668:  ADD             R5, R0
1AE66A:  LDR             R0, [SP,#0xA8+var_54]
1AE66C:  ADDS            R0, #1
1AE66E:  CMP             R0, R4
1AE670:  BLT.W           loc_1AE574
1AE674:  B               loc_1AE766
1AE676:  LDR             R3, [SP,#0xA8+var_20]
1AE678:  CMP             R4, #1
1AE67A:  BLT             loc_1AE766
1AE67C:  LDR             R0, [SP,#0xA8+var_48]
1AE67E:  LDR             R1, [R0,#4]
1AE680:  ADD.W           R0, R5, R5,LSL#1
1AE684:  STR             R1, [SP,#0xA8+var_58]
1AE686:  ADD             R1, R0
1AE688:  LSLS            R0, R0, #1
1AE68A:  STR             R0, [SP,#0xA8+var_54]
1AE68C:  MOVS            R0, #0
1AE68E:  STR             R0, [SP,#0xA8+var_3C]
1AE690:  MOVS            R0, #0
1AE692:  STR             R0, [SP,#0xA8+var_40]
1AE694:  MOVS            R0, #0
1AE696:  STR             R1, [SP,#0xA8+var_5C]
1AE698:  ADD.W           R1, R3, R3,LSL#1
1AE69C:  STR             R1, [SP,#0xA8+var_4C]
1AE69E:  MOVW            R9, #:lower16:(elf_hash_chain+0xFD98)
1AE6A2:  CMP             R3, #1
1AE6A4:  MOVT            R9, #:upper16:(elf_hash_chain+0xFD98)
1AE6A8:  STR             R0, [SP,#0xA8+var_44]
1AE6AA:  BLT             loc_1AE74C
1AE6AC:  LDR             R0, [SP,#0xA8+var_5C]
1AE6AE:  MOVS            R2, #0
1AE6B0:  LDR             R1, [SP,#0xA8+var_3C]
1AE6B2:  MOV.W           R12, #0
1AE6B6:  ADD             R0, R1
1AE6B8:  STR             R0, [SP,#0xA8+var_30]
1AE6BA:  LDR             R0, [SP,#0xA8+var_58]
1AE6BC:  ADD             R1, R0
1AE6BE:  STR             R1, [SP,#0xA8+var_34]
1AE6C0:  LDR             R1, [SP,#0xA8+var_40]
1AE6C2:  ADD             R0, R1
1AE6C4:  MOVS            R1, #0
1AE6C6:  STR             R0, [SP,#0xA8+var_38]
1AE6C8:  LDR             R5, [SP,#0xA8+var_30]
1AE6CA:  ADD.W           R12, R12, #1
1AE6CE:  LDR             R0, [SP,#0xA8+var_34]
1AE6D0:  ADD.W           LR, R5, R2
1AE6D4:  ADD.W           R10, R0, R1,LSL#1
1AE6D8:  LDRB.W          R4, [LR,#5]
1AE6DC:  LDRB            R6, [R0,R2]
1AE6DE:  STR             R4, [SP,#0xA8+var_24]
1AE6E0:  LDRB.W          R4, [LR,#2]
1AE6E4:  STR             R4, [SP,#0xA8+var_28]
1AE6E6:  LDRB.W          R4, [R10,#2]
1AE6EA:  LDRB.W          R11, [R10,#1]
1AE6EE:  STR             R4, [SP,#0xA8+var_2C]
1AE6F0:  LDRB.W          R4, [R10,#3]
1AE6F4:  LDRB            R5, [R5,R2]
1AE6F6:  ADD             R4, R6
1AE6F8:  ADD             R4, R5
1AE6FA:  LDRB.W          R5, [LR,#3]
1AE6FE:  LDRB.W          R8, [R10,#4]
1AE702:  LDRB.W          R6, [LR,#4]
1AE706:  ADD             R4, R5
1AE708:  LDRB.W          LR, [LR,#1]
1AE70C:  ADDS            R5, R0, R2
1AE70E:  ADD.W           R0, R8, R11
1AE712:  LSRS            R3, R4, #2
1AE714:  ADD             R0, LR
1AE716:  LDRB.W          R10, [R5,#5]
1AE71A:  ADD             R0, R6
1AE71C:  LDR             R5, [SP,#0xA8+var_38]
1AE71E:  ADDS            R2, #6
1AE720:  AND.W           R0, R9, R0,LSL#6
1AE724:  ORR.W           R0, R0, R4,LSR#2
1AE728:  STRB            R3, [R5,R1]
1AE72A:  ADDS            R3, R5, R1
1AE72C:  LSRS            R6, R0, #8
1AE72E:  ADDS            R1, #3
1AE730:  STRB            R6, [R3,#1]
1AE732:  LDR             R6, [SP,#0xA8+var_2C]
1AE734:  LDR             R5, [SP,#0xA8+var_28]
1AE736:  ADD             R6, R10
1AE738:  ADD             R6, R5
1AE73A:  LDR             R5, [SP,#0xA8+var_24]
1AE73C:  ADD             R6, R5
1AE73E:  ORR.W           R0, R0, R6,LSL#14
1AE742:  LSRS            R0, R0, #0x10
1AE744:  STRB            R0, [R3,#2]
1AE746:  LDR             R3, [SP,#0xA8+var_20]
1AE748:  CMP             R12, R3
1AE74A:  BLT             loc_1AE6C8
1AE74C:  LDR             R0, [SP,#0xA8+var_54]
1AE74E:  LDR             R1, [SP,#0xA8+var_3C]
1AE750:  LDR             R4, [SP,#0xA8+var_50]
1AE752:  ADD             R1, R0
1AE754:  STR             R1, [SP,#0xA8+var_3C]
1AE756:  LDR             R0, [SP,#0xA8+var_4C]
1AE758:  LDR             R1, [SP,#0xA8+var_40]
1AE75A:  ADD             R1, R0
1AE75C:  LDR             R0, [SP,#0xA8+var_44]
1AE75E:  STR             R1, [SP,#0xA8+var_40]
1AE760:  ADDS            R0, #1
1AE762:  CMP             R0, R4
1AE764:  BLT             loc_1AE69E
1AE766:  LDR.W           R10, [SP,#0xA8+var_48]
1AE76A:  LDR.W           R8, [SP,#0xA8+var_84]
1AE76E:  LDR             R6, [SP,#0xA8+var_80]
1AE770:  LDR.W           R2, [R10,#4]
1AE774:  LDR.W           R0, [R10,R8]
1AE778:  LDR             R1, [R0]
1AE77A:  LDR             R3, [R1,#0x14]
1AE77C:  MOV             R1, R6
1AE77E:  BLX             R3
1AE780:  LDR             R1, [SP,#0xA8+var_20]
1AE782:  ADDS            R0, R1, R4
1AE784:  CMP             R0, #2
1AE786:  BGT.W           loc_1AE502
1AE78A:  LDR.W           R0, [R10,#4]
1AE78E:  CBZ             R0, loc_1AE7AA
1AE790:  LDRB.W          R1, [R10,#0x31]
1AE794:  LSLS            R1, R1, #0x1F
1AE796:  BNE             loc_1AE7AA
1AE798:  LDR             R1, =(dgGGlobals_ptr - 0x1AE79E)
1AE79A:  ADD             R1, PC; dgGGlobals_ptr
1AE79C:  LDR             R1, [R1]; dgGGlobals
1AE79E:  LDR             R1, [R1,#(dword_6B31F8 - 0x6B31F4)]
1AE7A0:  LDR             R1, [R1,#4]
1AE7A2:  BLX             R1
1AE7A4:  MOVS            R0, #0
1AE7A6:  STR.W           R0, [R10,#4]
1AE7AA:  LDRD.W          R0, R1, [R10,#0x24]
1AE7AE:  LDRH.W          R2, [R10,#0x30]
1AE7B2:  STRD.W          R0, R1, [R10,#0xC]
1AE7B6:  BIC.W           R0, R2, #6
1AE7BA:  STRH.W          R0, [R10,#0x30]
1AE7BE:  MOVS            R0, #1
1AE7C0:  B               loc_1AE7C4
1AE7C2:  MOVS            R0, #0
1AE7C4:  ADD             SP, SP, #0x8C
1AE7C6:  POP.W           {R8-R11}
1AE7CA:  POP             {R4-R7,PC}
