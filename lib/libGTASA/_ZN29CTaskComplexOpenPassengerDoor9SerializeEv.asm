; =========================================================
; Game Engine Function: _ZN29CTaskComplexOpenPassengerDoor9SerializeEv
; Address            : 0x4FD968 - 0x4FDA56
; =========================================================

4FD968:  PUSH            {R4-R7,LR}
4FD96A:  ADD             R7, SP, #0xC
4FD96C:  PUSH.W          {R11}
4FD970:  MOV             R4, R0
4FD972:  LDR             R0, [R4]
4FD974:  LDR             R1, [R0,#0x14]
4FD976:  MOV             R0, R4
4FD978:  BLX             R1
4FD97A:  MOV             R5, R0
4FD97C:  LDR             R0, =(UseDataFence_ptr - 0x4FD982)
4FD97E:  ADD             R0, PC; UseDataFence_ptr
4FD980:  LDR             R0, [R0]; UseDataFence
4FD982:  LDRB            R0, [R0]
4FD984:  CMP             R0, #0
4FD986:  IT NE
4FD988:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FD98C:  MOVS            R0, #4; byte_count
4FD98E:  BLX             malloc
4FD992:  MOV             R6, R0
4FD994:  MOVS            R1, #byte_4; void *
4FD996:  STR             R5, [R6]
4FD998:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FD99C:  MOV             R0, R6; p
4FD99E:  BLX             free
4FD9A2:  LDR             R0, [R4]
4FD9A4:  LDR             R1, [R0,#0x14]
4FD9A6:  MOV             R0, R4
4FD9A8:  BLX             R1
4FD9AA:  CMP.W           R0, #0x2D8
4FD9AE:  BNE             loc_4FD9DE
4FD9B0:  LDR             R0, [R4,#0xC]; CVehicle *
4FD9B2:  CBZ             R0, loc_4FD9F8
4FD9B4:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FD9B8:  MOV             R5, R0
4FD9BA:  LDR             R0, =(UseDataFence_ptr - 0x4FD9C0)
4FD9BC:  ADD             R0, PC; UseDataFence_ptr
4FD9BE:  LDR             R0, [R0]; UseDataFence
4FD9C0:  LDRB            R0, [R0]
4FD9C2:  CMP             R0, #0
4FD9C4:  IT NE
4FD9C6:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FD9CA:  MOVS            R0, #4; byte_count
4FD9CC:  BLX             malloc
4FD9D0:  MOV             R6, R0
4FD9D2:  MOVS            R1, #byte_4; void *
4FD9D4:  STR             R5, [R6]
4FD9D6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FD9DA:  MOV             R0, R6
4FD9DC:  B               loc_4FDA20
4FD9DE:  LDR             R0, [R4]
4FD9E0:  LDR             R1, [R0,#0x14]
4FD9E2:  MOV             R0, R4
4FD9E4:  BLX             R1
4FD9E6:  MOV             R1, R0; int
4FD9E8:  MOV.W           R0, #0x2D8; int
4FD9EC:  POP.W           {R11}
4FD9F0:  POP.W           {R4-R7,LR}
4FD9F4:  B.W             sub_1941D4
4FD9F8:  LDR             R0, =(UseDataFence_ptr - 0x4FD9FE)
4FD9FA:  ADD             R0, PC; UseDataFence_ptr
4FD9FC:  LDR             R0, [R0]; UseDataFence
4FD9FE:  LDRB            R0, [R0]
4FDA00:  CMP             R0, #0
4FDA02:  IT NE
4FDA04:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FDA08:  MOVS            R0, #4; byte_count
4FDA0A:  BLX             malloc
4FDA0E:  MOV             R5, R0
4FDA10:  MOV.W           R0, #0xFFFFFFFF
4FDA14:  STR             R0, [R5]
4FDA16:  MOV             R0, R5; this
4FDA18:  MOVS            R1, #byte_4; void *
4FDA1A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FDA1E:  MOV             R0, R5; p
4FDA20:  BLX             free
4FDA24:  LDR             R0, =(UseDataFence_ptr - 0x4FDA2A)
4FDA26:  ADD             R0, PC; UseDataFence_ptr
4FDA28:  LDR             R0, [R0]; UseDataFence
4FDA2A:  LDRB            R0, [R0]
4FDA2C:  CMP             R0, #0
4FDA2E:  IT NE
4FDA30:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FDA34:  MOVS            R0, #4; byte_count
4FDA36:  BLX             malloc
4FDA3A:  MOV             R5, R0
4FDA3C:  LDR             R0, [R4,#0x1C]
4FDA3E:  STR             R0, [R5]
4FDA40:  MOV             R0, R5; this
4FDA42:  MOVS            R1, #byte_4; void *
4FDA44:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FDA48:  MOV             R0, R5; p
4FDA4A:  POP.W           {R11}
4FDA4E:  POP.W           {R4-R7,LR}
4FDA52:  B.W             j_free
