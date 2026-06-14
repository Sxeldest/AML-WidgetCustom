; =========================================================
; Game Engine Function: _ZNK26CTaskComplexUseWaterCannon5CloneEv
; Address            : 0x51272C - 0x51274C
; =========================================================

51272C:  PUSH            {R4,R6,R7,LR}
51272E:  ADD             R7, SP, #8
512730:  MOV             R4, R0
512732:  MOVS            R0, #word_10; this
512734:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
512738:  LDR             R4, [R4,#0xC]
51273A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51273E:  LDR             R1, =(_ZTV26CTaskComplexUseWaterCannon_ptr - 0x512746)
512740:  STR             R4, [R0,#0xC]
512742:  ADD             R1, PC; _ZTV26CTaskComplexUseWaterCannon_ptr
512744:  LDR             R1, [R1]; `vtable for'CTaskComplexUseWaterCannon ...
512746:  ADDS            R1, #8
512748:  STR             R1, [R0]
51274A:  POP             {R4,R6,R7,PC}
