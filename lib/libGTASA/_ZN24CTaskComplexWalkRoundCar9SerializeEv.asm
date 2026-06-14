; =========================================================
; Game Engine Function: _ZN24CTaskComplexWalkRoundCar9SerializeEv
; Address            : 0x50F884 - 0x50F998
; =========================================================

50F884:  PUSH            {R4-R7,LR}
50F886:  ADD             R7, SP, #0xC
50F888:  PUSH.W          {R11}
50F88C:  MOV             R4, R0
50F88E:  LDR             R0, [R4]
50F890:  LDR             R1, [R0,#0x14]
50F892:  MOV             R0, R4
50F894:  BLX             R1
50F896:  MOV             R5, R0
50F898:  LDR             R0, =(UseDataFence_ptr - 0x50F89E)
50F89A:  ADD             R0, PC; UseDataFence_ptr
50F89C:  LDR             R0, [R0]; UseDataFence
50F89E:  LDRB            R0, [R0]
50F8A0:  CMP             R0, #0
50F8A2:  IT NE
50F8A4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F8A8:  MOVS            R0, #4; byte_count
50F8AA:  BLX             malloc
50F8AE:  MOV             R6, R0
50F8B0:  MOVS            R1, #byte_4; void *
50F8B2:  STR             R5, [R6]
50F8B4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F8B8:  MOV             R0, R6; p
50F8BA:  BLX             free
50F8BE:  LDR             R0, [R4]
50F8C0:  LDR             R1, [R0,#0x14]
50F8C2:  MOV             R0, R4
50F8C4:  BLX             R1
50F8C6:  CMP.W           R0, #0x1FC
50F8CA:  BNE             loc_50F97E
50F8CC:  LDR             R0, [R4,#0x1C]; CVehicle *
50F8CE:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
50F8D2:  MOV             R5, R0
50F8D4:  LDR             R0, =(UseDataFence_ptr - 0x50F8DA)
50F8D6:  ADD             R0, PC; UseDataFence_ptr
50F8D8:  LDR             R0, [R0]; UseDataFence
50F8DA:  LDRB            R0, [R0]
50F8DC:  CMP             R0, #0
50F8DE:  IT NE
50F8E0:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F8E4:  MOVS            R0, #4; byte_count
50F8E6:  BLX             malloc
50F8EA:  MOV             R6, R0
50F8EC:  MOVS            R1, #byte_4; void *
50F8EE:  STR             R5, [R6]
50F8F0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F8F4:  MOV             R0, R6; p
50F8F6:  BLX             free
50F8FA:  LDR             R0, =(UseDataFence_ptr - 0x50F900)
50F8FC:  ADD             R0, PC; UseDataFence_ptr
50F8FE:  LDR             R0, [R0]; UseDataFence
50F900:  LDRB            R0, [R0]
50F902:  CMP             R0, #0
50F904:  IT NE
50F906:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F90A:  ADD.W           R0, R4, #0xC; this
50F90E:  MOVS            R1, #(stderr+1); void *
50F910:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F914:  LDR             R0, =(UseDataFence_ptr - 0x50F91A)
50F916:  ADD             R0, PC; UseDataFence_ptr
50F918:  LDR             R0, [R0]; UseDataFence
50F91A:  LDRB            R0, [R0]
50F91C:  CMP             R0, #0
50F91E:  IT NE
50F920:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F924:  MOVS            R0, #0xC; byte_count
50F926:  BLX             malloc
50F92A:  ADD.W           R1, R4, #0x10
50F92E:  MOV             R5, R0
50F930:  LDR             R0, [R4,#0x18]
50F932:  VLD1.8          {D16}, [R1]
50F936:  MOVS            R1, #(byte_9+3); void *
50F938:  STR             R0, [R5,#8]
50F93A:  MOV             R0, R5; this
50F93C:  VST1.8          {D16}, [R5]
50F940:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F944:  MOV             R0, R5; p
50F946:  BLX             free
50F94A:  LDR             R0, =(UseDataFence_ptr - 0x50F952)
50F94C:  LDRB            R1, [R4,#0xD]
50F94E:  ADD             R0, PC; UseDataFence_ptr
50F950:  AND.W           R5, R1, #1
50F954:  LDR             R0, [R0]; UseDataFence
50F956:  LDRB            R0, [R0]
50F958:  CMP             R0, #0
50F95A:  IT NE
50F95C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F960:  MOVS            R0, #4; byte_count
50F962:  BLX             malloc
50F966:  MOV             R4, R0
50F968:  MOVS            R1, #byte_4; void *
50F96A:  STR             R5, [R4]
50F96C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F970:  MOV             R0, R4; p
50F972:  POP.W           {R11}
50F976:  POP.W           {R4-R7,LR}
50F97A:  B.W             j_free
50F97E:  LDR             R0, [R4]
50F980:  LDR             R1, [R0,#0x14]
50F982:  MOV             R0, R4
50F984:  BLX             R1
50F986:  MOV             R1, R0; int
50F988:  MOV.W           R0, #0x1FC; int
50F98C:  POP.W           {R11}
50F990:  POP.W           {R4-R7,LR}
50F994:  B.W             sub_1941D4
