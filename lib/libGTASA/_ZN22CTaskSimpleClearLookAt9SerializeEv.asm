; =========================================================
; Game Engine Function: _ZN22CTaskSimpleClearLookAt9SerializeEv
; Address            : 0x4F3EA8 - 0x4F3F10
; =========================================================

4F3EA8:  PUSH            {R4-R7,LR}
4F3EAA:  ADD             R7, SP, #0xC
4F3EAC:  PUSH.W          {R11}
4F3EB0:  MOV             R4, R0
4F3EB2:  LDR             R0, [R4]
4F3EB4:  LDR             R1, [R0,#0x14]
4F3EB6:  MOV             R0, R4
4F3EB8:  BLX             R1
4F3EBA:  MOV             R5, R0
4F3EBC:  LDR             R0, =(UseDataFence_ptr - 0x4F3EC2)
4F3EBE:  ADD             R0, PC; UseDataFence_ptr
4F3EC0:  LDR             R0, [R0]; UseDataFence
4F3EC2:  LDRB            R0, [R0]
4F3EC4:  CMP             R0, #0
4F3EC6:  IT NE
4F3EC8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F3ECC:  MOVS            R0, #4; byte_count
4F3ECE:  BLX             malloc
4F3ED2:  MOV             R6, R0
4F3ED4:  MOVS            R1, #byte_4; void *
4F3ED6:  STR             R5, [R6]
4F3ED8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F3EDC:  MOV             R0, R6; p
4F3EDE:  BLX             free
4F3EE2:  LDR             R0, [R4]
4F3EE4:  LDR             R1, [R0,#0x14]
4F3EE6:  MOV             R0, R4
4F3EE8:  BLX             R1
4F3EEA:  CMP.W           R0, #0x10E
4F3EEE:  ITT EQ
4F3EF0:  POPEQ.W         {R11}
4F3EF4:  POPEQ           {R4-R7,PC}
4F3EF6:  LDR             R0, [R4]
4F3EF8:  LDR             R1, [R0,#0x14]
4F3EFA:  MOV             R0, R4
4F3EFC:  BLX             R1
4F3EFE:  MOV             R1, R0; int
4F3F00:  MOV.W           R0, #0x10E; int
4F3F04:  POP.W           {R11}
4F3F08:  POP.W           {R4-R7,LR}
4F3F0C:  B.W             sub_1941D4
