; =========================================================
; Game Engine Function: _ZN31CTaskComplexEnterAnyCarAsDriver9SerializeEv
; Address            : 0x4FF6BC - 0x4FF726
; =========================================================

4FF6BC:  PUSH            {R4-R7,LR}
4FF6BE:  ADD             R7, SP, #0xC
4FF6C0:  PUSH.W          {R11}
4FF6C4:  MOV             R4, R0
4FF6C6:  LDR             R0, [R4]
4FF6C8:  LDR             R1, [R0,#0x14]
4FF6CA:  MOV             R0, R4
4FF6CC:  BLX             R1
4FF6CE:  MOV             R5, R0
4FF6D0:  LDR             R0, =(UseDataFence_ptr - 0x4FF6D6)
4FF6D2:  ADD             R0, PC; UseDataFence_ptr
4FF6D4:  LDR             R0, [R0]; UseDataFence
4FF6D6:  LDRB            R0, [R0]
4FF6D8:  CMP             R0, #0
4FF6DA:  IT NE
4FF6DC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FF6E0:  MOVS            R0, #4; byte_count
4FF6E2:  BLX             malloc
4FF6E6:  MOV             R6, R0
4FF6E8:  MOVS            R1, #byte_4; void *
4FF6EA:  STR             R5, [R6]
4FF6EC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FF6F0:  MOV             R0, R6; p
4FF6F2:  BLX             free
4FF6F6:  LDR             R0, [R4]
4FF6F8:  LDR             R1, [R0,#0x14]
4FF6FA:  MOV             R0, R4
4FF6FC:  BLX             R1
4FF6FE:  MOVW            R1, #0x2CD
4FF702:  CMP             R0, R1
4FF704:  ITT EQ
4FF706:  POPEQ.W         {R11}
4FF70A:  POPEQ           {R4-R7,PC}
4FF70C:  LDR             R0, [R4]
4FF70E:  LDR             R1, [R0,#0x14]
4FF710:  MOV             R0, R4
4FF712:  BLX             R1
4FF714:  MOV             R1, R0; int
4FF716:  MOVW            R0, #0x2CD; int
4FF71A:  POP.W           {R11}
4FF71E:  POP.W           {R4-R7,LR}
4FF722:  B.W             sub_1941D4
