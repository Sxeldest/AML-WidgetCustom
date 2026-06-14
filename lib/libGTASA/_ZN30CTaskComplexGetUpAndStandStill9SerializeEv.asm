; =========================================================
; Game Engine Function: _ZN30CTaskComplexGetUpAndStandStill9SerializeEv
; Address            : 0x5329A8 - 0x532A0C
; =========================================================

5329A8:  PUSH            {R4-R7,LR}
5329AA:  ADD             R7, SP, #0xC
5329AC:  PUSH.W          {R11}
5329B0:  MOV             R4, R0
5329B2:  LDR             R0, [R4]
5329B4:  LDR             R1, [R0,#0x14]
5329B6:  MOV             R0, R4
5329B8:  BLX             R1
5329BA:  MOV             R5, R0
5329BC:  LDR             R0, =(UseDataFence_ptr - 0x5329C2)
5329BE:  ADD             R0, PC; UseDataFence_ptr
5329C0:  LDR             R0, [R0]; UseDataFence
5329C2:  LDRB            R0, [R0]
5329C4:  CMP             R0, #0
5329C6:  IT NE
5329C8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5329CC:  MOVS            R0, #4; byte_count
5329CE:  BLX             malloc
5329D2:  MOV             R6, R0
5329D4:  MOVS            R1, #byte_4; void *
5329D6:  STR             R5, [R6]
5329D8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
5329DC:  MOV             R0, R6; p
5329DE:  BLX             free
5329E2:  LDR             R0, [R4]
5329E4:  LDR             R1, [R0,#0x14]
5329E6:  MOV             R0, R4
5329E8:  BLX             R1
5329EA:  CMP             R0, #0xCE
5329EC:  ITT EQ
5329EE:  POPEQ.W         {R11}
5329F2:  POPEQ           {R4-R7,PC}
5329F4:  LDR             R0, [R4]
5329F6:  LDR             R1, [R0,#0x14]
5329F8:  MOV             R0, R4
5329FA:  BLX             R1
5329FC:  MOV             R1, R0; int
5329FE:  MOVS            R0, #0xCE; int
532A00:  POP.W           {R11}
532A04:  POP.W           {R4-R7,LR}
532A08:  B.W             sub_1941D4
