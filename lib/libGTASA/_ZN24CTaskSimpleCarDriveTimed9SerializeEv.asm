; =========================================================
; Game Engine Function: _ZN24CTaskSimpleCarDriveTimed9SerializeEv
; Address            : 0x334C64 - 0x334D54
; =========================================================

334C64:  PUSH            {R4-R7,LR}
334C66:  ADD             R7, SP, #0xC
334C68:  PUSH.W          {R11}
334C6C:  MOV             R4, R0
334C6E:  LDR             R0, [R4]
334C70:  LDR             R1, [R0,#0x14]
334C72:  MOV             R0, R4
334C74:  BLX             R1
334C76:  MOV             R5, R0
334C78:  LDR             R0, =(UseDataFence_ptr - 0x334C7E)
334C7A:  ADD             R0, PC; UseDataFence_ptr
334C7C:  LDR             R0, [R0]; UseDataFence
334C7E:  LDRB            R0, [R0]
334C80:  CMP             R0, #0
334C82:  IT NE
334C84:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
334C88:  MOVS            R0, #4; byte_count
334C8A:  BLX             malloc
334C8E:  MOV             R6, R0
334C90:  MOVS            R1, #byte_4; void *
334C92:  STR             R5, [R6]
334C94:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
334C98:  MOV             R0, R6; p
334C9A:  BLX             free
334C9E:  LDR             R0, [R4]
334CA0:  LDR             R1, [R0,#0x14]
334CA2:  MOV             R0, R4
334CA4:  BLX             R1
334CA6:  MOVW            R1, #0x2CF
334CAA:  CMP             R0, R1
334CAC:  BNE             loc_334CDC
334CAE:  LDR             R0, [R4,#8]; CVehicle *
334CB0:  CBZ             R0, loc_334CF6
334CB2:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
334CB6:  MOV             R5, R0
334CB8:  LDR             R0, =(UseDataFence_ptr - 0x334CBE)
334CBA:  ADD             R0, PC; UseDataFence_ptr
334CBC:  LDR             R0, [R0]; UseDataFence
334CBE:  LDRB            R0, [R0]
334CC0:  CMP             R0, #0
334CC2:  IT NE
334CC4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
334CC8:  MOVS            R0, #4; byte_count
334CCA:  BLX             malloc
334CCE:  MOV             R6, R0
334CD0:  MOVS            R1, #byte_4; void *
334CD2:  STR             R5, [R6]
334CD4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
334CD8:  MOV             R0, R6
334CDA:  B               loc_334D1E
334CDC:  LDR             R0, [R4]
334CDE:  LDR             R1, [R0,#0x14]
334CE0:  MOV             R0, R4
334CE2:  BLX             R1
334CE4:  MOV             R1, R0; int
334CE6:  MOVW            R0, #0x2CF; int
334CEA:  POP.W           {R11}
334CEE:  POP.W           {R4-R7,LR}
334CF2:  B.W             sub_1941D4
334CF6:  LDR             R0, =(UseDataFence_ptr - 0x334CFC)
334CF8:  ADD             R0, PC; UseDataFence_ptr
334CFA:  LDR             R0, [R0]; UseDataFence
334CFC:  LDRB            R0, [R0]
334CFE:  CMP             R0, #0
334D00:  IT NE
334D02:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
334D06:  MOVS            R0, #4; byte_count
334D08:  BLX             malloc
334D0C:  MOV             R5, R0
334D0E:  MOV.W           R0, #0xFFFFFFFF
334D12:  STR             R0, [R5]
334D14:  MOV             R0, R5; this
334D16:  MOVS            R1, #byte_4; void *
334D18:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
334D1C:  MOV             R0, R5; p
334D1E:  BLX             free
334D22:  LDR             R0, =(UseDataFence_ptr - 0x334D28)
334D24:  ADD             R0, PC; UseDataFence_ptr
334D26:  LDR             R0, [R0]; UseDataFence
334D28:  LDRB            R0, [R0]
334D2A:  CMP             R0, #0
334D2C:  IT NE
334D2E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
334D32:  MOVS            R0, #4; byte_count
334D34:  BLX             malloc
334D38:  MOV             R5, R0
334D3A:  LDR             R0, [R4,#0x60]
334D3C:  STR             R0, [R5]
334D3E:  MOV             R0, R5; this
334D40:  MOVS            R1, #byte_4; void *
334D42:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
334D46:  MOV             R0, R5; p
334D48:  POP.W           {R11}
334D4C:  POP.W           {R4-R7,LR}
334D50:  B.W             j_free
