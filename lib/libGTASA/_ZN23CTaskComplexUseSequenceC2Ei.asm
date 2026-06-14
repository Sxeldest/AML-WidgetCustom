; =========================================================
; Game Engine Function: _ZN23CTaskComplexUseSequenceC2Ei
; Address            : 0x4F1520 - 0x4F1558
; =========================================================

4F1520:  PUSH            {R4,R6,R7,LR}
4F1522:  ADD             R7, SP, #8
4F1524:  MOV             R4, R1
4F1526:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F152A:  LDR             R1, =(_ZTV23CTaskComplexUseSequence_ptr - 0x4F153A)
4F152C:  MOVS            R3, #0
4F152E:  LDR.W           R12, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x4F153E)
4F1532:  MOV.W           R2, #0xFFFFFFFF
4F1536:  ADD             R1, PC; _ZTV23CTaskComplexUseSequence_ptr
4F1538:  STR             R4, [R0,#0xC]
4F153A:  ADD             R12, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
4F153C:  STR             R3, [R0,#0x10]
4F153E:  LDR             R1, [R1]; `vtable for'CTaskComplexUseSequence ...
4F1540:  STR             R2, [R0,#0x14]
4F1542:  LDR.W           R2, [R12]; CTaskSequences::ms_taskSequence ...
4F1546:  ADDS            R1, #8
4F1548:  STR             R3, [R0,#0x18]
4F154A:  STR             R1, [R0]
4F154C:  ADD.W           R1, R2, R4,LSL#6
4F1550:  LDR             R2, [R1,#0x3C]
4F1552:  ADDS            R2, #1
4F1554:  STR             R2, [R1,#0x3C]
4F1556:  POP             {R4,R6,R7,PC}
