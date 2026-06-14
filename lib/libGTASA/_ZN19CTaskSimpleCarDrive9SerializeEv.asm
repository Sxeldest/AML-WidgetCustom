; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarDrive9SerializeEv
; Address            : 0x4FEBC4 - 0x4FEC5E
; =========================================================

4FEBC4:  PUSH            {R4-R7,LR}
4FEBC6:  ADD             R7, SP, #0xC
4FEBC8:  PUSH.W          {R11}
4FEBCC:  MOV             R4, R0
4FEBCE:  LDR             R0, [R4]
4FEBD0:  LDR             R1, [R0,#0x14]
4FEBD2:  MOV             R0, R4
4FEBD4:  BLX             R1
4FEBD6:  MOV             R5, R0
4FEBD8:  LDR             R0, =(UseDataFence_ptr - 0x4FEBDE)
4FEBDA:  ADD             R0, PC; UseDataFence_ptr
4FEBDC:  LDR             R0, [R0]; UseDataFence
4FEBDE:  LDRB            R0, [R0]
4FEBE0:  CMP             R0, #0
4FEBE2:  IT NE
4FEBE4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FEBE8:  MOVS            R0, #4; byte_count
4FEBEA:  BLX             malloc
4FEBEE:  MOV             R6, R0
4FEBF0:  MOVS            R1, #byte_4; void *
4FEBF2:  STR             R5, [R6]
4FEBF4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FEBF8:  MOV             R0, R6; p
4FEBFA:  BLX             free
4FEBFE:  LDR             R0, [R4]
4FEC00:  LDR             R1, [R0,#0x14]
4FEC02:  MOV             R0, R4
4FEC04:  BLX             R1
4FEC06:  MOVW            R1, #0x2C5
4FEC0A:  CMP             R0, R1
4FEC0C:  BNE             loc_4FEC44
4FEC0E:  LDR             R0, [R4,#8]; CVehicle *
4FEC10:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FEC14:  MOV             R4, R0
4FEC16:  LDR             R0, =(UseDataFence_ptr - 0x4FEC1C)
4FEC18:  ADD             R0, PC; UseDataFence_ptr
4FEC1A:  LDR             R0, [R0]; UseDataFence
4FEC1C:  LDRB            R0, [R0]
4FEC1E:  CMP             R0, #0
4FEC20:  IT NE
4FEC22:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FEC26:  MOVS            R0, #4; byte_count
4FEC28:  BLX             malloc
4FEC2C:  MOV             R5, R0
4FEC2E:  MOVS            R1, #byte_4; void *
4FEC30:  STR             R4, [R5]
4FEC32:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FEC36:  MOV             R0, R5; p
4FEC38:  POP.W           {R11}
4FEC3C:  POP.W           {R4-R7,LR}
4FEC40:  B.W             j_free
4FEC44:  LDR             R0, [R4]
4FEC46:  LDR             R1, [R0,#0x14]
4FEC48:  MOV             R0, R4
4FEC4A:  BLX             R1
4FEC4C:  MOV             R1, R0; int
4FEC4E:  MOVW            R0, #0x2C5; int
4FEC52:  POP.W           {R11}
4FEC56:  POP.W           {R4-R7,LR}
4FEC5A:  B.W             sub_1941D4
