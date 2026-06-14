; =========================================================
; Game Engine Function: _ZN28CTaskComplexUseScriptedBrainD2Ev
; Address            : 0x4F1A28 - 0x4F1A82
; =========================================================

4F1A28:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexUseScriptedBrain::~CTaskComplexUseScriptedBrain()'
4F1A2A:  ADD             R7, SP, #0xC
4F1A2C:  PUSH.W          {R11}
4F1A30:  MOV             R4, R0
4F1A32:  LDR             R0, =(_ZTV28CTaskComplexUseScriptedBrain_ptr - 0x4F1A38)
4F1A34:  ADD             R0, PC; _ZTV28CTaskComplexUseScriptedBrain_ptr
4F1A36:  LDR             R1, [R0]; `vtable for'CTaskComplexUseScriptedBrain ...
4F1A38:  LDR             R0, [R4,#0x18]
4F1A3A:  ADDS            R1, #8
4F1A3C:  STR             R1, [R4]
4F1A3E:  CBZ             R0, loc_4F1A74
4F1A40:  LDR             R1, =(_ZN23CScriptedBrainTaskStore10ms_entriesE_ptr - 0x4F1A46)
4F1A42:  ADD             R1, PC; _ZN23CScriptedBrainTaskStore10ms_entriesE_ptr
4F1A44:  LDR             R5, [R1]; CScriptedBrainTaskStore::ms_entries ...
4F1A46:  MOV.W           R1, #0xFFFFFFFF
4F1A4A:  LDR             R2, [R5,#0xC]
4F1A4C:  CMP             R2, R0
4F1A4E:  BEQ             loc_4F1A5A
4F1A50:  ADDS            R1, #1
4F1A52:  ADDS            R5, #0x10
4F1A54:  CMP             R1, #0x2F ; '/'
4F1A56:  BLT             loc_4F1A4A
4F1A58:  B               loc_4F1A70
4F1A5A:  LDR             R1, [R0]
4F1A5C:  LDR             R1, [R1,#4]
4F1A5E:  BLX             R1
4F1A60:  LDR             R0, [R5]; this
4F1A62:  MOVS            R6, #0
4F1A64:  STR             R6, [R5,#0xC]
4F1A66:  CBZ             R0, loc_4F1A70
4F1A68:  MOV             R1, R5; CEntity **
4F1A6A:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F1A6E:  STR             R6, [R5]; CScriptedBrainTaskStore::ms_entries
4F1A70:  MOVS            R0, #0
4F1A72:  STR             R0, [R4,#0x18]
4F1A74:  MOV             R0, R4; this
4F1A76:  POP.W           {R11}
4F1A7A:  POP.W           {R4-R7,LR}
4F1A7E:  B.W             sub_18EDE8
