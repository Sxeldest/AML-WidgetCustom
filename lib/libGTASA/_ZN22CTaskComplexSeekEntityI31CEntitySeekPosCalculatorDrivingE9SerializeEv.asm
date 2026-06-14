; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI31CEntitySeekPosCalculatorDrivingE9SerializeEv
; Address            : 0x49C5E4 - 0x49C972
; =========================================================

49C5E4:  PUSH            {R4-R7,LR}
49C5E6:  ADD             R7, SP, #0xC
49C5E8:  PUSH.W          {R8-R10}
49C5EC:  SUB             SP, SP, #0x88
49C5EE:  MOV             R9, R0
49C5F0:  LDR.W           R0, =(UseDataFence_ptr - 0x49C5FC)
49C5F4:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x49C5FE)
49C5F8:  ADD             R0, PC; UseDataFence_ptr
49C5FA:  ADD             R1, PC; __stack_chk_guard_ptr
49C5FC:  LDR             R0, [R0]; UseDataFence
49C5FE:  LDR             R1, [R1]; __stack_chk_guard
49C600:  LDRB            R6, [R0]
49C602:  LDR             R0, [R1]
49C604:  CMP             R6, #0
49C606:  STR             R0, [SP,#0xA0+var_1C]
49C608:  BEQ             loc_49C648
49C60A:  LDR             R0, =(currentSaveFenceCount_ptr - 0x49C616)
49C60C:  MOVS            R3, #0
49C60E:  LDR             R1, =(UseDataFence_ptr - 0x49C618)
49C610:  LDR             R2, =(DataFence_ptr - 0x49C61A)
49C612:  ADD             R0, PC; currentSaveFenceCount_ptr
49C614:  ADD             R1, PC; UseDataFence_ptr
49C616:  ADD             R2, PC; DataFence_ptr
49C618:  LDR             R0, [R0]; currentSaveFenceCount
49C61A:  LDR.W           R8, [R1]; UseDataFence
49C61E:  LDR             R1, [R2]; DataFence
49C620:  LDR             R2, [R0]
49C622:  STRB.W          R3, [R8]
49C626:  LDRH            R1, [R1]
49C628:  ADDS            R3, R2, #1
49C62A:  STR             R3, [R0]
49C62C:  MOVS            R0, #2; byte_count
49C62E:  ADDS            R4, R2, R1
49C630:  BLX             malloc
49C634:  MOV             R5, R0
49C636:  MOVS            R1, #(stderr+2); void *
49C638:  STRH            R4, [R5]
49C63A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49C63E:  MOV             R0, R5; p
49C640:  BLX             free
49C644:  STRB.W          R6, [R8]
49C648:  MOVS            R0, #4; byte_count
49C64A:  BLX             malloc
49C64E:  MOV             R5, R0
49C650:  MOVS            R0, #6
49C652:  STR             R0, [R5]
49C654:  MOV             R0, R5; this
49C656:  MOVS            R1, #byte_4; void *
49C658:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49C65C:  MOV             R0, R5; p
49C65E:  BLX             free
49C662:  LDR.W           R0, [R9]
49C666:  LDR             R1, [R0,#0x14]
49C668:  MOV             R0, R9
49C66A:  BLX             R1
49C66C:  MOV             R8, R0
49C66E:  LDR             R0, =(UseDataFence_ptr - 0x49C674)
49C670:  ADD             R0, PC; UseDataFence_ptr
49C672:  LDR             R0, [R0]; UseDataFence
49C674:  LDRB            R5, [R0]
49C676:  CBZ             R5, loc_49C6B6
49C678:  LDR             R0, =(currentSaveFenceCount_ptr - 0x49C684)
49C67A:  MOVS            R3, #0
49C67C:  LDR             R1, =(UseDataFence_ptr - 0x49C686)
49C67E:  LDR             R2, =(DataFence_ptr - 0x49C688)
49C680:  ADD             R0, PC; currentSaveFenceCount_ptr
49C682:  ADD             R1, PC; UseDataFence_ptr
49C684:  ADD             R2, PC; DataFence_ptr
49C686:  LDR             R0, [R0]; currentSaveFenceCount
49C688:  LDR.W           R10, [R1]; UseDataFence
49C68C:  LDR             R1, [R2]; DataFence
49C68E:  LDR             R2, [R0]
49C690:  STRB.W          R3, [R10]
49C694:  LDRH            R1, [R1]
49C696:  ADDS            R3, R2, #1
49C698:  STR             R3, [R0]
49C69A:  MOVS            R0, #2; byte_count
49C69C:  ADDS            R4, R2, R1
49C69E:  BLX             malloc
49C6A2:  MOV             R6, R0
49C6A4:  MOVS            R1, #(stderr+2); void *
49C6A6:  STRH            R4, [R6]
49C6A8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49C6AC:  MOV             R0, R6; p
49C6AE:  BLX             free
49C6B2:  STRB.W          R5, [R10]
49C6B6:  MOVS            R0, #4; byte_count
49C6B8:  BLX             malloc
49C6BC:  MOV             R6, R0
49C6BE:  MOVS            R1, #byte_4; void *
49C6C0:  STR.W           R8, [R6]
49C6C4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49C6C8:  MOV             R0, R6; p
49C6CA:  BLX             free
49C6CE:  LDR.W           R0, [R9]
49C6D2:  LDR             R1, [R0,#0x14]
49C6D4:  MOV             R0, R9
49C6D6:  BLX             R1
49C6D8:  MOVW            R1, #0x38B
49C6DC:  CMP             R0, R1
49C6DE:  BNE             loc_49C776
49C6E0:  LDR.W           R0, [R9,#0xC]
49C6E4:  CMP             R0, #0
49C6E6:  BEQ             loc_49C7AA
49C6E8:  LDR             R1, =(UseDataFence_ptr - 0x49C6F2)
49C6EA:  LDRB.W          R0, [R0,#0x3A]
49C6EE:  ADD             R1, PC; UseDataFence_ptr
49C6F0:  AND.W           R8, R0, #7
49C6F4:  LDR             R1, [R1]; UseDataFence
49C6F6:  LDRB            R6, [R1]
49C6F8:  CBZ             R6, loc_49C738
49C6FA:  LDR             R0, =(currentSaveFenceCount_ptr - 0x49C706)
49C6FC:  MOVS            R3, #0
49C6FE:  LDR             R1, =(UseDataFence_ptr - 0x49C708)
49C700:  LDR             R2, =(DataFence_ptr - 0x49C70A)
49C702:  ADD             R0, PC; currentSaveFenceCount_ptr
49C704:  ADD             R1, PC; UseDataFence_ptr
49C706:  ADD             R2, PC; DataFence_ptr
49C708:  LDR             R0, [R0]; currentSaveFenceCount
49C70A:  LDR.W           R10, [R1]; UseDataFence
49C70E:  LDR             R1, [R2]; DataFence
49C710:  LDR             R2, [R0]
49C712:  STRB.W          R3, [R10]
49C716:  LDRH            R1, [R1]
49C718:  ADDS            R3, R2, #1
49C71A:  STR             R3, [R0]
49C71C:  MOVS            R0, #2; byte_count
49C71E:  ADDS            R4, R2, R1
49C720:  BLX             malloc
49C724:  MOV             R5, R0
49C726:  MOVS            R1, #(stderr+2); void *
49C728:  STRH            R4, [R5]
49C72A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49C72E:  MOV             R0, R5; p
49C730:  BLX             free
49C734:  STRB.W          R6, [R10]
49C738:  MOVS            R0, #4; byte_count
49C73A:  BLX             malloc
49C73E:  MOV             R5, R0
49C740:  MOVS            R1, #byte_4; void *
49C742:  STR.W           R8, [R5]
49C746:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49C74A:  MOV             R0, R5; p
49C74C:  BLX             free
49C750:  LDR.W           R0, [R9,#0xC]; this
49C754:  LDRB.W          R1, [R0,#0x3A]
49C758:  AND.W           R1, R1, #7; CObject *
49C75C:  CMP             R1, #2
49C75E:  BEQ             loc_49C818
49C760:  CMP             R1, #4
49C762:  BEQ             loc_49C822
49C764:  CMP             R1, #3
49C766:  BNE             loc_49C790
49C768:  CMP             R0, #0
49C76A:  BEQ.W           loc_49C8F4
49C76E:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
49C772:  MOV             R8, R0
49C774:  B               loc_49C8F8
49C776:  LDR.W           R0, [R9]
49C77A:  LDR             R1, [R0,#0x14]
49C77C:  MOV             R0, R9
49C77E:  BLX             R1
49C780:  LDR             R1, =(aErrorClassDIsN - 0x49C78E); "ERROR - class %d is not type %d seriali"...
49C782:  MOV             R2, R0
49C784:  ADD             R0, SP, #0xA0+var_9C
49C786:  MOVW            R3, #0x38B
49C78A:  ADD             R1, PC; "ERROR - class %d is not type %d seriali"...
49C78C:  BL              sub_5E6BC0
49C790:  LDR             R0, =(__stack_chk_guard_ptr - 0x49C798)
49C792:  LDR             R1, [SP,#0xA0+var_1C]
49C794:  ADD             R0, PC; __stack_chk_guard_ptr
49C796:  LDR             R0, [R0]; __stack_chk_guard
49C798:  LDR             R0, [R0]
49C79A:  SUBS            R0, R0, R1
49C79C:  ITTT EQ
49C79E:  ADDEQ           SP, SP, #0x88
49C7A0:  POPEQ.W         {R8-R10}
49C7A4:  POPEQ           {R4-R7,PC}
49C7A6:  BLX             __stack_chk_fail
49C7AA:  LDR             R0, =(UseDataFence_ptr - 0x49C7B0)
49C7AC:  ADD             R0, PC; UseDataFence_ptr
49C7AE:  LDR             R0, [R0]; UseDataFence
49C7B0:  LDRB            R5, [R0]
49C7B2:  CBZ             R5, loc_49C7F2
49C7B4:  LDR             R0, =(currentSaveFenceCount_ptr - 0x49C7C0)
49C7B6:  MOVS            R3, #0
49C7B8:  LDR             R1, =(UseDataFence_ptr - 0x49C7C2)
49C7BA:  LDR             R2, =(DataFence_ptr - 0x49C7C4)
49C7BC:  ADD             R0, PC; currentSaveFenceCount_ptr
49C7BE:  ADD             R1, PC; UseDataFence_ptr
49C7C0:  ADD             R2, PC; DataFence_ptr
49C7C2:  LDR             R0, [R0]; currentSaveFenceCount
49C7C4:  LDR.W           R8, [R1]; UseDataFence
49C7C8:  LDR             R1, [R2]; DataFence
49C7CA:  LDR             R2, [R0]
49C7CC:  STRB.W          R3, [R8]
49C7D0:  LDRH            R1, [R1]
49C7D2:  ADDS            R3, R2, #1
49C7D4:  STR             R3, [R0]
49C7D6:  MOVS            R0, #2; byte_count
49C7D8:  ADDS            R6, R2, R1
49C7DA:  BLX             malloc
49C7DE:  MOV             R4, R0
49C7E0:  MOVS            R1, #(stderr+2); void *
49C7E2:  STRH            R6, [R4]
49C7E4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49C7E8:  MOV             R0, R4; p
49C7EA:  BLX             free
49C7EE:  STRB.W          R5, [R8]
49C7F2:  MOVS            R0, #4; byte_count
49C7F4:  BLX             malloc
49C7F8:  MOV             R4, R0
49C7FA:  MOVS            R0, #0
49C7FC:  STR             R0, [R4]
49C7FE:  MOV             R0, R4; this
49C800:  MOVS            R1, #byte_4; void *
49C802:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49C806:  LDR             R0, =(__stack_chk_guard_ptr - 0x49C80E)
49C808:  LDR             R1, [SP,#0xA0+var_1C]
49C80A:  ADD             R0, PC; __stack_chk_guard_ptr
49C80C:  LDR             R0, [R0]; __stack_chk_guard
49C80E:  LDR             R0, [R0]
49C810:  SUBS            R0, R0, R1
49C812:  BNE             loc_49C7A6
49C814:  MOV             R0, R4
49C816:  B               loc_49C964
49C818:  CBZ             R0, loc_49C82C
49C81A:  BLX             j__ZN6CPools13GetVehicleRefEP8CVehicle; CPools::GetVehicleRef(CVehicle *)
49C81E:  MOV             R8, R0
49C820:  B               loc_49C830
49C822:  CBZ             R0, loc_49C890
49C824:  BLX             j__ZN6CPools12GetObjectRefEP7CObject; CPools::GetObjectRef(CObject *)
49C828:  MOV             R8, R0
49C82A:  B               loc_49C894
49C82C:  MOV.W           R8, #0xFFFFFFFF
49C830:  LDR             R0, =(UseDataFence_ptr - 0x49C836)
49C832:  ADD             R0, PC; UseDataFence_ptr
49C834:  LDR             R0, [R0]; UseDataFence
49C836:  LDRB            R6, [R0]
49C838:  CBZ             R6, loc_49C878
49C83A:  LDR             R0, =(currentSaveFenceCount_ptr - 0x49C846)
49C83C:  MOVS            R3, #0
49C83E:  LDR             R1, =(UseDataFence_ptr - 0x49C848)
49C840:  LDR             R2, =(DataFence_ptr - 0x49C84A)
49C842:  ADD             R0, PC; currentSaveFenceCount_ptr
49C844:  ADD             R1, PC; UseDataFence_ptr
49C846:  ADD             R2, PC; DataFence_ptr
49C848:  LDR             R0, [R0]; currentSaveFenceCount
49C84A:  LDR.W           R9, [R1]; UseDataFence
49C84E:  LDR             R1, [R2]; DataFence
49C850:  LDR             R2, [R0]
49C852:  STRB.W          R3, [R9]
49C856:  LDRH            R1, [R1]
49C858:  ADDS            R3, R2, #1
49C85A:  STR             R3, [R0]
49C85C:  MOVS            R0, #2; byte_count
49C85E:  ADDS            R4, R2, R1
49C860:  BLX             malloc
49C864:  MOV             R5, R0
49C866:  MOVS            R1, #(stderr+2); void *
49C868:  STRH            R4, [R5]
49C86A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49C86E:  MOV             R0, R5; p
49C870:  BLX             free
49C874:  STRB.W          R6, [R9]
49C878:  MOVS            R0, #4; byte_count
49C87A:  BLX             malloc
49C87E:  MOV             R5, R0
49C880:  MOVS            R1, #byte_4; void *
49C882:  STR.W           R8, [R5]
49C886:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49C88A:  LDR             R0, =(__stack_chk_guard_ptr - 0x49C890)
49C88C:  ADD             R0, PC; __stack_chk_guard_ptr
49C88E:  B               loc_49C956
49C890:  MOV.W           R8, #0xFFFFFFFF
49C894:  LDR             R0, =(UseDataFence_ptr - 0x49C89A)
49C896:  ADD             R0, PC; UseDataFence_ptr
49C898:  LDR             R0, [R0]; UseDataFence
49C89A:  LDRB            R6, [R0]
49C89C:  CBZ             R6, loc_49C8DC
49C89E:  LDR             R0, =(currentSaveFenceCount_ptr - 0x49C8AA)
49C8A0:  MOVS            R3, #0
49C8A2:  LDR             R1, =(UseDataFence_ptr - 0x49C8AC)
49C8A4:  LDR             R2, =(DataFence_ptr - 0x49C8AE)
49C8A6:  ADD             R0, PC; currentSaveFenceCount_ptr
49C8A8:  ADD             R1, PC; UseDataFence_ptr
49C8AA:  ADD             R2, PC; DataFence_ptr
49C8AC:  LDR             R0, [R0]; currentSaveFenceCount
49C8AE:  LDR.W           R9, [R1]; UseDataFence
49C8B2:  LDR             R1, [R2]; DataFence
49C8B4:  LDR             R2, [R0]
49C8B6:  STRB.W          R3, [R9]
49C8BA:  LDRH            R1, [R1]
49C8BC:  ADDS            R3, R2, #1
49C8BE:  STR             R3, [R0]
49C8C0:  MOVS            R0, #2; byte_count
49C8C2:  ADDS            R4, R2, R1
49C8C4:  BLX             malloc
49C8C8:  MOV             R5, R0
49C8CA:  MOVS            R1, #(stderr+2); void *
49C8CC:  STRH            R4, [R5]
49C8CE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49C8D2:  MOV             R0, R5; p
49C8D4:  BLX             free
49C8D8:  STRB.W          R6, [R9]
49C8DC:  MOVS            R0, #4; byte_count
49C8DE:  BLX             malloc
49C8E2:  MOV             R5, R0
49C8E4:  MOVS            R1, #byte_4; void *
49C8E6:  STR.W           R8, [R5]
49C8EA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49C8EE:  LDR             R0, =(__stack_chk_guard_ptr - 0x49C8F4)
49C8F0:  ADD             R0, PC; __stack_chk_guard_ptr
49C8F2:  B               loc_49C956
49C8F4:  MOV.W           R8, #0xFFFFFFFF
49C8F8:  LDR             R0, =(UseDataFence_ptr - 0x49C8FE)
49C8FA:  ADD             R0, PC; UseDataFence_ptr
49C8FC:  LDR             R0, [R0]; UseDataFence
49C8FE:  LDRB            R6, [R0]
49C900:  CBZ             R6, loc_49C940
49C902:  LDR             R0, =(currentSaveFenceCount_ptr - 0x49C90E)
49C904:  MOVS            R3, #0
49C906:  LDR             R1, =(UseDataFence_ptr - 0x49C910)
49C908:  LDR             R2, =(DataFence_ptr - 0x49C912)
49C90A:  ADD             R0, PC; currentSaveFenceCount_ptr
49C90C:  ADD             R1, PC; UseDataFence_ptr
49C90E:  ADD             R2, PC; DataFence_ptr
49C910:  LDR             R0, [R0]; currentSaveFenceCount
49C912:  LDR.W           R9, [R1]; UseDataFence
49C916:  LDR             R1, [R2]; DataFence
49C918:  LDR             R2, [R0]
49C91A:  STRB.W          R3, [R9]
49C91E:  LDRH            R1, [R1]
49C920:  ADDS            R3, R2, #1
49C922:  STR             R3, [R0]
49C924:  MOVS            R0, #2; byte_count
49C926:  ADDS            R4, R2, R1
49C928:  BLX             malloc
49C92C:  MOV             R5, R0
49C92E:  MOVS            R1, #(stderr+2); void *
49C930:  STRH            R4, [R5]
49C932:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49C936:  MOV             R0, R5; p
49C938:  BLX             free
49C93C:  STRB.W          R6, [R9]
49C940:  MOVS            R0, #4; byte_count
49C942:  BLX             malloc
49C946:  MOV             R5, R0
49C948:  MOVS            R1, #byte_4; void *
49C94A:  STR.W           R8, [R5]
49C94E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49C952:  LDR             R0, =(__stack_chk_guard_ptr - 0x49C958)
49C954:  ADD             R0, PC; __stack_chk_guard_ptr
49C956:  LDR             R0, [R0]; __stack_chk_guard
49C958:  LDR             R1, [SP,#0xA0+var_1C]
49C95A:  LDR             R0, [R0]
49C95C:  SUBS            R0, R0, R1
49C95E:  BNE.W           loc_49C7A6
49C962:  MOV             R0, R5; p
49C964:  ADD             SP, SP, #0x88
49C966:  POP.W           {R8-R10}
49C96A:  POP.W           {R4-R7,LR}
49C96E:  B.W             j_free
