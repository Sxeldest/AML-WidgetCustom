; =========================================================
; Game Engine Function: _ZN36CTaskComplexSeekCoverUntilTargetDeadD0Ev
; Address            : 0x4E8D84 - 0x4E8DBE
; =========================================================

4E8D84:  PUSH            {R4,R6,R7,LR}
4E8D86:  ADD             R7, SP, #8
4E8D88:  MOV             R4, R0
4E8D8A:  LDR             R0, =(_ZTV36CTaskComplexSeekCoverUntilTargetDead_ptr - 0x4E8D92)
4E8D8C:  MOV             R1, R4
4E8D8E:  ADD             R0, PC; _ZTV36CTaskComplexSeekCoverUntilTargetDead_ptr
4E8D90:  LDR             R2, [R0]; `vtable for'CTaskComplexSeekCoverUntilTargetDead ...
4E8D92:  LDR.W           R0, [R1,#0x10]!; CEntity **
4E8D96:  ADDS            R2, #8
4E8D98:  STR             R2, [R4]
4E8D9A:  CMP             R0, #0
4E8D9C:  IT NE
4E8D9E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4E8DA2:  MOV             R1, R4
4E8DA4:  LDR.W           R0, [R1,#0x14]!; CEntity **
4E8DA8:  CMP             R0, #0
4E8DAA:  IT NE
4E8DAC:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4E8DB0:  MOV             R0, R4; this
4E8DB2:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4E8DB6:  POP.W           {R4,R6,R7,LR}
4E8DBA:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
