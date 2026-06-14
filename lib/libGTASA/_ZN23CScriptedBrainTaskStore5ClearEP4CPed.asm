; =========================================================
; Game Engine Function: _ZN23CScriptedBrainTaskStore5ClearEP4CPed
; Address            : 0x4EE3B4 - 0x4EE3F4
; =========================================================

4EE3B4:  PUSH            {R4,R5,R7,LR}
4EE3B6:  ADD             R7, SP, #8
4EE3B8:  LDR             R1, =(_ZN23CScriptedBrainTaskStore10ms_entriesE_ptr - 0x4EE3BE)
4EE3BA:  ADD             R1, PC; _ZN23CScriptedBrainTaskStore10ms_entriesE_ptr
4EE3BC:  LDR             R4, [R1]; CScriptedBrainTaskStore::ms_entries ...
4EE3BE:  MOV.W           R1, #0xFFFFFFFF
4EE3C2:  LDR             R2, [R4]; CScriptedBrainTaskStore::ms_entries
4EE3C4:  CMP             R2, R0
4EE3C6:  BEQ             loc_4EE3D2
4EE3C8:  ADDS            R1, #1
4EE3CA:  ADDS            R4, #0x10
4EE3CC:  CMP             R1, #0x2F ; '/'
4EE3CE:  BLT             loc_4EE3C2
4EE3D0:  POP             {R4,R5,R7,PC}
4EE3D2:  LDR             R1, [R4,#0xC]
4EE3D4:  CBZ             R1, loc_4EE3E0
4EE3D6:  LDR             R0, [R1]
4EE3D8:  LDR             R2, [R0,#4]
4EE3DA:  MOV             R0, R1
4EE3DC:  BLX             R2
4EE3DE:  LDR             R0, [R4]; this
4EE3E0:  MOVS            R5, #0
4EE3E2:  CMP             R0, #0
4EE3E4:  STR             R5, [R4,#0xC]
4EE3E6:  IT EQ
4EE3E8:  POPEQ           {R4,R5,R7,PC}
4EE3EA:  MOV             R1, R4; CEntity **
4EE3EC:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4EE3F0:  STR             R5, [R4]; CScriptedBrainTaskStore::ms_entries
4EE3F2:  POP             {R4,R5,R7,PC}
