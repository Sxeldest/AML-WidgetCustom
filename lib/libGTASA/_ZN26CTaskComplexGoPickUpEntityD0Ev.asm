; =========================================================
; Game Engine Function: _ZN26CTaskComplexGoPickUpEntityD0Ev
; Address            : 0x5425E4 - 0x54263C
; =========================================================

5425E4:  PUSH            {R4,R6,R7,LR}
5425E6:  ADD             R7, SP, #8
5425E8:  MOV             R4, R0
5425EA:  LDR             R0, =(_ZTV26CTaskComplexGoPickUpEntity_ptr - 0x5425F2)
5425EC:  MOV             R1, R4
5425EE:  ADD             R0, PC; _ZTV26CTaskComplexGoPickUpEntity_ptr
5425F0:  LDR             R2, [R0]; `vtable for'CTaskComplexGoPickUpEntity ...
5425F2:  LDR.W           R0, [R1,#0xC]!; CEntity **
5425F6:  ADDS            R2, #8
5425F8:  STR             R2, [R4]
5425FA:  CMP             R0, #0
5425FC:  IT NE
5425FE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
542602:  LDRB.W          R0, [R4,#0x30]
542606:  CBZ             R0, loc_54262E
542608:  LDR             R0, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x542610)
54260A:  LDR             R2, [R4,#0x2C]
54260C:  ADD             R0, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
54260E:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x542616)
542610:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups ...
542612:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
542614:  ADD.W           R2, R2, R2,LSL#2
542618:  LDR             R1, [R1]; int
54261A:  LDR             R0, [R0]; CAnimManager::ms_aAnimAssocGroups
54261C:  LDR.W           R0, [R0,R2,LSL#2]
542620:  SUBS            R0, R0, R1
542622:  ASRS            R0, R0, #5; this
542624:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
542628:  MOVS            R0, #0
54262A:  STRB.W          R0, [R4,#0x30]
54262E:  MOV             R0, R4; this
542630:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
542634:  POP.W           {R4,R6,R7,LR}
542638:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
