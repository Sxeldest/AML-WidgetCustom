; =========================================================
; Game Engine Function: _ZN11CReferences24RemoveReferencesToPlayerEv
; Address            : 0x40EB38 - 0x40EC2E
; =========================================================

40EB38:  PUSH            {R4-R7,LR}
40EB3A:  ADD             R7, SP, #0xC
40EB3C:  PUSH.W          {R11}
40EB40:  MOV.W           R0, #0xFFFFFFFF; int
40EB44:  MOVS            R1, #0; bool
40EB46:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
40EB4A:  CBZ             R0, loc_40EB8E
40EB4C:  MOV.W           R0, #0xFFFFFFFF; int
40EB50:  MOVS            R1, #0; bool
40EB52:  MOVS            R4, #0
40EB54:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
40EB58:  LDR             R1, [R0,#0x28]
40EB5A:  CBZ             R1, loc_40EB8E
40EB5C:  LDR             R2, [R1,#4]
40EB5E:  LDR             R3, [R2]
40EB60:  CMP             R3, R0
40EB62:  IT EQ
40EB64:  STREQ           R4, [R2]
40EB66:  LDR             R1, [R1]
40EB68:  CMP             R1, #0
40EB6A:  BNE             loc_40EB5C
40EB6C:  LDR             R1, [R0,#0x28]
40EB6E:  CBZ             R1, loc_40EB8E
40EB70:  MOVS            R3, #0
40EB72:  MOV             R2, R1
40EB74:  LDR             R1, [R2]
40EB76:  STR             R3, [R2,#4]
40EB78:  CMP             R1, #0
40EB7A:  BNE             loc_40EB72
40EB7C:  LDR             R1, =(_ZN11CReferences10pEmptyListE_ptr - 0x40EB82)
40EB7E:  ADD             R1, PC; _ZN11CReferences10pEmptyListE_ptr
40EB80:  LDR             R1, [R1]; CReferences::pEmptyList ...
40EB82:  LDR             R3, [R1]; CReferences::pEmptyList
40EB84:  STR             R3, [R2]
40EB86:  LDR             R2, [R0,#0x28]
40EB88:  STR             R2, [R1]; CReferences::pEmptyList
40EB8A:  MOVS            R1, #0
40EB8C:  STR             R1, [R0,#0x28]
40EB8E:  MOV.W           R0, #0xFFFFFFFF; int
40EB92:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
40EB96:  CMP             R0, #0
40EB98:  BEQ             loc_40EC28
40EB9A:  MOV.W           R0, #0xFFFFFFFF; int
40EB9E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
40EBA2:  LDR             R1, [R0,#0x28]
40EBA4:  CBZ             R1, loc_40EBDA
40EBA6:  MOVS            R2, #0
40EBA8:  LDR             R3, [R1,#4]
40EBAA:  LDR             R4, [R3]
40EBAC:  CMP             R4, R0
40EBAE:  IT EQ
40EBB0:  STREQ           R2, [R3]
40EBB2:  LDR             R1, [R1]
40EBB4:  CMP             R1, #0
40EBB6:  BNE             loc_40EBA8
40EBB8:  LDR             R1, [R0,#0x28]
40EBBA:  CBZ             R1, loc_40EBDA
40EBBC:  MOVS            R3, #0
40EBBE:  MOV             R2, R1
40EBC0:  LDR             R1, [R2]
40EBC2:  STR             R3, [R2,#4]
40EBC4:  CMP             R1, #0
40EBC6:  BNE             loc_40EBBE
40EBC8:  LDR             R1, =(_ZN11CReferences10pEmptyListE_ptr - 0x40EBCE)
40EBCA:  ADD             R1, PC; _ZN11CReferences10pEmptyListE_ptr
40EBCC:  LDR             R1, [R1]; CReferences::pEmptyList ...
40EBCE:  LDR             R3, [R1]; CReferences::pEmptyList
40EBD0:  STR             R3, [R2]
40EBD2:  LDR             R2, [R0,#0x28]
40EBD4:  STR             R2, [R1]; CReferences::pEmptyList
40EBD6:  MOVS            R1, #0
40EBD8:  STR             R1, [R0,#0x28]
40EBDA:  MOV.W           R0, #0xFFFFFFFF; int
40EBDE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
40EBE2:  LDR.W           R0, [R0,#0x444]
40EBE6:  MOV.W           R5, #0x2D4
40EBEA:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x40EBF2)
40EBEC:  LDR             R0, [R0,#0x38]
40EBEE:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
40EBF0:  LDR             R6, [R1]; CPedGroups::ms_groups ...
40EBF2:  MLA.W           R0, R0, R5, R6
40EBF6:  ADD.W           R4, R0, #8
40EBFA:  MOV.W           R0, #0xFFFFFFFF; int
40EBFE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
40EC02:  MOV             R1, R0; CPed *
40EC04:  MOV             R0, R4; this
40EC06:  BLX             j__ZN19CPedGroupMembership9SetLeaderEP4CPed; CPedGroupMembership::SetLeader(CPed *)
40EC0A:  MOV.W           R0, #0xFFFFFFFF; int
40EC0E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
40EC12:  LDR.W           R0, [R0,#0x444]
40EC16:  LDR             R0, [R0,#0x38]
40EC18:  MLA.W           R0, R0, R5, R6; this
40EC1C:  POP.W           {R11}
40EC20:  POP.W           {R4-R7,LR}
40EC24:  B.W             j_j__ZN9CPedGroup7ProcessEv; j_CPedGroup::Process(void)
40EC28:  POP.W           {R11}
40EC2C:  POP             {R4-R7,PC}
