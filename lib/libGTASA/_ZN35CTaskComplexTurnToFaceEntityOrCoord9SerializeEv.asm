; =========================================================
; Game Engine Function: _ZN35CTaskComplexTurnToFaceEntityOrCoord9SerializeEv
; Address            : 0x5283F4 - 0x528552
; =========================================================

5283F4:  PUSH            {R4-R7,LR}
5283F6:  ADD             R7, SP, #0xC
5283F8:  PUSH.W          {R11}
5283FC:  MOV             R4, R0
5283FE:  LDR             R0, [R4]
528400:  LDR             R1, [R0,#0x14]
528402:  MOV             R0, R4
528404:  BLX             R1
528406:  MOV             R5, R0
528408:  LDR             R0, =(UseDataFence_ptr - 0x52840E)
52840A:  ADD             R0, PC; UseDataFence_ptr
52840C:  LDR             R0, [R0]; UseDataFence
52840E:  LDRB            R0, [R0]
528410:  CMP             R0, #0
528412:  IT NE
528414:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
528418:  MOVS            R0, #4; byte_count
52841A:  BLX             malloc
52841E:  MOV             R6, R0
528420:  MOVS            R1, #byte_4; void *
528422:  STR             R5, [R6]
528424:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
528428:  MOV             R0, R6; p
52842A:  BLX             free
52842E:  LDR             R0, [R4]
528430:  LDR             R1, [R0,#0x14]
528432:  MOV             R0, R4
528434:  BLX             R1
528436:  CMP.W           R0, #0x398
52843A:  BNE             loc_52848C
52843C:  LDR             R0, [R4,#0xC]
52843E:  CBZ             R0, loc_5284A6
528440:  LDR             R1, =(UseDataFence_ptr - 0x52844A)
528442:  LDRB.W          R0, [R0,#0x3A]
528446:  ADD             R1, PC; UseDataFence_ptr
528448:  AND.W           R6, R0, #7
52844C:  LDR             R1, [R1]; UseDataFence
52844E:  LDRB            R1, [R1]
528450:  CMP             R1, #0
528452:  IT NE
528454:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
528458:  MOVS            R0, #4; byte_count
52845A:  BLX             malloc
52845E:  MOV             R5, R0
528460:  MOVS            R1, #byte_4; void *
528462:  STR             R6, [R5]
528464:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
528468:  MOV             R0, R5; p
52846A:  BLX             free
52846E:  LDR             R0, [R4,#0xC]; CVehicle *
528470:  LDRB.W          R1, [R0,#0x3A]
528474:  AND.W           R1, R1, #7
528478:  CMP             R1, #2
52847A:  BEQ             loc_5284CE
52847C:  CMP             R1, #3
52847E:  BNE             loc_5284FA
528480:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
528484:  MOV             R5, R0
528486:  LDR             R0, =(UseDataFence_ptr - 0x52848C)
528488:  ADD             R0, PC; UseDataFence_ptr
52848A:  B               loc_5284D8
52848C:  LDR             R0, [R4]
52848E:  LDR             R1, [R0,#0x14]
528490:  MOV             R0, R4
528492:  BLX             R1
528494:  MOV             R1, R0; int
528496:  MOV.W           R0, #0x398; int
52849A:  POP.W           {R11}
52849E:  POP.W           {R4-R7,LR}
5284A2:  B.W             sub_1941D4
5284A6:  LDR             R0, =(UseDataFence_ptr - 0x5284AC)
5284A8:  ADD             R0, PC; UseDataFence_ptr
5284AA:  LDR             R0, [R0]; UseDataFence
5284AC:  LDRB            R0, [R0]
5284AE:  CMP             R0, #0
5284B0:  IT NE
5284B2:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5284B6:  MOVS            R0, #4; byte_count
5284B8:  BLX             malloc
5284BC:  MOV             R5, R0
5284BE:  MOVS            R0, #0
5284C0:  STR             R0, [R5]
5284C2:  MOV             R0, R5; this
5284C4:  MOVS            R1, #byte_4; void *
5284C6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5284CA:  MOV             R0, R5
5284CC:  B               loc_5284F6
5284CE:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
5284D2:  MOV             R5, R0
5284D4:  LDR             R0, =(UseDataFence_ptr - 0x5284DA)
5284D6:  ADD             R0, PC; UseDataFence_ptr
5284D8:  LDR             R0, [R0]; UseDataFence
5284DA:  LDRB            R0, [R0]
5284DC:  CMP             R0, #0
5284DE:  IT NE
5284E0:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5284E4:  MOVS            R0, #4; byte_count
5284E6:  BLX             malloc
5284EA:  MOV             R6, R0
5284EC:  MOVS            R1, #byte_4; void *
5284EE:  STR             R5, [R6]
5284F0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5284F4:  MOV             R0, R6; p
5284F6:  BLX             free
5284FA:  LDR             R0, =(UseDataFence_ptr - 0x528500)
5284FC:  ADD             R0, PC; UseDataFence_ptr
5284FE:  LDR             R0, [R0]; UseDataFence
528500:  LDRB            R0, [R0]
528502:  CMP             R0, #0
528504:  IT NE
528506:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
52850A:  ADD.W           R0, R4, #0x10; this
52850E:  MOVS            R1, #(stderr+1); void *
528510:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
528514:  LDR             R0, =(UseDataFence_ptr - 0x52851A)
528516:  ADD             R0, PC; UseDataFence_ptr
528518:  LDR             R0, [R0]; UseDataFence
52851A:  LDRB            R0, [R0]
52851C:  CMP             R0, #0
52851E:  IT NE
528520:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
528524:  MOVS            R0, #0xC; byte_count
528526:  BLX             malloc
52852A:  ADD.W           R1, R4, #0x14
52852E:  MOV             R5, R0
528530:  LDR             R0, [R4,#0x1C]
528532:  VLD1.8          {D16}, [R1]
528536:  MOVS            R1, #(byte_9+3); void *
528538:  STR             R0, [R5,#8]
52853A:  MOV             R0, R5; this
52853C:  VST1.8          {D16}, [R5]
528540:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
528544:  MOV             R0, R5; p
528546:  POP.W           {R11}
52854A:  POP.W           {R4-R7,LR}
52854E:  B.W             j_free
