; =========================================================
; Game Engine Function: _ZN15CTaskSimpleSwimD0Ev
; Address            : 0x53A118 - 0x53A174
; =========================================================

53A118:  PUSH            {R4,R6,R7,LR}
53A11A:  ADD             R7, SP, #8
53A11C:  MOV             R4, R0
53A11E:  LDR             R0, =(_ZTV15CTaskSimpleSwim_ptr - 0x53A126)
53A120:  LDRB            R1, [R4,#9]
53A122:  ADD             R0, PC; _ZTV15CTaskSimpleSwim_ptr
53A124:  CMP             R1, #0
53A126:  LDR             R0, [R0]; `vtable for'CTaskSimpleSwim ...
53A128:  ADD.W           R0, R0, #8
53A12C:  STR             R0, [R4]
53A12E:  BEQ             loc_53A14A
53A130:  LDR             R0, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x53A138)
53A132:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x53A13A)
53A134:  ADD             R0, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
53A136:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
53A138:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups ...
53A13A:  LDR             R1, [R1]; int
53A13C:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups
53A13E:  LDR.W           R0, [R0,#0x58C]
53A142:  SUBS            R0, R0, R1
53A144:  ASRS            R0, R0, #5; this
53A146:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
53A14A:  MOV             R1, R4
53A14C:  LDR.W           R0, [R1,#0x3C]!; CEntity **
53A150:  CMP             R0, #0
53A152:  IT NE
53A154:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
53A158:  MOV             R1, R4
53A15A:  LDR.W           R0, [R1,#0x20]!; CEntity **
53A15E:  CMP             R0, #0
53A160:  IT NE
53A162:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
53A166:  MOV             R0, R4; this
53A168:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
53A16C:  POP.W           {R4,R6,R7,LR}
53A170:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
