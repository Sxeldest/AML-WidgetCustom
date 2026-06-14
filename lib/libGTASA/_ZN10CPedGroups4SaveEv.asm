; =========================================================
; Game Engine Function: _ZN10CPedGroups4SaveEv
; Address            : 0x4892B8 - 0x4895C2
; =========================================================

4892B8:  PUSH            {R4-R7,LR}
4892BA:  ADD             R7, SP, #0xC
4892BC:  PUSH.W          {R8-R11}
4892C0:  SUB             SP, SP, #0x64
4892C2:  LDR             R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4892CA)
4892C4:  MOVS            R1, #byte_8; void *
4892C6:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4892C8:  LDR             R0, [R0]; this
4892CA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4892CE:  MOVS            R0, #8; byte_count
4892D0:  BLX             malloc
4892D4:  MOV             R4, R0
4892D6:  LDR             R0, =(_ZN10CPedGroups20ScriptReferenceIndexE_ptr - 0x4892DC)
4892D8:  ADD             R0, PC; _ZN10CPedGroups20ScriptReferenceIndexE_ptr
4892DA:  LDR             R0, [R0]; CPedGroups::ScriptReferenceIndex ...
4892DC:  LDR             R1, [R0]; CPedGroups::ScriptReferenceIndex
4892DE:  LDR             R0, [R0,#(dword_9EF9BC - 0x9EF9B8)]
4892E0:  STR             R0, [R4,#4]
4892E2:  MOV             R0, R4; this
4892E4:  STR             R1, [R4]
4892E6:  MOVS            R1, #byte_8; void *
4892E8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4892EC:  MOV             R0, R4; p
4892EE:  BLX             free
4892F2:  LDR             R0, =(_ZN10CPedGroups15ms_activeGroupsE_ptr - 0x4892FA)
4892F4:  LDR             R2, =(DataFence_ptr - 0x4892FE)
4892F6:  ADD             R0, PC; _ZN10CPedGroups15ms_activeGroupsE_ptr
4892F8:  LDR             R1, =(UseDataFence_ptr - 0x489302)
4892FA:  ADD             R2, PC; DataFence_ptr
4892FC:  LDR             R0, [R0]; CPedGroups::ms_activeGroups ...
4892FE:  ADD             R1, PC; UseDataFence_ptr
489300:  STR             R0, [SP,#0x80+var_30]
489302:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x48930C)
489304:  LDR.W           R9, [R1]; UseDataFence
489308:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
48930A:  LDR             R1, =(UseDataFence_ptr - 0x489312)
48930C:  LDR             R0, [R0]; CPedGroups::ms_groups ...
48930E:  ADD             R1, PC; UseDataFence_ptr
489310:  STR             R0, [SP,#0x80+var_34]
489312:  LDR             R0, =(UseDataFence_ptr - 0x489318)
489314:  ADD             R0, PC; UseDataFence_ptr
489316:  LDR             R0, [R0]; UseDataFence
489318:  STR             R0, [SP,#0x80+var_38]
48931A:  LDR             R0, =(UseDataFence_ptr - 0x489320)
48931C:  ADD             R0, PC; UseDataFence_ptr
48931E:  LDR             R0, [R0]; UseDataFence
489320:  STR             R0, [SP,#0x80+var_3C]
489322:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x489328)
489324:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
489326:  LDR             R0, [R0]; CPedGroups::ms_groups ...
489328:  STR             R0, [SP,#0x80+var_40]
48932A:  LDR             R0, =(UseDataFence_ptr - 0x489330)
48932C:  ADD             R0, PC; UseDataFence_ptr
48932E:  LDR             R0, [R0]; UseDataFence
489330:  STR             R0, [SP,#0x80+var_44]
489332:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x489338)
489334:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
489336:  LDR             R0, [R0]; CPedGroups::ms_groups ...
489338:  STR             R0, [SP,#0x80+var_48]
48933A:  LDR             R0, =(UseDataFence_ptr - 0x489340)
48933C:  ADD             R0, PC; UseDataFence_ptr
48933E:  LDR             R0, [R0]; UseDataFence
489340:  STR             R0, [SP,#0x80+var_4C]
489342:  LDR             R0, =(UseDataFence_ptr - 0x489348)
489344:  ADD             R0, PC; UseDataFence_ptr
489346:  LDR             R0, [R0]; UseDataFence
489348:  STR             R0, [SP,#0x80+var_20]
48934A:  LDR             R0, =(currentSaveFenceCount_ptr - 0x489350)
48934C:  ADD             R0, PC; currentSaveFenceCount_ptr
48934E:  LDR             R0, [R0]; currentSaveFenceCount
489350:  STR             R0, [SP,#0x80+var_24]
489352:  LDR             R0, [R2]; DataFence
489354:  STR             R0, [SP,#0x80+var_28]
489356:  LDR             R0, =(currentSaveFenceCount_ptr - 0x48935E)
489358:  LDR             R2, =(DataFence_ptr - 0x489360)
48935A:  ADD             R0, PC; currentSaveFenceCount_ptr
48935C:  ADD             R2, PC; DataFence_ptr
48935E:  LDR             R0, [R0]; currentSaveFenceCount
489360:  STR             R0, [SP,#0x80+var_50]
489362:  LDR             R0, [R1]; UseDataFence
489364:  STR             R0, [SP,#0x80+var_54]
489366:  LDR             R0, [R2]; DataFence
489368:  STR             R0, [SP,#0x80+var_58]
48936A:  LDR             R0, =(currentSaveFenceCount_ptr - 0x489372)
48936C:  LDR             R1, =(UseDataFence_ptr - 0x489376)
48936E:  ADD             R0, PC; currentSaveFenceCount_ptr
489370:  LDR             R2, =(DataFence_ptr - 0x48937A)
489372:  ADD             R1, PC; UseDataFence_ptr
489374:  LDR             R0, [R0]; currentSaveFenceCount
489376:  ADD             R2, PC; DataFence_ptr
489378:  STR             R0, [SP,#0x80+var_5C]
48937A:  LDR             R0, [R1]; UseDataFence
48937C:  STR             R0, [SP,#0x80+var_60]
48937E:  LDR             R0, [R2]; DataFence
489380:  STR             R0, [SP,#0x80+var_64]
489382:  LDR             R0, =(currentSaveFenceCount_ptr - 0x48938A)
489384:  LDR             R1, =(UseDataFence_ptr - 0x48938E)
489386:  ADD             R0, PC; currentSaveFenceCount_ptr
489388:  LDR             R2, =(DataFence_ptr - 0x489392)
48938A:  ADD             R1, PC; UseDataFence_ptr
48938C:  LDR             R0, [R0]; currentSaveFenceCount
48938E:  ADD             R2, PC; DataFence_ptr
489390:  STR             R0, [SP,#0x80+var_68]
489392:  LDR             R0, [R1]; UseDataFence
489394:  STR             R0, [SP,#0x80+var_6C]
489396:  LDR             R0, [R2]; DataFence
489398:  STR             R0, [SP,#0x80+var_70]
48939A:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4893A2)
48939C:  LDR             R1, =(UseDataFence_ptr - 0x4893A6)
48939E:  ADD             R0, PC; currentSaveFenceCount_ptr
4893A0:  LDR             R2, =(DataFence_ptr - 0x4893AA)
4893A2:  ADD             R1, PC; UseDataFence_ptr
4893A4:  LDR             R0, [R0]; currentSaveFenceCount
4893A6:  ADD             R2, PC; DataFence_ptr
4893A8:  STR             R0, [SP,#0x80+var_74]
4893AA:  LDR             R0, [R1]; UseDataFence
4893AC:  MOVS            R1, #0
4893AE:  STR             R0, [SP,#0x80+var_78]
4893B0:  LDR             R0, [R2]; DataFence
4893B2:  STR             R0, [SP,#0x80+var_7C]
4893B4:  LDR             R0, [SP,#0x80+var_30]
4893B6:  STR             R1, [SP,#0x80+var_2C]
4893B8:  LDRB            R0, [R0,R1]
4893BA:  CMP             R0, #0
4893BC:  BEQ.W           loc_4895B0
4893C0:  LDR             R1, [SP,#0x80+var_2C]
4893C2:  MOV.W           R0, #0x2D4
4893C6:  MULS            R0, R1
4893C8:  LDR             R1, [SP,#0x80+var_34]; CPed *
4893CA:  LDR             R0, [R1,R0]; this
4893CC:  CBZ             R0, loc_4893D6
4893CE:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
4893D2:  MOV             R8, R0
4893D4:  B               loc_4893DA
4893D6:  MOV.W           R8, #0xFFFFFFFF
4893DA:  LDR             R0, [SP,#0x80+var_38]
4893DC:  LDRB            R6, [R0]
4893DE:  CBZ             R6, loc_489410
4893E0:  LDR             R4, [SP,#0x80+var_78]
4893E2:  MOVS            R1, #0
4893E4:  LDR             R3, [SP,#0x80+var_74]
4893E6:  STRB            R1, [R4]
4893E8:  LDR             R1, [SP,#0x80+var_7C]
4893EA:  LDR             R0, [R3]
4893EC:  LDRH            R1, [R1]
4893EE:  ADDS            R2, R0, #1
4893F0:  STR             R2, [R3]
4893F2:  ADD.W           R10, R0, R1
4893F6:  MOVS            R0, #2; byte_count
4893F8:  BLX             malloc
4893FC:  MOV             R5, R0
4893FE:  MOVS            R1, #(stderr+2); void *
489400:  STRH.W          R10, [R5]
489404:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489408:  MOV             R0, R5; p
48940A:  BLX             free
48940E:  STRB            R6, [R4]
489410:  MOVS            R0, #4; byte_count
489412:  BLX             malloc
489416:  MOV             R5, R0
489418:  MOVS            R1, #byte_4; void *
48941A:  STR.W           R8, [R5]
48941E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489422:  MOV             R0, R5; p
489424:  BLX             free
489428:  LDR             R0, [SP,#0x80+var_3C]
48942A:  LDRB            R5, [R0]
48942C:  CBZ             R5, loc_48945E
48942E:  LDR             R6, [SP,#0x80+var_6C]
489430:  MOVS            R1, #0
489432:  LDR             R3, [SP,#0x80+var_68]
489434:  STRB            R1, [R6]
489436:  LDR             R1, [SP,#0x80+var_70]
489438:  LDR             R0, [R3]
48943A:  LDRH            R1, [R1]
48943C:  ADDS            R2, R0, #1
48943E:  STR             R2, [R3]
489440:  ADD.W           R8, R0, R1
489444:  MOVS            R0, #2; byte_count
489446:  BLX             malloc
48944A:  MOV             R4, R0
48944C:  MOVS            R1, #(stderr+2); void *
48944E:  STRH.W          R8, [R4]
489452:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489456:  MOV             R0, R4; p
489458:  BLX             free
48945C:  STRB            R5, [R6]
48945E:  LDR             R2, [SP,#0x80+var_2C]; int
489460:  MOV.W           R0, #0x2D4
489464:  LDR             R1, [SP,#0x80+var_40]
489466:  MLA.W           R4, R2, R0, R1
48946A:  MOVS            R1, #(stderr+1); void *
48946C:  ADDS            R0, R4, #4; this
48946E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489472:  LDR.W           R0, [R4,#0x2BC]
489476:  LDR             R1, [R0]
489478:  LDR             R1, [R1,#4]
48947A:  BLX             R1
48947C:  MOV             R8, R0
48947E:  LDR             R0, [SP,#0x80+var_44]
489480:  LDRB            R6, [R0]
489482:  CBZ             R6, loc_4894B4
489484:  LDR             R4, [SP,#0x80+var_60]
489486:  MOVS            R1, #0
489488:  LDR             R3, [SP,#0x80+var_5C]
48948A:  STRB            R1, [R4]
48948C:  LDR             R1, [SP,#0x80+var_64]
48948E:  LDR             R0, [R3]
489490:  LDRH            R1, [R1]
489492:  ADDS            R2, R0, #1
489494:  STR             R2, [R3]
489496:  ADD.W           R10, R0, R1
48949A:  MOVS            R0, #2; byte_count
48949C:  BLX             malloc
4894A0:  MOV             R5, R0
4894A2:  MOVS            R1, #(stderr+2); void *
4894A4:  STRH.W          R10, [R5]
4894A8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4894AC:  MOV             R0, R5; p
4894AE:  BLX             free
4894B2:  STRB            R6, [R4]
4894B4:  MOVS            R0, #4; byte_count
4894B6:  BLX             malloc
4894BA:  MOV             R5, R0
4894BC:  MOVS            R1, #byte_4; void *
4894BE:  STR.W           R8, [R5]
4894C2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4894C6:  MOV             R0, R5; p
4894C8:  BLX             free
4894CC:  LDR             R2, [SP,#0x80+var_2C]
4894CE:  MOV.W           R0, #0x2D4
4894D2:  LDR             R1, [SP,#0x80+var_48]
4894D4:  MLA.W           R0, R2, R0, R1
4894D8:  ADD.W           R8, R0, #8
4894DC:  MOV             R0, R8; this
4894DE:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
4894E2:  CBZ             R0, loc_4894EC
4894E4:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
4894E8:  MOV             R11, R0
4894EA:  B               loc_4894F0
4894EC:  MOV.W           R11, #0xFFFFFFFF
4894F0:  LDR             R0, [SP,#0x80+var_4C]
4894F2:  LDRB            R4, [R0]
4894F4:  CBZ             R4, loc_489526
4894F6:  LDR             R5, [SP,#0x80+var_54]
4894F8:  MOVS            R1, #0
4894FA:  LDR             R3, [SP,#0x80+var_50]
4894FC:  STRB            R1, [R5]
4894FE:  LDR             R1, [SP,#0x80+var_58]
489500:  LDR             R0, [R3]
489502:  LDRH            R1, [R1]
489504:  ADDS            R2, R0, #1
489506:  STR             R2, [R3]
489508:  ADD.W           R10, R0, R1
48950C:  MOVS            R0, #2; byte_count
48950E:  BLX             malloc
489512:  MOV             R6, R0
489514:  MOVS            R1, #(stderr+2); void *
489516:  STRH.W          R10, [R6]
48951A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48951E:  MOV             R0, R6; p
489520:  BLX             free
489524:  STRB            R4, [R5]
489526:  MOVS            R0, #4; byte_count
489528:  BLX             malloc
48952C:  MOV             R6, R0
48952E:  MOVS            R1, #byte_4; void *
489530:  STR.W           R11, [R6]
489534:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489538:  MOV             R0, R6; p
48953A:  BLX             free
48953E:  MOVS            R5, #0
489540:  MOV             R0, R8; this
489542:  MOV             R1, R5; int
489544:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
489548:  CBZ             R0, loc_489552
48954A:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
48954E:  MOV             R6, R0
489550:  B               loc_489556
489552:  MOV.W           R6, #0xFFFFFFFF
489556:  LDR             R0, [SP,#0x80+var_20]
489558:  LDRB.W          R11, [R0]
48955C:  CMP.W           R11, #0
489560:  BEQ             loc_489594
489562:  MOVS            R1, #0
489564:  LDR             R3, [SP,#0x80+var_24]
489566:  STRB.W          R1, [R9]
48956A:  LDR             R1, [SP,#0x80+var_28]
48956C:  LDR             R0, [R3]
48956E:  LDRH            R1, [R1]
489570:  ADDS            R2, R0, #1
489572:  STR             R2, [R3]
489574:  ADD.W           R10, R0, R1
489578:  MOVS            R0, #2; byte_count
48957A:  BLX             malloc
48957E:  MOV             R4, R0
489580:  MOVS            R1, #(stderr+2); void *
489582:  STRH.W          R10, [R4]
489586:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48958A:  MOV             R0, R4; p
48958C:  BLX             free
489590:  STRB.W          R11, [R9]
489594:  MOVS            R0, #4; byte_count
489596:  BLX             malloc
48959A:  MOV             R4, R0
48959C:  MOVS            R1, #byte_4; void *
48959E:  STR             R6, [R4]
4895A0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4895A4:  MOV             R0, R4; p
4895A6:  BLX             free
4895AA:  ADDS            R5, #1
4895AC:  CMP             R5, #8
4895AE:  BNE             loc_489540
4895B0:  LDR             R1, [SP,#0x80+var_2C]
4895B2:  ADDS            R1, #1
4895B4:  CMP             R1, #8
4895B6:  BNE.W           loc_4893B4
4895BA:  ADD             SP, SP, #0x64 ; 'd'
4895BC:  POP.W           {R8-R11}
4895C0:  POP             {R4-R7,PC}
