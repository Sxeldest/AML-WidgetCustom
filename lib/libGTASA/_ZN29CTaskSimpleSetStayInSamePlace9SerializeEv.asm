; =========================================================
; Game Engine Function: _ZN29CTaskSimpleSetStayInSamePlace9SerializeEv
; Address            : 0x4F23B4 - 0x4F2434
; =========================================================

4F23B4:  PUSH            {R4-R7,LR}
4F23B6:  ADD             R7, SP, #0xC
4F23B8:  PUSH.W          {R11}
4F23BC:  MOV             R4, R0
4F23BE:  LDR             R0, [R4]
4F23C0:  LDR             R1, [R0,#0x14]
4F23C2:  MOV             R0, R4
4F23C4:  BLX             R1
4F23C6:  MOV             R5, R0
4F23C8:  LDR             R0, =(UseDataFence_ptr - 0x4F23CE)
4F23CA:  ADD             R0, PC; UseDataFence_ptr
4F23CC:  LDR             R0, [R0]; UseDataFence
4F23CE:  LDRB            R0, [R0]
4F23D0:  CMP             R0, #0
4F23D2:  IT NE
4F23D4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F23D8:  MOVS            R0, #4; byte_count
4F23DA:  BLX             malloc
4F23DE:  MOV             R6, R0
4F23E0:  MOVS            R1, #byte_4; void *
4F23E2:  STR             R5, [R6]
4F23E4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F23E8:  MOV             R0, R6; p
4F23EA:  BLX             free
4F23EE:  LDR             R0, [R4]
4F23F0:  LDR             R1, [R0,#0x14]
4F23F2:  MOV             R0, R4
4F23F4:  BLX             R1
4F23F6:  CMP             R0, #0xCC
4F23F8:  BNE             loc_4F241C
4F23FA:  LDR             R0, =(UseDataFence_ptr - 0x4F2400)
4F23FC:  ADD             R0, PC; UseDataFence_ptr
4F23FE:  LDR             R0, [R0]; UseDataFence
4F2400:  LDRB            R0, [R0]
4F2402:  CMP             R0, #0
4F2404:  IT NE
4F2406:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F240A:  ADD.W           R0, R4, #8; this
4F240E:  MOVS            R1, #(stderr+1); void *
4F2410:  POP.W           {R11}
4F2414:  POP.W           {R4-R7,LR}
4F2418:  B.W             sub_19EA3C
4F241C:  LDR             R0, [R4]
4F241E:  LDR             R1, [R0,#0x14]
4F2420:  MOV             R0, R4
4F2422:  BLX             R1
4F2424:  MOV             R1, R0; int
4F2426:  MOVS            R0, #0xCC; int
4F2428:  POP.W           {R11}
4F242C:  POP.W           {R4-R7,LR}
4F2430:  B.W             sub_1941D4
