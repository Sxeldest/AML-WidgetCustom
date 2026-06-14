; =========================================================
; Game Engine Function: _ZN21CTaskComplexBeInGroup17CreateNextSubTaskEP4CPed
; Address            : 0x4EEC38 - 0x4EEC9A
; =========================================================

4EEC38:  PUSH            {R4-R7,LR}
4EEC3A:  ADD             R7, SP, #0xC
4EEC3C:  PUSH.W          {R11}
4EEC40:  MOV             R4, R0
4EEC42:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4EEC4E)
4EEC44:  MOV             R5, R1
4EEC46:  LDRD.W          R2, R1, [R4,#8]; CTask *
4EEC4A:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
4EEC4C:  MOV.W           R3, #0x2D4
4EEC50:  LDR             R0, [R0]; CPedGroups::ms_groups ...
4EEC52:  MLA.W           R0, R1, R3, R0
4EEC56:  MOV             R1, R5; CPed *
4EEC58:  ADD.W           R6, R0, #0x30 ; '0'
4EEC5C:  MOV             R0, R6; this
4EEC5E:  BLX             j__ZN21CPedGroupIntelligence18ReportFinishedTaskEPK4CPedRK5CTask; CPedGroupIntelligence::ReportFinishedTask(CPed const*,CTask const&)
4EEC62:  MOV             R0, R6; this
4EEC64:  MOV             R1, R5; CPed *
4EEC66:  BLX             j__ZNK21CPedGroupIntelligence11GetTaskMainEP4CPed; CPedGroupIntelligence::GetTaskMain(CPed *)
4EEC6A:  MOV             R5, R0
4EEC6C:  CBZ             R5, loc_4EEC8A
4EEC6E:  STR             R5, [R4,#0x18]
4EEC70:  LDR             R0, [R5]
4EEC72:  LDR             R1, [R0,#0x14]
4EEC74:  MOV             R0, R5
4EEC76:  BLX             R1
4EEC78:  STR             R0, [R4,#0x1C]
4EEC7A:  LDR             R0, [R5]
4EEC7C:  LDR             R1, [R0,#8]
4EEC7E:  MOV             R0, R5
4EEC80:  POP.W           {R11}
4EEC84:  POP.W           {R4-R7,LR}
4EEC88:  BX              R1
4EEC8A:  MOVS            R0, #0xC8
4EEC8C:  MOVS            R1, #0
4EEC8E:  STRD.W          R1, R0, [R4,#0x18]
4EEC92:  MOVS            R0, #0
4EEC94:  POP.W           {R11}
4EEC98:  POP             {R4-R7,PC}
