; =========================================================
; Game Engine Function: _ZN21CTaskSimpleWaitForBus9SerializeEv
; Address            : 0x4F3790 - 0x4F37F4
; =========================================================

4F3790:  PUSH            {R4-R7,LR}
4F3792:  ADD             R7, SP, #0xC
4F3794:  PUSH.W          {R11}
4F3798:  MOV             R4, R0
4F379A:  LDR             R0, [R4]
4F379C:  LDR             R1, [R0,#0x14]
4F379E:  MOV             R0, R4
4F37A0:  BLX             R1
4F37A2:  MOV             R5, R0
4F37A4:  LDR             R0, =(UseDataFence_ptr - 0x4F37AA)
4F37A6:  ADD             R0, PC; UseDataFence_ptr
4F37A8:  LDR             R0, [R0]; UseDataFence
4F37AA:  LDRB            R0, [R0]
4F37AC:  CMP             R0, #0
4F37AE:  IT NE
4F37B0:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F37B4:  MOVS            R0, #4; byte_count
4F37B6:  BLX             malloc
4F37BA:  MOV             R6, R0
4F37BC:  MOVS            R1, #byte_4; void *
4F37BE:  STR             R5, [R6]
4F37C0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F37C4:  MOV             R0, R6; p
4F37C6:  BLX             free
4F37CA:  LDR             R0, [R4]
4F37CC:  LDR             R1, [R0,#0x14]
4F37CE:  MOV             R0, R4
4F37D0:  BLX             R1
4F37D2:  CMP             R0, #0xEE
4F37D4:  ITT EQ
4F37D6:  POPEQ.W         {R11}
4F37DA:  POPEQ           {R4-R7,PC}
4F37DC:  LDR             R0, [R4]
4F37DE:  LDR             R1, [R0,#0x14]
4F37E0:  MOV             R0, R4
4F37E2:  BLX             R1
4F37E4:  MOV             R1, R0; int
4F37E6:  MOVS            R0, #0xEE; int
4F37E8:  POP.W           {R11}
4F37EC:  POP.W           {R4-R7,LR}
4F37F0:  B.W             sub_1941D4
