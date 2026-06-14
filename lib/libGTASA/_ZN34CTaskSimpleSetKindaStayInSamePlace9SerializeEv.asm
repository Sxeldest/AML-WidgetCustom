; =========================================================
; Game Engine Function: _ZN34CTaskSimpleSetKindaStayInSamePlace9SerializeEv
; Address            : 0x4F246C - 0x4F24F0
; =========================================================

4F246C:  PUSH            {R4-R7,LR}
4F246E:  ADD             R7, SP, #0xC
4F2470:  PUSH.W          {R11}
4F2474:  MOV             R4, R0
4F2476:  LDR             R0, [R4]
4F2478:  LDR             R1, [R0,#0x14]
4F247A:  MOV             R0, R4
4F247C:  BLX             R1
4F247E:  MOV             R5, R0
4F2480:  LDR             R0, =(UseDataFence_ptr - 0x4F2486)
4F2482:  ADD             R0, PC; UseDataFence_ptr
4F2484:  LDR             R0, [R0]; UseDataFence
4F2486:  LDRB            R0, [R0]
4F2488:  CMP             R0, #0
4F248A:  IT NE
4F248C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F2490:  MOVS            R0, #4; byte_count
4F2492:  BLX             malloc
4F2496:  MOV             R6, R0
4F2498:  MOVS            R1, #byte_4; void *
4F249A:  STR             R5, [R6]
4F249C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F24A0:  MOV             R0, R6; p
4F24A2:  BLX             free
4F24A6:  LDR             R0, [R4]
4F24A8:  LDR             R1, [R0,#0x14]
4F24AA:  MOV             R0, R4
4F24AC:  BLX             R1
4F24AE:  CMP.W           R0, #0x114
4F24B2:  BNE             loc_4F24D6
4F24B4:  LDR             R0, =(UseDataFence_ptr - 0x4F24BA)
4F24B6:  ADD             R0, PC; UseDataFence_ptr
4F24B8:  LDR             R0, [R0]; UseDataFence
4F24BA:  LDRB            R0, [R0]
4F24BC:  CMP             R0, #0
4F24BE:  IT NE
4F24C0:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F24C4:  ADD.W           R0, R4, #8; this
4F24C8:  MOVS            R1, #(stderr+1); void *
4F24CA:  POP.W           {R11}
4F24CE:  POP.W           {R4-R7,LR}
4F24D2:  B.W             sub_19EA3C
4F24D6:  LDR             R0, [R4]
4F24D8:  LDR             R1, [R0,#0x14]
4F24DA:  MOV             R0, R4
4F24DC:  BLX             R1
4F24DE:  MOV             R1, R0; int
4F24E0:  MOV.W           R0, #0x114; int
4F24E4:  POP.W           {R11}
4F24E8:  POP.W           {R4-R7,LR}
4F24EC:  B.W             sub_1941D4
