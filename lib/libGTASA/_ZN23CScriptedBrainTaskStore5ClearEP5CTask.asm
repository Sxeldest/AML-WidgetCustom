; =========================================================
; Game Engine Function: _ZN23CScriptedBrainTaskStore5ClearEP5CTask
; Address            : 0x4F19B4 - 0x4F19F2
; =========================================================

4F19B4:  PUSH            {R4,R5,R7,LR}
4F19B6:  ADD             R7, SP, #8
4F19B8:  LDR             R1, =(_ZN23CScriptedBrainTaskStore10ms_entriesE_ptr - 0x4F19BE)
4F19BA:  ADD             R1, PC; _ZN23CScriptedBrainTaskStore10ms_entriesE_ptr
4F19BC:  LDR             R4, [R1]; CScriptedBrainTaskStore::ms_entries ...
4F19BE:  MOV.W           R1, #0xFFFFFFFF
4F19C2:  LDR             R2, [R4,#0xC]
4F19C4:  CMP             R2, R0
4F19C6:  BEQ             loc_4F19D2
4F19C8:  ADDS            R1, #1
4F19CA:  ADDS            R4, #0x10
4F19CC:  CMP             R1, #0x2F ; '/'
4F19CE:  BLT             loc_4F19C2
4F19D0:  POP             {R4,R5,R7,PC}
4F19D2:  CMP             R0, #0
4F19D4:  ITTT NE
4F19D6:  LDRNE           R1, [R0]
4F19D8:  LDRNE           R1, [R1,#4]
4F19DA:  BLXNE           R1
4F19DC:  LDR             R0, [R4]; this
4F19DE:  MOVS            R5, #0
4F19E0:  STR             R5, [R4,#0xC]
4F19E2:  CMP             R0, #0
4F19E4:  IT EQ
4F19E6:  POPEQ           {R4,R5,R7,PC}
4F19E8:  MOV             R1, R4; CEntity **
4F19EA:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F19EE:  STR             R5, [R4]; CScriptedBrainTaskStore::ms_entries
4F19F0:  POP             {R4,R5,R7,PC}
