; =========================================================
; Game Engine Function: _ZN28CTaskComplexSeekEntityAimingD0Ev
; Address            : 0x545640 - 0x54566C
; =========================================================

545640:  PUSH            {R4,R6,R7,LR}
545642:  ADD             R7, SP, #8
545644:  MOV             R4, R0
545646:  LDR             R0, =(_ZTV28CTaskComplexSeekEntityAiming_ptr - 0x54564E)
545648:  MOV             R1, R4
54564A:  ADD             R0, PC; _ZTV28CTaskComplexSeekEntityAiming_ptr
54564C:  LDR             R2, [R0]; `vtable for'CTaskComplexSeekEntityAiming ...
54564E:  LDR.W           R0, [R1,#0xC]!; CEntity **
545652:  ADDS            R2, #8
545654:  STR             R2, [R4]
545656:  CMP             R0, #0
545658:  IT NE
54565A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
54565E:  MOV             R0, R4; this
545660:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
545664:  POP.W           {R4,R6,R7,LR}
545668:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
