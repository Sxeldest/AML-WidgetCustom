; =========================================================
; Game Engine Function: _ZN21CTaskComplexLeaveBoat9SerializeEv
; Address            : 0x4FE53C - 0x4FE62A
; =========================================================

4FE53C:  PUSH            {R4-R7,LR}
4FE53E:  ADD             R7, SP, #0xC
4FE540:  PUSH.W          {R11}
4FE544:  MOV             R4, R0
4FE546:  LDR             R0, [R4]
4FE548:  LDR             R1, [R0,#0x14]
4FE54A:  MOV             R0, R4
4FE54C:  BLX             R1
4FE54E:  MOV             R5, R0
4FE550:  LDR             R0, =(UseDataFence_ptr - 0x4FE556)
4FE552:  ADD             R0, PC; UseDataFence_ptr
4FE554:  LDR             R0, [R0]; UseDataFence
4FE556:  LDRB            R0, [R0]
4FE558:  CMP             R0, #0
4FE55A:  IT NE
4FE55C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE560:  MOVS            R0, #4; byte_count
4FE562:  BLX             malloc
4FE566:  MOV             R6, R0
4FE568:  MOVS            R1, #byte_4; void *
4FE56A:  STR             R5, [R6]
4FE56C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE570:  MOV             R0, R6; p
4FE572:  BLX             free
4FE576:  LDR             R0, [R4]
4FE578:  LDR             R1, [R0,#0x14]
4FE57A:  MOV             R0, R4
4FE57C:  BLX             R1
4FE57E:  CMP.W           R0, #0x2CC
4FE582:  BNE             loc_4FE5B2
4FE584:  LDR             R0, [R4,#0xC]; CVehicle *
4FE586:  CBZ             R0, loc_4FE5CC
4FE588:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FE58C:  MOV             R5, R0
4FE58E:  LDR             R0, =(UseDataFence_ptr - 0x4FE594)
4FE590:  ADD             R0, PC; UseDataFence_ptr
4FE592:  LDR             R0, [R0]; UseDataFence
4FE594:  LDRB            R0, [R0]
4FE596:  CMP             R0, #0
4FE598:  IT NE
4FE59A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE59E:  MOVS            R0, #4; byte_count
4FE5A0:  BLX             malloc
4FE5A4:  MOV             R6, R0
4FE5A6:  MOVS            R1, #byte_4; void *
4FE5A8:  STR             R5, [R6]
4FE5AA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE5AE:  MOV             R0, R6
4FE5B0:  B               loc_4FE5F4
4FE5B2:  LDR             R0, [R4]
4FE5B4:  LDR             R1, [R0,#0x14]
4FE5B6:  MOV             R0, R4
4FE5B8:  BLX             R1
4FE5BA:  MOV             R1, R0; int
4FE5BC:  MOV.W           R0, #0x2CC; int
4FE5C0:  POP.W           {R11}
4FE5C4:  POP.W           {R4-R7,LR}
4FE5C8:  B.W             sub_1941D4
4FE5CC:  LDR             R0, =(UseDataFence_ptr - 0x4FE5D2)
4FE5CE:  ADD             R0, PC; UseDataFence_ptr
4FE5D0:  LDR             R0, [R0]; UseDataFence
4FE5D2:  LDRB            R0, [R0]
4FE5D4:  CMP             R0, #0
4FE5D6:  IT NE
4FE5D8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE5DC:  MOVS            R0, #4; byte_count
4FE5DE:  BLX             malloc
4FE5E2:  MOV             R5, R0
4FE5E4:  MOV.W           R0, #0xFFFFFFFF
4FE5E8:  STR             R0, [R5]
4FE5EA:  MOV             R0, R5; this
4FE5EC:  MOVS            R1, #byte_4; void *
4FE5EE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE5F2:  MOV             R0, R5; p
4FE5F4:  BLX             free
4FE5F8:  LDR             R0, =(UseDataFence_ptr - 0x4FE5FE)
4FE5FA:  ADD             R0, PC; UseDataFence_ptr
4FE5FC:  LDR             R0, [R0]; UseDataFence
4FE5FE:  LDRB            R0, [R0]
4FE600:  CMP             R0, #0
4FE602:  IT NE
4FE604:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE608:  MOVS            R0, #4; byte_count
4FE60A:  BLX             malloc
4FE60E:  MOV             R5, R0
4FE610:  LDR             R0, [R4,#0x10]
4FE612:  STR             R0, [R5]
4FE614:  MOV             R0, R5; this
4FE616:  MOVS            R1, #byte_4; void *
4FE618:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE61C:  MOV             R0, R5; p
4FE61E:  POP.W           {R11}
4FE622:  POP.W           {R4-R7,LR}
4FE626:  B.W             j_free
