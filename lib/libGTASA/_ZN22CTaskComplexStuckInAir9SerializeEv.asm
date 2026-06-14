; =========================================================
; Game Engine Function: _ZN22CTaskComplexStuckInAir9SerializeEv
; Address            : 0x5337D0 - 0x53383A
; =========================================================

5337D0:  PUSH            {R4-R7,LR}
5337D2:  ADD             R7, SP, #0xC
5337D4:  PUSH.W          {R11}
5337D8:  MOV             R4, R0
5337DA:  LDR             R0, [R4]
5337DC:  LDR             R1, [R0,#0x14]
5337DE:  MOV             R0, R4
5337E0:  BLX             R1
5337E2:  MOV             R5, R0
5337E4:  LDR             R0, =(UseDataFence_ptr - 0x5337EA)
5337E6:  ADD             R0, PC; UseDataFence_ptr
5337E8:  LDR             R0, [R0]; UseDataFence
5337EA:  LDRB            R0, [R0]
5337EC:  CMP             R0, #0
5337EE:  IT NE
5337F0:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
5337F4:  MOVS            R0, #4; byte_count
5337F6:  BLX             malloc
5337FA:  MOV             R6, R0
5337FC:  MOVS            R1, #byte_4; void *
5337FE:  STR             R5, [R6]
533800:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
533804:  MOV             R0, R6; p
533806:  BLX             free
53380A:  LDR             R0, [R4]
53380C:  LDR             R1, [R0,#0x14]
53380E:  MOV             R0, R4
533810:  BLX             R1
533812:  MOVW            R1, #0x203
533816:  CMP             R0, R1
533818:  ITT EQ
53381A:  POPEQ.W         {R11}
53381E:  POPEQ           {R4-R7,PC}
533820:  LDR             R0, [R4]
533822:  LDR             R1, [R0,#0x14]
533824:  MOV             R0, R4
533826:  BLX             R1
533828:  MOV             R1, R0; int
53382A:  MOVW            R0, #0x203; int
53382E:  POP.W           {R11}
533832:  POP.W           {R4-R7,LR}
533836:  B.W             sub_1941D4
