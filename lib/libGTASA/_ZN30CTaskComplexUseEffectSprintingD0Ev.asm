; =========================================================
; Game Engine Function: _ZN30CTaskComplexUseEffectSprintingD0Ev
; Address            : 0x4F45B4 - 0x4F45FA
; =========================================================

4F45B4:  PUSH            {R4,R6,R7,LR}
4F45B6:  ADD             R7, SP, #8
4F45B8:  MOV             R4, R0
4F45BA:  LDR             R0, =(_ZTV21CTaskComplexUseEffect_ptr - 0x4F45C2)
4F45BC:  LDR             R1, [R4,#0x18]
4F45BE:  ADD             R0, PC; _ZTV21CTaskComplexUseEffect_ptr
4F45C0:  CMP             R1, #0
4F45C2:  LDR             R0, [R0]; `vtable for'CTaskComplexUseEffect ...
4F45C4:  ADD.W           R0, R0, #8
4F45C8:  STR             R0, [R4]
4F45CA:  ITT NE
4F45CC:  LDRNE           R0, [R4,#0x14]
4F45CE:  CMPNE           R0, #0
4F45D0:  BEQ             loc_4F45DE
4F45D2:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
4F45D6:  LDRD.W          R2, R1, [R4,#0x14]; CPedAttractor *
4F45DA:  BLX             j__ZN20CPedAttractorManager13DeRegisterPedEP4CPedP13CPedAttractor; CPedAttractorManager::DeRegisterPed(CPed *,CPedAttractor *)
4F45DE:  MOV             R1, R4
4F45E0:  LDR.W           R0, [R1,#0x10]!; CEntity **
4F45E4:  CMP             R0, #0
4F45E6:  IT NE
4F45E8:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F45EC:  MOV             R0, R4; this
4F45EE:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4F45F2:  POP.W           {R4,R6,R7,LR}
4F45F6:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
