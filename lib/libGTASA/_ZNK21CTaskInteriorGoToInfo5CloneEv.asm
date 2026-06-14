; =========================================================
; Game Engine Function: _ZNK21CTaskInteriorGoToInfo5CloneEv
; Address            : 0x5294E8 - 0x529518
; =========================================================

5294E8:  PUSH            {R4-R7,LR}
5294EA:  ADD             R7, SP, #0xC
5294EC:  PUSH.W          {R11}
5294F0:  MOV             R4, R0
5294F2:  MOVS            R0, #off_18; this
5294F4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5294F8:  LDRD.W          R5, R6, [R4,#0xC]
5294FC:  LDRB            R4, [R4,#0x14]
5294FE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
529502:  LDR             R1, =(_ZTV21CTaskInteriorGoToInfo_ptr - 0x52950C)
529504:  STRD.W          R5, R6, [R0,#0xC]
529508:  ADD             R1, PC; _ZTV21CTaskInteriorGoToInfo_ptr
52950A:  STRB            R4, [R0,#0x14]
52950C:  LDR             R1, [R1]; `vtable for'CTaskInteriorGoToInfo ...
52950E:  ADDS            R1, #8
529510:  STR             R1, [R0]
529512:  POP.W           {R11}
529516:  POP             {R4-R7,PC}
