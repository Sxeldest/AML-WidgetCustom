; =========================================================
; Game Engine Function: _ZN20CTaskComplexRoadRageD2Ev
; Address            : 0x4E7974 - 0x4E799C
; =========================================================

4E7974:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexRoadRage::~CTaskComplexRoadRage()'
4E7976:  ADD             R7, SP, #8
4E7978:  MOV             R4, R0
4E797A:  LDR             R0, =(_ZTV20CTaskComplexRoadRage_ptr - 0x4E7982)
4E797C:  MOV             R1, R4
4E797E:  ADD             R0, PC; _ZTV20CTaskComplexRoadRage_ptr
4E7980:  LDR             R2, [R0]; `vtable for'CTaskComplexRoadRage ...
4E7982:  LDR.W           R0, [R1,#0xC]!; CEntity **
4E7986:  ADDS            R2, #8
4E7988:  STR             R2, [R4]
4E798A:  CMP             R0, #0
4E798C:  IT NE
4E798E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4E7992:  MOV             R0, R4; this
4E7994:  POP.W           {R4,R6,R7,LR}
4E7998:  B.W             sub_18EDE8
