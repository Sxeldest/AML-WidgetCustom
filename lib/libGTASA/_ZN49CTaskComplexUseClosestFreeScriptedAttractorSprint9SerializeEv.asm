; =========================================================
; Game Engine Function: _ZN49CTaskComplexUseClosestFreeScriptedAttractorSprint9SerializeEv
; Address            : 0x384660 - 0x3846C8
; =========================================================

384660:  PUSH            {R4-R7,LR}
384662:  ADD             R7, SP, #0xC
384664:  PUSH.W          {R11}
384668:  MOV             R4, R0
38466A:  LDR             R0, [R4]
38466C:  LDR             R1, [R0,#0x14]
38466E:  MOV             R0, R4
384670:  BLX             R1
384672:  MOV             R5, R0
384674:  LDR             R0, =(UseDataFence_ptr - 0x38467A)
384676:  ADD             R0, PC; UseDataFence_ptr
384678:  LDR             R0, [R0]; UseDataFence
38467A:  LDRB            R0, [R0]
38467C:  CMP             R0, #0
38467E:  IT NE
384680:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
384684:  MOVS            R0, #4; byte_count
384686:  BLX             malloc
38468A:  MOV             R6, R0
38468C:  MOVS            R1, #byte_4; void *
38468E:  STR             R5, [R6]
384690:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
384694:  MOV             R0, R6; p
384696:  BLX             free
38469A:  LDR             R0, [R4]
38469C:  LDR             R1, [R0,#0x14]
38469E:  MOV             R0, R4
3846A0:  BLX             R1
3846A2:  CMP.W           R0, #0x106
3846A6:  ITT EQ
3846A8:  POPEQ.W         {R11}
3846AC:  POPEQ           {R4-R7,PC}
3846AE:  LDR             R0, [R4]
3846B0:  LDR             R1, [R0,#0x14]
3846B2:  MOV             R0, R4
3846B4:  BLX             R1
3846B6:  MOV             R1, R0; int
3846B8:  MOV.W           R0, #0x106; int
3846BC:  POP.W           {R11}
3846C0:  POP.W           {R4-R7,LR}
3846C4:  B.W             sub_1941D4
