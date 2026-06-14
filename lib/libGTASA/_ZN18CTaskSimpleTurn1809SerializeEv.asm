; =========================================================
; Game Engine Function: _ZN18CTaskSimpleTurn1809SerializeEv
; Address            : 0x4F3378 - 0x4F33DC
; =========================================================

4F3378:  PUSH            {R4-R7,LR}
4F337A:  ADD             R7, SP, #0xC
4F337C:  PUSH.W          {R11}
4F3380:  MOV             R4, R0
4F3382:  LDR             R0, [R4]
4F3384:  LDR             R1, [R0,#0x14]
4F3386:  MOV             R0, R4
4F3388:  BLX             R1
4F338A:  MOV             R5, R0
4F338C:  LDR             R0, =(UseDataFence_ptr - 0x4F3392)
4F338E:  ADD             R0, PC; UseDataFence_ptr
4F3390:  LDR             R0, [R0]; UseDataFence
4F3392:  LDRB            R0, [R0]
4F3394:  CMP             R0, #0
4F3396:  IT NE
4F3398:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F339C:  MOVS            R0, #4; byte_count
4F339E:  BLX             malloc
4F33A2:  MOV             R6, R0
4F33A4:  MOVS            R1, #byte_4; void *
4F33A6:  STR             R5, [R6]
4F33A8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F33AC:  MOV             R0, R6; p
4F33AE:  BLX             free
4F33B2:  LDR             R0, [R4]
4F33B4:  LDR             R1, [R0,#0x14]
4F33B6:  MOV             R0, R4
4F33B8:  BLX             R1
4F33BA:  CMP             R0, #0xE4
4F33BC:  ITT EQ
4F33BE:  POPEQ.W         {R11}
4F33C2:  POPEQ           {R4-R7,PC}
4F33C4:  LDR             R0, [R4]
4F33C6:  LDR             R1, [R0,#0x14]
4F33C8:  MOV             R0, R4
4F33CA:  BLX             R1
4F33CC:  MOV             R1, R0; int
4F33CE:  MOVS            R0, #0xE4; int
4F33D0:  POP.W           {R11}
4F33D4:  POP.W           {R4-R7,LR}
4F33D8:  B.W             sub_1941D4
