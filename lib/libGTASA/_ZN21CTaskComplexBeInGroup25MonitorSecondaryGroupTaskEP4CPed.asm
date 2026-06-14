; =========================================================
; Game Engine Function: _ZN21CTaskComplexBeInGroup25MonitorSecondaryGroupTaskEP4CPed
; Address            : 0x4EED20 - 0x4EEE04
; =========================================================

4EED20:  PUSH            {R4-R7,LR}
4EED22:  ADD             R7, SP, #0xC
4EED24:  PUSH.W          {R8-R10}
4EED28:  MOV             R4, R0
4EED2A:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4EED34)
4EED2C:  MOV             R5, R1
4EED2E:  LDR             R1, [R4,#0xC]
4EED30:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
4EED32:  MOV.W           R2, #0x2D4
4EED36:  LDR             R0, [R0]; CPedGroups::ms_groups ...
4EED38:  MLA.W           R0, R1, R2, R0
4EED3C:  MOV             R1, R5; CPed *
4EED3E:  ADD.W           R6, R0, #0x30 ; '0'
4EED42:  MOV             R0, R6; this
4EED44:  BLX             j__ZNK21CPedGroupIntelligence16GetTaskSecondaryEP4CPed; CPedGroupIntelligence::GetTaskSecondary(CPed *)
4EED48:  MOV             R9, R0
4EED4A:  MOV             R0, R6; this
4EED4C:  MOV             R1, R5; CPed *
4EED4E:  BLX             j__ZNK21CPedGroupIntelligence20GetTaskSecondarySlotEP4CPed; CPedGroupIntelligence::GetTaskSecondarySlot(CPed *)
4EED52:  MOV             R8, R0
4EED54:  CMP.W           R8, #0
4EED58:  BLT             loc_4EED6A
4EED5A:  LDR.W           R0, [R5,#0x440]
4EED5E:  MOV             R1, R8; int
4EED60:  ADDS            R0, #4; this
4EED62:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4EED66:  MOV             R10, R0
4EED68:  B               loc_4EED6E
4EED6A:  MOV.W           R10, #0
4EED6E:  LDR             R0, [R4,#0x20]
4EED70:  CBZ             R0, loc_4EED7C
4EED72:  CMP.W           R10, #0
4EED76:  IT EQ
4EED78:  CMPEQ           R0, R9
4EED7A:  BEQ             loc_4EEDEA
4EED7C:  CMP             R9, R0
4EED7E:  BEQ             loc_4EEDFE
4EED80:  LDR.W           R0, [R5,#0x440]
4EED84:  LDR             R1, [R4,#0x24]; int
4EED86:  ADDS            R0, #4; this
4EED88:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4EED8C:  CBZ             R0, loc_4EEDA6
4EED8E:  LDR.W           R0, [R5,#0x440]
4EED92:  LDR             R1, [R4,#0x24]; int
4EED94:  ADDS            R0, #4; this
4EED96:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4EED9A:  LDR             R1, [R0]
4EED9C:  MOVS            R2, #0
4EED9E:  MOVS            R3, #0
4EEDA0:  LDR             R6, [R1,#0x1C]
4EEDA2:  MOV             R1, R5
4EEDA4:  BLX             R6
4EEDA6:  CMP.W           R10, #0
4EEDAA:  BEQ             loc_4EEDC0
4EEDAC:  LDR.W           R0, [R10]
4EEDB0:  MOV             R1, R5
4EEDB2:  MOVS            R2, #1
4EEDB4:  MOVS            R3, #0
4EEDB6:  LDR             R6, [R0,#0x1C]
4EEDB8:  MOV             R0, R10
4EEDBA:  BLX             R6
4EEDBC:  CMP             R0, #1
4EEDBE:  BNE             loc_4EEDFE
4EEDC0:  CMP.W           R9, #0
4EEDC4:  STRD.W          R9, R8, [R4,#0x20]
4EEDC8:  BEQ             loc_4EEDFE
4EEDCA:  LDR.W           R0, [R9]
4EEDCE:  LDR.W           R4, [R5,#0x440]
4EEDD2:  LDR             R1, [R0,#8]
4EEDD4:  MOV             R0, R9
4EEDD6:  BLX             R1
4EEDD8:  MOV             R1, R0; CTask *
4EEDDA:  ADDS            R0, R4, #4; this
4EEDDC:  MOV             R2, R8; int
4EEDDE:  POP.W           {R8-R10}
4EEDE2:  POP.W           {R4-R7,LR}
4EEDE6:  B.W             j_j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; j_CTaskManager::SetTaskSecondary(CTask *,int)
4EEDEA:  MOV             R0, R6; this
4EEDEC:  MOV             R1, R5; CPed *
4EEDEE:  MOV             R2, R9; CTask *
4EEDF0:  BLX             j__ZN21CPedGroupIntelligence18ReportFinishedTaskEPK4CPedRK5CTask; CPedGroupIntelligence::ReportFinishedTask(CPed const*,CTask const&)
4EEDF4:  MOVS            R0, #0
4EEDF6:  MOV.W           R1, #0xFFFFFFFF
4EEDFA:  STRD.W          R0, R1, [R4,#0x20]
4EEDFE:  POP.W           {R8-R10}
4EEE02:  POP             {R4-R7,PC}
