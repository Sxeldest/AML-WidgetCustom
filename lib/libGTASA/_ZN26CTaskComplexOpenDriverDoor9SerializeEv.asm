; =========================================================
; Game Engine Function: _ZN26CTaskComplexOpenDriverDoor9SerializeEv
; Address            : 0x4FD7F8 - 0x4FD8BE
; =========================================================

4FD7F8:  PUSH            {R4-R7,LR}
4FD7FA:  ADD             R7, SP, #0xC
4FD7FC:  PUSH.W          {R11}
4FD800:  MOV             R4, R0
4FD802:  LDR             R0, [R4]
4FD804:  LDR             R1, [R0,#0x14]
4FD806:  MOV             R0, R4
4FD808:  BLX             R1
4FD80A:  MOV             R5, R0
4FD80C:  LDR             R0, =(UseDataFence_ptr - 0x4FD812)
4FD80E:  ADD             R0, PC; UseDataFence_ptr
4FD810:  LDR             R0, [R0]; UseDataFence
4FD812:  LDRB            R0, [R0]
4FD814:  CMP             R0, #0
4FD816:  IT NE
4FD818:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FD81C:  MOVS            R0, #4; byte_count
4FD81E:  BLX             malloc
4FD822:  MOV             R6, R0
4FD824:  MOVS            R1, #byte_4; void *
4FD826:  STR             R5, [R6]
4FD828:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FD82C:  MOV             R0, R6; p
4FD82E:  BLX             free
4FD832:  LDR             R0, [R4]
4FD834:  LDR             R1, [R0,#0x14]
4FD836:  MOV             R0, R4
4FD838:  BLX             R1
4FD83A:  MOVW            R1, #0x2D2
4FD83E:  CMP             R0, R1
4FD840:  BNE             loc_4FD870
4FD842:  LDR             R0, [R4,#0xC]; CVehicle *
4FD844:  CBZ             R0, loc_4FD88A
4FD846:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FD84A:  MOV             R4, R0
4FD84C:  LDR             R0, =(UseDataFence_ptr - 0x4FD852)
4FD84E:  ADD             R0, PC; UseDataFence_ptr
4FD850:  LDR             R0, [R0]; UseDataFence
4FD852:  LDRB            R0, [R0]
4FD854:  CMP             R0, #0
4FD856:  IT NE
4FD858:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FD85C:  MOVS            R0, #4; byte_count
4FD85E:  BLX             malloc
4FD862:  MOV             R5, R0
4FD864:  MOVS            R1, #byte_4; void *
4FD866:  STR             R4, [R5]
4FD868:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FD86C:  MOV             R0, R5
4FD86E:  B               loc_4FD8B2
4FD870:  LDR             R0, [R4]
4FD872:  LDR             R1, [R0,#0x14]
4FD874:  MOV             R0, R4
4FD876:  BLX             R1
4FD878:  MOV             R1, R0; int
4FD87A:  MOVW            R0, #0x2D2; int
4FD87E:  POP.W           {R11}
4FD882:  POP.W           {R4-R7,LR}
4FD886:  B.W             sub_1941D4
4FD88A:  LDR             R0, =(UseDataFence_ptr - 0x4FD890)
4FD88C:  ADD             R0, PC; UseDataFence_ptr
4FD88E:  LDR             R0, [R0]; UseDataFence
4FD890:  LDRB            R0, [R0]
4FD892:  CMP             R0, #0
4FD894:  IT NE
4FD896:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FD89A:  MOVS            R0, #4; byte_count
4FD89C:  BLX             malloc
4FD8A0:  MOV             R4, R0
4FD8A2:  MOV.W           R0, #0xFFFFFFFF
4FD8A6:  STR             R0, [R4]
4FD8A8:  MOV             R0, R4; this
4FD8AA:  MOVS            R1, #byte_4; void *
4FD8AC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FD8B0:  MOV             R0, R4; p
4FD8B2:  POP.W           {R11}
4FD8B6:  POP.W           {R4-R7,LR}
4FD8BA:  B.W             j_free
