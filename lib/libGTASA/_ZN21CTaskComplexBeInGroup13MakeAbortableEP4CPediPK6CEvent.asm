; =========================================================
; Game Engine Function: _ZN21CTaskComplexBeInGroup13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4EEBBC - 0x4EEC32
; =========================================================

4EEBBC:  PUSH            {R4-R7,LR}
4EEBBE:  ADD             R7, SP, #0xC
4EEBC0:  PUSH.W          {R8,R9,R11}
4EEBC4:  MOV             R5, R2
4EEBC6:  MOV             R8, R3
4EEBC8:  MOV             R6, R1
4EEBCA:  MOV             R4, R0
4EEBCC:  CMP             R5, #2
4EEBCE:  BNE             loc_4EEC1A
4EEBD0:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4EEBDC)
4EEBD2:  MOV.W           R3, #0x2D4
4EEBD6:  LDR             R2, [R4,#0xC]
4EEBD8:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4EEBDA:  LDR             R0, [R4,#0x18]; this
4EEBDC:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4EEBDE:  CMP             R0, #0
4EEBE0:  MLA.W           R1, R2, R3, R1; void *
4EEBE4:  ADD.W           R9, R1, #0x30 ; '0'
4EEBE8:  BEQ             loc_4EEC00
4EEBEA:  BLX             j__ZN5CTask9IsTaskPtrEPv; CTask::IsTaskPtr(void *)
4EEBEE:  CMP             R0, #1
4EEBF0:  BNE             loc_4EEBFC
4EEBF2:  LDR             R2, [R4,#0x18]; CTask *
4EEBF4:  MOV             R0, R9; this
4EEBF6:  MOV             R1, R6; CPed *
4EEBF8:  BLX             j__ZN21CPedGroupIntelligence18ReportFinishedTaskEPK4CPedRK5CTask; CPedGroupIntelligence::ReportFinishedTask(CPed const*,CTask const&)
4EEBFC:  MOVS            R0, #0
4EEBFE:  STR             R0, [R4,#0x18]
4EEC00:  LDR             R0, [R4,#0x20]; this
4EEC02:  CBZ             R0, loc_4EEC1A
4EEC04:  BLX             j__ZN5CTask9IsTaskPtrEPv; CTask::IsTaskPtr(void *)
4EEC08:  CMP             R0, #1
4EEC0A:  BNE             loc_4EEC16
4EEC0C:  LDR             R2, [R4,#0x20]; CTask *
4EEC0E:  MOV             R0, R9; this
4EEC10:  MOV             R1, R6; CPed *
4EEC12:  BLX             j__ZN21CPedGroupIntelligence18ReportFinishedTaskEPK4CPedRK5CTask; CPedGroupIntelligence::ReportFinishedTask(CPed const*,CTask const&)
4EEC16:  MOVS            R0, #0
4EEC18:  STR             R0, [R4,#0x20]
4EEC1A:  LDR             R0, [R4,#8]
4EEC1C:  MOV             R2, R5
4EEC1E:  MOV             R3, R8
4EEC20:  LDR             R1, [R0]
4EEC22:  LDR.W           R12, [R1,#0x1C]
4EEC26:  MOV             R1, R6
4EEC28:  POP.W           {R8,R9,R11}
4EEC2C:  POP.W           {R4-R7,LR}
4EEC30:  BX              R12
