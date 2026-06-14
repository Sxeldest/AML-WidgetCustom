; =========================================================
; Game Engine Function: _ZN28CTaskComplexSeekEntityAiming9SerializeEv
; Address            : 0x5462D0 - 0x546444
; =========================================================

5462D0:  PUSH            {R4-R7,LR}
5462D2:  ADD             R7, SP, #0xC
5462D4:  PUSH.W          {R11}
5462D8:  MOV             R4, R0
5462DA:  LDR             R0, [R4]
5462DC:  LDR             R1, [R0,#0x14]
5462DE:  MOV             R0, R4
5462E0:  BLX             R1
5462E2:  MOV             R5, R0
5462E4:  LDR             R0, =(UseDataFence_ptr - 0x5462EA)
5462E6:  ADD             R0, PC; UseDataFence_ptr
5462E8:  LDR             R0, [R0]; UseDataFence
5462EA:  LDRB            R0, [R0]
5462EC:  CMP             R0, #0
5462EE:  IT NE
5462F0:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5462F4:  MOVS            R0, #4; byte_count
5462F6:  BLX             malloc
5462FA:  MOV             R6, R0
5462FC:  MOVS            R1, #byte_4; void *
5462FE:  STR             R5, [R6]
546300:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
546304:  MOV             R0, R6; p
546306:  BLX             free
54630A:  LDR             R0, [R4]
54630C:  LDR             R1, [R0,#0x14]
54630E:  MOV             R0, R4
546310:  BLX             R1
546312:  MOVW            R1, #0x3A5
546316:  CMP             R0, R1
546318:  BNE             loc_54636E
54631A:  LDR             R0, [R4,#0xC]
54631C:  CBZ             R0, loc_546388
54631E:  LDR             R1, =(UseDataFence_ptr - 0x546328)
546320:  LDRB.W          R0, [R0,#0x3A]
546324:  ADD             R1, PC; UseDataFence_ptr
546326:  AND.W           R6, R0, #7
54632A:  LDR             R1, [R1]; UseDataFence
54632C:  LDRB            R1, [R1]
54632E:  CMP             R1, #0
546330:  IT NE
546332:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
546336:  MOVS            R0, #4; byte_count
546338:  BLX             malloc
54633C:  MOV             R5, R0
54633E:  MOVS            R1, #byte_4; void *
546340:  STR             R6, [R5]
546342:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
546346:  MOV             R0, R5; p
546348:  BLX             free
54634C:  LDR             R0, [R4,#0xC]; CObject *
54634E:  LDRB.W          R1, [R0,#0x3A]
546352:  AND.W           R1, R1, #7
546356:  CMP             R1, #2
546358:  BEQ             loc_5463B0
54635A:  CMP             R1, #4
54635C:  BEQ             loc_5463BC
54635E:  CMP             R1, #3
546360:  BNE             loc_5463E8
546362:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
546366:  MOV             R5, R0
546368:  LDR             R0, =(UseDataFence_ptr - 0x54636E)
54636A:  ADD             R0, PC; UseDataFence_ptr
54636C:  B               loc_5463C6
54636E:  LDR             R0, [R4]
546370:  LDR             R1, [R0,#0x14]
546372:  MOV             R0, R4
546374:  BLX             R1
546376:  MOV             R1, R0; int
546378:  MOVW            R0, #0x3A5; int
54637C:  POP.W           {R11}
546380:  POP.W           {R4-R7,LR}
546384:  B.W             sub_1941D4
546388:  LDR             R0, =(UseDataFence_ptr - 0x54638E)
54638A:  ADD             R0, PC; UseDataFence_ptr
54638C:  LDR             R0, [R0]; UseDataFence
54638E:  LDRB            R0, [R0]
546390:  CMP             R0, #0
546392:  IT NE
546394:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
546398:  MOVS            R0, #4; byte_count
54639A:  BLX             malloc
54639E:  MOV             R5, R0
5463A0:  MOVS            R0, #0
5463A2:  STR             R0, [R5]
5463A4:  MOV             R0, R5; this
5463A6:  MOVS            R1, #byte_4; void *
5463A8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5463AC:  MOV             R0, R5
5463AE:  B               loc_5463E4
5463B0:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
5463B4:  MOV             R5, R0
5463B6:  LDR             R0, =(UseDataFence_ptr - 0x5463BC)
5463B8:  ADD             R0, PC; UseDataFence_ptr
5463BA:  B               loc_5463C6
5463BC:  BLX             j__Z14GettPoolObjRefP7CObject; GettPoolObjRef(CObject *)
5463C0:  MOV             R5, R0
5463C2:  LDR             R0, =(UseDataFence_ptr - 0x5463C8)
5463C4:  ADD             R0, PC; UseDataFence_ptr
5463C6:  LDR             R0, [R0]; UseDataFence
5463C8:  LDRB            R0, [R0]
5463CA:  CMP             R0, #0
5463CC:  IT NE
5463CE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5463D2:  MOVS            R0, #4; byte_count
5463D4:  BLX             malloc
5463D8:  MOV             R6, R0
5463DA:  MOVS            R1, #byte_4; void *
5463DC:  STR             R5, [R6]
5463DE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5463E2:  MOV             R0, R6; p
5463E4:  BLX             free
5463E8:  LDR             R0, =(UseDataFence_ptr - 0x5463EE)
5463EA:  ADD             R0, PC; UseDataFence_ptr
5463EC:  LDR             R0, [R0]; UseDataFence
5463EE:  LDRB            R0, [R0]
5463F0:  CMP             R0, #0
5463F2:  IT NE
5463F4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5463F8:  MOVS            R0, #4; byte_count
5463FA:  BLX             malloc
5463FE:  MOV             R5, R0
546400:  LDR             R0, [R4,#0x10]
546402:  STR             R0, [R5]
546404:  MOV             R0, R5; this
546406:  MOVS            R1, #byte_4; void *
546408:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
54640C:  MOV             R0, R5; p
54640E:  BLX             free
546412:  LDR             R0, =(UseDataFence_ptr - 0x546418)
546414:  ADD             R0, PC; UseDataFence_ptr
546416:  LDR             R0, [R0]; UseDataFence
546418:  LDRB            R0, [R0]
54641A:  CMP             R0, #0
54641C:  IT NE
54641E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
546422:  MOVS            R0, #4; byte_count
546424:  BLX             malloc
546428:  MOV             R5, R0
54642A:  LDR             R0, [R4,#0x14]
54642C:  STR             R0, [R5]
54642E:  MOV             R0, R5; this
546430:  MOVS            R1, #byte_4; void *
546432:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
546436:  MOV             R0, R5; p
546438:  POP.W           {R11}
54643C:  POP.W           {R4-R7,LR}
546440:  B.W             j_free
