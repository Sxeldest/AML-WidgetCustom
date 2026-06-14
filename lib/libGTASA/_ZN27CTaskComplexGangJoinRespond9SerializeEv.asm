; =========================================================
; Game Engine Function: _ZN27CTaskComplexGangJoinRespond9SerializeEv
; Address            : 0x51C5E0 - 0x51C666
; =========================================================

51C5E0:  PUSH            {R4-R7,LR}
51C5E2:  ADD             R7, SP, #0xC
51C5E4:  PUSH.W          {R11}
51C5E8:  MOV             R4, R0
51C5EA:  LDR             R0, [R4]
51C5EC:  LDR             R1, [R0,#0x14]
51C5EE:  MOV             R0, R4
51C5F0:  BLX             R1
51C5F2:  MOV             R5, R0
51C5F4:  LDR             R0, =(UseDataFence_ptr - 0x51C5FA)
51C5F6:  ADD             R0, PC; UseDataFence_ptr
51C5F8:  LDR             R0, [R0]; UseDataFence
51C5FA:  LDRB            R0, [R0]
51C5FC:  CMP             R0, #0
51C5FE:  IT NE
51C600:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
51C604:  MOVS            R0, #4; byte_count
51C606:  BLX             malloc
51C60A:  MOV             R6, R0
51C60C:  MOVS            R1, #byte_4; void *
51C60E:  STR             R5, [R6]
51C610:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
51C614:  MOV             R0, R6; p
51C616:  BLX             free
51C61A:  LDR             R0, [R4]
51C61C:  LDR             R1, [R0,#0x14]
51C61E:  MOV             R0, R4
51C620:  BLX             R1
51C622:  MOVW            R1, #0x4C3
51C626:  CMP             R0, R1
51C628:  BNE             loc_51C64C
51C62A:  LDR             R0, =(UseDataFence_ptr - 0x51C630)
51C62C:  ADD             R0, PC; UseDataFence_ptr
51C62E:  LDR             R0, [R0]; UseDataFence
51C630:  LDRB            R0, [R0]
51C632:  CMP             R0, #0
51C634:  IT NE
51C636:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
51C63A:  ADD.W           R0, R4, #0xC; this
51C63E:  MOVS            R1, #(stderr+1); void *
51C640:  POP.W           {R11}
51C644:  POP.W           {R4-R7,LR}
51C648:  B.W             sub_19EA3C
51C64C:  LDR             R0, [R4]
51C64E:  LDR             R1, [R0,#0x14]
51C650:  MOV             R0, R4
51C652:  BLX             R1
51C654:  MOV             R1, R0; int
51C656:  MOVW            R0, #0x4C3; int
51C65A:  POP.W           {R11}
51C65E:  POP.W           {R4-R7,LR}
51C662:  B.W             sub_1941D4
