; =========================================================
; Game Engine Function: _ZN42CTaskComplexCrossRoadLookAndAchieveHeading10CreateTaskEv
; Address            : 0x491430 - 0x491496
; =========================================================

491430:  PUSH            {R4,R5,R7,LR}
491432:  ADD             R7, SP, #8
491434:  SUB             SP, SP, #0x10
491436:  LDR             R0, =(UseDataFence_ptr - 0x49143C)
491438:  ADD             R0, PC; UseDataFence_ptr
49143A:  LDR             R0, [R0]; UseDataFence
49143C:  LDRB            R4, [R0]
49143E:  CBZ             R4, loc_491454
491440:  LDR             R0, =(UseDataFence_ptr - 0x491448)
491442:  MOVS            R1, #(stderr+2); void *
491444:  ADD             R0, PC; UseDataFence_ptr
491446:  LDR             R5, [R0]; UseDataFence
491448:  MOVS            R0, #0
49144A:  STRB            R0, [R5]
49144C:  ADD             R0, SP, #0x18+var_C; this
49144E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491452:  STRB            R4, [R5]
491454:  ADD             R0, SP, #0x18+var_10; this
491456:  MOVS            R1, #byte_4; void *
491458:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49145C:  LDR             R0, =(UseDataFence_ptr - 0x491462)
49145E:  ADD             R0, PC; UseDataFence_ptr
491460:  LDR             R0, [R0]; UseDataFence
491462:  LDRB            R4, [R0]
491464:  CBZ             R4, loc_49147C
491466:  LDR             R0, =(UseDataFence_ptr - 0x49146E)
491468:  MOVS            R1, #(stderr+2); void *
49146A:  ADD             R0, PC; UseDataFence_ptr
49146C:  LDR             R5, [R0]; UseDataFence
49146E:  MOVS            R0, #0
491470:  STRB            R0, [R5]
491472:  SUB.W           R0, R7, #-var_A; this
491476:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49147A:  STRB            R4, [R5]
49147C:  ADD             R0, SP, #0x18+var_14; this
49147E:  MOVS            R1, #byte_4; void *
491480:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491484:  MOVS            R0, #dword_14; this
491486:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49148A:  LDRD.W          R2, R1, [SP,#0x18+var_14]; float
49148E:  BLX             j__ZN42CTaskComplexCrossRoadLookAndAchieveHeadingC2Eif; CTaskComplexCrossRoadLookAndAchieveHeading::CTaskComplexCrossRoadLookAndAchieveHeading(int,float)
491492:  ADD             SP, SP, #0x10
491494:  POP             {R4,R5,R7,PC}
