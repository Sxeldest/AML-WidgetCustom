; =========================================================
; Game Engine Function: _ZN27CTaskComplexLeaveCarAndFlee9SerializeEv
; Address            : 0x4FE848 - 0x4FE9B2
; =========================================================

4FE848:  PUSH            {R4-R7,LR}
4FE84A:  ADD             R7, SP, #0xC
4FE84C:  PUSH.W          {R11}
4FE850:  MOV             R4, R0
4FE852:  LDR             R0, [R4]
4FE854:  LDR             R1, [R0,#0x14]
4FE856:  MOV             R0, R4
4FE858:  BLX             R1
4FE85A:  MOV             R5, R0
4FE85C:  LDR             R0, =(UseDataFence_ptr - 0x4FE862)
4FE85E:  ADD             R0, PC; UseDataFence_ptr
4FE860:  LDR             R0, [R0]; UseDataFence
4FE862:  LDRB            R0, [R0]
4FE864:  CMP             R0, #0
4FE866:  IT NE
4FE868:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE86C:  MOVS            R0, #4; byte_count
4FE86E:  BLX             malloc
4FE872:  MOV             R6, R0
4FE874:  MOVS            R1, #byte_4; void *
4FE876:  STR             R5, [R6]
4FE878:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE87C:  MOV             R0, R6; p
4FE87E:  BLX             free
4FE882:  LDR             R0, [R4]
4FE884:  LDR             R1, [R0,#0x14]
4FE886:  MOV             R0, R4
4FE888:  BLX             R1
4FE88A:  MOVW            R1, #0x2C2
4FE88E:  CMP             R0, R1
4FE890:  BNE             loc_4FE8C0
4FE892:  LDR             R0, [R4,#0xC]; CVehicle *
4FE894:  CBZ             R0, loc_4FE8DA
4FE896:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FE89A:  MOV             R5, R0
4FE89C:  LDR             R0, =(UseDataFence_ptr - 0x4FE8A2)
4FE89E:  ADD             R0, PC; UseDataFence_ptr
4FE8A0:  LDR             R0, [R0]; UseDataFence
4FE8A2:  LDRB            R0, [R0]
4FE8A4:  CMP             R0, #0
4FE8A6:  IT NE
4FE8A8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE8AC:  MOVS            R0, #4; byte_count
4FE8AE:  BLX             malloc
4FE8B2:  MOV             R6, R0
4FE8B4:  MOVS            R1, #byte_4; void *
4FE8B6:  STR             R5, [R6]
4FE8B8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE8BC:  MOV             R0, R6
4FE8BE:  B               loc_4FE902
4FE8C0:  LDR             R0, [R4]
4FE8C2:  LDR             R1, [R0,#0x14]
4FE8C4:  MOV             R0, R4
4FE8C6:  BLX             R1
4FE8C8:  MOV             R1, R0; int
4FE8CA:  MOVW            R0, #0x2C2; int
4FE8CE:  POP.W           {R11}
4FE8D2:  POP.W           {R4-R7,LR}
4FE8D6:  B.W             sub_1941D4
4FE8DA:  LDR             R0, =(UseDataFence_ptr - 0x4FE8E0)
4FE8DC:  ADD             R0, PC; UseDataFence_ptr
4FE8DE:  LDR             R0, [R0]; UseDataFence
4FE8E0:  LDRB            R0, [R0]
4FE8E2:  CMP             R0, #0
4FE8E4:  IT NE
4FE8E6:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE8EA:  MOVS            R0, #4; byte_count
4FE8EC:  BLX             malloc
4FE8F0:  MOV             R5, R0
4FE8F2:  MOV.W           R0, #0xFFFFFFFF
4FE8F6:  STR             R0, [R5]
4FE8F8:  MOV             R0, R5; this
4FE8FA:  MOVS            R1, #byte_4; void *
4FE8FC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE900:  MOV             R0, R5; p
4FE902:  BLX             free
4FE906:  LDR             R0, =(UseDataFence_ptr - 0x4FE90C)
4FE908:  ADD             R0, PC; UseDataFence_ptr
4FE90A:  LDR             R0, [R0]; UseDataFence
4FE90C:  LDRB            R0, [R0]
4FE90E:  CMP             R0, #0
4FE910:  IT NE
4FE912:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE916:  MOVS            R0, #0xC; byte_count
4FE918:  BLX             malloc
4FE91C:  ADD.W           R1, R4, #0x14
4FE920:  MOV             R5, R0
4FE922:  LDR             R0, [R4,#0x1C]
4FE924:  VLD1.8          {D16}, [R1]
4FE928:  MOVS            R1, #(byte_9+3); void *
4FE92A:  STR             R0, [R5,#8]
4FE92C:  MOV             R0, R5; this
4FE92E:  VST1.8          {D16}, [R5]
4FE932:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE936:  MOV             R0, R5; p
4FE938:  BLX             free
4FE93C:  LDR             R0, =(UseDataFence_ptr - 0x4FE942)
4FE93E:  ADD             R0, PC; UseDataFence_ptr
4FE940:  LDR             R0, [R0]; UseDataFence
4FE942:  LDRB            R0, [R0]
4FE944:  CMP             R0, #0
4FE946:  IT NE
4FE948:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE94C:  MOVS            R0, #4; byte_count
4FE94E:  BLX             malloc
4FE952:  MOV             R5, R0
4FE954:  LDR             R0, [R4,#0x10]
4FE956:  STR             R0, [R5]
4FE958:  MOV             R0, R5; this
4FE95A:  MOVS            R1, #byte_4; void *
4FE95C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE960:  MOV             R0, R5; p
4FE962:  BLX             free
4FE966:  LDR             R0, =(UseDataFence_ptr - 0x4FE96C)
4FE968:  ADD             R0, PC; UseDataFence_ptr
4FE96A:  LDR             R0, [R0]; UseDataFence
4FE96C:  LDRB            R0, [R0]
4FE96E:  CMP             R0, #0
4FE970:  IT NE
4FE972:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE976:  MOVS            R0, #4; byte_count
4FE978:  BLX             malloc
4FE97C:  MOV             R5, R0
4FE97E:  LDR             R0, [R4,#0x20]
4FE980:  STR             R0, [R5]
4FE982:  MOV             R0, R5; this
4FE984:  MOVS            R1, #byte_4; void *
4FE986:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE98A:  MOV             R0, R5; p
4FE98C:  BLX             free
4FE990:  LDR             R0, =(UseDataFence_ptr - 0x4FE996)
4FE992:  ADD             R0, PC; UseDataFence_ptr
4FE994:  LDR             R0, [R0]; UseDataFence
4FE996:  LDRB            R0, [R0]
4FE998:  CMP             R0, #0
4FE99A:  IT NE
4FE99C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE9A0:  ADD.W           R0, R4, #0x24 ; '$'; this
4FE9A4:  MOVS            R1, #(stderr+1); void *
4FE9A6:  POP.W           {R11}
4FE9AA:  POP.W           {R4-R7,LR}
4FE9AE:  B.W             sub_19EA3C
