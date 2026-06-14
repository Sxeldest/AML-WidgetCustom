; =========================================================
; Game Engine Function: _ZN29CTaskComplexLeaveCarAndWander9SerializeEv
; Address            : 0x4FE694 - 0x4FE7C8
; =========================================================

4FE694:  PUSH            {R4-R7,LR}
4FE696:  ADD             R7, SP, #0xC
4FE698:  PUSH.W          {R11}
4FE69C:  MOV             R4, R0
4FE69E:  LDR             R0, [R4]
4FE6A0:  LDR             R1, [R0,#0x14]
4FE6A2:  MOV             R0, R4
4FE6A4:  BLX             R1
4FE6A6:  MOV             R5, R0
4FE6A8:  LDR             R0, =(UseDataFence_ptr - 0x4FE6AE)
4FE6AA:  ADD             R0, PC; UseDataFence_ptr
4FE6AC:  LDR             R0, [R0]; UseDataFence
4FE6AE:  LDRB            R0, [R0]
4FE6B0:  CMP             R0, #0
4FE6B2:  IT NE
4FE6B4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE6B8:  MOVS            R0, #4; byte_count
4FE6BA:  BLX             malloc
4FE6BE:  MOV             R6, R0
4FE6C0:  MOVS            R1, #byte_4; void *
4FE6C2:  STR             R5, [R6]
4FE6C4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE6C8:  MOV             R0, R6; p
4FE6CA:  BLX             free
4FE6CE:  LDR             R0, [R4]
4FE6D0:  LDR             R1, [R0,#0x14]
4FE6D2:  MOV             R0, R4
4FE6D4:  BLX             R1
4FE6D6:  MOVW            R1, #0x2C3
4FE6DA:  CMP             R0, R1
4FE6DC:  BNE             loc_4FE70C
4FE6DE:  LDR             R0, [R4,#0xC]; CVehicle *
4FE6E0:  CBZ             R0, loc_4FE726
4FE6E2:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FE6E6:  MOV             R5, R0
4FE6E8:  LDR             R0, =(UseDataFence_ptr - 0x4FE6EE)
4FE6EA:  ADD             R0, PC; UseDataFence_ptr
4FE6EC:  LDR             R0, [R0]; UseDataFence
4FE6EE:  LDRB            R0, [R0]
4FE6F0:  CMP             R0, #0
4FE6F2:  IT NE
4FE6F4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE6F8:  MOVS            R0, #4; byte_count
4FE6FA:  BLX             malloc
4FE6FE:  MOV             R6, R0
4FE700:  MOVS            R1, #byte_4; void *
4FE702:  STR             R5, [R6]
4FE704:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE708:  MOV             R0, R6
4FE70A:  B               loc_4FE74E
4FE70C:  LDR             R0, [R4]
4FE70E:  LDR             R1, [R0,#0x14]
4FE710:  MOV             R0, R4
4FE712:  BLX             R1
4FE714:  MOV             R1, R0; int
4FE716:  MOVW            R0, #0x2C3; int
4FE71A:  POP.W           {R11}
4FE71E:  POP.W           {R4-R7,LR}
4FE722:  B.W             sub_1941D4
4FE726:  LDR             R0, =(UseDataFence_ptr - 0x4FE72C)
4FE728:  ADD             R0, PC; UseDataFence_ptr
4FE72A:  LDR             R0, [R0]; UseDataFence
4FE72C:  LDRB            R0, [R0]
4FE72E:  CMP             R0, #0
4FE730:  IT NE
4FE732:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE736:  MOVS            R0, #4; byte_count
4FE738:  BLX             malloc
4FE73C:  MOV             R5, R0
4FE73E:  MOV.W           R0, #0xFFFFFFFF
4FE742:  STR             R0, [R5]
4FE744:  MOV             R0, R5; this
4FE746:  MOVS            R1, #byte_4; void *
4FE748:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE74C:  MOV             R0, R5; p
4FE74E:  BLX             free
4FE752:  LDR             R0, =(UseDataFence_ptr - 0x4FE758)
4FE754:  ADD             R0, PC; UseDataFence_ptr
4FE756:  LDR             R0, [R0]; UseDataFence
4FE758:  LDRB            R0, [R0]
4FE75A:  CMP             R0, #0
4FE75C:  IT NE
4FE75E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE762:  MOVS            R0, #4; byte_count
4FE764:  BLX             malloc
4FE768:  MOV             R5, R0
4FE76A:  LDR             R0, [R4,#0x10]
4FE76C:  STR             R0, [R5]
4FE76E:  MOV             R0, R5; this
4FE770:  MOVS            R1, #byte_4; void *
4FE772:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE776:  MOV             R0, R5; p
4FE778:  BLX             free
4FE77C:  LDR             R0, =(UseDataFence_ptr - 0x4FE782)
4FE77E:  ADD             R0, PC; UseDataFence_ptr
4FE780:  LDR             R0, [R0]; UseDataFence
4FE782:  LDRB            R0, [R0]
4FE784:  CMP             R0, #0
4FE786:  IT NE
4FE788:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE78C:  MOVS            R0, #4; byte_count
4FE78E:  BLX             malloc
4FE792:  MOV             R5, R0
4FE794:  LDR             R0, [R4,#0x14]
4FE796:  STR             R0, [R5]
4FE798:  MOV             R0, R5; this
4FE79A:  MOVS            R1, #byte_4; void *
4FE79C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE7A0:  MOV             R0, R5; p
4FE7A2:  BLX             free
4FE7A6:  LDR             R0, =(UseDataFence_ptr - 0x4FE7AC)
4FE7A8:  ADD             R0, PC; UseDataFence_ptr
4FE7AA:  LDR             R0, [R0]; UseDataFence
4FE7AC:  LDRB            R0, [R0]
4FE7AE:  CMP             R0, #0
4FE7B0:  IT NE
4FE7B2:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE7B6:  ADD.W           R0, R4, #0x18; this
4FE7BA:  MOVS            R1, #(stderr+1); void *
4FE7BC:  POP.W           {R11}
4FE7C0:  POP.W           {R4-R7,LR}
4FE7C4:  B.W             sub_19EA3C
