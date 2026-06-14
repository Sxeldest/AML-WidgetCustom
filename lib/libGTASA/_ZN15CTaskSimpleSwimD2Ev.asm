; =========================================================
; Game Engine Function: _ZN15CTaskSimpleSwimD2Ev
; Address            : 0x53A0B4 - 0x53A10C
; =========================================================

53A0B4:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleSwim::~CTaskSimpleSwim()'
53A0B6:  ADD             R7, SP, #8
53A0B8:  MOV             R4, R0
53A0BA:  LDR             R0, =(_ZTV15CTaskSimpleSwim_ptr - 0x53A0C2)
53A0BC:  LDRB            R1, [R4,#9]
53A0BE:  ADD             R0, PC; _ZTV15CTaskSimpleSwim_ptr
53A0C0:  CMP             R1, #0
53A0C2:  LDR             R0, [R0]; `vtable for'CTaskSimpleSwim ...
53A0C4:  ADD.W           R0, R0, #8
53A0C8:  STR             R0, [R4]
53A0CA:  BEQ             loc_53A0E6
53A0CC:  LDR             R0, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x53A0D4)
53A0CE:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x53A0D6)
53A0D0:  ADD             R0, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
53A0D2:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
53A0D4:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups ...
53A0D6:  LDR             R1, [R1]; int
53A0D8:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups
53A0DA:  LDR.W           R0, [R0,#0x58C]
53A0DE:  SUBS            R0, R0, R1
53A0E0:  ASRS            R0, R0, #5; this
53A0E2:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
53A0E6:  MOV             R1, R4
53A0E8:  LDR.W           R0, [R1,#0x3C]!; CEntity **
53A0EC:  CMP             R0, #0
53A0EE:  IT NE
53A0F0:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
53A0F4:  MOV             R1, R4
53A0F6:  LDR.W           R0, [R1,#0x20]!; CEntity **
53A0FA:  CMP             R0, #0
53A0FC:  IT NE
53A0FE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
53A102:  MOV             R0, R4; this
53A104:  POP.W           {R4,R6,R7,LR}
53A108:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
