; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI37CEntitySeekPosCalculatorEntitySurfaceE9SerializeEv
; Address            : 0x49A514 - 0x49A89C
; =========================================================

49A514:  PUSH            {R4-R7,LR}
49A516:  ADD             R7, SP, #0xC
49A518:  PUSH.W          {R8-R10}
49A51C:  SUB             SP, SP, #0x88
49A51E:  MOV             R9, R0
49A520:  LDR             R0, =(UseDataFence_ptr - 0x49A528)
49A522:  LDR             R1, =(__stack_chk_guard_ptr - 0x49A52A)
49A524:  ADD             R0, PC; UseDataFence_ptr
49A526:  ADD             R1, PC; __stack_chk_guard_ptr
49A528:  LDR             R0, [R0]; UseDataFence
49A52A:  LDR             R1, [R1]; __stack_chk_guard
49A52C:  LDRB            R6, [R0]
49A52E:  LDR             R0, [R1]
49A530:  CMP             R6, #0
49A532:  STR             R0, [SP,#0xA0+var_1C]
49A534:  BEQ             loc_49A574
49A536:  LDR             R0, =(currentSaveFenceCount_ptr - 0x49A542)
49A538:  MOVS            R3, #0
49A53A:  LDR             R1, =(UseDataFence_ptr - 0x49A544)
49A53C:  LDR             R2, =(DataFence_ptr - 0x49A546)
49A53E:  ADD             R0, PC; currentSaveFenceCount_ptr
49A540:  ADD             R1, PC; UseDataFence_ptr
49A542:  ADD             R2, PC; DataFence_ptr
49A544:  LDR             R0, [R0]; currentSaveFenceCount
49A546:  LDR.W           R8, [R1]; UseDataFence
49A54A:  LDR             R1, [R2]; DataFence
49A54C:  LDR             R2, [R0]
49A54E:  STRB.W          R3, [R8]
49A552:  LDRH            R1, [R1]
49A554:  ADDS            R3, R2, #1
49A556:  STR             R3, [R0]
49A558:  MOVS            R0, #2; byte_count
49A55A:  ADDS            R4, R2, R1
49A55C:  BLX             malloc
49A560:  MOV             R5, R0
49A562:  MOVS            R1, #(stderr+2); void *
49A564:  STRH            R4, [R5]
49A566:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49A56A:  MOV             R0, R5; p
49A56C:  BLX             free
49A570:  STRB.W          R6, [R8]
49A574:  MOVS            R0, #4; byte_count
49A576:  MOVS            R4, #4
49A578:  BLX             malloc
49A57C:  MOV             R5, R0
49A57E:  MOVS            R1, #byte_4; void *
49A580:  STR             R4, [R5]
49A582:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49A586:  MOV             R0, R5; p
49A588:  BLX             free
49A58C:  LDR.W           R0, [R9]
49A590:  LDR             R1, [R0,#0x14]
49A592:  MOV             R0, R9
49A594:  BLX             R1
49A596:  MOV             R8, R0
49A598:  LDR             R0, =(UseDataFence_ptr - 0x49A59E)
49A59A:  ADD             R0, PC; UseDataFence_ptr
49A59C:  LDR             R0, [R0]; UseDataFence
49A59E:  LDRB            R5, [R0]
49A5A0:  CBZ             R5, loc_49A5E0
49A5A2:  LDR             R0, =(currentSaveFenceCount_ptr - 0x49A5AE)
49A5A4:  MOVS            R3, #0
49A5A6:  LDR             R1, =(UseDataFence_ptr - 0x49A5B0)
49A5A8:  LDR             R2, =(DataFence_ptr - 0x49A5B2)
49A5AA:  ADD             R0, PC; currentSaveFenceCount_ptr
49A5AC:  ADD             R1, PC; UseDataFence_ptr
49A5AE:  ADD             R2, PC; DataFence_ptr
49A5B0:  LDR             R0, [R0]; currentSaveFenceCount
49A5B2:  LDR.W           R10, [R1]; UseDataFence
49A5B6:  LDR             R1, [R2]; DataFence
49A5B8:  LDR             R2, [R0]
49A5BA:  STRB.W          R3, [R10]
49A5BE:  LDRH            R1, [R1]
49A5C0:  ADDS            R3, R2, #1
49A5C2:  STR             R3, [R0]
49A5C4:  MOVS            R0, #2; byte_count
49A5C6:  ADDS            R4, R2, R1
49A5C8:  BLX             malloc
49A5CC:  MOV             R6, R0
49A5CE:  MOVS            R1, #(stderr+2); void *
49A5D0:  STRH            R4, [R6]
49A5D2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49A5D6:  MOV             R0, R6; p
49A5D8:  BLX             free
49A5DC:  STRB.W          R5, [R10]
49A5E0:  MOVS            R0, #4; byte_count
49A5E2:  BLX             malloc
49A5E6:  MOV             R6, R0
49A5E8:  MOVS            R1, #byte_4; void *
49A5EA:  STR.W           R8, [R6]
49A5EE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49A5F2:  MOV             R0, R6; p
49A5F4:  BLX             free
49A5F8:  LDR.W           R0, [R9]
49A5FC:  LDR             R1, [R0,#0x14]
49A5FE:  MOV             R0, R9
49A600:  BLX             R1
49A602:  MOVW            R1, #0x38B
49A606:  CMP             R0, R1
49A608:  BNE             loc_49A6A0
49A60A:  LDR.W           R0, [R9,#0xC]
49A60E:  CMP             R0, #0
49A610:  BEQ             loc_49A6D4
49A612:  LDR             R1, =(UseDataFence_ptr - 0x49A61C)
49A614:  LDRB.W          R0, [R0,#0x3A]
49A618:  ADD             R1, PC; UseDataFence_ptr
49A61A:  AND.W           R8, R0, #7
49A61E:  LDR             R1, [R1]; UseDataFence
49A620:  LDRB            R6, [R1]
49A622:  CBZ             R6, loc_49A662
49A624:  LDR             R0, =(currentSaveFenceCount_ptr - 0x49A630)
49A626:  MOVS            R3, #0
49A628:  LDR             R1, =(UseDataFence_ptr - 0x49A632)
49A62A:  LDR             R2, =(DataFence_ptr - 0x49A634)
49A62C:  ADD             R0, PC; currentSaveFenceCount_ptr
49A62E:  ADD             R1, PC; UseDataFence_ptr
49A630:  ADD             R2, PC; DataFence_ptr
49A632:  LDR             R0, [R0]; currentSaveFenceCount
49A634:  LDR.W           R10, [R1]; UseDataFence
49A638:  LDR             R1, [R2]; DataFence
49A63A:  LDR             R2, [R0]
49A63C:  STRB.W          R3, [R10]
49A640:  LDRH            R1, [R1]
49A642:  ADDS            R3, R2, #1
49A644:  STR             R3, [R0]
49A646:  MOVS            R0, #2; byte_count
49A648:  ADDS            R4, R2, R1
49A64A:  BLX             malloc
49A64E:  MOV             R5, R0
49A650:  MOVS            R1, #(stderr+2); void *
49A652:  STRH            R4, [R5]
49A654:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49A658:  MOV             R0, R5; p
49A65A:  BLX             free
49A65E:  STRB.W          R6, [R10]
49A662:  MOVS            R0, #4; byte_count
49A664:  BLX             malloc
49A668:  MOV             R5, R0
49A66A:  MOVS            R1, #byte_4; void *
49A66C:  STR.W           R8, [R5]
49A670:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49A674:  MOV             R0, R5; p
49A676:  BLX             free
49A67A:  LDR.W           R0, [R9,#0xC]; this
49A67E:  LDRB.W          R1, [R0,#0x3A]
49A682:  AND.W           R1, R1, #7; CObject *
49A686:  CMP             R1, #2
49A688:  BEQ             loc_49A742
49A68A:  CMP             R1, #4
49A68C:  BEQ             loc_49A74C
49A68E:  CMP             R1, #3
49A690:  BNE             loc_49A6BA
49A692:  CMP             R0, #0
49A694:  BEQ.W           loc_49A81E
49A698:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
49A69C:  MOV             R8, R0
49A69E:  B               loc_49A822
49A6A0:  LDR.W           R0, [R9]
49A6A4:  LDR             R1, [R0,#0x14]
49A6A6:  MOV             R0, R9
49A6A8:  BLX             R1
49A6AA:  LDR             R1, =(aErrorClassDIsN - 0x49A6B8); "ERROR - class %d is not type %d seriali"...
49A6AC:  MOV             R2, R0
49A6AE:  ADD             R0, SP, #0xA0+var_9C
49A6B0:  MOVW            R3, #0x38B
49A6B4:  ADD             R1, PC; "ERROR - class %d is not type %d seriali"...
49A6B6:  BL              sub_5E6BC0
49A6BA:  LDR             R0, =(__stack_chk_guard_ptr - 0x49A6C2)
49A6BC:  LDR             R1, [SP,#0xA0+var_1C]
49A6BE:  ADD             R0, PC; __stack_chk_guard_ptr
49A6C0:  LDR             R0, [R0]; __stack_chk_guard
49A6C2:  LDR             R0, [R0]
49A6C4:  SUBS            R0, R0, R1
49A6C6:  ITTT EQ
49A6C8:  ADDEQ           SP, SP, #0x88
49A6CA:  POPEQ.W         {R8-R10}
49A6CE:  POPEQ           {R4-R7,PC}
49A6D0:  BLX             __stack_chk_fail
49A6D4:  LDR             R0, =(UseDataFence_ptr - 0x49A6DA)
49A6D6:  ADD             R0, PC; UseDataFence_ptr
49A6D8:  LDR             R0, [R0]; UseDataFence
49A6DA:  LDRB            R5, [R0]
49A6DC:  CBZ             R5, loc_49A71C
49A6DE:  LDR             R0, =(currentSaveFenceCount_ptr - 0x49A6EA)
49A6E0:  MOVS            R3, #0
49A6E2:  LDR             R1, =(UseDataFence_ptr - 0x49A6EC)
49A6E4:  LDR             R2, =(DataFence_ptr - 0x49A6EE)
49A6E6:  ADD             R0, PC; currentSaveFenceCount_ptr
49A6E8:  ADD             R1, PC; UseDataFence_ptr
49A6EA:  ADD             R2, PC; DataFence_ptr
49A6EC:  LDR             R0, [R0]; currentSaveFenceCount
49A6EE:  LDR.W           R8, [R1]; UseDataFence
49A6F2:  LDR             R1, [R2]; DataFence
49A6F4:  LDR             R2, [R0]
49A6F6:  STRB.W          R3, [R8]
49A6FA:  LDRH            R1, [R1]
49A6FC:  ADDS            R3, R2, #1
49A6FE:  STR             R3, [R0]
49A700:  MOVS            R0, #2; byte_count
49A702:  ADDS            R6, R2, R1
49A704:  BLX             malloc
49A708:  MOV             R4, R0
49A70A:  MOVS            R1, #(stderr+2); void *
49A70C:  STRH            R6, [R4]
49A70E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49A712:  MOV             R0, R4; p
49A714:  BLX             free
49A718:  STRB.W          R5, [R8]
49A71C:  MOVS            R0, #4; byte_count
49A71E:  BLX             malloc
49A722:  MOV             R4, R0
49A724:  MOVS            R0, #0
49A726:  STR             R0, [R4]
49A728:  MOV             R0, R4; this
49A72A:  MOVS            R1, #byte_4; void *
49A72C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49A730:  LDR             R0, =(__stack_chk_guard_ptr - 0x49A738)
49A732:  LDR             R1, [SP,#0xA0+var_1C]
49A734:  ADD             R0, PC; __stack_chk_guard_ptr
49A736:  LDR             R0, [R0]; __stack_chk_guard
49A738:  LDR             R0, [R0]
49A73A:  SUBS            R0, R0, R1
49A73C:  BNE             loc_49A6D0
49A73E:  MOV             R0, R4
49A740:  B               loc_49A88E
49A742:  CBZ             R0, loc_49A756
49A744:  BLX             j__ZN6CPools13GetVehicleRefEP8CVehicle; CPools::GetVehicleRef(CVehicle *)
49A748:  MOV             R8, R0
49A74A:  B               loc_49A75A
49A74C:  CBZ             R0, loc_49A7BA
49A74E:  BLX             j__ZN6CPools12GetObjectRefEP7CObject; CPools::GetObjectRef(CObject *)
49A752:  MOV             R8, R0
49A754:  B               loc_49A7BE
49A756:  MOV.W           R8, #0xFFFFFFFF
49A75A:  LDR             R0, =(UseDataFence_ptr - 0x49A760)
49A75C:  ADD             R0, PC; UseDataFence_ptr
49A75E:  LDR             R0, [R0]; UseDataFence
49A760:  LDRB            R6, [R0]
49A762:  CBZ             R6, loc_49A7A2
49A764:  LDR             R0, =(currentSaveFenceCount_ptr - 0x49A770)
49A766:  MOVS            R3, #0
49A768:  LDR             R1, =(UseDataFence_ptr - 0x49A772)
49A76A:  LDR             R2, =(DataFence_ptr - 0x49A774)
49A76C:  ADD             R0, PC; currentSaveFenceCount_ptr
49A76E:  ADD             R1, PC; UseDataFence_ptr
49A770:  ADD             R2, PC; DataFence_ptr
49A772:  LDR             R0, [R0]; currentSaveFenceCount
49A774:  LDR.W           R9, [R1]; UseDataFence
49A778:  LDR             R1, [R2]; DataFence
49A77A:  LDR             R2, [R0]
49A77C:  STRB.W          R3, [R9]
49A780:  LDRH            R1, [R1]
49A782:  ADDS            R3, R2, #1
49A784:  STR             R3, [R0]
49A786:  MOVS            R0, #2; byte_count
49A788:  ADDS            R4, R2, R1
49A78A:  BLX             malloc
49A78E:  MOV             R5, R0
49A790:  MOVS            R1, #(stderr+2); void *
49A792:  STRH            R4, [R5]
49A794:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49A798:  MOV             R0, R5; p
49A79A:  BLX             free
49A79E:  STRB.W          R6, [R9]
49A7A2:  MOVS            R0, #4; byte_count
49A7A4:  BLX             malloc
49A7A8:  MOV             R5, R0
49A7AA:  MOVS            R1, #byte_4; void *
49A7AC:  STR.W           R8, [R5]
49A7B0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49A7B4:  LDR             R0, =(__stack_chk_guard_ptr - 0x49A7BA)
49A7B6:  ADD             R0, PC; __stack_chk_guard_ptr
49A7B8:  B               loc_49A880
49A7BA:  MOV.W           R8, #0xFFFFFFFF
49A7BE:  LDR             R0, =(UseDataFence_ptr - 0x49A7C4)
49A7C0:  ADD             R0, PC; UseDataFence_ptr
49A7C2:  LDR             R0, [R0]; UseDataFence
49A7C4:  LDRB            R6, [R0]
49A7C6:  CBZ             R6, loc_49A806
49A7C8:  LDR             R0, =(currentSaveFenceCount_ptr - 0x49A7D4)
49A7CA:  MOVS            R3, #0
49A7CC:  LDR             R1, =(UseDataFence_ptr - 0x49A7D6)
49A7CE:  LDR             R2, =(DataFence_ptr - 0x49A7D8)
49A7D0:  ADD             R0, PC; currentSaveFenceCount_ptr
49A7D2:  ADD             R1, PC; UseDataFence_ptr
49A7D4:  ADD             R2, PC; DataFence_ptr
49A7D6:  LDR             R0, [R0]; currentSaveFenceCount
49A7D8:  LDR.W           R9, [R1]; UseDataFence
49A7DC:  LDR             R1, [R2]; DataFence
49A7DE:  LDR             R2, [R0]
49A7E0:  STRB.W          R3, [R9]
49A7E4:  LDRH            R1, [R1]
49A7E6:  ADDS            R3, R2, #1
49A7E8:  STR             R3, [R0]
49A7EA:  MOVS            R0, #2; byte_count
49A7EC:  ADDS            R4, R2, R1
49A7EE:  BLX             malloc
49A7F2:  MOV             R5, R0
49A7F4:  MOVS            R1, #(stderr+2); void *
49A7F6:  STRH            R4, [R5]
49A7F8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49A7FC:  MOV             R0, R5; p
49A7FE:  BLX             free
49A802:  STRB.W          R6, [R9]
49A806:  MOVS            R0, #4; byte_count
49A808:  BLX             malloc
49A80C:  MOV             R5, R0
49A80E:  MOVS            R1, #byte_4; void *
49A810:  STR.W           R8, [R5]
49A814:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49A818:  LDR             R0, =(__stack_chk_guard_ptr - 0x49A81E)
49A81A:  ADD             R0, PC; __stack_chk_guard_ptr
49A81C:  B               loc_49A880
49A81E:  MOV.W           R8, #0xFFFFFFFF
49A822:  LDR             R0, =(UseDataFence_ptr - 0x49A828)
49A824:  ADD             R0, PC; UseDataFence_ptr
49A826:  LDR             R0, [R0]; UseDataFence
49A828:  LDRB            R6, [R0]
49A82A:  CBZ             R6, loc_49A86A
49A82C:  LDR             R0, =(currentSaveFenceCount_ptr - 0x49A838)
49A82E:  MOVS            R3, #0
49A830:  LDR             R1, =(UseDataFence_ptr - 0x49A83A)
49A832:  LDR             R2, =(DataFence_ptr - 0x49A83C)
49A834:  ADD             R0, PC; currentSaveFenceCount_ptr
49A836:  ADD             R1, PC; UseDataFence_ptr
49A838:  ADD             R2, PC; DataFence_ptr
49A83A:  LDR             R0, [R0]; currentSaveFenceCount
49A83C:  LDR.W           R9, [R1]; UseDataFence
49A840:  LDR             R1, [R2]; DataFence
49A842:  LDR             R2, [R0]
49A844:  STRB.W          R3, [R9]
49A848:  LDRH            R1, [R1]
49A84A:  ADDS            R3, R2, #1
49A84C:  STR             R3, [R0]
49A84E:  MOVS            R0, #2; byte_count
49A850:  ADDS            R4, R2, R1
49A852:  BLX             malloc
49A856:  MOV             R5, R0
49A858:  MOVS            R1, #(stderr+2); void *
49A85A:  STRH            R4, [R5]
49A85C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49A860:  MOV             R0, R5; p
49A862:  BLX             free
49A866:  STRB.W          R6, [R9]
49A86A:  MOVS            R0, #4; byte_count
49A86C:  BLX             malloc
49A870:  MOV             R5, R0
49A872:  MOVS            R1, #byte_4; void *
49A874:  STR.W           R8, [R5]
49A878:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
49A87C:  LDR             R0, =(__stack_chk_guard_ptr - 0x49A882)
49A87E:  ADD             R0, PC; __stack_chk_guard_ptr
49A880:  LDR             R0, [R0]; __stack_chk_guard
49A882:  LDR             R1, [SP,#0xA0+var_1C]
49A884:  LDR             R0, [R0]
49A886:  SUBS            R0, R0, R1
49A888:  BNE.W           loc_49A6D0
49A88C:  MOV             R0, R5; p
49A88E:  ADD             SP, SP, #0x88
49A890:  POP.W           {R8-R10}
49A894:  POP.W           {R4-R7,LR}
49A898:  B.W             j_free
