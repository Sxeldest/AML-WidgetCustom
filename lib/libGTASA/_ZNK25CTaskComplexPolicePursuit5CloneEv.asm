; =========================================================
; Game Engine Function: _ZNK25CTaskComplexPolicePursuit5CloneEv
; Address            : 0x54099C - 0x5409C8
; =========================================================

54099C:  PUSH            {R7,LR}
54099E:  MOV             R7, SP
5409A0:  MOVS            R0, #off_18; this
5409A2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5409A6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5409AA:  LDR             R1, =(_ZTV25CTaskComplexPolicePursuit_ptr - 0x5409B4)
5409AC:  MOVS            R2, #0
5409AE:  LDRB            R3, [R0,#0xC]
5409B0:  ADD             R1, PC; _ZTV25CTaskComplexPolicePursuit_ptr
5409B2:  STRD.W          R2, R2, [R0,#0x10]
5409B6:  LDR             R1, [R1]; `vtable for'CTaskComplexPolicePursuit ...
5409B8:  ADDS            R1, #8
5409BA:  STR             R1, [R0]
5409BC:  AND.W           R1, R3, #0xF8
5409C0:  ORR.W           R1, R1, #4
5409C4:  STRB            R1, [R0,#0xC]
5409C6:  POP             {R7,PC}
