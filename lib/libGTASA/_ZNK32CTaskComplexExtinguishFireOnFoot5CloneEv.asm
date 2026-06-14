; =========================================================
; Game Engine Function: _ZNK32CTaskComplexExtinguishFireOnFoot5CloneEv
; Address            : 0x512754 - 0x51277C
; =========================================================

512754:  PUSH            {R4,R6,R7,LR}
512756:  ADD             R7, SP, #8
512758:  MOV             R4, R0
51275A:  MOVS            R0, #off_18; this
51275C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
512760:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
512764:  LDR             R1, =(_ZTV32CTaskComplexExtinguishFireOnFoot_ptr - 0x51276A)
512766:  ADD             R1, PC; _ZTV32CTaskComplexExtinguishFireOnFoot_ptr
512768:  LDR             R1, [R1]; `vtable for'CTaskComplexExtinguishFireOnFoot ...
51276A:  ADDS            R1, #8
51276C:  STR             R1, [R0]
51276E:  VLDR            D16, [R4,#0xC]
512772:  LDR             R1, [R4,#0x14]
512774:  STR             R1, [R0,#0x14]
512776:  VSTR            D16, [R0,#0xC]
51277A:  POP             {R4,R6,R7,PC}
