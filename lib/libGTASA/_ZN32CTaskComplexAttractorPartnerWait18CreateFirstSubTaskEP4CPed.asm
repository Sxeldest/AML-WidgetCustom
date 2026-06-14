; =========================================================
; Game Engine Function: _ZN32CTaskComplexAttractorPartnerWait18CreateFirstSubTaskEP4CPed
; Address            : 0x4EF3F4 - 0x4EF43E
; =========================================================

4EF3F4:  PUSH            {R4,R6,R7,LR}
4EF3F6:  ADD             R7, SP, #8
4EF3F8:  LDR             R1, [R0,#0x10]; unsigned int
4EF3FA:  LDRB            R0, [R0,#0xC]
4EF3FC:  ADDS            R2, R1, #4
4EF3FE:  CMP             R0, #0
4EF400:  MOV.W           R0, #dword_1C; this
4EF404:  IT EQ
4EF406:  ADDEQ.W         R2, R1, #0x14
4EF40A:  LDR             R4, [R2]
4EF40C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EF410:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EF414:  LDR             R1, =(_ZTV23CTaskComplexUseSequence_ptr - 0x4EF420)
4EF416:  MOV.W           R3, #0xFFFFFFFF
4EF41A:  LDR             R2, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x4EF422)
4EF41C:  ADD             R1, PC; _ZTV23CTaskComplexUseSequence_ptr
4EF41E:  ADD             R2, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
4EF420:  LDR             R1, [R1]; `vtable for'CTaskComplexUseSequence ...
4EF422:  LDR             R2, [R2]; CTaskSequences::ms_taskSequence ...
4EF424:  ADDS            R1, #8
4EF426:  STR             R1, [R0]
4EF428:  MOVS            R1, #0
4EF42A:  STRD.W          R4, R1, [R0,#0xC]
4EF42E:  STRD.W          R3, R1, [R0,#0x14]
4EF432:  ADD.W           R1, R2, R4,LSL#6
4EF436:  LDR             R2, [R1,#0x3C]
4EF438:  ADDS            R2, #1
4EF43A:  STR             R2, [R1,#0x3C]
4EF43C:  POP             {R4,R6,R7,PC}
