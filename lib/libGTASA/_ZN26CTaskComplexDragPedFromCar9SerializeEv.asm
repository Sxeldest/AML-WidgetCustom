; =========================================================
; Game Engine Function: _ZN26CTaskComplexDragPedFromCar9SerializeEv
; Address            : 0x4FDAF0 - 0x4FDBE0
; =========================================================

4FDAF0:  PUSH            {R4-R7,LR}
4FDAF2:  ADD             R7, SP, #0xC
4FDAF4:  PUSH.W          {R11}
4FDAF8:  MOV             R4, R0
4FDAFA:  LDR             R0, [R4]
4FDAFC:  LDR             R1, [R0,#0x14]
4FDAFE:  MOV             R0, R4
4FDB00:  BLX             R1
4FDB02:  MOV             R5, R0
4FDB04:  LDR             R0, =(UseDataFence_ptr - 0x4FDB0A)
4FDB06:  ADD             R0, PC; UseDataFence_ptr
4FDB08:  LDR             R0, [R0]; UseDataFence
4FDB0A:  LDRB            R0, [R0]
4FDB0C:  CMP             R0, #0
4FDB0E:  IT NE
4FDB10:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FDB14:  MOVS            R0, #4; byte_count
4FDB16:  BLX             malloc
4FDB1A:  MOV             R6, R0
4FDB1C:  MOVS            R1, #byte_4; void *
4FDB1E:  STR             R5, [R6]
4FDB20:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FDB24:  MOV             R0, R6; p
4FDB26:  BLX             free
4FDB2A:  LDR             R0, [R4]
4FDB2C:  LDR             R1, [R0,#0x14]
4FDB2E:  MOV             R0, R4
4FDB30:  BLX             R1
4FDB32:  MOVW            R1, #0x2BF
4FDB36:  CMP             R0, R1
4FDB38:  BNE             loc_4FDB68
4FDB3A:  LDR             R0, [R4,#0x50]; CPed *
4FDB3C:  CBZ             R0, loc_4FDB82
4FDB3E:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
4FDB42:  MOV             R5, R0
4FDB44:  LDR             R0, =(UseDataFence_ptr - 0x4FDB4A)
4FDB46:  ADD             R0, PC; UseDataFence_ptr
4FDB48:  LDR             R0, [R0]; UseDataFence
4FDB4A:  LDRB            R0, [R0]
4FDB4C:  CMP             R0, #0
4FDB4E:  IT NE
4FDB50:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FDB54:  MOVS            R0, #4; byte_count
4FDB56:  BLX             malloc
4FDB5A:  MOV             R6, R0
4FDB5C:  MOVS            R1, #byte_4; void *
4FDB5E:  STR             R5, [R6]
4FDB60:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FDB64:  MOV             R0, R6
4FDB66:  B               loc_4FDBAA
4FDB68:  LDR             R0, [R4]
4FDB6A:  LDR             R1, [R0,#0x14]
4FDB6C:  MOV             R0, R4
4FDB6E:  BLX             R1
4FDB70:  MOV             R1, R0; int
4FDB72:  MOVW            R0, #0x2BF; int
4FDB76:  POP.W           {R11}
4FDB7A:  POP.W           {R4-R7,LR}
4FDB7E:  B.W             sub_1941D4
4FDB82:  LDR             R0, =(UseDataFence_ptr - 0x4FDB88)
4FDB84:  ADD             R0, PC; UseDataFence_ptr
4FDB86:  LDR             R0, [R0]; UseDataFence
4FDB88:  LDRB            R0, [R0]
4FDB8A:  CMP             R0, #0
4FDB8C:  IT NE
4FDB8E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FDB92:  MOVS            R0, #4; byte_count
4FDB94:  BLX             malloc
4FDB98:  MOV             R5, R0
4FDB9A:  MOV.W           R0, #0xFFFFFFFF
4FDB9E:  STR             R0, [R5]
4FDBA0:  MOV             R0, R5; this
4FDBA2:  MOVS            R1, #byte_4; void *
4FDBA4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FDBA8:  MOV             R0, R5; p
4FDBAA:  BLX             free
4FDBAE:  LDR             R0, =(UseDataFence_ptr - 0x4FDBB4)
4FDBB0:  ADD             R0, PC; UseDataFence_ptr
4FDBB2:  LDR             R0, [R0]; UseDataFence
4FDBB4:  LDRB            R0, [R0]
4FDBB6:  CMP             R0, #0
4FDBB8:  IT NE
4FDBBA:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FDBBE:  MOVS            R0, #4; byte_count
4FDBC0:  BLX             malloc
4FDBC4:  MOV             R5, R0
4FDBC6:  LDR             R0, [R4,#0x20]
4FDBC8:  STR             R0, [R5]
4FDBCA:  MOV             R0, R5; this
4FDBCC:  MOVS            R1, #byte_4; void *
4FDBCE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FDBD2:  MOV             R0, R5; p
4FDBD4:  POP.W           {R11}
4FDBD8:  POP.W           {R4-R7,LR}
4FDBDC:  B.W             j_free
