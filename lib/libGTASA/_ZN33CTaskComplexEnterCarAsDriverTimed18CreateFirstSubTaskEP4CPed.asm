; =========================================================
; Game Engine Function: _ZN33CTaskComplexEnterCarAsDriverTimed18CreateFirstSubTaskEP4CPed
; Address            : 0x4F74A4 - 0x4F7540
; =========================================================

4F74A4:  PUSH            {R4-R7,LR}
4F74A6:  ADD             R7, SP, #0xC
4F74A8:  PUSH.W          {R11}
4F74AC:  MOV             R4, R0
4F74AE:  LDR             R0, [R4,#0x10]
4F74B0:  CMP             R0, #0
4F74B2:  BLT             loc_4F74C6
4F74B4:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4F74BC)
4F74B6:  MOVS            R2, #1
4F74B8:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4F74BA:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4F74BC:  LDR             R1, [R1]; unsigned int
4F74BE:  STRB.W          R2, [R4,#0x20]
4F74C2:  STRD.W          R1, R0, [R4,#0x18]
4F74C6:  MOVS            R0, #dword_50; this
4F74C8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F74CC:  MOV             R5, R0
4F74CE:  LDR             R6, [R4,#0xC]
4F74D0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F74D4:  VMOV.I32        Q8, #0
4F74D8:  LDR             R0, =(_ZTV20CTaskComplexEnterCar_ptr - 0x4F74E4)
4F74DA:  ADD.W           R1, R5, #0x14
4F74DE:  CMP             R6, #0
4F74E0:  ADD             R0, PC; _ZTV20CTaskComplexEnterCar_ptr
4F74E2:  VST1.32         {D16-D17}, [R1]
4F74E6:  MOV.W           R1, #6
4F74EA:  STR             R1, [R5,#0x24]
4F74EC:  MOV.W           R1, #0
4F74F0:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCar ...
4F74F2:  STRH            R1, [R5,#0x28]
4F74F4:  STR             R1, [R5,#0x38]
4F74F6:  ADD.W           R0, R0, #8
4F74FA:  STRB.W          R1, [R5,#0x3C]
4F74FE:  STR             R1, [R5,#0x40]
4F7500:  STRB.W          R1, [R5,#0x44]
4F7504:  MOVW            R1, #0
4F7508:  LDRB            R2, [R5,#0x10]
4F750A:  MOVT            R1, #0xBF80
4F750E:  STR             R1, [R5,#0x48]
4F7510:  MOV             R1, R5
4F7512:  STR             R0, [R5]
4F7514:  AND.W           R0, R2, #0xF0
4F7518:  ORR.W           R0, R0, #1
4F751C:  STRB            R0, [R5,#0x10]
4F751E:  STR.W           R6, [R1,#0xC]!; CEntity **
4F7522:  ITT NE
4F7524:  MOVNE           R0, R6; this
4F7526:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F752A:  LDR             R0, =(_ZTV28CTaskComplexEnterCarAsDriver_ptr - 0x4F7530)
4F752C:  ADD             R0, PC; _ZTV28CTaskComplexEnterCarAsDriver_ptr
4F752E:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCarAsDriver ...
4F7530:  ADDS            R0, #8
4F7532:  STR             R0, [R5]
4F7534:  LDR             R0, [R4,#0x14]
4F7536:  STR             R0, [R5,#0x24]
4F7538:  MOV             R0, R5
4F753A:  POP.W           {R11}
4F753E:  POP             {R4-R7,PC}
