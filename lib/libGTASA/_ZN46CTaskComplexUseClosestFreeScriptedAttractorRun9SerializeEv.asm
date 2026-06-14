; =========================================================
; Game Engine Function: _ZN46CTaskComplexUseClosestFreeScriptedAttractorRun9SerializeEv
; Address            : 0x3845B4 - 0x38461E
; =========================================================

3845B4:  PUSH            {R4-R7,LR}
3845B6:  ADD             R7, SP, #0xC
3845B8:  PUSH.W          {R11}
3845BC:  MOV             R4, R0
3845BE:  LDR             R0, [R4]
3845C0:  LDR             R1, [R0,#0x14]
3845C2:  MOV             R0, R4
3845C4:  BLX             R1
3845C6:  MOV             R5, R0
3845C8:  LDR             R0, =(UseDataFence_ptr - 0x3845CE)
3845CA:  ADD             R0, PC; UseDataFence_ptr
3845CC:  LDR             R0, [R0]; UseDataFence
3845CE:  LDRB            R0, [R0]
3845D0:  CMP             R0, #0
3845D2:  IT NE
3845D4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
3845D8:  MOVS            R0, #4; byte_count
3845DA:  BLX             malloc
3845DE:  MOV             R6, R0
3845E0:  MOVS            R1, #byte_4; void *
3845E2:  STR             R5, [R6]
3845E4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
3845E8:  MOV             R0, R6; p
3845EA:  BLX             free
3845EE:  LDR             R0, [R4]
3845F0:  LDR             R1, [R0,#0x14]
3845F2:  MOV             R0, R4
3845F4:  BLX             R1
3845F6:  MOVW            R1, #0x105
3845FA:  CMP             R0, R1
3845FC:  ITT EQ
3845FE:  POPEQ.W         {R11}
384602:  POPEQ           {R4-R7,PC}
384604:  LDR             R0, [R4]
384606:  LDR             R1, [R0,#0x14]
384608:  MOV             R0, R4
38460A:  BLX             R1
38460C:  MOV             R1, R0; int
38460E:  MOVW            R0, #0x105; int
384612:  POP.W           {R11}
384616:  POP.W           {R4-R7,LR}
38461A:  B.W             sub_1941D4
