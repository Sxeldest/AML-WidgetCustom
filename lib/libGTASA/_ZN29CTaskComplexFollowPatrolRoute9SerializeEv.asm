; =========================================================
; Game Engine Function: _ZN29CTaskComplexFollowPatrolRoute9SerializeEv
; Address            : 0x5285A8 - 0x5286F2
; =========================================================

5285A8:  PUSH            {R4-R7,LR}
5285AA:  ADD             R7, SP, #0xC
5285AC:  PUSH.W          {R11}
5285B0:  MOV             R4, R0
5285B2:  LDR             R0, [R4]
5285B4:  LDR             R1, [R0,#0x14]
5285B6:  MOV             R0, R4
5285B8:  BLX             R1
5285BA:  MOV             R5, R0
5285BC:  LDR             R0, =(UseDataFence_ptr - 0x5285C2)
5285BE:  ADD             R0, PC; UseDataFence_ptr
5285C0:  LDR             R0, [R0]; UseDataFence
5285C2:  LDRB            R0, [R0]
5285C4:  CMP             R0, #0
5285C6:  IT NE
5285C8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5285CC:  MOVS            R0, #4; byte_count
5285CE:  BLX             malloc
5285D2:  MOV             R6, R0
5285D4:  MOVS            R1, #byte_4; void *
5285D6:  STR             R5, [R6]
5285D8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5285DC:  MOV             R0, R6; p
5285DE:  BLX             free
5285E2:  LDR             R0, [R4]
5285E4:  LDR             R1, [R0,#0x14]
5285E6:  MOV             R0, R4
5285E8:  BLX             R1
5285EA:  MOVW            R1, #0x3A3
5285EE:  CMP             R0, R1
5285F0:  BNE             loc_5286D8
5285F2:  LDR             R0, =(UseDataFence_ptr - 0x5285F8)
5285F4:  ADD             R0, PC; UseDataFence_ptr
5285F6:  LDR             R0, [R0]; UseDataFence
5285F8:  LDRB            R0, [R0]
5285FA:  CMP             R0, #0
5285FC:  IT NE
5285FE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
528602:  MOVS            R0, #2; byte_count
528604:  BLX             malloc
528608:  MOV             R5, R0
52860A:  LDRH            R0, [R4,#0x10]
52860C:  STRH            R0, [R5]
52860E:  MOV             R0, R5; this
528610:  MOVS            R1, #(stderr+2); void *
528612:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
528616:  MOV             R0, R5; p
528618:  BLX             free
52861C:  LDR             R0, =(UseDataFence_ptr - 0x528622)
52861E:  ADD             R0, PC; UseDataFence_ptr
528620:  LDR             R0, [R0]; UseDataFence
528622:  LDRB            R0, [R0]
528624:  CMP             R0, #0
528626:  IT NE
528628:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
52862C:  MOV.W           R0, #0x1A4; byte_count
528630:  LDR             R5, [R4,#0x1C]
528632:  BLX             malloc
528636:  MOV             R1, R5; void *
528638:  MOV.W           R2, #0x1A4; size_t
52863C:  MOV             R6, R0
52863E:  BLX             memcpy_1
528642:  MOV             R0, R6; this
528644:  MOV.W           R1, #(elf_hash_bucket+0xA8); void *
528648:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
52864C:  MOV             R0, R6; p
52864E:  BLX             free
528652:  LDR             R0, =(UseDataFence_ptr - 0x528658)
528654:  ADD             R0, PC; UseDataFence_ptr
528656:  LDR             R0, [R0]; UseDataFence
528658:  LDRB            R0, [R0]
52865A:  CMP             R0, #0
52865C:  IT NE
52865E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
528662:  MOVS            R0, #2; byte_count
528664:  BLX             malloc
528668:  MOV             R5, R0
52866A:  LDRH            R0, [R4,#0xC]
52866C:  STRH            R0, [R5]
52866E:  MOV             R0, R5; this
528670:  MOVS            R1, #(stderr+2); void *
528672:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
528676:  MOV             R0, R5; p
528678:  BLX             free
52867C:  LDR             R0, =(UseDataFence_ptr - 0x528682)
52867E:  ADD             R0, PC; UseDataFence_ptr
528680:  LDR             R0, [R0]; UseDataFence
528682:  LDRB            R0, [R0]
528684:  CMP             R0, #0
528686:  IT NE
528688:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
52868C:  MOVS            R0, #4; byte_count
52868E:  BLX             malloc
528692:  MOV             R5, R0
528694:  LDR             R0, [R4,#0x14]
528696:  STR             R0, [R5]
528698:  MOV             R0, R5; this
52869A:  MOVS            R1, #byte_4; void *
52869C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5286A0:  MOV             R0, R5; p
5286A2:  BLX             free
5286A6:  LDR             R0, =(UseDataFence_ptr - 0x5286AC)
5286A8:  ADD             R0, PC; UseDataFence_ptr
5286AA:  LDR             R0, [R0]; UseDataFence
5286AC:  LDRB            R0, [R0]
5286AE:  CMP             R0, #0
5286B0:  IT NE
5286B2:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5286B6:  MOVS            R0, #4; byte_count
5286B8:  BLX             malloc
5286BC:  MOV             R5, R0
5286BE:  LDR             R0, [R4,#0x18]
5286C0:  STR             R0, [R5]
5286C2:  MOV             R0, R5; this
5286C4:  MOVS            R1, #byte_4; void *
5286C6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5286CA:  MOV             R0, R5; p
5286CC:  POP.W           {R11}
5286D0:  POP.W           {R4-R7,LR}
5286D4:  B.W             j_free
5286D8:  LDR             R0, [R4]
5286DA:  LDR             R1, [R0,#0x14]
5286DC:  MOV             R0, R4
5286DE:  BLX             R1
5286E0:  MOV             R1, R0; int
5286E2:  MOVW            R0, #0x3A3; int
5286E6:  POP.W           {R11}
5286EA:  POP.W           {R4-R7,LR}
5286EE:  B.W             sub_1941D4
