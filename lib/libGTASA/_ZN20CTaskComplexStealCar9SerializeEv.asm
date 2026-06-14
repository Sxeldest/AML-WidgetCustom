; =========================================================
; Game Engine Function: _ZN20CTaskComplexStealCar9SerializeEv
; Address            : 0x4FE268 - 0x4FE32E
; =========================================================

4FE268:  PUSH            {R4-R7,LR}
4FE26A:  ADD             R7, SP, #0xC
4FE26C:  PUSH.W          {R11}
4FE270:  MOV             R4, R0
4FE272:  LDR             R0, [R4]
4FE274:  LDR             R1, [R0,#0x14]
4FE276:  MOV             R0, R4
4FE278:  BLX             R1
4FE27A:  MOV             R5, R0
4FE27C:  LDR             R0, =(UseDataFence_ptr - 0x4FE282)
4FE27E:  ADD             R0, PC; UseDataFence_ptr
4FE280:  LDR             R0, [R0]; UseDataFence
4FE282:  LDRB            R0, [R0]
4FE284:  CMP             R0, #0
4FE286:  IT NE
4FE288:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE28C:  MOVS            R0, #4; byte_count
4FE28E:  BLX             malloc
4FE292:  MOV             R6, R0
4FE294:  MOVS            R1, #byte_4; void *
4FE296:  STR             R5, [R6]
4FE298:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE29C:  MOV             R0, R6; p
4FE29E:  BLX             free
4FE2A2:  LDR             R0, [R4]
4FE2A4:  LDR             R1, [R0,#0x14]
4FE2A6:  MOV             R0, R4
4FE2A8:  BLX             R1
4FE2AA:  MOVW            R1, #0x2BE
4FE2AE:  CMP             R0, R1
4FE2B0:  BNE             loc_4FE2E0
4FE2B2:  LDR             R0, [R4,#0xC]; CVehicle *
4FE2B4:  CBZ             R0, loc_4FE2FA
4FE2B6:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FE2BA:  MOV             R4, R0
4FE2BC:  LDR             R0, =(UseDataFence_ptr - 0x4FE2C2)
4FE2BE:  ADD             R0, PC; UseDataFence_ptr
4FE2C0:  LDR             R0, [R0]; UseDataFence
4FE2C2:  LDRB            R0, [R0]
4FE2C4:  CMP             R0, #0
4FE2C6:  IT NE
4FE2C8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE2CC:  MOVS            R0, #4; byte_count
4FE2CE:  BLX             malloc
4FE2D2:  MOV             R5, R0
4FE2D4:  MOVS            R1, #byte_4; void *
4FE2D6:  STR             R4, [R5]
4FE2D8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE2DC:  MOV             R0, R5
4FE2DE:  B               loc_4FE322
4FE2E0:  LDR             R0, [R4]
4FE2E2:  LDR             R1, [R0,#0x14]
4FE2E4:  MOV             R0, R4
4FE2E6:  BLX             R1
4FE2E8:  MOV             R1, R0; int
4FE2EA:  MOVW            R0, #0x2BE; int
4FE2EE:  POP.W           {R11}
4FE2F2:  POP.W           {R4-R7,LR}
4FE2F6:  B.W             sub_1941D4
4FE2FA:  LDR             R0, =(UseDataFence_ptr - 0x4FE300)
4FE2FC:  ADD             R0, PC; UseDataFence_ptr
4FE2FE:  LDR             R0, [R0]; UseDataFence
4FE300:  LDRB            R0, [R0]
4FE302:  CMP             R0, #0
4FE304:  IT NE
4FE306:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE30A:  MOVS            R0, #4; byte_count
4FE30C:  BLX             malloc
4FE310:  MOV             R4, R0
4FE312:  MOV.W           R0, #0xFFFFFFFF
4FE316:  STR             R0, [R4]
4FE318:  MOV             R0, R4; this
4FE31A:  MOVS            R1, #byte_4; void *
4FE31C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE320:  MOV             R0, R4; p
4FE322:  POP.W           {R11}
4FE326:  POP.W           {R4-R7,LR}
4FE32A:  B.W             j_free
