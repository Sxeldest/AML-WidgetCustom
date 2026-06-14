; =========================================================
; Game Engine Function: _ZNK26CTaskComplexDriveFireTruck5CloneEv
; Address            : 0x512638 - 0x512696
; =========================================================

512638:  PUSH            {R4-R7,LR}
51263A:  ADD             R7, SP, #0xC
51263C:  PUSH.W          {R8}
512640:  MOV             R6, R0
512642:  MOVS            R0, #dword_1C; this
512644:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
512648:  MOV             R4, R0
51264A:  LDR.W           R8, [R6,#0xC]
51264E:  LDR             R5, [R6,#0x14]
512650:  LDRB            R6, [R6,#0x10]
512652:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
512656:  LDR             R0, =(_ZTV26CTaskComplexDriveFireTruck_ptr - 0x512662)
512658:  MOVS            R1, #0
51265A:  STRB            R6, [R4,#0x10]
51265C:  MOV             R6, R4
51265E:  ADD             R0, PC; _ZTV26CTaskComplexDriveFireTruck_ptr
512660:  STR             R1, [R4,#0x18]
512662:  MOV             R1, R4
512664:  CMP.W           R8, #0
512668:  LDR             R0, [R0]; `vtable for'CTaskComplexDriveFireTruck ...
51266A:  ADD.W           R0, R0, #8
51266E:  STR             R0, [R4]
512670:  STR.W           R5, [R6,#0x14]!
512674:  STR.W           R8, [R1,#0xC]!; CEntity **
512678:  BEQ             loc_512682
51267A:  MOV             R0, R8; this
51267C:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
512680:  LDR             R5, [R6]
512682:  CMP             R5, #0
512684:  ITTT NE
512686:  MOVNE           R0, R5; this
512688:  MOVNE           R1, R6; CEntity **
51268A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51268E:  MOV             R0, R4
512690:  POP.W           {R8}
512694:  POP             {R4-R7,PC}
