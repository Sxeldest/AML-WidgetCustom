; =========================================================
; Game Engine Function: _ZN32CTaskComplexMedicTreatInjuredPed9SerializeEv
; Address            : 0x5124B4 - 0x5125E8
; =========================================================

5124B4:  PUSH            {R4-R7,LR}
5124B6:  ADD             R7, SP, #0xC
5124B8:  PUSH.W          {R11}
5124BC:  MOV             R4, R0
5124BE:  LDR             R0, [R4]
5124C0:  LDR             R1, [R0,#0x14]
5124C2:  MOV             R0, R4
5124C4:  BLX             R1
5124C6:  MOV             R5, R0
5124C8:  LDR             R0, =(UseDataFence_ptr - 0x5124CE)
5124CA:  ADD             R0, PC; UseDataFence_ptr
5124CC:  LDR             R0, [R0]; UseDataFence
5124CE:  LDRB            R0, [R0]
5124D0:  CMP             R0, #0
5124D2:  IT NE
5124D4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5124D8:  MOVS            R0, #4; byte_count
5124DA:  BLX             malloc
5124DE:  MOV             R6, R0
5124E0:  MOVS            R1, #byte_4; void *
5124E2:  STR             R5, [R6]
5124E4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5124E8:  MOV             R0, R6; p
5124EA:  BLX             free
5124EE:  LDR             R0, [R4]
5124F0:  LDR             R1, [R0,#0x14]
5124F2:  MOV             R0, R4
5124F4:  BLX             R1
5124F6:  CMP             R0, #0x64 ; 'd'
5124F8:  BNE             loc_512528
5124FA:  LDR             R0, [R4,#0xC]; CVehicle *
5124FC:  CBZ             R0, loc_512540
5124FE:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
512502:  MOV             R5, R0
512504:  LDR             R0, =(UseDataFence_ptr - 0x51250A)
512506:  ADD             R0, PC; UseDataFence_ptr
512508:  LDR             R0, [R0]; UseDataFence
51250A:  LDRB            R0, [R0]
51250C:  CMP             R0, #0
51250E:  IT NE
512510:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
512514:  MOVS            R0, #4; byte_count
512516:  BLX             malloc
51251A:  MOV             R6, R0
51251C:  MOVS            R1, #byte_4; void *
51251E:  STR             R5, [R6]
512520:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
512524:  MOV             R0, R6
512526:  B               loc_512568
512528:  LDR             R0, [R4]
51252A:  LDR             R1, [R0,#0x14]
51252C:  MOV             R0, R4
51252E:  BLX             R1
512530:  MOV             R1, R0; int
512532:  MOVS            R0, #0x64 ; 'd'; int
512534:  POP.W           {R11}
512538:  POP.W           {R4-R7,LR}
51253C:  B.W             sub_1941D4
512540:  LDR             R0, =(UseDataFence_ptr - 0x512546)
512542:  ADD             R0, PC; UseDataFence_ptr
512544:  LDR             R0, [R0]; UseDataFence
512546:  LDRB            R0, [R0]
512548:  CMP             R0, #0
51254A:  IT NE
51254C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
512550:  MOVS            R0, #4; byte_count
512552:  BLX             malloc
512556:  MOV             R5, R0
512558:  MOV.W           R0, #0xFFFFFFFF
51255C:  STR             R0, [R5]
51255E:  MOV             R0, R5; this
512560:  MOVS            R1, #byte_4; void *
512562:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
512566:  MOV             R0, R5; p
512568:  BLX             free
51256C:  LDR             R0, [R4,#0x10]; CPed *
51256E:  CBZ             R0, loc_51259A
512570:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
512574:  MOV             R5, R0
512576:  LDR             R0, =(UseDataFence_ptr - 0x51257C)
512578:  ADD             R0, PC; UseDataFence_ptr
51257A:  LDR             R0, [R0]; UseDataFence
51257C:  LDRB            R0, [R0]
51257E:  CMP             R0, #0
512580:  IT NE
512582:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
512586:  MOVS            R0, #4; byte_count
512588:  BLX             malloc
51258C:  MOV             R6, R0
51258E:  MOVS            R1, #byte_4; void *
512590:  STR             R5, [R6]
512592:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
512596:  MOV             R0, R6
512598:  B               loc_5125C2
51259A:  LDR             R0, =(UseDataFence_ptr - 0x5125A0)
51259C:  ADD             R0, PC; UseDataFence_ptr
51259E:  LDR             R0, [R0]; UseDataFence
5125A0:  LDRB            R0, [R0]
5125A2:  CMP             R0, #0
5125A4:  IT NE
5125A6:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5125AA:  MOVS            R0, #4; byte_count
5125AC:  BLX             malloc
5125B0:  MOV             R5, R0
5125B2:  MOV.W           R0, #0xFFFFFFFF
5125B6:  STR             R0, [R5]
5125B8:  MOV             R0, R5; this
5125BA:  MOVS            R1, #byte_4; void *
5125BC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5125C0:  MOV             R0, R5; p
5125C2:  BLX             free
5125C6:  LDR             R0, =(UseDataFence_ptr - 0x5125CC)
5125C8:  ADD             R0, PC; UseDataFence_ptr
5125CA:  LDR             R0, [R0]; UseDataFence
5125CC:  LDRB            R0, [R0]
5125CE:  CMP             R0, #0
5125D0:  IT NE
5125D2:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5125D6:  ADD.W           R0, R4, #0x14; this
5125DA:  MOVS            R1, #(stderr+1); void *
5125DC:  POP.W           {R11}
5125E0:  POP.W           {R4-R7,LR}
5125E4:  B.W             sub_19EA3C
