; =========================================================
; Game Engine Function: _ZNK28CTaskComplexHitByGunResponse5CloneEv
; Address            : 0x4F34A0 - 0x4F34C0
; =========================================================

4F34A0:  PUSH            {R4,R6,R7,LR}
4F34A2:  ADD             R7, SP, #8
4F34A4:  MOV             R4, R0
4F34A6:  MOVS            R0, #word_10; this
4F34A8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F34AC:  LDR             R4, [R4,#0xC]
4F34AE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F34B2:  LDR             R1, =(_ZTV28CTaskComplexHitByGunResponse_ptr - 0x4F34BA)
4F34B4:  STR             R4, [R0,#0xC]
4F34B6:  ADD             R1, PC; _ZTV28CTaskComplexHitByGunResponse_ptr
4F34B8:  LDR             R1, [R1]; `vtable for'CTaskComplexHitByGunResponse ...
4F34BA:  ADDS            R1, #8
4F34BC:  STR             R1, [R0]
4F34BE:  POP             {R4,R6,R7,PC}
