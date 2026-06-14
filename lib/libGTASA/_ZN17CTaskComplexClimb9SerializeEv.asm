; =========================================================
; Game Engine Function: _ZN17CTaskComplexClimb9SerializeEv
; Address            : 0x333DC4 - 0x333E2E
; =========================================================

333DC4:  PUSH            {R4-R7,LR}
333DC6:  ADD             R7, SP, #0xC
333DC8:  PUSH.W          {R11}
333DCC:  MOV             R4, R0
333DCE:  LDR             R0, [R4]
333DD0:  LDR             R1, [R0,#0x14]
333DD2:  MOV             R0, R4
333DD4:  BLX             R1
333DD6:  MOV             R5, R0
333DD8:  LDR             R0, =(UseDataFence_ptr - 0x333DDE)
333DDA:  ADD             R0, PC; UseDataFence_ptr
333DDC:  LDR             R0, [R0]; UseDataFence
333DDE:  LDRB            R0, [R0]
333DE0:  CMP             R0, #0
333DE2:  IT NE
333DE4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
333DE8:  MOVS            R0, #4; byte_count
333DEA:  BLX             malloc
333DEE:  MOV             R6, R0
333DF0:  MOVS            R1, #byte_4; void *
333DF2:  STR             R5, [R6]
333DF4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
333DF8:  MOV             R0, R6; p
333DFA:  BLX             free
333DFE:  LDR             R0, [R4]
333E00:  LDR             R1, [R0,#0x14]
333E02:  MOV             R0, R4
333E04:  BLX             R1
333E06:  MOVW            R1, #0x10B
333E0A:  CMP             R0, R1
333E0C:  ITT EQ
333E0E:  POPEQ.W         {R11}
333E12:  POPEQ           {R4-R7,PC}
333E14:  LDR             R0, [R4]
333E16:  LDR             R1, [R0,#0x14]
333E18:  MOV             R0, R4
333E1A:  BLX             R1
333E1C:  MOV             R1, R0; int
333E1E:  MOVW            R0, #0x10B; int
333E22:  POP.W           {R11}
333E26:  POP.W           {R4-R7,LR}
333E2A:  B.W             sub_1941D4
