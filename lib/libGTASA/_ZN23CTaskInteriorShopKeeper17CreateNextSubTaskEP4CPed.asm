; =========================================================
; Game Engine Function: _ZN23CTaskInteriorShopKeeper17CreateNextSubTaskEP4CPed
; Address            : 0x5293E0 - 0x52940A
; =========================================================

5293E0:  PUSH            {R4,R5,R7,LR}
5293E2:  ADD             R7, SP, #8
5293E4:  MOV             R4, R0
5293E6:  MOVS            R0, #dword_1C; this
5293E8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5293EC:  LDRD.W          R5, R4, [R4,#0x18]
5293F0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5293F4:  LDR             R1, =(_ZTV20CTaskInteriorUseInfo_ptr - 0x529400)
5293F6:  MOVS            R2, #0
5293F8:  STRD.W          R5, R4, [R0,#0xC]
5293FC:  ADD             R1, PC; _ZTV20CTaskInteriorUseInfo_ptr
5293FE:  STR             R2, [R0,#0x14]
529400:  STRB            R2, [R0,#0x18]
529402:  LDR             R1, [R1]; `vtable for'CTaskInteriorUseInfo ...
529404:  ADDS            R1, #8
529406:  STR             R1, [R0]
529408:  POP             {R4,R5,R7,PC}
