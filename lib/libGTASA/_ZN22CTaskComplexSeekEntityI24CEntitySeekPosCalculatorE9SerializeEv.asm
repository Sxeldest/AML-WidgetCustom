; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI24CEntitySeekPosCalculatorE9SerializeEv
; Address            : 0x49851C - 0x4988A2
; =========================================================

49851C:  PUSH            {R4-R7,LR}
49851E:  ADD             R7, SP, #0xC
498520:  PUSH.W          {R8-R10}
498524:  SUB             SP, SP, #0x88
498526:  MOV             R9, R0
498528:  LDR             R0, =(UseDataFence_ptr - 0x498530)
49852A:  LDR             R1, =(__stack_chk_guard_ptr - 0x498532)
49852C:  ADD             R0, PC; UseDataFence_ptr
49852E:  ADD             R1, PC; __stack_chk_guard_ptr
498530:  LDR             R0, [R0]; UseDataFence
498532:  LDR             R1, [R1]; __stack_chk_guard
498534:  LDRB            R6, [R0]
498536:  LDR             R0, [R1]
498538:  CMP             R6, #0
49853A:  STR             R0, [SP,#0xA0+var_1C]
49853C:  BEQ             loc_49857C
49853E:  LDR             R0, =(currentSaveFenceCount_ptr - 0x49854A)
498540:  MOVS            R3, #0
498542:  LDR             R1, =(UseDataFence_ptr - 0x49854C)
498544:  LDR             R2, =(DataFence_ptr - 0x49854E)
498546:  ADD             R0, PC; currentSaveFenceCount_ptr
498548:  ADD             R1, PC; UseDataFence_ptr
49854A:  ADD             R2, PC; DataFence_ptr
49854C:  LDR             R0, [R0]; currentSaveFenceCount
49854E:  LDR.W           R8, [R1]; UseDataFence
498552:  LDR             R1, [R2]; DataFence
498554:  LDR             R2, [R0]
498556:  STRB.W          R3, [R8]
49855A:  LDRH            R1, [R1]
49855C:  ADDS            R3, R2, #1
49855E:  STR             R3, [R0]
498560:  MOVS            R0, #2; byte_count
498562:  ADDS            R4, R2, R1
498564:  BLX             malloc
498568:  MOV             R5, R0
49856A:  MOVS            R1, #(stderr+2); void *
49856C:  STRH            R4, [R5]
49856E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
498572:  MOV             R0, R5; p
498574:  BLX             free
498578:  STRB.W          R6, [R8]
49857C:  MOVS            R0, #4; byte_count
49857E:  BLX             malloc
498582:  MOVS            R1, #byte_4; void *
498584:  MOV             R5, R0
498586:  MOVS            R6, #0
498588:  STR             R6, [R5]
49858A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49858E:  MOV             R0, R5; p
498590:  BLX             free
498594:  LDR.W           R0, [R9]
498598:  LDR             R1, [R0,#0x14]
49859A:  MOV             R0, R9
49859C:  BLX             R1
49859E:  MOV             R8, R0
4985A0:  LDR             R0, =(UseDataFence_ptr - 0x4985A6)
4985A2:  ADD             R0, PC; UseDataFence_ptr
4985A4:  LDR             R0, [R0]; UseDataFence
4985A6:  LDRB            R5, [R0]
4985A8:  CBZ             R5, loc_4985E6
4985AA:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4985B4)
4985AC:  LDR             R1, =(UseDataFence_ptr - 0x4985B6)
4985AE:  LDR             R2, =(DataFence_ptr - 0x4985B8)
4985B0:  ADD             R0, PC; currentSaveFenceCount_ptr
4985B2:  ADD             R1, PC; UseDataFence_ptr
4985B4:  ADD             R2, PC; DataFence_ptr
4985B6:  LDR             R0, [R0]; currentSaveFenceCount
4985B8:  LDR.W           R10, [R1]; UseDataFence
4985BC:  LDR             R1, [R2]; DataFence
4985BE:  LDR             R2, [R0]
4985C0:  STRB.W          R6, [R10]
4985C4:  LDRH            R1, [R1]
4985C6:  ADDS            R3, R2, #1
4985C8:  STR             R3, [R0]
4985CA:  MOVS            R0, #2; byte_count
4985CC:  ADDS            R4, R2, R1
4985CE:  BLX             malloc
4985D2:  MOV             R6, R0
4985D4:  MOVS            R1, #(stderr+2); void *
4985D6:  STRH            R4, [R6]
4985D8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4985DC:  MOV             R0, R6; p
4985DE:  BLX             free
4985E2:  STRB.W          R5, [R10]
4985E6:  MOVS            R0, #4; byte_count
4985E8:  BLX             malloc
4985EC:  MOV             R6, R0
4985EE:  MOVS            R1, #byte_4; void *
4985F0:  STR.W           R8, [R6]
4985F4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4985F8:  MOV             R0, R6; p
4985FA:  BLX             free
4985FE:  LDR.W           R0, [R9]
498602:  LDR             R1, [R0,#0x14]
498604:  MOV             R0, R9
498606:  BLX             R1
498608:  MOVW            R1, #0x38B
49860C:  CMP             R0, R1
49860E:  BNE             loc_4986A6
498610:  LDR.W           R0, [R9,#0xC]
498614:  CMP             R0, #0
498616:  BEQ             loc_4986DA
498618:  LDR             R1, =(UseDataFence_ptr - 0x498622)
49861A:  LDRB.W          R0, [R0,#0x3A]
49861E:  ADD             R1, PC; UseDataFence_ptr
498620:  AND.W           R8, R0, #7
498624:  LDR             R1, [R1]; UseDataFence
498626:  LDRB            R6, [R1]
498628:  CBZ             R6, loc_498668
49862A:  LDR             R0, =(currentSaveFenceCount_ptr - 0x498636)
49862C:  MOVS            R3, #0
49862E:  LDR             R1, =(UseDataFence_ptr - 0x498638)
498630:  LDR             R2, =(DataFence_ptr - 0x49863A)
498632:  ADD             R0, PC; currentSaveFenceCount_ptr
498634:  ADD             R1, PC; UseDataFence_ptr
498636:  ADD             R2, PC; DataFence_ptr
498638:  LDR             R0, [R0]; currentSaveFenceCount
49863A:  LDR.W           R10, [R1]; UseDataFence
49863E:  LDR             R1, [R2]; DataFence
498640:  LDR             R2, [R0]
498642:  STRB.W          R3, [R10]
498646:  LDRH            R1, [R1]
498648:  ADDS            R3, R2, #1
49864A:  STR             R3, [R0]
49864C:  MOVS            R0, #2; byte_count
49864E:  ADDS            R4, R2, R1
498650:  BLX             malloc
498654:  MOV             R5, R0
498656:  MOVS            R1, #(stderr+2); void *
498658:  STRH            R4, [R5]
49865A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49865E:  MOV             R0, R5; p
498660:  BLX             free
498664:  STRB.W          R6, [R10]
498668:  MOVS            R0, #4; byte_count
49866A:  BLX             malloc
49866E:  MOV             R5, R0
498670:  MOVS            R1, #byte_4; void *
498672:  STR.W           R8, [R5]
498676:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49867A:  MOV             R0, R5; p
49867C:  BLX             free
498680:  LDR.W           R0, [R9,#0xC]; this
498684:  LDRB.W          R1, [R0,#0x3A]
498688:  AND.W           R1, R1, #7; CObject *
49868C:  CMP             R1, #2
49868E:  BEQ             loc_498748
498690:  CMP             R1, #4
498692:  BEQ             loc_498752
498694:  CMP             R1, #3
498696:  BNE             loc_4986C0
498698:  CMP             R0, #0
49869A:  BEQ.W           loc_498824
49869E:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
4986A2:  MOV             R8, R0
4986A4:  B               loc_498828
4986A6:  LDR.W           R0, [R9]
4986AA:  LDR             R1, [R0,#0x14]
4986AC:  MOV             R0, R9
4986AE:  BLX             R1
4986B0:  LDR             R1, =(aErrorClassDIsN - 0x4986BE); "ERROR - class %d is not type %d seriali"...
4986B2:  MOV             R2, R0
4986B4:  ADD             R0, SP, #0xA0+var_9C
4986B6:  MOVW            R3, #0x38B
4986BA:  ADD             R1, PC; "ERROR - class %d is not type %d seriali"...
4986BC:  BL              sub_5E6BC0
4986C0:  LDR             R0, =(__stack_chk_guard_ptr - 0x4986C8)
4986C2:  LDR             R1, [SP,#0xA0+var_1C]
4986C4:  ADD             R0, PC; __stack_chk_guard_ptr
4986C6:  LDR             R0, [R0]; __stack_chk_guard
4986C8:  LDR             R0, [R0]
4986CA:  SUBS            R0, R0, R1
4986CC:  ITTT EQ
4986CE:  ADDEQ           SP, SP, #0x88
4986D0:  POPEQ.W         {R8-R10}
4986D4:  POPEQ           {R4-R7,PC}
4986D6:  BLX             __stack_chk_fail
4986DA:  LDR             R0, =(UseDataFence_ptr - 0x4986E0)
4986DC:  ADD             R0, PC; UseDataFence_ptr
4986DE:  LDR             R0, [R0]; UseDataFence
4986E0:  LDRB            R5, [R0]
4986E2:  CBZ             R5, loc_498722
4986E4:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4986F0)
4986E6:  MOVS            R3, #0
4986E8:  LDR             R1, =(UseDataFence_ptr - 0x4986F2)
4986EA:  LDR             R2, =(DataFence_ptr - 0x4986F4)
4986EC:  ADD             R0, PC; currentSaveFenceCount_ptr
4986EE:  ADD             R1, PC; UseDataFence_ptr
4986F0:  ADD             R2, PC; DataFence_ptr
4986F2:  LDR             R0, [R0]; currentSaveFenceCount
4986F4:  LDR.W           R8, [R1]; UseDataFence
4986F8:  LDR             R1, [R2]; DataFence
4986FA:  LDR             R2, [R0]
4986FC:  STRB.W          R3, [R8]
498700:  LDRH            R1, [R1]
498702:  ADDS            R3, R2, #1
498704:  STR             R3, [R0]
498706:  MOVS            R0, #2; byte_count
498708:  ADDS            R6, R2, R1
49870A:  BLX             malloc
49870E:  MOV             R4, R0
498710:  MOVS            R1, #(stderr+2); void *
498712:  STRH            R6, [R4]
498714:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
498718:  MOV             R0, R4; p
49871A:  BLX             free
49871E:  STRB.W          R5, [R8]
498722:  MOVS            R0, #4; byte_count
498724:  BLX             malloc
498728:  MOV             R4, R0
49872A:  MOVS            R0, #0
49872C:  STR             R0, [R4]
49872E:  MOV             R0, R4; this
498730:  MOVS            R1, #byte_4; void *
498732:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
498736:  LDR             R0, =(__stack_chk_guard_ptr - 0x49873E)
498738:  LDR             R1, [SP,#0xA0+var_1C]
49873A:  ADD             R0, PC; __stack_chk_guard_ptr
49873C:  LDR             R0, [R0]; __stack_chk_guard
49873E:  LDR             R0, [R0]
498740:  SUBS            R0, R0, R1
498742:  BNE             loc_4986D6
498744:  MOV             R0, R4
498746:  B               loc_498894
498748:  CBZ             R0, loc_49875C
49874A:  BLX             j__ZN6CPools13GetVehicleRefEP8CVehicle; CPools::GetVehicleRef(CVehicle *)
49874E:  MOV             R8, R0
498750:  B               loc_498760
498752:  CBZ             R0, loc_4987C0
498754:  BLX             j__ZN6CPools12GetObjectRefEP7CObject; CPools::GetObjectRef(CObject *)
498758:  MOV             R8, R0
49875A:  B               loc_4987C4
49875C:  MOV.W           R8, #0xFFFFFFFF
498760:  LDR             R0, =(UseDataFence_ptr - 0x498766)
498762:  ADD             R0, PC; UseDataFence_ptr
498764:  LDR             R0, [R0]; UseDataFence
498766:  LDRB            R6, [R0]
498768:  CBZ             R6, loc_4987A8
49876A:  LDR             R0, =(currentSaveFenceCount_ptr - 0x498776)
49876C:  MOVS            R3, #0
49876E:  LDR             R1, =(UseDataFence_ptr - 0x498778)
498770:  LDR             R2, =(DataFence_ptr - 0x49877A)
498772:  ADD             R0, PC; currentSaveFenceCount_ptr
498774:  ADD             R1, PC; UseDataFence_ptr
498776:  ADD             R2, PC; DataFence_ptr
498778:  LDR             R0, [R0]; currentSaveFenceCount
49877A:  LDR.W           R9, [R1]; UseDataFence
49877E:  LDR             R1, [R2]; DataFence
498780:  LDR             R2, [R0]
498782:  STRB.W          R3, [R9]
498786:  LDRH            R1, [R1]
498788:  ADDS            R3, R2, #1
49878A:  STR             R3, [R0]
49878C:  MOVS            R0, #2; byte_count
49878E:  ADDS            R4, R2, R1
498790:  BLX             malloc
498794:  MOV             R5, R0
498796:  MOVS            R1, #(stderr+2); void *
498798:  STRH            R4, [R5]
49879A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49879E:  MOV             R0, R5; p
4987A0:  BLX             free
4987A4:  STRB.W          R6, [R9]
4987A8:  MOVS            R0, #4; byte_count
4987AA:  BLX             malloc
4987AE:  MOV             R5, R0
4987B0:  MOVS            R1, #byte_4; void *
4987B2:  STR.W           R8, [R5]
4987B6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4987BA:  LDR             R0, =(__stack_chk_guard_ptr - 0x4987C0)
4987BC:  ADD             R0, PC; __stack_chk_guard_ptr
4987BE:  B               loc_498886
4987C0:  MOV.W           R8, #0xFFFFFFFF
4987C4:  LDR             R0, =(UseDataFence_ptr - 0x4987CA)
4987C6:  ADD             R0, PC; UseDataFence_ptr
4987C8:  LDR             R0, [R0]; UseDataFence
4987CA:  LDRB            R6, [R0]
4987CC:  CBZ             R6, loc_49880C
4987CE:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4987DA)
4987D0:  MOVS            R3, #0
4987D2:  LDR             R1, =(UseDataFence_ptr - 0x4987DC)
4987D4:  LDR             R2, =(DataFence_ptr - 0x4987DE)
4987D6:  ADD             R0, PC; currentSaveFenceCount_ptr
4987D8:  ADD             R1, PC; UseDataFence_ptr
4987DA:  ADD             R2, PC; DataFence_ptr
4987DC:  LDR             R0, [R0]; currentSaveFenceCount
4987DE:  LDR.W           R9, [R1]; UseDataFence
4987E2:  LDR             R1, [R2]; DataFence
4987E4:  LDR             R2, [R0]
4987E6:  STRB.W          R3, [R9]
4987EA:  LDRH            R1, [R1]
4987EC:  ADDS            R3, R2, #1
4987EE:  STR             R3, [R0]
4987F0:  MOVS            R0, #2; byte_count
4987F2:  ADDS            R4, R2, R1
4987F4:  BLX             malloc
4987F8:  MOV             R5, R0
4987FA:  MOVS            R1, #(stderr+2); void *
4987FC:  STRH            R4, [R5]
4987FE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
498802:  MOV             R0, R5; p
498804:  BLX             free
498808:  STRB.W          R6, [R9]
49880C:  MOVS            R0, #4; byte_count
49880E:  BLX             malloc
498812:  MOV             R5, R0
498814:  MOVS            R1, #byte_4; void *
498816:  STR.W           R8, [R5]
49881A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49881E:  LDR             R0, =(__stack_chk_guard_ptr - 0x498824)
498820:  ADD             R0, PC; __stack_chk_guard_ptr
498822:  B               loc_498886
498824:  MOV.W           R8, #0xFFFFFFFF
498828:  LDR             R0, =(UseDataFence_ptr - 0x49882E)
49882A:  ADD             R0, PC; UseDataFence_ptr
49882C:  LDR             R0, [R0]; UseDataFence
49882E:  LDRB            R6, [R0]
498830:  CBZ             R6, loc_498870
498832:  LDR             R0, =(currentSaveFenceCount_ptr - 0x49883E)
498834:  MOVS            R3, #0
498836:  LDR             R1, =(UseDataFence_ptr - 0x498840)
498838:  LDR             R2, =(DataFence_ptr - 0x498842)
49883A:  ADD             R0, PC; currentSaveFenceCount_ptr
49883C:  ADD             R1, PC; UseDataFence_ptr
49883E:  ADD             R2, PC; DataFence_ptr
498840:  LDR             R0, [R0]; currentSaveFenceCount
498842:  LDR.W           R9, [R1]; UseDataFence
498846:  LDR             R1, [R2]; DataFence
498848:  LDR             R2, [R0]
49884A:  STRB.W          R3, [R9]
49884E:  LDRH            R1, [R1]
498850:  ADDS            R3, R2, #1
498852:  STR             R3, [R0]
498854:  MOVS            R0, #2; byte_count
498856:  ADDS            R4, R2, R1
498858:  BLX             malloc
49885C:  MOV             R5, R0
49885E:  MOVS            R1, #(stderr+2); void *
498860:  STRH            R4, [R5]
498862:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
498866:  MOV             R0, R5; p
498868:  BLX             free
49886C:  STRB.W          R6, [R9]
498870:  MOVS            R0, #4; byte_count
498872:  BLX             malloc
498876:  MOV             R5, R0
498878:  MOVS            R1, #byte_4; void *
49887A:  STR.W           R8, [R5]
49887E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
498882:  LDR             R0, =(__stack_chk_guard_ptr - 0x498888)
498884:  ADD             R0, PC; __stack_chk_guard_ptr
498886:  LDR             R0, [R0]; __stack_chk_guard
498888:  LDR             R1, [SP,#0xA0+var_1C]
49888A:  LDR             R0, [R0]
49888C:  SUBS            R0, R0, R1
49888E:  BNE.W           loc_4986D6
498892:  MOV             R0, R5; p
498894:  ADD             SP, SP, #0x88
498896:  POP.W           {R8-R10}
49889A:  POP.W           {R4-R7,LR}
49889E:  B.W             j_free
