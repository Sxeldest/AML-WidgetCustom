; =========================================================
; Game Engine Function: _ZN16CTaskSimpleClimb9SerializeEv
; Address            : 0x53333C - 0x533504
; =========================================================

53333C:  PUSH            {R4-R7,LR}
53333E:  ADD             R7, SP, #0xC
533340:  PUSH.W          {R11}
533344:  MOV             R4, R0
533346:  LDR             R0, [R4]
533348:  LDR             R1, [R0,#0x14]
53334A:  MOV             R0, R4
53334C:  BLX             R1
53334E:  MOV             R5, R0
533350:  LDR             R0, =(UseDataFence_ptr - 0x533356)
533352:  ADD             R0, PC; UseDataFence_ptr
533354:  LDR             R0, [R0]; UseDataFence
533356:  LDRB            R0, [R0]
533358:  CMP             R0, #0
53335A:  IT NE
53335C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
533360:  MOVS            R0, #4; byte_count
533362:  BLX             malloc
533366:  MOV             R6, R0
533368:  MOVS            R1, #byte_4; void *
53336A:  STR             R5, [R6]
53336C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
533370:  MOV             R0, R6; p
533372:  BLX             free
533376:  LDR             R0, [R4]
533378:  LDR             R1, [R0,#0x14]
53337A:  MOV             R0, R4
53337C:  BLX             R1
53337E:  CMP             R0, #0xCA
533380:  BNE             loc_5333D6
533382:  LDR             R0, [R4,#0x24]
533384:  CBZ             R0, loc_5333EE
533386:  LDR             R1, =(UseDataFence_ptr - 0x533390)
533388:  LDRB.W          R0, [R0,#0x3A]
53338C:  ADD             R1, PC; UseDataFence_ptr
53338E:  AND.W           R6, R0, #7
533392:  LDR             R1, [R1]; UseDataFence
533394:  LDRB            R1, [R1]
533396:  CMP             R1, #0
533398:  IT NE
53339A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
53339E:  MOVS            R0, #4; byte_count
5333A0:  BLX             malloc
5333A4:  MOV             R5, R0
5333A6:  MOVS            R1, #byte_4; void *
5333A8:  STR             R6, [R5]
5333AA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5333AE:  MOV             R0, R5; p
5333B0:  BLX             free
5333B4:  LDR             R0, [R4,#0x24]; CObject *
5333B6:  LDRB.W          R1, [R0,#0x3A]
5333BA:  AND.W           R1, R1, #7
5333BE:  CMP             R1, #2
5333C0:  BEQ             loc_533416
5333C2:  CMP             R1, #4
5333C4:  BEQ             loc_533422
5333C6:  CMP             R1, #3
5333C8:  BNE             loc_53344E
5333CA:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
5333CE:  MOV             R5, R0
5333D0:  LDR             R0, =(UseDataFence_ptr - 0x5333D6)
5333D2:  ADD             R0, PC; UseDataFence_ptr
5333D4:  B               loc_53342C
5333D6:  LDR             R0, [R4]
5333D8:  LDR             R1, [R0,#0x14]
5333DA:  MOV             R0, R4
5333DC:  BLX             R1
5333DE:  MOV             R1, R0; int
5333E0:  MOVS            R0, #0xCA; int
5333E2:  POP.W           {R11}
5333E6:  POP.W           {R4-R7,LR}
5333EA:  B.W             sub_1941D4
5333EE:  LDR             R0, =(UseDataFence_ptr - 0x5333F4)
5333F0:  ADD             R0, PC; UseDataFence_ptr
5333F2:  LDR             R0, [R0]; UseDataFence
5333F4:  LDRB            R0, [R0]
5333F6:  CMP             R0, #0
5333F8:  IT NE
5333FA:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5333FE:  MOVS            R0, #4; byte_count
533400:  BLX             malloc
533404:  MOV             R5, R0
533406:  MOVS            R0, #0
533408:  STR             R0, [R5]
53340A:  MOV             R0, R5; this
53340C:  MOVS            R1, #byte_4; void *
53340E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
533412:  MOV             R0, R5
533414:  B               loc_53344A
533416:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
53341A:  MOV             R5, R0
53341C:  LDR             R0, =(UseDataFence_ptr - 0x533422)
53341E:  ADD             R0, PC; UseDataFence_ptr
533420:  B               loc_53342C
533422:  BLX             j__Z14GettPoolObjRefP7CObject; GettPoolObjRef(CObject *)
533426:  MOV             R5, R0
533428:  LDR             R0, =(UseDataFence_ptr - 0x53342E)
53342A:  ADD             R0, PC; UseDataFence_ptr
53342C:  LDR             R0, [R0]; UseDataFence
53342E:  LDRB            R0, [R0]
533430:  CMP             R0, #0
533432:  IT NE
533434:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
533438:  MOVS            R0, #4; byte_count
53343A:  BLX             malloc
53343E:  MOV             R6, R0
533440:  MOVS            R1, #byte_4; void *
533442:  STR             R5, [R6]
533444:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
533448:  MOV             R0, R6; p
53344A:  BLX             free
53344E:  LDR             R0, =(UseDataFence_ptr - 0x533454)
533450:  ADD             R0, PC; UseDataFence_ptr
533452:  LDR             R0, [R0]; UseDataFence
533454:  LDRB            R0, [R0]
533456:  CMP             R0, #0
533458:  IT NE
53345A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
53345E:  MOVS            R0, #0xC; byte_count
533460:  BLX             malloc
533464:  ADD.W           R1, R4, #0x18
533468:  MOV             R5, R0
53346A:  LDR             R0, [R4,#0x20]
53346C:  VLD1.8          {D16}, [R1]
533470:  MOVS            R1, #(byte_9+3); void *
533472:  STR             R0, [R5,#8]
533474:  MOV             R0, R5; this
533476:  VST1.8          {D16}, [R5]
53347A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
53347E:  MOV             R0, R5; p
533480:  BLX             free
533484:  LDR             R0, =(UseDataFence_ptr - 0x53348A)
533486:  ADD             R0, PC; UseDataFence_ptr
533488:  LDR             R0, [R0]; UseDataFence
53348A:  LDRB            R0, [R0]
53348C:  CMP             R0, #0
53348E:  IT NE
533490:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
533494:  MOVS            R0, #4; byte_count
533496:  BLX             malloc
53349A:  MOV             R5, R0
53349C:  LDR             R0, [R4,#0x14]
53349E:  STR             R0, [R5]
5334A0:  MOV             R0, R5; this
5334A2:  MOVS            R1, #byte_4; void *
5334A4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5334A8:  MOV             R0, R5; p
5334AA:  BLX             free
5334AE:  LDR             R0, =(UseDataFence_ptr - 0x5334B4)
5334B0:  ADD             R0, PC; UseDataFence_ptr
5334B2:  LDR             R0, [R0]; UseDataFence
5334B4:  LDRB            R0, [R0]
5334B6:  CMP             R0, #0
5334B8:  IT NE
5334BA:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5334BE:  ADD.W           R0, R4, #0xF; this
5334C2:  MOVS            R1, #(stderr+1); void *
5334C4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5334C8:  LDR             R0, =(UseDataFence_ptr - 0x5334CE)
5334CA:  ADD             R0, PC; UseDataFence_ptr
5334CC:  LDR             R0, [R0]; UseDataFence
5334CE:  LDRB            R0, [R0]
5334D0:  CMP             R0, #0
5334D2:  IT NE
5334D4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5334D8:  ADD.W           R0, R4, #0xD; this
5334DC:  MOVS            R1, #(stderr+1); void *
5334DE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5334E2:  LDR             R0, =(UseDataFence_ptr - 0x5334E8)
5334E4:  ADD             R0, PC; UseDataFence_ptr
5334E6:  LDR             R0, [R0]; UseDataFence
5334E8:  LDRB            R0, [R0]
5334EA:  CMP             R0, #0
5334EC:  IT NE
5334EE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5334F2:  ADD.W           R0, R4, #0xB; this
5334F6:  MOVS            R1, #(stderr+1); void *
5334F8:  POP.W           {R11}
5334FC:  POP.W           {R4-R7,LR}
533500:  B.W             sub_19EA3C
