; =========================================================
; Game Engine Function: _ZN21CTaskComplexBeInGroup20MonitorMainGroupTaskEP4CPed
; Address            : 0x4EEE08 - 0x4EEE9E
; =========================================================

4EEE08:  PUSH            {R4-R7,LR}
4EEE0A:  ADD             R7, SP, #0xC
4EEE0C:  PUSH.W          {R8,R9,R11}
4EEE10:  MOV             R4, R0
4EEE12:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4EEE1E)
4EEE14:  MOV             R6, R1
4EEE16:  LDRD.W          R8, R1, [R4,#8]
4EEE1A:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
4EEE1C:  MOV.W           R2, #0x2D4
4EEE20:  LDR             R0, [R0]; CPedGroups::ms_groups ...
4EEE22:  MLA.W           R0, R1, R2, R0
4EEE26:  MOV             R1, R6; CPed *
4EEE28:  ADDS            R0, #0x30 ; '0'; this
4EEE2A:  BLX             j__ZNK21CPedGroupIntelligence11GetTaskMainEP4CPed; CPedGroupIntelligence::GetTaskMain(CPed *)
4EEE2E:  MOV             R5, R0
4EEE30:  CBZ             R5, loc_4EEE76
4EEE32:  LDR             R0, [R4,#0x18]
4EEE34:  CMP             R5, R0
4EEE36:  BNE             loc_4EEE46
4EEE38:  LDR             R0, [R5]
4EEE3A:  LDR             R1, [R0,#0x14]
4EEE3C:  MOV             R0, R5
4EEE3E:  BLX             R1
4EEE40:  LDR             R1, [R4,#0x1C]
4EEE42:  CMP             R0, R1
4EEE44:  BEQ             loc_4EEE96
4EEE46:  LDR             R0, [R4,#8]
4EEE48:  MOVS            R2, #1
4EEE4A:  MOVS            R3, #0
4EEE4C:  LDR             R1, [R0]
4EEE4E:  LDR.W           R12, [R1,#0x1C]
4EEE52:  MOV             R1, R6
4EEE54:  BLX             R12
4EEE56:  CMP             R0, #1
4EEE58:  BNE             loc_4EEE96
4EEE5A:  STR             R5, [R4,#0x18]
4EEE5C:  LDR             R0, [R5]
4EEE5E:  LDR             R1, [R0,#0x14]
4EEE60:  MOV             R0, R5
4EEE62:  BLX             R1
4EEE64:  STR             R0, [R4,#0x1C]
4EEE66:  LDR             R0, [R5]
4EEE68:  LDR             R1, [R0,#8]
4EEE6A:  MOV             R0, R5
4EEE6C:  POP.W           {R8,R9,R11}
4EEE70:  POP.W           {R4-R7,LR}
4EEE74:  BX              R1
4EEE76:  LDR             R0, [R4,#8]
4EEE78:  MOVS            R2, #1
4EEE7A:  MOVS            R3, #0
4EEE7C:  MOV.W           R9, #0
4EEE80:  LDR             R1, [R0]
4EEE82:  LDR             R5, [R1,#0x1C]
4EEE84:  MOV             R1, R6
4EEE86:  BLX             R5
4EEE88:  CMP             R0, #1
4EEE8A:  ITTT EQ
4EEE8C:  MOVEQ           R0, #0xC8
4EEE8E:  STRDEQ.W        R9, R0, [R4,#0x18]
4EEE92:  MOVEQ.W         R8, #0
4EEE96:  MOV             R0, R8
4EEE98:  POP.W           {R8,R9,R11}
4EEE9C:  POP             {R4-R7,PC}
