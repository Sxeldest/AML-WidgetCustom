; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI41CEntitySeekPosCalculatorRadiusAngleOffsetE9SerializeEv
; Address            : 0x35D71C - 0x35D86C
; =========================================================

35D71C:  PUSH            {R4-R7,LR}
35D71E:  ADD             R7, SP, #0xC
35D720:  PUSH.W          {R11}
35D724:  MOV             R4, R0
35D726:  LDR             R0, =(UseDataFence_ptr - 0x35D72C)
35D728:  ADD             R0, PC; UseDataFence_ptr
35D72A:  LDR             R0, [R0]; UseDataFence
35D72C:  LDRB            R0, [R0]
35D72E:  CMP             R0, #0
35D730:  IT NE
35D732:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
35D736:  MOVS            R0, #4; byte_count
35D738:  BLX             malloc
35D73C:  MOV             R5, R0
35D73E:  MOVS            R0, #2
35D740:  STR             R0, [R5]
35D742:  MOV             R0, R5; this
35D744:  MOVS            R1, #byte_4; void *
35D746:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
35D74A:  MOV             R0, R5; p
35D74C:  BLX             free
35D750:  LDR             R0, [R4]
35D752:  LDR             R1, [R0,#0x14]
35D754:  MOV             R0, R4
35D756:  BLX             R1
35D758:  MOV             R5, R0
35D75A:  LDR             R0, =(UseDataFence_ptr - 0x35D760)
35D75C:  ADD             R0, PC; UseDataFence_ptr
35D75E:  LDR             R0, [R0]; UseDataFence
35D760:  LDRB            R0, [R0]
35D762:  CMP             R0, #0
35D764:  IT NE
35D766:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
35D76A:  MOVS            R0, #4; byte_count
35D76C:  BLX             malloc
35D770:  MOV             R6, R0
35D772:  MOVS            R1, #byte_4; void *
35D774:  STR             R5, [R6]
35D776:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
35D77A:  MOV             R0, R6; p
35D77C:  BLX             free
35D780:  LDR             R0, [R4]
35D782:  LDR             R1, [R0,#0x14]
35D784:  MOV             R0, R4
35D786:  BLX             R1
35D788:  MOVW            R1, #0x38B
35D78C:  CMP             R0, R1
35D78E:  BNE             loc_35D7EA
35D790:  LDR             R0, [R4,#0xC]
35D792:  CBZ             R0, loc_35D804
35D794:  LDR             R1, =(UseDataFence_ptr - 0x35D79E)
35D796:  LDRB.W          R0, [R0,#0x3A]
35D79A:  ADD             R1, PC; UseDataFence_ptr
35D79C:  AND.W           R6, R0, #7
35D7A0:  LDR             R1, [R1]; UseDataFence
35D7A2:  LDRB            R1, [R1]
35D7A4:  CMP             R1, #0
35D7A6:  IT NE
35D7A8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
35D7AC:  MOVS            R0, #4; byte_count
35D7AE:  BLX             malloc
35D7B2:  MOV             R5, R0
35D7B4:  MOVS            R1, #byte_4; void *
35D7B6:  STR             R6, [R5]
35D7B8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
35D7BC:  MOV             R0, R5; p
35D7BE:  BLX             free
35D7C2:  LDR             R0, [R4,#0xC]; CObject *
35D7C4:  LDRB.W          R1, [R0,#0x3A]
35D7C8:  AND.W           R1, R1, #7
35D7CC:  CMP             R1, #2
35D7CE:  BEQ             loc_35D82C
35D7D0:  CMP             R1, #4
35D7D2:  BEQ             loc_35D838
35D7D4:  CMP             R1, #3
35D7D6:  ITT NE
35D7D8:  POPNE.W         {R11}
35D7DC:  POPNE           {R4-R7,PC}
35D7DE:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
35D7E2:  MOV             R4, R0
35D7E4:  LDR             R0, =(UseDataFence_ptr - 0x35D7EA)
35D7E6:  ADD             R0, PC; UseDataFence_ptr
35D7E8:  B               loc_35D842
35D7EA:  LDR             R0, [R4]
35D7EC:  LDR             R1, [R0,#0x14]
35D7EE:  MOV             R0, R4
35D7F0:  BLX             R1
35D7F2:  MOV             R1, R0; int
35D7F4:  MOVW            R0, #0x38B; int
35D7F8:  POP.W           {R11}
35D7FC:  POP.W           {R4-R7,LR}
35D800:  B.W             sub_1941D4
35D804:  LDR             R0, =(UseDataFence_ptr - 0x35D80A)
35D806:  ADD             R0, PC; UseDataFence_ptr
35D808:  LDR             R0, [R0]; UseDataFence
35D80A:  LDRB            R0, [R0]
35D80C:  CMP             R0, #0
35D80E:  IT NE
35D810:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
35D814:  MOVS            R0, #4; byte_count
35D816:  BLX             malloc
35D81A:  MOV             R4, R0
35D81C:  MOVS            R0, #0
35D81E:  STR             R0, [R4]
35D820:  MOV             R0, R4; this
35D822:  MOVS            R1, #byte_4; void *
35D824:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
35D828:  MOV             R0, R4
35D82A:  B               loc_35D860
35D82C:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
35D830:  MOV             R4, R0
35D832:  LDR             R0, =(UseDataFence_ptr - 0x35D838)
35D834:  ADD             R0, PC; UseDataFence_ptr
35D836:  B               loc_35D842
35D838:  BLX             j__Z14GettPoolObjRefP7CObject; GettPoolObjRef(CObject *)
35D83C:  MOV             R4, R0
35D83E:  LDR             R0, =(UseDataFence_ptr - 0x35D844)
35D840:  ADD             R0, PC; UseDataFence_ptr
35D842:  LDR             R0, [R0]; UseDataFence
35D844:  LDRB            R0, [R0]
35D846:  CMP             R0, #0
35D848:  IT NE
35D84A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
35D84E:  MOVS            R0, #4; byte_count
35D850:  BLX             malloc
35D854:  MOV             R5, R0
35D856:  MOVS            R1, #byte_4; void *
35D858:  STR             R4, [R5]
35D85A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
35D85E:  MOV             R0, R5; p
35D860:  POP.W           {R11}
35D864:  POP.W           {R4-R7,LR}
35D868:  B.W             j_free
