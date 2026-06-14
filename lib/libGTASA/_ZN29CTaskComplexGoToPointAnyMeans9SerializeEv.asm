; =========================================================
; Game Engine Function: _ZN29CTaskComplexGoToPointAnyMeans9SerializeEv
; Address            : 0x5281F0 - 0x52833E
; =========================================================

5281F0:  PUSH            {R4-R7,LR}
5281F2:  ADD             R7, SP, #0xC
5281F4:  PUSH.W          {R11}
5281F8:  MOV             R4, R0
5281FA:  LDR             R0, [R4]
5281FC:  LDR             R1, [R0,#0x14]
5281FE:  MOV             R0, R4
528200:  BLX             R1
528202:  MOV             R5, R0
528204:  LDR             R0, =(UseDataFence_ptr - 0x52820A)
528206:  ADD             R0, PC; UseDataFence_ptr
528208:  LDR             R0, [R0]; UseDataFence
52820A:  LDRB            R0, [R0]
52820C:  CMP             R0, #0
52820E:  IT NE
528210:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
528214:  MOVS            R0, #4; byte_count
528216:  BLX             malloc
52821A:  MOV             R6, R0
52821C:  MOVS            R1, #byte_4; void *
52821E:  STR             R5, [R6]
528220:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
528224:  MOV             R0, R6; p
528226:  BLX             free
52822A:  LDR             R0, [R4]
52822C:  LDR             R1, [R0,#0x14]
52822E:  MOV             R0, R4
528230:  BLX             R1
528232:  MOVW            R1, #0x396
528236:  CMP             R0, R1
528238:  BNE             loc_528324
52823A:  LDR             R0, =(UseDataFence_ptr - 0x528240)
52823C:  ADD             R0, PC; UseDataFence_ptr
52823E:  LDR             R0, [R0]; UseDataFence
528240:  LDRB            R0, [R0]
528242:  CMP             R0, #0
528244:  IT NE
528246:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
52824A:  MOVS            R0, #0xC; byte_count
52824C:  BLX             malloc
528250:  ADD.W           R1, R4, #0xC
528254:  MOV             R5, R0
528256:  LDR             R0, [R4,#0x14]
528258:  VLD1.8          {D16}, [R1]
52825C:  MOVS            R1, #(byte_9+3); void *
52825E:  STR             R0, [R5,#8]
528260:  MOV             R0, R5; this
528262:  VST1.8          {D16}, [R5]
528266:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
52826A:  MOV             R0, R5; p
52826C:  BLX             free
528270:  LDR             R0, =(UseDataFence_ptr - 0x528276)
528272:  ADD             R0, PC; UseDataFence_ptr
528274:  LDR             R0, [R0]; UseDataFence
528276:  LDRB            R0, [R0]
528278:  CMP             R0, #0
52827A:  IT NE
52827C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
528280:  MOVS            R0, #4; byte_count
528282:  BLX             malloc
528286:  MOV             R5, R0
528288:  LDR             R0, [R4,#0x18]
52828A:  STR             R0, [R5]
52828C:  MOV             R0, R5; this
52828E:  MOVS            R1, #byte_4; void *
528290:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
528294:  MOV             R0, R5; p
528296:  BLX             free
52829A:  LDR             R0, =(UseDataFence_ptr - 0x5282A0)
52829C:  ADD             R0, PC; UseDataFence_ptr
52829E:  LDR             R0, [R0]; UseDataFence
5282A0:  LDRB            R0, [R0]
5282A2:  CMP             R0, #0
5282A4:  IT NE
5282A6:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5282AA:  MOVS            R0, #4; byte_count
5282AC:  BLX             malloc
5282B0:  MOV             R5, R0
5282B2:  LDR             R0, [R4,#0x1C]
5282B4:  STR             R0, [R5]
5282B6:  MOV             R0, R5; this
5282B8:  MOVS            R1, #byte_4; void *
5282BA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5282BE:  MOV             R0, R5; p
5282C0:  BLX             free
5282C4:  LDR             R0, [R4,#0x20]; CVehicle *
5282C6:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
5282CA:  MOV             R5, R0
5282CC:  LDR             R0, =(UseDataFence_ptr - 0x5282D2)
5282CE:  ADD             R0, PC; UseDataFence_ptr
5282D0:  LDR             R0, [R0]; UseDataFence
5282D2:  LDRB            R0, [R0]
5282D4:  CMP             R0, #0
5282D6:  IT NE
5282D8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5282DC:  MOVS            R0, #4; byte_count
5282DE:  BLX             malloc
5282E2:  MOV             R6, R0
5282E4:  MOVS            R1, #byte_4; void *
5282E6:  STR             R5, [R6]
5282E8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5282EC:  MOV             R0, R6; p
5282EE:  BLX             free
5282F2:  LDR             R0, =(UseDataFence_ptr - 0x5282F8)
5282F4:  ADD             R0, PC; UseDataFence_ptr
5282F6:  LDR             R0, [R0]; UseDataFence
5282F8:  LDRB            R0, [R0]
5282FA:  CMP             R0, #0
5282FC:  IT NE
5282FE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
528302:  MOVS            R0, #4; byte_count
528304:  BLX             malloc
528308:  MOV             R5, R0
52830A:  LDR             R0, [R4,#0x24]
52830C:  STR             R0, [R5]
52830E:  MOV             R0, R5; this
528310:  MOVS            R1, #byte_4; void *
528312:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
528316:  MOV             R0, R5; p
528318:  POP.W           {R11}
52831C:  POP.W           {R4-R7,LR}
528320:  B.W             j_free
528324:  LDR             R0, [R4]
528326:  LDR             R1, [R0,#0x14]
528328:  MOV             R0, R4
52832A:  BLX             R1
52832C:  MOV             R1, R0; int
52832E:  MOVW            R0, #0x396; int
528332:  POP.W           {R11}
528336:  POP.W           {R4-R7,LR}
52833A:  B.W             sub_1941D4
