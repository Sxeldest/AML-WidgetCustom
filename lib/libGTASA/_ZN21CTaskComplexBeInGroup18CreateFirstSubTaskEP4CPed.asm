; =========================================================
; Game Engine Function: _ZN21CTaskComplexBeInGroup18CreateFirstSubTaskEP4CPed
; Address            : 0x4EECA0 - 0x4EED04
; =========================================================

4EECA0:  PUSH            {R4-R7,LR}
4EECA2:  ADD             R7, SP, #0xC
4EECA4:  PUSH.W          {R11}
4EECA8:  MOV             R4, R0
4EECAA:  MOV             R5, R1
4EECAC:  MOV             R6, R4
4EECAE:  MOV             R0, R5; this
4EECB0:  STR.W           R5, [R6,#0x14]!
4EECB4:  MOV             R1, R6; CEntity **
4EECB6:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4EECBA:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4EECC8)
4EECBC:  MOV.W           R2, #0x2D4
4EECC0:  LDR.W           R1, [R6,#-8]
4EECC4:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
4EECC6:  LDR             R0, [R0]; CPedGroups::ms_groups ...
4EECC8:  MLA.W           R0, R1, R2, R0
4EECCC:  MOV             R1, R5; CPed *
4EECCE:  ADDS            R0, #0x30 ; '0'; this
4EECD0:  BLX             j__ZNK21CPedGroupIntelligence11GetTaskMainEP4CPed; CPedGroupIntelligence::GetTaskMain(CPed *)
4EECD4:  MOV             R5, R0
4EECD6:  CBZ             R5, loc_4EECF4
4EECD8:  STR             R5, [R4,#0x18]
4EECDA:  LDR             R0, [R5]
4EECDC:  LDR             R1, [R0,#0x14]
4EECDE:  MOV             R0, R5
4EECE0:  BLX             R1
4EECE2:  STR             R0, [R4,#0x1C]
4EECE4:  LDR             R0, [R5]
4EECE6:  LDR             R1, [R0,#8]
4EECE8:  MOV             R0, R5
4EECEA:  POP.W           {R11}
4EECEE:  POP.W           {R4-R7,LR}
4EECF2:  BX              R1
4EECF4:  MOVS            R0, #0xC8
4EECF6:  MOVS            R1, #0
4EECF8:  STRD.W          R1, R0, [R4,#0x18]
4EECFC:  MOVS            R0, #0
4EECFE:  POP.W           {R11}
4EED02:  POP             {R4-R7,PC}
