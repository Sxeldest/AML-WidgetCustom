; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE9SerializeEv
; Address            : 0x4994B4 - 0x499842
; =========================================================

4994B4:  PUSH            {R4-R7,LR}
4994B6:  ADD             R7, SP, #0xC
4994B8:  PUSH.W          {R8-R10}
4994BC:  SUB             SP, SP, #0x88
4994BE:  MOV             R9, R0
4994C0:  LDR.W           R0, =(UseDataFence_ptr - 0x4994CC)
4994C4:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x4994CE)
4994C8:  ADD             R0, PC; UseDataFence_ptr
4994CA:  ADD             R1, PC; __stack_chk_guard_ptr
4994CC:  LDR             R0, [R0]; UseDataFence
4994CE:  LDR             R1, [R1]; __stack_chk_guard
4994D0:  LDRB            R6, [R0]
4994D2:  LDR             R0, [R1]
4994D4:  CMP             R6, #0
4994D6:  STR             R0, [SP,#0xA0+var_1C]
4994D8:  BEQ             loc_499518
4994DA:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4994E6)
4994DC:  MOVS            R3, #0
4994DE:  LDR             R1, =(UseDataFence_ptr - 0x4994E8)
4994E0:  LDR             R2, =(DataFence_ptr - 0x4994EA)
4994E2:  ADD             R0, PC; currentSaveFenceCount_ptr
4994E4:  ADD             R1, PC; UseDataFence_ptr
4994E6:  ADD             R2, PC; DataFence_ptr
4994E8:  LDR             R0, [R0]; currentSaveFenceCount
4994EA:  LDR.W           R8, [R1]; UseDataFence
4994EE:  LDR             R1, [R2]; DataFence
4994F0:  LDR             R2, [R0]
4994F2:  STRB.W          R3, [R8]
4994F6:  LDRH            R1, [R1]
4994F8:  ADDS            R3, R2, #1
4994FA:  STR             R3, [R0]
4994FC:  MOVS            R0, #2; byte_count
4994FE:  ADDS            R4, R2, R1
499500:  BLX             malloc
499504:  MOV             R5, R0
499506:  MOVS            R1, #(stderr+2); void *
499508:  STRH            R4, [R5]
49950A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49950E:  MOV             R0, R5; p
499510:  BLX             free
499514:  STRB.W          R6, [R8]
499518:  MOVS            R0, #4; byte_count
49951A:  BLX             malloc
49951E:  MOV             R5, R0
499520:  MOVS            R0, #3
499522:  STR             R0, [R5]
499524:  MOV             R0, R5; this
499526:  MOVS            R1, #byte_4; void *
499528:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49952C:  MOV             R0, R5; p
49952E:  BLX             free
499532:  LDR.W           R0, [R9]
499536:  LDR             R1, [R0,#0x14]
499538:  MOV             R0, R9
49953A:  BLX             R1
49953C:  MOV             R8, R0
49953E:  LDR             R0, =(UseDataFence_ptr - 0x499544)
499540:  ADD             R0, PC; UseDataFence_ptr
499542:  LDR             R0, [R0]; UseDataFence
499544:  LDRB            R5, [R0]
499546:  CBZ             R5, loc_499586
499548:  LDR             R0, =(currentSaveFenceCount_ptr - 0x499554)
49954A:  MOVS            R3, #0
49954C:  LDR             R1, =(UseDataFence_ptr - 0x499556)
49954E:  LDR             R2, =(DataFence_ptr - 0x499558)
499550:  ADD             R0, PC; currentSaveFenceCount_ptr
499552:  ADD             R1, PC; UseDataFence_ptr
499554:  ADD             R2, PC; DataFence_ptr
499556:  LDR             R0, [R0]; currentSaveFenceCount
499558:  LDR.W           R10, [R1]; UseDataFence
49955C:  LDR             R1, [R2]; DataFence
49955E:  LDR             R2, [R0]
499560:  STRB.W          R3, [R10]
499564:  LDRH            R1, [R1]
499566:  ADDS            R3, R2, #1
499568:  STR             R3, [R0]
49956A:  MOVS            R0, #2; byte_count
49956C:  ADDS            R4, R2, R1
49956E:  BLX             malloc
499572:  MOV             R6, R0
499574:  MOVS            R1, #(stderr+2); void *
499576:  STRH            R4, [R6]
499578:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49957C:  MOV             R0, R6; p
49957E:  BLX             free
499582:  STRB.W          R5, [R10]
499586:  MOVS            R0, #4; byte_count
499588:  BLX             malloc
49958C:  MOV             R6, R0
49958E:  MOVS            R1, #byte_4; void *
499590:  STR.W           R8, [R6]
499594:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
499598:  MOV             R0, R6; p
49959A:  BLX             free
49959E:  LDR.W           R0, [R9]
4995A2:  LDR             R1, [R0,#0x14]
4995A4:  MOV             R0, R9
4995A6:  BLX             R1
4995A8:  MOVW            R1, #0x38B
4995AC:  CMP             R0, R1
4995AE:  BNE             loc_499646
4995B0:  LDR.W           R0, [R9,#0xC]
4995B4:  CMP             R0, #0
4995B6:  BEQ             loc_49967A
4995B8:  LDR             R1, =(UseDataFence_ptr - 0x4995C2)
4995BA:  LDRB.W          R0, [R0,#0x3A]
4995BE:  ADD             R1, PC; UseDataFence_ptr
4995C0:  AND.W           R8, R0, #7
4995C4:  LDR             R1, [R1]; UseDataFence
4995C6:  LDRB            R6, [R1]
4995C8:  CBZ             R6, loc_499608
4995CA:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4995D6)
4995CC:  MOVS            R3, #0
4995CE:  LDR             R1, =(UseDataFence_ptr - 0x4995D8)
4995D0:  LDR             R2, =(DataFence_ptr - 0x4995DA)
4995D2:  ADD             R0, PC; currentSaveFenceCount_ptr
4995D4:  ADD             R1, PC; UseDataFence_ptr
4995D6:  ADD             R2, PC; DataFence_ptr
4995D8:  LDR             R0, [R0]; currentSaveFenceCount
4995DA:  LDR.W           R10, [R1]; UseDataFence
4995DE:  LDR             R1, [R2]; DataFence
4995E0:  LDR             R2, [R0]
4995E2:  STRB.W          R3, [R10]
4995E6:  LDRH            R1, [R1]
4995E8:  ADDS            R3, R2, #1
4995EA:  STR             R3, [R0]
4995EC:  MOVS            R0, #2; byte_count
4995EE:  ADDS            R4, R2, R1
4995F0:  BLX             malloc
4995F4:  MOV             R5, R0
4995F6:  MOVS            R1, #(stderr+2); void *
4995F8:  STRH            R4, [R5]
4995FA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4995FE:  MOV             R0, R5; p
499600:  BLX             free
499604:  STRB.W          R6, [R10]
499608:  MOVS            R0, #4; byte_count
49960A:  BLX             malloc
49960E:  MOV             R5, R0
499610:  MOVS            R1, #byte_4; void *
499612:  STR.W           R8, [R5]
499616:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49961A:  MOV             R0, R5; p
49961C:  BLX             free
499620:  LDR.W           R0, [R9,#0xC]; this
499624:  LDRB.W          R1, [R0,#0x3A]
499628:  AND.W           R1, R1, #7; CObject *
49962C:  CMP             R1, #2
49962E:  BEQ             loc_4996E8
499630:  CMP             R1, #4
499632:  BEQ             loc_4996F2
499634:  CMP             R1, #3
499636:  BNE             loc_499660
499638:  CMP             R0, #0
49963A:  BEQ.W           loc_4997C4
49963E:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
499642:  MOV             R8, R0
499644:  B               loc_4997C8
499646:  LDR.W           R0, [R9]
49964A:  LDR             R1, [R0,#0x14]
49964C:  MOV             R0, R9
49964E:  BLX             R1
499650:  LDR             R1, =(aErrorClassDIsN - 0x49965E); "ERROR - class %d is not type %d seriali"...
499652:  MOV             R2, R0
499654:  ADD             R0, SP, #0xA0+var_9C
499656:  MOVW            R3, #0x38B
49965A:  ADD             R1, PC; "ERROR - class %d is not type %d seriali"...
49965C:  BL              sub_5E6BC0
499660:  LDR             R0, =(__stack_chk_guard_ptr - 0x499668)
499662:  LDR             R1, [SP,#0xA0+var_1C]
499664:  ADD             R0, PC; __stack_chk_guard_ptr
499666:  LDR             R0, [R0]; __stack_chk_guard
499668:  LDR             R0, [R0]
49966A:  SUBS            R0, R0, R1
49966C:  ITTT EQ
49966E:  ADDEQ           SP, SP, #0x88
499670:  POPEQ.W         {R8-R10}
499674:  POPEQ           {R4-R7,PC}
499676:  BLX             __stack_chk_fail
49967A:  LDR             R0, =(UseDataFence_ptr - 0x499680)
49967C:  ADD             R0, PC; UseDataFence_ptr
49967E:  LDR             R0, [R0]; UseDataFence
499680:  LDRB            R5, [R0]
499682:  CBZ             R5, loc_4996C2
499684:  LDR             R0, =(currentSaveFenceCount_ptr - 0x499690)
499686:  MOVS            R3, #0
499688:  LDR             R1, =(UseDataFence_ptr - 0x499692)
49968A:  LDR             R2, =(DataFence_ptr - 0x499694)
49968C:  ADD             R0, PC; currentSaveFenceCount_ptr
49968E:  ADD             R1, PC; UseDataFence_ptr
499690:  ADD             R2, PC; DataFence_ptr
499692:  LDR             R0, [R0]; currentSaveFenceCount
499694:  LDR.W           R8, [R1]; UseDataFence
499698:  LDR             R1, [R2]; DataFence
49969A:  LDR             R2, [R0]
49969C:  STRB.W          R3, [R8]
4996A0:  LDRH            R1, [R1]
4996A2:  ADDS            R3, R2, #1
4996A4:  STR             R3, [R0]
4996A6:  MOVS            R0, #2; byte_count
4996A8:  ADDS            R6, R2, R1
4996AA:  BLX             malloc
4996AE:  MOV             R4, R0
4996B0:  MOVS            R1, #(stderr+2); void *
4996B2:  STRH            R6, [R4]
4996B4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4996B8:  MOV             R0, R4; p
4996BA:  BLX             free
4996BE:  STRB.W          R5, [R8]
4996C2:  MOVS            R0, #4; byte_count
4996C4:  BLX             malloc
4996C8:  MOV             R4, R0
4996CA:  MOVS            R0, #0
4996CC:  STR             R0, [R4]
4996CE:  MOV             R0, R4; this
4996D0:  MOVS            R1, #byte_4; void *
4996D2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4996D6:  LDR             R0, =(__stack_chk_guard_ptr - 0x4996DE)
4996D8:  LDR             R1, [SP,#0xA0+var_1C]
4996DA:  ADD             R0, PC; __stack_chk_guard_ptr
4996DC:  LDR             R0, [R0]; __stack_chk_guard
4996DE:  LDR             R0, [R0]
4996E0:  SUBS            R0, R0, R1
4996E2:  BNE             loc_499676
4996E4:  MOV             R0, R4
4996E6:  B               loc_499834
4996E8:  CBZ             R0, loc_4996FC
4996EA:  BLX             j__ZN6CPools13GetVehicleRefEP8CVehicle; CPools::GetVehicleRef(CVehicle *)
4996EE:  MOV             R8, R0
4996F0:  B               loc_499700
4996F2:  CBZ             R0, loc_499760
4996F4:  BLX             j__ZN6CPools12GetObjectRefEP7CObject; CPools::GetObjectRef(CObject *)
4996F8:  MOV             R8, R0
4996FA:  B               loc_499764
4996FC:  MOV.W           R8, #0xFFFFFFFF
499700:  LDR             R0, =(UseDataFence_ptr - 0x499706)
499702:  ADD             R0, PC; UseDataFence_ptr
499704:  LDR             R0, [R0]; UseDataFence
499706:  LDRB            R6, [R0]
499708:  CBZ             R6, loc_499748
49970A:  LDR             R0, =(currentSaveFenceCount_ptr - 0x499716)
49970C:  MOVS            R3, #0
49970E:  LDR             R1, =(UseDataFence_ptr - 0x499718)
499710:  LDR             R2, =(DataFence_ptr - 0x49971A)
499712:  ADD             R0, PC; currentSaveFenceCount_ptr
499714:  ADD             R1, PC; UseDataFence_ptr
499716:  ADD             R2, PC; DataFence_ptr
499718:  LDR             R0, [R0]; currentSaveFenceCount
49971A:  LDR.W           R9, [R1]; UseDataFence
49971E:  LDR             R1, [R2]; DataFence
499720:  LDR             R2, [R0]
499722:  STRB.W          R3, [R9]
499726:  LDRH            R1, [R1]
499728:  ADDS            R3, R2, #1
49972A:  STR             R3, [R0]
49972C:  MOVS            R0, #2; byte_count
49972E:  ADDS            R4, R2, R1
499730:  BLX             malloc
499734:  MOV             R5, R0
499736:  MOVS            R1, #(stderr+2); void *
499738:  STRH            R4, [R5]
49973A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49973E:  MOV             R0, R5; p
499740:  BLX             free
499744:  STRB.W          R6, [R9]
499748:  MOVS            R0, #4; byte_count
49974A:  BLX             malloc
49974E:  MOV             R5, R0
499750:  MOVS            R1, #byte_4; void *
499752:  STR.W           R8, [R5]
499756:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49975A:  LDR             R0, =(__stack_chk_guard_ptr - 0x499760)
49975C:  ADD             R0, PC; __stack_chk_guard_ptr
49975E:  B               loc_499826
499760:  MOV.W           R8, #0xFFFFFFFF
499764:  LDR             R0, =(UseDataFence_ptr - 0x49976A)
499766:  ADD             R0, PC; UseDataFence_ptr
499768:  LDR             R0, [R0]; UseDataFence
49976A:  LDRB            R6, [R0]
49976C:  CBZ             R6, loc_4997AC
49976E:  LDR             R0, =(currentSaveFenceCount_ptr - 0x49977A)
499770:  MOVS            R3, #0
499772:  LDR             R1, =(UseDataFence_ptr - 0x49977C)
499774:  LDR             R2, =(DataFence_ptr - 0x49977E)
499776:  ADD             R0, PC; currentSaveFenceCount_ptr
499778:  ADD             R1, PC; UseDataFence_ptr
49977A:  ADD             R2, PC; DataFence_ptr
49977C:  LDR             R0, [R0]; currentSaveFenceCount
49977E:  LDR.W           R9, [R1]; UseDataFence
499782:  LDR             R1, [R2]; DataFence
499784:  LDR             R2, [R0]
499786:  STRB.W          R3, [R9]
49978A:  LDRH            R1, [R1]
49978C:  ADDS            R3, R2, #1
49978E:  STR             R3, [R0]
499790:  MOVS            R0, #2; byte_count
499792:  ADDS            R4, R2, R1
499794:  BLX             malloc
499798:  MOV             R5, R0
49979A:  MOVS            R1, #(stderr+2); void *
49979C:  STRH            R4, [R5]
49979E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4997A2:  MOV             R0, R5; p
4997A4:  BLX             free
4997A8:  STRB.W          R6, [R9]
4997AC:  MOVS            R0, #4; byte_count
4997AE:  BLX             malloc
4997B2:  MOV             R5, R0
4997B4:  MOVS            R1, #byte_4; void *
4997B6:  STR.W           R8, [R5]
4997BA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4997BE:  LDR             R0, =(__stack_chk_guard_ptr - 0x4997C4)
4997C0:  ADD             R0, PC; __stack_chk_guard_ptr
4997C2:  B               loc_499826
4997C4:  MOV.W           R8, #0xFFFFFFFF
4997C8:  LDR             R0, =(UseDataFence_ptr - 0x4997CE)
4997CA:  ADD             R0, PC; UseDataFence_ptr
4997CC:  LDR             R0, [R0]; UseDataFence
4997CE:  LDRB            R6, [R0]
4997D0:  CBZ             R6, loc_499810
4997D2:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4997DE)
4997D4:  MOVS            R3, #0
4997D6:  LDR             R1, =(UseDataFence_ptr - 0x4997E0)
4997D8:  LDR             R2, =(DataFence_ptr - 0x4997E2)
4997DA:  ADD             R0, PC; currentSaveFenceCount_ptr
4997DC:  ADD             R1, PC; UseDataFence_ptr
4997DE:  ADD             R2, PC; DataFence_ptr
4997E0:  LDR             R0, [R0]; currentSaveFenceCount
4997E2:  LDR.W           R9, [R1]; UseDataFence
4997E6:  LDR             R1, [R2]; DataFence
4997E8:  LDR             R2, [R0]
4997EA:  STRB.W          R3, [R9]
4997EE:  LDRH            R1, [R1]
4997F0:  ADDS            R3, R2, #1
4997F2:  STR             R3, [R0]
4997F4:  MOVS            R0, #2; byte_count
4997F6:  ADDS            R4, R2, R1
4997F8:  BLX             malloc
4997FC:  MOV             R5, R0
4997FE:  MOVS            R1, #(stderr+2); void *
499800:  STRH            R4, [R5]
499802:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
499806:  MOV             R0, R5; p
499808:  BLX             free
49980C:  STRB.W          R6, [R9]
499810:  MOVS            R0, #4; byte_count
499812:  BLX             malloc
499816:  MOV             R5, R0
499818:  MOVS            R1, #byte_4; void *
49981A:  STR.W           R8, [R5]
49981E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
499822:  LDR             R0, =(__stack_chk_guard_ptr - 0x499828)
499824:  ADD             R0, PC; __stack_chk_guard_ptr
499826:  LDR             R0, [R0]; __stack_chk_guard
499828:  LDR             R1, [SP,#0xA0+var_1C]
49982A:  LDR             R0, [R0]
49982C:  SUBS            R0, R0, R1
49982E:  BNE.W           loc_499676
499832:  MOV             R0, R5; p
499834:  ADD             SP, SP, #0x88
499836:  POP.W           {R8-R10}
49983A:  POP.W           {R4-R7,LR}
49983E:  B.W             j_free
