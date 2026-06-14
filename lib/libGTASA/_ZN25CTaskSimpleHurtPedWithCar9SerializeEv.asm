; =========================================================
; Game Engine Function: _ZN25CTaskSimpleHurtPedWithCar9SerializeEv
; Address            : 0x50F6E4 - 0x50F7D4
; =========================================================

50F6E4:  PUSH            {R4-R7,LR}
50F6E6:  ADD             R7, SP, #0xC
50F6E8:  PUSH.W          {R11}
50F6EC:  MOV             R4, R0
50F6EE:  LDR             R0, [R4]
50F6F0:  LDR             R1, [R0,#0x14]
50F6F2:  MOV             R0, R4
50F6F4:  BLX             R1
50F6F6:  MOV             R5, R0
50F6F8:  LDR             R0, =(UseDataFence_ptr - 0x50F6FE)
50F6FA:  ADD             R0, PC; UseDataFence_ptr
50F6FC:  LDR             R0, [R0]; UseDataFence
50F6FE:  LDRB            R0, [R0]
50F700:  CMP             R0, #0
50F702:  IT NE
50F704:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F708:  MOVS            R0, #4; byte_count
50F70A:  BLX             malloc
50F70E:  MOV             R6, R0
50F710:  MOVS            R1, #byte_4; void *
50F712:  STR             R5, [R6]
50F714:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F718:  MOV             R0, R6; p
50F71A:  BLX             free
50F71E:  LDR             R0, [R4]
50F720:  LDR             R1, [R0,#0x14]
50F722:  MOV             R0, R4
50F724:  BLX             R1
50F726:  MOVW            R1, #0x1FB
50F72A:  CMP             R0, R1
50F72C:  BNE             loc_50F75C
50F72E:  LDR             R0, [R4,#8]; CVehicle *
50F730:  CBZ             R0, loc_50F776
50F732:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
50F736:  MOV             R5, R0
50F738:  LDR             R0, =(UseDataFence_ptr - 0x50F73E)
50F73A:  ADD             R0, PC; UseDataFence_ptr
50F73C:  LDR             R0, [R0]; UseDataFence
50F73E:  LDRB            R0, [R0]
50F740:  CMP             R0, #0
50F742:  IT NE
50F744:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F748:  MOVS            R0, #4; byte_count
50F74A:  BLX             malloc
50F74E:  MOV             R6, R0
50F750:  MOVS            R1, #byte_4; void *
50F752:  STR             R5, [R6]
50F754:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F758:  MOV             R0, R6
50F75A:  B               loc_50F79E
50F75C:  LDR             R0, [R4]
50F75E:  LDR             R1, [R0,#0x14]
50F760:  MOV             R0, R4
50F762:  BLX             R1
50F764:  MOV             R1, R0; int
50F766:  MOVW            R0, #0x1FB; int
50F76A:  POP.W           {R11}
50F76E:  POP.W           {R4-R7,LR}
50F772:  B.W             sub_1941D4
50F776:  LDR             R0, =(UseDataFence_ptr - 0x50F77C)
50F778:  ADD             R0, PC; UseDataFence_ptr
50F77A:  LDR             R0, [R0]; UseDataFence
50F77C:  LDRB            R0, [R0]
50F77E:  CMP             R0, #0
50F780:  IT NE
50F782:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F786:  MOVS            R0, #4; byte_count
50F788:  BLX             malloc
50F78C:  MOV             R5, R0
50F78E:  MOV.W           R0, #0xFFFFFFFF
50F792:  STR             R0, [R5]
50F794:  MOV             R0, R5; this
50F796:  MOVS            R1, #byte_4; void *
50F798:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F79C:  MOV             R0, R5; p
50F79E:  BLX             free
50F7A2:  LDR             R0, =(UseDataFence_ptr - 0x50F7A8)
50F7A4:  ADD             R0, PC; UseDataFence_ptr
50F7A6:  LDR             R0, [R0]; UseDataFence
50F7A8:  LDRB            R0, [R0]
50F7AA:  CMP             R0, #0
50F7AC:  IT NE
50F7AE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F7B2:  MOVS            R0, #4; byte_count
50F7B4:  BLX             malloc
50F7B8:  MOV             R5, R0
50F7BA:  LDR             R0, [R4,#0xC]
50F7BC:  STR             R0, [R5]
50F7BE:  MOV             R0, R5; this
50F7C0:  MOVS            R1, #byte_4; void *
50F7C2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F7C6:  MOV             R0, R5; p
50F7C8:  POP.W           {R11}
50F7CC:  POP.W           {R4-R7,LR}
50F7D0:  B.W             j_free
