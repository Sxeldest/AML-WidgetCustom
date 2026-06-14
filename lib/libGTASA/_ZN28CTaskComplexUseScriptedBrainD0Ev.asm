; =========================================================
; Game Engine Function: _ZN28CTaskComplexUseScriptedBrainD0Ev
; Address            : 0x4F1A8C - 0x4F1AEA
; =========================================================

4F1A8C:  PUSH            {R4-R7,LR}
4F1A8E:  ADD             R7, SP, #0xC
4F1A90:  PUSH.W          {R11}
4F1A94:  MOV             R4, R0
4F1A96:  LDR             R0, =(_ZTV28CTaskComplexUseScriptedBrain_ptr - 0x4F1A9C)
4F1A98:  ADD             R0, PC; _ZTV28CTaskComplexUseScriptedBrain_ptr
4F1A9A:  LDR             R1, [R0]; `vtable for'CTaskComplexUseScriptedBrain ...
4F1A9C:  LDR             R0, [R4,#0x18]
4F1A9E:  ADDS            R1, #8
4F1AA0:  STR             R1, [R4]
4F1AA2:  CBZ             R0, loc_4F1AD8
4F1AA4:  LDR             R1, =(_ZN23CScriptedBrainTaskStore10ms_entriesE_ptr - 0x4F1AAA)
4F1AA6:  ADD             R1, PC; _ZN23CScriptedBrainTaskStore10ms_entriesE_ptr
4F1AA8:  LDR             R5, [R1]; CScriptedBrainTaskStore::ms_entries ...
4F1AAA:  MOV.W           R1, #0xFFFFFFFF
4F1AAE:  LDR             R2, [R5,#0xC]
4F1AB0:  CMP             R2, R0
4F1AB2:  BEQ             loc_4F1ABE
4F1AB4:  ADDS            R1, #1
4F1AB6:  ADDS            R5, #0x10
4F1AB8:  CMP             R1, #0x2F ; '/'
4F1ABA:  BLT             loc_4F1AAE
4F1ABC:  B               loc_4F1AD4
4F1ABE:  LDR             R1, [R0]
4F1AC0:  LDR             R1, [R1,#4]
4F1AC2:  BLX             R1
4F1AC4:  LDR             R0, [R5]; this
4F1AC6:  MOVS            R6, #0
4F1AC8:  STR             R6, [R5,#0xC]
4F1ACA:  CBZ             R0, loc_4F1AD4
4F1ACC:  MOV             R1, R5; CEntity **
4F1ACE:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F1AD2:  STR             R6, [R5]; CScriptedBrainTaskStore::ms_entries
4F1AD4:  MOVS            R0, #0
4F1AD6:  STR             R0, [R4,#0x18]
4F1AD8:  MOV             R0, R4; this
4F1ADA:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4F1ADE:  POP.W           {R11}
4F1AE2:  POP.W           {R4-R7,LR}
4F1AE6:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
