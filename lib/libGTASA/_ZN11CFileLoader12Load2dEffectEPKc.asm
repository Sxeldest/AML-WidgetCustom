; =========================================================
; Game Engine Function: _ZN11CFileLoader12Load2dEffectEPKc
; Address            : 0x46A3A8 - 0x46AA26
; =========================================================

46A3A8:  PUSH            {R4-R7,LR}
46A3AA:  ADD             R7, SP, #0xC
46A3AC:  PUSH.W          {R8-R11}
46A3B0:  SUB.W           SP, SP, #0x22C
46A3B4:  MOV             R4, R0
46A3B6:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x46A3C6)
46A3BA:  ADD.W           R9, SP, #0x248+var_12C
46A3BE:  ADR.W           R1, aDFFFD; "%d %f %f %f %d"
46A3C2:  ADD             R0, PC; __stack_chk_guard_ptr
46A3C4:  ADD             R2, SP, #0x248+var_11C
46A3C6:  ADD             R3, SP, #0x248+var_124
46A3C8:  ADD.W           R8, SP, #0x248+var_120
46A3CC:  LDR             R0, [R0]; __stack_chk_guard
46A3CE:  ADD.W           R10, SP, #0x248+var_128
46A3D2:  LDR             R0, [R0]
46A3D4:  STR             R0, [SP,#0x248+var_20]
46A3D6:  MOV             R0, R4; s
46A3D8:  STRD.W          R10, R9, [SP,#0x248+var_248]
46A3DC:  STR.W           R8, [SP,#0x248+var_240]
46A3E0:  BLX             sscanf
46A3E4:  BLX             j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
46A3E8:  ADR.W           R0, aParticle_1; "particle"
46A3EC:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
46A3F0:  MOVS            R1, #0; int
46A3F2:  BLX             j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
46A3F6:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x46A400)
46A3FA:  LDR             R1, [SP,#0x248+var_11C]
46A3FC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
46A3FE:  LDR             R0, [R0]; this
46A400:  LDR.W           R5, [R0,R1,LSL#2]
46A404:  BLX             j__ZN10CModelInfo16Get2dEffectStoreEv; CModelInfo::Get2dEffectStore(void)
46A408:  LDR             R1, [R0]
46A40A:  ADDS            R2, R1, #1
46A40C:  STR             R2, [R0]
46A40E:  ADD.W           R6, R0, R1,LSL#6
46A412:  MOV             R0, R5
46A414:  ADDS            R1, R6, #4
46A416:  BLX             j__ZN14CBaseModelInfo11Add2dEffectEP9C2dEffect; CBaseModelInfo::Add2dEffect(C2dEffect *)
46A41A:  LDR             R0, [SP,#0x248+var_124]
46A41C:  ADDS            R3, R6, #4
46A41E:  LDRD.W          R2, R1, [SP,#0x248+var_12C]
46A422:  STM             R3!, {R0-R2}
46A424:  LDR             R0, [SP,#0x248+var_120]
46A426:  STRB            R0, [R6,#0x10]
46A428:  CMP             R0, #0xA; switch 11 cases
46A42A:  BHI.W           def_46A42E; jumptable 0046A42E default case, cases 2,4
46A42E:  TBH.W           [PC,R0,LSL#1]; switch jump
46A432:  DCW 0xB; jump table for switch statement
46A434:  DCW 0xFA
46A436:  DCW 0x2EA
46A438:  DCW 0x3F
46A43A:  DCW 0x2EA
46A43C:  DCW 0x108
46A43E:  DCW 0x1F1
46A440:  DCW 0x82
46A442:  DCW 0x22A
46A444:  DCW 0x238
46A446:  DCW 0x24E
46A448:  LDR.W           R1, =(aDFFFDDDDD - 0x46A45A); jumptable 0046A42E case 0
46A44C:  ADD             R2, SP, #0x248+var_144
46A44E:  ADD             R5, SP, #0x248+var_13C
46A450:  ADD             R3, SP, #0x248+var_140
46A452:  STRD.W          R10, R9, [SP,#0x248+var_248]
46A456:  ADD             R1, PC; "%d %f %f %f %d %d %d %d %d"
46A458:  STRD.W          R8, R5, [SP,#0x248+var_240]
46A45C:  ADD             R0, SP, #0x248+var_148
46A45E:  STRD.W          R3, R2, [SP,#0x248+var_238]
46A462:  ADD             R2, SP, #0x248+var_11C
46A464:  ADD             R3, SP, #0x248+var_124
46A466:  STR             R0, [SP,#0x248+var_230]
46A468:  MOV             R0, R4; s
46A46A:  BLX             sscanf
46A46E:  ADDS            R1, R4, #1
46A470:  LDRB.W          R0, [R1,#-1]
46A474:  ADDS            R1, #1
46A476:  CMP             R0, #0x22 ; '"'
46A478:  BNE             loc_46A470
46A47A:  LDRB.W          R2, [R1,#-1]
46A47E:  ADD             R0, SP, #0x248+var_118
46A480:  CMP             R2, #0x22 ; '"'
46A482:  BEQ             loc_46A494
46A484:  MOVS            R3, #0
46A486:  STRB            R2, [R0,R3]
46A488:  LDRB            R2, [R1,R3]
46A48A:  ADDS            R3, #1
46A48C:  CMP             R2, #0x22 ; '"'
46A48E:  BNE             loc_46A486
46A490:  ADD             R0, R3
46A492:  ADD             R1, R3
46A494:  MOVS            R2, #0
46A496:  SUBS            R1, #2
46A498:  STRB            R2, [R0]
46A49A:  ADDS            R0, R1, #1
46A49C:  LDRB.W          R1, [R0,#1]!
46A4A0:  CMP             R1, #0x22 ; '"'
46A4A2:  BNE             loc_46A49C
46A4A4:  LDRB            R1, [R0,#1]
46A4A6:  CMP             R1, #0x22 ; '"'
46A4A8:  BNE.W           loc_46A93A
46A4AC:  ADD             R2, SP, #0x248+var_48
46A4AE:  B               loc_46A94C
46A4B0:  ADD             R1, SP, #0x248+var_118; jumptable 0046A42E case 3
46A4B2:  ADD.W           LR, SP, #0x248+var_70
46A4B6:  ADD.W           R5, R6, #0x30 ; '0'
46A4BA:  ADD.W           R2, R6, #0x28 ; '('
46A4BE:  ADD.W           R11, R6, #0x24 ; '$'
46A4C2:  ADD.W           R12, SP, #0x248+var_98
46A4C6:  ADD.W           R3, R6, #0x34 ; '4'
46A4CA:  ADD.W           R0, R6, #0x2C ; ','
46A4CE:  STRD.W          R11, R2, [SP,#0x248+var_228]
46A4D2:  MOV             R11, R1
46A4D4:  STRD.W          R0, R5, [SP,#0x248+var_220]
46A4D8:  ADD.W           R0, R6, #0x20 ; ' '
46A4DC:  STRD.W          R3, LR, [SP,#0x248+var_218]
46A4E0:  ADD.W           R3, R6, #0x18
46A4E4:  STR.W           R12, [SP,#0x248+var_210]
46A4E8:  ADD.W           R12, SP, #0x248+var_48
46A4EC:  LDR.W           R1, =(aDFFFDDFFFFFFFF - 0x46A504); "%d %f %f %f %d %d %f %f %f %f %f %f %f "...
46A4F0:  ADD.W           R2, R6, #0x1C
46A4F4:  STR.W           R11, [SP,#0x248+var_20C]
46A4F8:  ADD.W           R5, R6, #0x14
46A4FC:  STRD.W          R10, R9, [SP,#0x248+var_248]
46A500:  ADD             R1, PC; "%d %f %f %f %d %d %f %f %f %f %f %f %f "...
46A502:  STRD.W          R8, R12, [SP,#0x248+var_240]
46A506:  STRD.W          R5, R3, [SP,#0x248+var_238]
46A50A:  ADD             R3, SP, #0x248+var_124
46A50C:  STRD.W          R2, R0, [SP,#0x248+var_230]
46A510:  ADD             R2, SP, #0x248+var_11C
46A512:  MOV             R0, R4; s
46A514:  BLX             sscanf
46A518:  LDR             R0, [SP,#0x248+var_48]
46A51A:  MOV             R1, R11; char *
46A51C:  STRB.W          R0, [R6,#0x38]
46A520:  ADD.W           R0, R6, #0x3C ; '<'; char *
46A524:  BLX             strcpy
46A528:  LDR             R0, [SP,#0x248+var_70]
46A52A:  STRB.W          R0, [R6,#0x39]
46A52E:  LDR             R0, [SP,#0x248+var_98]
46A530:  STRB.W          R0, [R6,#0x3A]
46A534:  B               def_46A42E; jumptable 0046A42E default case, cases 2,4
46A536:  ADD             R2, SP, #0x248+var_118; jumptable 0046A42E case 7
46A538:  VMOV.I32        Q8, #0
46A53C:  ADD.W           R0, R2, #0x11
46A540:  ADD             R5, SP, #0x248+var_48
46A542:  MOV             R12, R2
46A544:  ADD.W           R11, SP, #0x248+var_70
46A548:  VST1.8          {D16-D17}, [R0]
46A54C:  ORR.W           R0, R2, #1
46A550:  ADD.W           R2, R5, #0x11
46A554:  MOV             R3, R5
46A556:  VST1.8          {D16-D17}, [R0]
46A55A:  MOVS            R0, #0x20 ; ' '
46A55C:  ADD.W           LR, SP, #0x248+var_13C
46A560:  VST1.8          {D16-D17}, [R2]
46A564:  ORR.W           R2, R5, #1
46A568:  ADD             R5, SP, #0x248+var_98
46A56A:  VST1.8          {D16-D17}, [R2]
46A56E:  ADD.W           R2, R11, #0x11
46A572:  VST1.8          {D16-D17}, [R2]
46A576:  ORR.W           R2, R11, #1
46A57A:  VST1.8          {D16-D17}, [R2]
46A57E:  ADD.W           R2, R5, #0x11
46A582:  VST1.8          {D16-D17}, [R2]
46A586:  ORR.W           R2, R5, #1
46A58A:  VST1.8          {D16-D17}, [R2]
46A58E:  ADD             R2, SP, #0x248+var_130
46A590:  LDR.W           R1, =(aDFFFDFFFFFDSSS - 0x46A5A0); "%d %f %f %f %d %f %f %f %f %f %d %s %s "...
46A594:  STRB.W          R0, [SP,#0x248+var_118]
46A598:  STRB.W          R0, [SP,#0x248+var_48]
46A59C:  ADD             R1, PC; "%d %f %f %f %d %f %f %f %f %f %d %s %s "...
46A59E:  STRB.W          R0, [SP,#0x248+var_70]
46A5A2:  STRB.W          R0, [SP,#0x248+var_98]
46A5A6:  ADD             R0, SP, #0x248+var_144
46A5A8:  STRD.W          R0, R12, [SP,#0x248+var_228]
46A5AC:  ADD             R0, SP, #0x248+var_134
46A5AE:  STRD.W          R3, R11, [SP,#0x248+var_220]
46A5B2:  ADD             R3, SP, #0x248+var_138
46A5B4:  STR             R5, [SP,#0x248+var_218]
46A5B6:  ADD.W           R12, SP, #0x248+var_140
46A5BA:  STRD.W          R10, R9, [SP,#0x248+var_248]
46A5BE:  STRD.W          R8, R2, [SP,#0x248+var_240]
46A5C2:  ADD             R2, SP, #0x248+var_238
46A5C4:  STM.W           R2, {R0,R3,LR}
46A5C8:  ADD             R2, SP, #0x248+var_11C
46A5CA:  ADD             R3, SP, #0x248+var_124
46A5CC:  MOV             R0, R4; s
46A5CE:  STR.W           R12, [SP,#0x248+var_22C]
46A5D2:  BLX             sscanf
46A5D6:  LDR             R0, [SP,#0x248+var_130]
46A5D8:  ADD.W           R12, R6, #0x14
46A5DC:  LDRD.W          R2, R1, [SP,#0x248+var_138]; unsigned int
46A5E0:  LDRD.W          R4, R3, [SP,#0x248+var_140]
46A5E4:  STM.W           R12, {R0-R4}
46A5E8:  LDR             R0, [SP,#0x248+var_144]
46A5EA:  STRH            R0, [R6,#0x28]
46A5EC:  MOVS            R0, #0x40 ; '@'; byte_count
46A5EE:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
46A5F2:  STR             R0, [R6,#0x2C]
46A5F4:  ADD             R1, SP, #0x248+var_118
46A5F6:  VLD1.64         {D16-D17}, [R1]
46A5FA:  MOV             R1, R0
46A5FC:  ADD             R2, SP, #0x248+var_48
46A5FE:  VST1.8          {D16-D17}, [R1]!
46A602:  VLD1.64         {D16-D17}, [R2]
46A606:  VST1.8          {D16-D17}, [R1]
46A60A:  ADD.W           R1, R0, #0x20 ; ' '
46A60E:  ADDS            R0, #0x30 ; '0'
46A610:  VLD1.64         {D16-D17}, [R11]
46A614:  VST1.8          {D16-D17}, [R1]
46A618:  VLD1.64         {D16-D17}, [R5]
46A61C:  VST1.8          {D16-D17}, [R0]
46A620:  MOVS            R0, #0
46A622:  STR             R0, [R6,#0x30]
46A624:  B               def_46A42E; jumptable 0046A42E default case, cases 2,4
46A626:  ADD.W           R0, R6, #0x14; jumptable 0046A42E case 1
46A62A:  ADR.W           R1, aDFFFDS; "%d %f %f %f %d %s"
46A62E:  ADD             R2, SP, #0x248+var_11C
46A630:  ADD             R3, SP, #0x248+var_124
46A632:  STRD.W          R10, R9, [SP,#0x248+var_248]
46A636:  STRD.W          R8, R0, [SP,#0x248+var_240]
46A63A:  MOV             R0, R4; s
46A63C:  BLX             sscanf
46A640:  B               def_46A42E; jumptable 0046A42E default case, cases 2,4
46A642:  MOVS            R2, #0x32 ; '2'; jumptable 0046A42E case 5
46A644:  MOV.W           R0, #0xFFFFFFFF
46A648:  STR             R2, [SP,#0x248+var_148]
46A64A:  ADD.W           R11, SP, #0x248+var_48
46A64E:  MOVS            R2, #0
46A650:  ADD.W           R12, SP, #0x248+var_98
46A654:  STR             R0, [SP,#0x248+var_144]
46A656:  ADD.W           R3, R11, #8
46A65A:  STRD.W          R0, R0, [SP,#0x248+var_150]
46A65E:  ADD.W           LR, SP, #0x248+var_70
46A662:  STRD.W          R0, R0, [SP,#0x248+var_158]
46A666:  ADD.W           R5, LR, #8
46A66A:  STRD.W          R0, R0, [SP,#0x248+var_160]
46A66E:  MOV             R1, R8
46A670:  STRD.W          R0, R0, [SP,#0x248+var_168]
46A674:  STRD.W          R0, R0, [SP,#0x248+var_170]
46A678:  STRD.W          R0, R0, [SP,#0x248+var_178]
46A67C:  STR             R2, [SP,#0x248+var_17C]
46A67E:  ADD.W           R2, R12, #8
46A682:  STR             R0, [SP,#0x248+var_110]
46A684:  STRD.W          R0, R0, [SP,#0x248+var_118]
46A688:  STR             R0, [SP,#0x248+var_40]
46A68A:  STRD.W          R0, R0, [SP,#0x248+var_48]
46A68E:  STR             R0, [SP,#0x248+var_68]
46A690:  STRD.W          R0, R0, [SP,#0x248+var_70]
46A694:  STR             R0, [SP,#0x248+var_90]
46A696:  STRD.W          R0, R0, [SP,#0x248+var_98]
46A69A:  ADD             R0, SP, #0x248+var_118
46A69C:  ADD.W           R8, R0, #8
46A6A0:  STRD.W          R8, R3, [SP,#0x248+var_1C8]
46A6A4:  STRD.W          R5, R2, [SP,#0x248+var_1C0]
46A6A8:  ORR.W           R3, LR, #4
46A6AC:  ORR.W           R2, R0, #4
46A6B0:  ORR.W           R8, R12, #4
46A6B4:  STR             R0, [SP,#0x248+var_1E8]
46A6B6:  ORR.W           R5, R11, #4
46A6BA:  STR.W           R11, [SP,#0x248+var_1E4]
46A6BE:  ADD             R0, SP, #0x248+var_168
46A6C0:  STR.W           LR, [SP,#0x248+var_1E0]
46A6C4:  ADD.W           LR, SP, #0x248+var_174
46A6C8:  STRD.W          R12, R2, [SP,#0x248+var_1DC]
46A6CC:  ADD.W           R12, SP, #0x248+var_178
46A6D0:  STRD.W          R5, R3, [SP,#0x248+var_1D4]
46A6D4:  ADD             R3, SP, #0x248+var_160
46A6D6:  STR.W           R8, [SP,#0x248+var_1CC]
46A6DA:  ADD.W           R8, SP, #0x248+var_170
46A6DE:  ADD             R5, SP, #0x248+var_15C
46A6E0:  STRD.W          R5, R3, [SP,#0x248+var_208]
46A6E4:  ADD             R2, SP, #0x248+var_164
46A6E6:  STRD.W          R2, R0, [SP,#0x248+var_200]
46A6EA:  ADD.W           R11, SP, #0x248+var_16C
46A6EE:  STRD.W          R11, R8, [SP,#0x248+var_1F8]
46A6F2:  STRD.W          LR, R12, [SP,#0x248+var_1F0]
46A6F6:  ADD.W           R12, SP, #0x248+var_158
46A6FA:  ADD.W           R8, SP, #0x248+var_150
46A6FE:  ADD             R0, SP, #0x248+var_148
46A700:  ADD             R3, SP, #0x248+var_13C
46A702:  ADD             R5, SP, #0x248+var_140
46A704:  ADD.W           LR, SP, #0x248+var_154
46A708:  ADD             R2, SP, #0x248+var_144
46A70A:  STRD.W          R5, R3, [SP,#0x248+var_228]
46A70E:  ADD.W           R11, SP, #0x248+var_14C
46A712:  STRD.W          R2, R0, [SP,#0x248+var_220]
46A716:  ADD             R5, SP, #0x248+var_130
46A718:  STRD.W          R11, R8, [SP,#0x248+var_218]
46A71C:  ADD             R2, SP, #0x248+var_17C
46A71E:  STRD.W          LR, R12, [SP,#0x248+var_210]
46A722:  ADD.W           LR, SP, #0x248+var_240
46A726:  STRD.W          R10, R9, [SP,#0x248+var_248]
46A72A:  ADD.W           R12, SP, #0x248+var_138
46A72E:  STM.W           LR, {R1,R2,R5}
46A732:  ADD             R3, SP, #0x248+var_134
46A734:  ADD.W           R0, R6, #0x34 ; '4'
46A738:  LDR             R1, =(aDFFFDDFFFFDDDD - 0x46A746); "%d %f %f %f %d %d %f %f %f %f %d %d %d "...
46A73A:  ADD             R2, SP, #0x248+var_11C
46A73C:  STRD.W          R3, R12, [SP,#0x248+var_234]
46A740:  ADD             R3, SP, #0x248+var_124
46A742:  ADD             R1, PC; "%d %f %f %f %d %d %f %f %f %f %d %d %d "...
46A744:  STR             R0, [SP,#0x248+var_22C]
46A746:  MOV             R0, R4; s
46A748:  BLX             sscanf
46A74C:  LDR             R0, [SP,#0x248+var_17C]
46A74E:  STRB            R0, [R6,#0x14]
46A750:  VLDR            S0, [SP,#0x248+var_130]
46A754:  VCVT.U32.F32    S0, S0
46A758:  VMOV            R0, S0
46A75C:  STRB            R0, [R6,#0x16]
46A75E:  VLDR            S0, [SP,#0x248+var_134]
46A762:  VCVT.U32.F32    S0, S0
46A766:  VMOV            R0, S0
46A76A:  STRB            R0, [R6,#0x17]
46A76C:  VLDR            S0, [SP,#0x248+var_138]
46A770:  VCVT.U32.F32    S0, S0
46A774:  VMOV            R0, S0
46A778:  STRB            R0, [R6,#0x18]
46A77A:  LDR             R0, [SP,#0x248+var_140]
46A77C:  STRB            R0, [R6,#0x19]
46A77E:  LDR             R0, [SP,#0x248+var_13C]
46A780:  STRB.W          R0, [R6,#0x32]
46A784:  LDR             R0, [SP,#0x248+var_144]
46A786:  STRB            R0, [R6,#0x15]
46A788:  LDR             R0, [SP,#0x248+var_148]
46A78A:  STRB.W          R0, [R6,#0x33]
46A78E:  LDR             R0, [SP,#0x248+var_14C]
46A790:  STRB            R0, [R6,#0x1A]
46A792:  LDR             R0, [SP,#0x248+var_150]
46A794:  STRB            R0, [R6,#0x1B]
46A796:  LDR             R0, [SP,#0x248+var_154]
46A798:  STRB            R0, [R6,#0x1E]
46A79A:  LDR             R0, [SP,#0x248+var_158]
46A79C:  STRB            R0, [R6,#0x1F]
46A79E:  LDR             R0, [SP,#0x248+var_15C]
46A7A0:  STRB            R0, [R6,#0x1C]
46A7A2:  LDR             R0, [SP,#0x248+var_160]
46A7A4:  STRB            R0, [R6,#0x1D]
46A7A6:  LDR             R0, [SP,#0x248+var_164]
46A7A8:  STRB.W          R0, [R6,#0x20]
46A7AC:  LDR             R0, [SP,#0x248+var_168]
46A7AE:  STRB.W          R0, [R6,#0x21]
46A7B2:  LDR             R0, [SP,#0x248+var_16C]
46A7B4:  STRB.W          R0, [R6,#0x24]
46A7B8:  LDR             R0, [SP,#0x248+var_170]
46A7BA:  STRB.W          R0, [R6,#0x25]
46A7BE:  LDR             R0, [SP,#0x248+var_174]
46A7C0:  STRB.W          R0, [R6,#0x22]
46A7C4:  LDR             R0, [SP,#0x248+var_178]
46A7C6:  STRB.W          R0, [R6,#0x23]
46A7CA:  LDR             R0, [SP,#0x248+var_118]
46A7CC:  STRB.W          R0, [R6,#0x26]
46A7D0:  LDR             R0, [SP,#0x248+var_48]
46A7D2:  STRB.W          R0, [R6,#0x29]
46A7D6:  LDR             R0, [SP,#0x248+var_70]
46A7D8:  STRB.W          R0, [R6,#0x2C]
46A7DC:  LDR             R0, [SP,#0x248+var_98]
46A7DE:  STRB.W          R0, [R6,#0x2F]
46A7E2:  LDR             R0, [SP,#0x248+var_114]
46A7E4:  STRB.W          R0, [R6,#0x27]
46A7E8:  LDR             R0, [SP,#0x248+var_44]
46A7EA:  STRB.W          R0, [R6,#0x2A]
46A7EE:  LDR             R0, [SP,#0x248+var_6C]
46A7F0:  STRB.W          R0, [R6,#0x2D]
46A7F4:  LDR             R0, [SP,#0x248+var_94]
46A7F6:  STRB.W          R0, [R6,#0x30]
46A7FA:  LDR             R0, [SP,#0x248+var_110]
46A7FC:  STRB.W          R0, [R6,#0x28]
46A800:  LDR             R0, [SP,#0x248+var_40]
46A802:  STRB.W          R0, [R6,#0x2B]
46A806:  LDR             R0, [SP,#0x248+var_68]
46A808:  STRB.W          R0, [R6,#0x2E]
46A80C:  LDR             R0, [SP,#0x248+var_90]
46A80E:  STRB.W          R0, [R6,#0x31]
46A812:  B               def_46A42E; jumptable 0046A42E default case, cases 2,4
46A814:  ADD.W           R12, SP, #0x248+var_98; jumptable 0046A42E case 6
46A818:  ADD             R2, SP, #0x248+var_70
46A81A:  ADD.W           R5, R6, #0x2C ; ','
46A81E:  ADD.W           R0, R6, #0x28 ; '('
46A822:  ADD             R3, SP, #0x248+var_48
46A824:  LDR             R1, =(aDFFFDFFFFFFFDD - 0x46A85C); "%d %f %f %f %d %f %f %f %f %f %f %f %d "...
46A826:  STRD.W          R0, R5, [SP,#0x248+var_228]
46A82A:  MOV             LR, R8
46A82C:  STRD.W          R3, R2, [SP,#0x248+var_220]
46A830:  ADD.W           R8, SP, #0x248+var_118
46A834:  STRD.W          R8, R12, [SP,#0x248+var_218]
46A838:  ADD.W           R12, R6, #0x24 ; '$'
46A83C:  ADD.W           R3, R6, #0x1C
46A840:  ADD.W           R0, R6, #0x14
46A844:  ADD.W           R2, R6, #0x20 ; ' '
46A848:  STRD.W          R10, R9, [SP,#0x248+var_248]
46A84C:  STRD.W          LR, R0, [SP,#0x248+var_240]
46A850:  ADD.W           R5, R6, #0x18
46A854:  STRD.W          R5, R3, [SP,#0x248+var_238]
46A858:  ADD             R1, PC; "%d %f %f %f %d %f %f %f %f %f %f %f %d "...
46A85A:  STRD.W          R2, R12, [SP,#0x248+var_230]
46A85E:  ADD             R2, SP, #0x248+var_11C
46A860:  ADD             R3, SP, #0x248+var_124
46A862:  MOV             R0, R4; s
46A864:  BLX             sscanf
46A868:  LDR             R0, [SP,#0x248+var_48]
46A86A:  MOV             R1, R8; char *
46A86C:  STRH            R0, [R6,#0x30]
46A86E:  MOVS            R2, #8; size_t
46A870:  LDR             R0, [SP,#0x248+var_70]
46A872:  STRB.W          R0, [R6,#0x32]
46A876:  LDR             R0, [SP,#0x248+var_98]
46A878:  STRB.W          R0, [R6,#0x33]
46A87C:  ADD.W           R0, R6, #0x34 ; '4'; char *
46A880:  BLX             strncpy
46A884:  B               def_46A42E; jumptable 0046A42E default case, cases 2,4
46A886:  ADD             R0, SP, #0x248+var_180; jumptable 0046A42E case 8
46A888:  ADR             R1, aDFFFDD; "%d %f %f %f %d %d"
46A88A:  ADD             R2, SP, #0x248+var_11C
46A88C:  ADD             R3, SP, #0x248+var_124
46A88E:  STRD.W          R10, R9, [SP,#0x248+var_248]
46A892:  STRD.W          R8, R0, [SP,#0x248+var_240]
46A896:  MOV             R0, R4; s
46A898:  BLX             sscanf
46A89C:  LDR             R0, [SP,#0x248+var_180]
46A89E:  STR             R0, [R6,#0x14]
46A8A0:  B               def_46A42E; jumptable 0046A42E default case, cases 2,4
46A8A2:  ADD             R0, SP, #0x248+var_184; jumptable 0046A42E case 9
46A8A4:  ADD             R2, SP, #0x248+var_188
46A8A6:  ADD             R1, SP, #0x248+var_18C
46A8A8:  STRD.W          R10, R9, [SP,#0x248+var_248]
46A8AC:  STRD.W          R8, R2, [SP,#0x248+var_240]
46A8B0:  ADD             R2, SP, #0x248+var_11C
46A8B2:  STRD.W          R1, R0, [SP,#0x248+var_238]
46A8B6:  ADR             R1, aDFFFDFFD; "%d %f %f %f %d %f %f %d"
46A8B8:  ADD             R3, SP, #0x248+var_124
46A8BA:  MOV             R0, R4; s
46A8BC:  BLX             sscanf
46A8C0:  LDRD.W          R1, R0, [SP,#0x248+var_18C]
46A8C4:  STRD.W          R0, R1, [R6,#0x14]
46A8C8:  LDR             R0, [SP,#0x248+var_184]
46A8CA:  STRB            R0, [R6,#0x1C]
46A8CC:  B               def_46A42E; jumptable 0046A42E default case, cases 2,4
46A8CE:  ADD             R1, SP, #0x248+var_1B0; jumptable 0046A42E case 10
46A8D0:  ADD             R3, SP, #0x248+var_1A8
46A8D2:  ADD             R5, SP, #0x248+var_1A4
46A8D4:  ADD             R0, SP, #0x248+var_1B4
46A8D6:  ADD             R2, SP, #0x248+var_1AC
46A8D8:  STRD.W          R5, R3, [SP,#0x248+var_228]
46A8DC:  STRD.W          R2, R1, [SP,#0x248+var_220]
46A8E0:  ADD             R2, SP, #0x248+var_198
46A8E2:  STR             R0, [SP,#0x248+var_218]
46A8E4:  ADD             R0, SP, #0x248+var_1A0
46A8E6:  ADD             R5, SP, #0x248+var_190
46A8E8:  ADD             R1, SP, #0x248+var_19C
46A8EA:  ADD             R3, SP, #0x248+var_194
46A8EC:  STRD.W          R10, R9, [SP,#0x248+var_248]
46A8F0:  STRD.W          R8, R5, [SP,#0x248+var_240]
46A8F4:  STRD.W          R3, R2, [SP,#0x248+var_238]
46A8F8:  ADD             R2, SP, #0x248+var_11C
46A8FA:  STRD.W          R1, R0, [SP,#0x248+var_230]
46A8FE:  ADR             R1, aDFFFDFFFFFFFFF; "%d %f %f %f %d %f %f %f %f %f %f %f %f "...
46A900:  ADD             R3, SP, #0x248+var_124
46A902:  MOV             R0, R4; s
46A904:  BLX             sscanf
46A908:  LDRD.W          R1, R0, [SP,#0x248+var_194]
46A90C:  ADD.W           R8, R6, #0x14
46A910:  LDRD.W          R3, R2, [SP,#0x248+var_19C]
46A914:  LDRD.W          R4, R5, [SP,#0x248+var_1A4]
46A918:  LDRD.W          LR, R12, [SP,#0x248+var_1AC]
46A91C:  STM.W           R8, {R0-R3,R5}
46A920:  ADD.W           R0, R6, #0x28 ; '('
46A924:  STM.W           R0, {R4,R12,LR}
46A928:  LDR             R0, [SP,#0x248+var_1B0]
46A92A:  STR             R0, [R6,#0x34]
46A92C:  LDR             R0, [SP,#0x248+var_1B4]
46A92E:  CMP             R0, #0
46A930:  IT NE
46A932:  MOVNE           R0, #1
46A934:  STRB.W          R0, [R6,#0x38]
46A938:  B               def_46A42E; jumptable 0046A42E default case, cases 2,4
46A93A:  ADDS            R0, #2
46A93C:  ADD             R2, SP, #0x248+var_48
46A93E:  STRB.W          R1, [R2],#1
46A942:  LDRB.W          R1, [R0],#1
46A946:  CMP             R1, #0x22 ; '"'
46A948:  BNE             loc_46A93E
46A94A:  SUBS            R0, #2
46A94C:  MOVS            R3, #0
46A94E:  ADD             R5, SP, #0x248+var_150
46A950:  STRB            R3, [R2]
46A952:  ADD             R3, SP, #0x248+var_154
46A954:  ADD             R2, SP, #0x248+var_158
46A956:  LDR             R1, =(aFFFFDDDDDDDDD - 0x46A972); "%f %f %f %f %d %d %d %d %d %d %d %d %d"
46A958:  STRD.W          R5, R3, [SP,#0x248+var_228]
46A95C:  ADD.W           R5, R6, #0x24 ; '$'
46A960:  STR             R2, [SP,#0x248+var_220]
46A962:  ADD             R2, SP, #0x248+var_98
46A964:  ADD             R3, SP, #0x248+var_70
46A966:  ADD.W           R4, R6, #0x20 ; ' '
46A96A:  STRD.W          R4, R5, [SP,#0x248+var_248]
46A96E:  ADD             R1, PC; "%f %f %f %f %d %d %d %d %d %d %d %d %d"
46A970:  STRD.W          R3, R2, [SP,#0x248+var_240]
46A974:  ADD.W           R12, SP, #0x248+var_14C
46A978:  ADD.W           R8, SP, #0x248+var_134
46A97C:  ADD.W           R2, R6, #0x18
46A980:  ADD.W           R3, R6, #0x1C
46A984:  ADDS            R0, #2; s
46A986:  ADD.W           R9, SP, #0x248+var_130
46A98A:  ADD.W           LR, SP, #0x248+var_138
46A98E:  STRD.W          R9, R8, [SP,#0x248+var_238]
46A992:  STRD.W          LR, R12, [SP,#0x248+var_230]
46A996:  BLX             sscanf
46A99A:  LDR             R0, [SP,#0x248+var_13C]
46A99C:  MOVS            R1, #0; char *
46A99E:  STRB            R0, [R6,#0x14]
46A9A0:  LDR             R0, [SP,#0x248+var_140]
46A9A2:  STRB            R0, [R6,#0x15]
46A9A4:  LDR             R0, [SP,#0x248+var_144]
46A9A6:  STRB            R0, [R6,#0x16]
46A9A8:  LDR             R0, [SP,#0x248+var_148]
46A9AA:  STRB            R0, [R6,#0x17]
46A9AC:  LDR             R0, [SP,#0x248+var_70]
46A9AE:  STRB.W          R0, [R6,#0x2D]
46A9B2:  LDR             R0, [SP,#0x248+var_98]
46A9B4:  STRB.W          R0, [R6,#0x2A]
46A9B8:  LDR             R0, [SP,#0x248+var_130]
46A9BA:  STRB.W          R0, [R6,#0x2B]
46A9BE:  LDR             R0, [SP,#0x248+var_134]
46A9C0:  STRB.W          R0, [R6,#0x2C]
46A9C4:  LDR             R0, [SP,#0x248+var_138]
46A9C6:  STRH            R0, [R6,#0x28]
46A9C8:  LDR             R0, [SP,#0x248+var_14C]
46A9CA:  STRB.W          R0, [R6,#0x2E]
46A9CE:  LDR             R0, [SP,#0x248+var_150]
46A9D0:  STRB.W          R0, [R6,#0x2F]
46A9D4:  LDR             R0, [SP,#0x248+var_154]
46A9D6:  STRB.W          R0, [R6,#0x30]
46A9DA:  LDR             R0, [SP,#0x248+var_158]
46A9DC:  STRB.W          R0, [R6,#0x31]
46A9E0:  ADD             R0, SP, #0x248+var_118; char *
46A9E2:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
46A9E6:  STR             R0, [R6,#0x34]
46A9E8:  ADD             R0, SP, #0x248+var_48; char *
46A9EA:  MOVS            R1, #0; char *
46A9EC:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
46A9F0:  STR             R0, [R6,#0x38]
46A9F2:  LDRB.W          R0, [SP,#0x248+var_138]
46A9F6:  LSLS            R0, R0, #0x1D
46A9F8:  BPL             def_46A42E; jumptable 0046A42E default case, cases 2,4
46A9FA:  ADD.W           R0, R6, #0x28 ; '('; this
46A9FE:  LDRH            R1, [R0]
46AA00:  BIC.W           R1, R1, #2
46AA04:  STRH            R1, [R0]
46AA06:  BLX             j__ZN9CTxdStore13PopCurrentTxdEv; jumptable 0046A42E default case, cases 2,4
46AA0A:  LDR             R0, =(__stack_chk_guard_ptr - 0x46AA12)
46AA0C:  LDR             R1, [SP,#0x248+var_20]
46AA0E:  ADD             R0, PC; __stack_chk_guard_ptr
46AA10:  LDR             R0, [R0]; __stack_chk_guard
46AA12:  LDR             R0, [R0]
46AA14:  SUBS            R0, R0, R1
46AA16:  ITTT EQ
46AA18:  ADDEQ.W         SP, SP, #0x22C
46AA1C:  POPEQ.W         {R8-R11}
46AA20:  POPEQ           {R4-R7,PC}
46AA22:  BLX             __stack_chk_fail
