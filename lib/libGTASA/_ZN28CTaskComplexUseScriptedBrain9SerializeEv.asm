; =========================================================
; Game Engine Function: _ZN28CTaskComplexUseScriptedBrain9SerializeEv
; Address            : 0x4F4470 - 0x4F44F4
; =========================================================

4F4470:  PUSH            {R4-R7,LR}
4F4472:  ADD             R7, SP, #0xC
4F4474:  PUSH.W          {R11}
4F4478:  MOV             R4, R0
4F447A:  LDR             R0, [R4]
4F447C:  LDR             R1, [R0,#0x14]
4F447E:  MOV             R0, R4
4F4480:  BLX             R1
4F4482:  MOV             R5, R0
4F4484:  LDR             R0, =(UseDataFence_ptr - 0x4F448A)
4F4486:  ADD             R0, PC; UseDataFence_ptr
4F4488:  LDR             R0, [R0]; UseDataFence
4F448A:  LDRB            R0, [R0]
4F448C:  CMP             R0, #0
4F448E:  IT NE
4F4490:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F4494:  MOVS            R0, #4; byte_count
4F4496:  BLX             malloc
4F449A:  MOV             R6, R0
4F449C:  MOVS            R1, #byte_4; void *
4F449E:  STR             R5, [R6]
4F44A0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F44A4:  MOV             R0, R6; p
4F44A6:  BLX             free
4F44AA:  LDR             R0, [R4]
4F44AC:  LDR             R1, [R0,#0x14]
4F44AE:  MOV             R0, R4
4F44B0:  BLX             R1
4F44B2:  CMP.W           R0, #0x708
4F44B6:  BNE             loc_4F44DA
4F44B8:  LDR             R0, =(UseDataFence_ptr - 0x4F44BE)
4F44BA:  ADD             R0, PC; UseDataFence_ptr
4F44BC:  LDR             R0, [R0]; UseDataFence
4F44BE:  LDRB            R0, [R0]
4F44C0:  CMP             R0, #0
4F44C2:  IT NE
4F44C4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F44C8:  ADD.W           R0, R4, #0xD; this
4F44CC:  MOVS            R1, #byte_8; void *
4F44CE:  POP.W           {R11}
4F44D2:  POP.W           {R4-R7,LR}
4F44D6:  B.W             sub_19EA3C
4F44DA:  LDR             R0, [R4]
4F44DC:  LDR             R1, [R0,#0x14]
4F44DE:  MOV             R0, R4
4F44E0:  BLX             R1
4F44E2:  MOV             R1, R0; int
4F44E4:  MOV.W           R0, #0x708; int
4F44E8:  POP.W           {R11}
4F44EC:  POP.W           {R4-R7,LR}
4F44F0:  B.W             sub_1941D4
