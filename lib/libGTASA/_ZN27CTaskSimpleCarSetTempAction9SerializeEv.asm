; =========================================================
; Game Engine Function: _ZN27CTaskSimpleCarSetTempAction9SerializeEv
; Address            : 0x4FF8EC - 0x4FF9DA
; =========================================================

4FF8EC:  PUSH            {R4-R7,LR}
4FF8EE:  ADD             R7, SP, #0xC
4FF8F0:  PUSH.W          {R11}
4FF8F4:  MOV             R4, R0
4FF8F6:  LDR             R0, [R4]
4FF8F8:  LDR             R1, [R0,#0x14]
4FF8FA:  MOV             R0, R4
4FF8FC:  BLX             R1
4FF8FE:  MOV             R5, R0
4FF900:  LDR             R0, =(UseDataFence_ptr - 0x4FF906)
4FF902:  ADD             R0, PC; UseDataFence_ptr
4FF904:  LDR             R0, [R0]; UseDataFence
4FF906:  LDRB            R0, [R0]
4FF908:  CMP             R0, #0
4FF90A:  IT NE
4FF90C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FF910:  MOVS            R0, #4; byte_count
4FF912:  BLX             malloc
4FF916:  MOV             R6, R0
4FF918:  MOVS            R1, #byte_4; void *
4FF91A:  STR             R5, [R6]
4FF91C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FF920:  MOV             R0, R6; p
4FF922:  BLX             free
4FF926:  LDR             R0, [R4]
4FF928:  LDR             R1, [R0,#0x14]
4FF92A:  MOV             R0, R4
4FF92C:  BLX             R1
4FF92E:  MOVW            R1, #0x2D3
4FF932:  CMP             R0, R1
4FF934:  BNE             loc_4FF9C0
4FF936:  LDR             R0, [R4,#8]; CVehicle *
4FF938:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FF93C:  MOV             R5, R0
4FF93E:  LDR             R0, =(UseDataFence_ptr - 0x4FF944)
4FF940:  ADD             R0, PC; UseDataFence_ptr
4FF942:  LDR             R0, [R0]; UseDataFence
4FF944:  LDRB            R0, [R0]
4FF946:  CMP             R0, #0
4FF948:  IT NE
4FF94A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FF94E:  MOVS            R0, #4; byte_count
4FF950:  BLX             malloc
4FF954:  MOV             R6, R0
4FF956:  MOVS            R1, #byte_4; void *
4FF958:  STR             R5, [R6]
4FF95A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FF95E:  MOV             R0, R6; p
4FF960:  BLX             free
4FF964:  LDR             R0, =(UseDataFence_ptr - 0x4FF96A)
4FF966:  ADD             R0, PC; UseDataFence_ptr
4FF968:  LDR             R0, [R0]; UseDataFence
4FF96A:  LDRB            R0, [R0]
4FF96C:  CMP             R0, #0
4FF96E:  IT NE
4FF970:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FF974:  MOVS            R0, #4; byte_count
4FF976:  BLX             malloc
4FF97A:  MOV             R5, R0
4FF97C:  LDR             R0, [R4,#0x60]
4FF97E:  STR             R0, [R5]
4FF980:  MOV             R0, R5; this
4FF982:  MOVS            R1, #byte_4; void *
4FF984:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FF988:  MOV             R0, R5; p
4FF98A:  BLX             free
4FF98E:  LDR             R0, =(UseDataFence_ptr - 0x4FF994)
4FF990:  ADD             R0, PC; UseDataFence_ptr
4FF992:  LDR             R0, [R0]; UseDataFence
4FF994:  LDRB            R0, [R0]
4FF996:  CMP             R0, #0
4FF998:  IT NE
4FF99A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FF99E:  MOVS            R0, #4; byte_count
4FF9A0:  BLX             malloc
4FF9A4:  MOV             R5, R0
4FF9A6:  LDR             R0, [R4,#0x64]
4FF9A8:  STR             R0, [R5]
4FF9AA:  MOV             R0, R5; this
4FF9AC:  MOVS            R1, #byte_4; void *
4FF9AE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FF9B2:  MOV             R0, R5; p
4FF9B4:  POP.W           {R11}
4FF9B8:  POP.W           {R4-R7,LR}
4FF9BC:  B.W             j_free
4FF9C0:  LDR             R0, [R4]
4FF9C2:  LDR             R1, [R0,#0x14]
4FF9C4:  MOV             R0, R4
4FF9C6:  BLX             R1
4FF9C8:  MOV             R1, R0; int
4FF9CA:  MOVW            R0, #0x2D3; int
4FF9CE:  POP.W           {R11}
4FF9D2:  POP.W           {R4-R7,LR}
4FF9D6:  B.W             sub_1941D4
