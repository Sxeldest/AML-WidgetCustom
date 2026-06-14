; =========================================================
; Game Engine Function: _ZN32CTaskComplexScreamInCarThenLeave9SerializeEv
; Address            : 0x4FEA24 - 0x4FEB12
; =========================================================

4FEA24:  PUSH            {R4-R7,LR}
4FEA26:  ADD             R7, SP, #0xC
4FEA28:  PUSH.W          {R11}
4FEA2C:  MOV             R4, R0
4FEA2E:  LDR             R0, [R4]
4FEA30:  LDR             R1, [R0,#0x14]
4FEA32:  MOV             R0, R4
4FEA34:  BLX             R1
4FEA36:  MOV             R5, R0
4FEA38:  LDR             R0, =(UseDataFence_ptr - 0x4FEA3E)
4FEA3A:  ADD             R0, PC; UseDataFence_ptr
4FEA3C:  LDR             R0, [R0]; UseDataFence
4FEA3E:  LDRB            R0, [R0]
4FEA40:  CMP             R0, #0
4FEA42:  IT NE
4FEA44:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FEA48:  MOVS            R0, #4; byte_count
4FEA4A:  BLX             malloc
4FEA4E:  MOV             R6, R0
4FEA50:  MOVS            R1, #byte_4; void *
4FEA52:  STR             R5, [R6]
4FEA54:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FEA58:  MOV             R0, R6; p
4FEA5A:  BLX             free
4FEA5E:  LDR             R0, [R4]
4FEA60:  LDR             R1, [R0,#0x14]
4FEA62:  MOV             R0, R4
4FEA64:  BLX             R1
4FEA66:  CMP.W           R0, #0x2C4
4FEA6A:  BNE             loc_4FEA9A
4FEA6C:  LDR             R0, [R4,#0xC]; CVehicle *
4FEA6E:  CBZ             R0, loc_4FEAB4
4FEA70:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FEA74:  MOV             R5, R0
4FEA76:  LDR             R0, =(UseDataFence_ptr - 0x4FEA7C)
4FEA78:  ADD             R0, PC; UseDataFence_ptr
4FEA7A:  LDR             R0, [R0]; UseDataFence
4FEA7C:  LDRB            R0, [R0]
4FEA7E:  CMP             R0, #0
4FEA80:  IT NE
4FEA82:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FEA86:  MOVS            R0, #4; byte_count
4FEA88:  BLX             malloc
4FEA8C:  MOV             R6, R0
4FEA8E:  MOVS            R1, #byte_4; void *
4FEA90:  STR             R5, [R6]
4FEA92:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FEA96:  MOV             R0, R6
4FEA98:  B               loc_4FEADC
4FEA9A:  LDR             R0, [R4]
4FEA9C:  LDR             R1, [R0,#0x14]
4FEA9E:  MOV             R0, R4
4FEAA0:  BLX             R1
4FEAA2:  MOV             R1, R0; int
4FEAA4:  MOV.W           R0, #0x2C4; int
4FEAA8:  POP.W           {R11}
4FEAAC:  POP.W           {R4-R7,LR}
4FEAB0:  B.W             sub_1941D4
4FEAB4:  LDR             R0, =(UseDataFence_ptr - 0x4FEABA)
4FEAB6:  ADD             R0, PC; UseDataFence_ptr
4FEAB8:  LDR             R0, [R0]; UseDataFence
4FEABA:  LDRB            R0, [R0]
4FEABC:  CMP             R0, #0
4FEABE:  IT NE
4FEAC0:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FEAC4:  MOVS            R0, #4; byte_count
4FEAC6:  BLX             malloc
4FEACA:  MOV             R5, R0
4FEACC:  MOV.W           R0, #0xFFFFFFFF
4FEAD0:  STR             R0, [R5]
4FEAD2:  MOV             R0, R5; this
4FEAD4:  MOVS            R1, #byte_4; void *
4FEAD6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FEADA:  MOV             R0, R5; p
4FEADC:  BLX             free
4FEAE0:  LDR             R0, =(UseDataFence_ptr - 0x4FEAE6)
4FEAE2:  ADD             R0, PC; UseDataFence_ptr
4FEAE4:  LDR             R0, [R0]; UseDataFence
4FEAE6:  LDRB            R0, [R0]
4FEAE8:  CMP             R0, #0
4FEAEA:  IT NE
4FEAEC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FEAF0:  MOVS            R0, #4; byte_count
4FEAF2:  BLX             malloc
4FEAF6:  MOV             R5, R0
4FEAF8:  LDR             R0, [R4,#0x10]
4FEAFA:  STR             R0, [R5]
4FEAFC:  MOV             R0, R5; this
4FEAFE:  MOVS            R1, #byte_4; void *
4FEB00:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FEB04:  MOV             R0, R5; p
4FEB06:  POP.W           {R11}
4FEB0A:  POP.W           {R4-R7,LR}
4FEB0E:  B.W             j_free
