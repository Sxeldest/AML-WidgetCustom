; =========================================================
; Game Engine Function: _ZN31CTaskComplexUseAttractorPartnerC2EbPK19CScriptedEffectPair
; Address            : 0x4EF44C - 0x4EF468
; =========================================================

4EF44C:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskComplexUseAttractorPartner::CTaskComplexUseAttractorPartner(bool, CScriptedEffectPair const*)'
4EF44E:  ADD             R7, SP, #8
4EF450:  MOV             R4, R2
4EF452:  MOV             R5, R1
4EF454:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EF458:  LDR             R1, =(_ZTV31CTaskComplexUseAttractorPartner_ptr - 0x4EF460)
4EF45A:  STRB            R5, [R0,#0xC]
4EF45C:  ADD             R1, PC; _ZTV31CTaskComplexUseAttractorPartner_ptr
4EF45E:  STR             R4, [R0,#0x10]
4EF460:  LDR             R1, [R1]; `vtable for'CTaskComplexUseAttractorPartner ...
4EF462:  ADDS            R1, #8
4EF464:  STR             R1, [R0]
4EF466:  POP             {R4,R5,R7,PC}
