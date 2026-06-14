; =========================================================
; Game Engine Function: _ZN29CTaskComplexGoToPointShooting9SerializeEv
; Address            : 0x528960 - 0x528B6A
; =========================================================

528960:  PUSH            {R4-R7,LR}
528962:  ADD             R7, SP, #0xC
528964:  PUSH.W          {R11}
528968:  MOV             R4, R0
52896A:  LDR             R0, [R4]
52896C:  LDR             R1, [R0,#0x14]
52896E:  MOV             R0, R4
528970:  BLX             R1
528972:  MOV             R5, R0
528974:  LDR             R0, =(UseDataFence_ptr - 0x52897A)
528976:  ADD             R0, PC; UseDataFence_ptr
528978:  LDR             R0, [R0]; UseDataFence
52897A:  LDRB            R0, [R0]
52897C:  CMP             R0, #0
52897E:  IT NE
528980:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
528984:  MOVS            R0, #4; byte_count
528986:  BLX             malloc
52898A:  MOV             R6, R0
52898C:  MOVS            R1, #byte_4; void *
52898E:  STR             R5, [R6]
528990:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
528994:  MOV             R0, R6; p
528996:  BLX             free
52899A:  LDR             R0, [R4]
52899C:  LDR             R1, [R0,#0x14]
52899E:  MOV             R0, R4
5289A0:  BLX             R1
5289A2:  MOVW            R1, #0x385
5289A6:  CMP             R0, R1
5289A8:  BNE             loc_528A5E
5289AA:  LDR             R0, =(UseDataFence_ptr - 0x5289B0)
5289AC:  ADD             R0, PC; UseDataFence_ptr
5289AE:  LDR             R0, [R0]; UseDataFence
5289B0:  LDRB            R0, [R0]
5289B2:  CMP             R0, #0
5289B4:  IT NE
5289B6:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5289BA:  MOVS            R0, #4; byte_count
5289BC:  BLX             malloc
5289C0:  MOV             R5, R0
5289C2:  LDR             R0, [R4,#0xC]
5289C4:  STR             R0, [R5]
5289C6:  MOV             R0, R5; this
5289C8:  MOVS            R1, #byte_4; void *
5289CA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5289CE:  MOV             R0, R5; p
5289D0:  BLX             free
5289D4:  LDR             R0, =(UseDataFence_ptr - 0x5289DA)
5289D6:  ADD             R0, PC; UseDataFence_ptr
5289D8:  LDR             R0, [R0]; UseDataFence
5289DA:  LDRB            R0, [R0]
5289DC:  CMP             R0, #0
5289DE:  IT NE
5289E0:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5289E4:  MOVS            R0, #0xC; byte_count
5289E6:  BLX             malloc
5289EA:  ADD.W           R1, R4, #0x20 ; ' '
5289EE:  MOV             R5, R0
5289F0:  LDR             R0, [R4,#0x28]
5289F2:  VLD1.8          {D16}, [R1]
5289F6:  MOVS            R1, #(byte_9+3); void *
5289F8:  STR             R0, [R5,#8]
5289FA:  MOV             R0, R5; this
5289FC:  VST1.8          {D16}, [R5]
528A00:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
528A04:  MOV             R0, R5; p
528A06:  BLX             free
528A0A:  LDR             R0, [R4,#0x10]
528A0C:  CBZ             R0, loc_528A78
528A0E:  LDR             R1, =(UseDataFence_ptr - 0x528A18)
528A10:  LDRB.W          R0, [R0,#0x3A]
528A14:  ADD             R1, PC; UseDataFence_ptr
528A16:  AND.W           R6, R0, #7
528A1A:  LDR             R1, [R1]; UseDataFence
528A1C:  LDRB            R1, [R1]
528A1E:  CMP             R1, #0
528A20:  IT NE
528A22:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
528A26:  MOVS            R0, #4; byte_count
528A28:  BLX             malloc
528A2C:  MOV             R5, R0
528A2E:  MOVS            R1, #byte_4; void *
528A30:  STR             R6, [R5]
528A32:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
528A36:  MOV             R0, R5; p
528A38:  BLX             free
528A3C:  LDR             R0, [R4,#0x10]; CObject *
528A3E:  LDRB.W          R1, [R0,#0x3A]
528A42:  AND.W           R1, R1, #7
528A46:  CMP             R1, #2
528A48:  BEQ             loc_528AA0
528A4A:  CMP             R1, #4
528A4C:  BEQ             loc_528AAC
528A4E:  CMP             R1, #3
528A50:  BNE             loc_528AD8
528A52:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
528A56:  MOV             R5, R0
528A58:  LDR             R0, =(UseDataFence_ptr - 0x528A5E)
528A5A:  ADD             R0, PC; UseDataFence_ptr
528A5C:  B               loc_528AB6
528A5E:  LDR             R0, [R4]
528A60:  LDR             R1, [R0,#0x14]
528A62:  MOV             R0, R4
528A64:  BLX             R1
528A66:  MOV             R1, R0; int
528A68:  MOVW            R0, #0x385; int
528A6C:  POP.W           {R11}
528A70:  POP.W           {R4-R7,LR}
528A74:  B.W             sub_1941D4
528A78:  LDR             R0, =(UseDataFence_ptr - 0x528A7E)
528A7A:  ADD             R0, PC; UseDataFence_ptr
528A7C:  LDR             R0, [R0]; UseDataFence
528A7E:  LDRB            R0, [R0]
528A80:  CMP             R0, #0
528A82:  IT NE
528A84:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
528A88:  MOVS            R0, #4; byte_count
528A8A:  BLX             malloc
528A8E:  MOV             R5, R0
528A90:  MOVS            R0, #0
528A92:  STR             R0, [R5]
528A94:  MOV             R0, R5; this
528A96:  MOVS            R1, #byte_4; void *
528A98:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
528A9C:  MOV             R0, R5
528A9E:  B               loc_528AD4
528AA0:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
528AA4:  MOV             R5, R0
528AA6:  LDR             R0, =(UseDataFence_ptr - 0x528AAC)
528AA8:  ADD             R0, PC; UseDataFence_ptr
528AAA:  B               loc_528AB6
528AAC:  BLX             j__Z14GettPoolObjRefP7CObject; GettPoolObjRef(CObject *)
528AB0:  MOV             R5, R0
528AB2:  LDR             R0, =(UseDataFence_ptr - 0x528AB8)
528AB4:  ADD             R0, PC; UseDataFence_ptr
528AB6:  LDR             R0, [R0]; UseDataFence
528AB8:  LDRB            R0, [R0]
528ABA:  CMP             R0, #0
528ABC:  IT NE
528ABE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
528AC2:  MOVS            R0, #4; byte_count
528AC4:  BLX             malloc
528AC8:  MOV             R6, R0
528ACA:  MOVS            R1, #byte_4; void *
528ACC:  STR             R5, [R6]
528ACE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
528AD2:  MOV             R0, R6; p
528AD4:  BLX             free
528AD8:  LDR             R0, =(UseDataFence_ptr - 0x528ADE)
528ADA:  ADD             R0, PC; UseDataFence_ptr
528ADC:  LDR             R0, [R0]; UseDataFence
528ADE:  LDRB            R0, [R0]
528AE0:  CMP             R0, #0
528AE2:  IT NE
528AE4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
528AE8:  MOVS            R0, #0xC; byte_count
528AEA:  BLX             malloc
528AEE:  ADD.W           R1, R4, #0x14
528AF2:  MOV             R5, R0
528AF4:  LDR             R0, [R4,#0x1C]
528AF6:  VLD1.8          {D16}, [R1]
528AFA:  MOVS            R1, #(byte_9+3); void *
528AFC:  STR             R0, [R5,#8]
528AFE:  MOV             R0, R5; this
528B00:  VST1.8          {D16}, [R5]
528B04:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
528B08:  MOV             R0, R5; p
528B0A:  BLX             free
528B0E:  LDR             R0, =(UseDataFence_ptr - 0x528B14)
528B10:  ADD             R0, PC; UseDataFence_ptr
528B12:  LDR             R0, [R0]; UseDataFence
528B14:  LDRB            R0, [R0]
528B16:  CMP             R0, #0
528B18:  IT NE
528B1A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
528B1E:  MOVS            R0, #4; byte_count
528B20:  BLX             malloc
528B24:  MOV             R5, R0
528B26:  LDR             R0, [R4,#0x2C]
528B28:  STR             R0, [R5]
528B2A:  MOV             R0, R5; this
528B2C:  MOVS            R1, #byte_4; void *
528B2E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
528B32:  MOV             R0, R5; p
528B34:  BLX             free
528B38:  LDR             R0, =(UseDataFence_ptr - 0x528B3E)
528B3A:  ADD             R0, PC; UseDataFence_ptr
528B3C:  LDR             R0, [R0]; UseDataFence
528B3E:  LDRB            R0, [R0]
528B40:  CMP             R0, #0
528B42:  IT NE
528B44:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
528B48:  MOVS            R0, #4; byte_count
528B4A:  BLX             malloc
528B4E:  MOV             R5, R0
528B50:  LDR             R0, [R4,#0x30]
528B52:  STR             R0, [R5]
528B54:  MOV             R0, R5; this
528B56:  MOVS            R1, #byte_4; void *
528B58:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
528B5C:  MOV             R0, R5; p
528B5E:  POP.W           {R11}
528B62:  POP.W           {R4-R7,LR}
528B66:  B.W             j_free
