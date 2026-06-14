; =========================================================
; Game Engine Function: _ZN20CTaskComplexCopInCar13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x53FCDC - 0x53FD64
; =========================================================

53FCDC:  PUSH            {R4-R7,LR}
53FCDE:  ADD             R7, SP, #0xC
53FCE0:  PUSH.W          {R8}
53FCE4:  MOV             R4, R0
53FCE6:  MOV             R6, R3
53FCE8:  LDR             R0, [R4,#8]
53FCEA:  MOV             R8, R1
53FCEC:  CBZ             R0, loc_53FD20
53FCEE:  LDR             R1, [R0]
53FCF0:  MOV             R3, R6
53FCF2:  LDR             R5, [R1,#0x1C]
53FCF4:  MOV             R1, R8
53FCF6:  BLX             R5
53FCF8:  CBZ             R6, loc_53FD22
53FCFA:  CMP             R0, #1
53FCFC:  BNE             loc_53FD22
53FCFE:  LDR             R0, [R6]
53FD00:  LDR             R1, [R0,#8]
53FD02:  MOV             R0, R6
53FD04:  BLX             R1
53FD06:  CMP             R0, #9
53FD08:  BNE             loc_53FD20
53FD0A:  LDRB.W          R0, [R6,#0x3C]
53FD0E:  CBZ             R0, loc_53FD20
53FD10:  LDRB            R0, [R6,#9]
53FD12:  CMP             R0, #0
53FD14:  ITT NE
53FD16:  LDRBNE.W        R0, [R8,#0x485]
53FD1A:  MOVSNE.W        R0, R0,LSL#31
53FD1E:  BNE             loc_53FD28
53FD20:  MOVS            R0, #1
53FD22:  POP.W           {R8}
53FD26:  POP             {R4-R7,PC}
53FD28:  LDR             R2, [R4,#0xC]
53FD2A:  MOVS            R0, #1
53FD2C:  LDR.W           R1, [R8,#0x590]
53FD30:  CMP             R1, R2
53FD32:  BNE             loc_53FD22
53FD34:  CMP             R2, #0
53FD36:  BEQ             loc_53FD22
53FD38:  MOV             R0, R1; this
53FD3A:  MOV             R1, R8; CPed *
53FD3C:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
53FD40:  CMP             R0, #1
53FD42:  BNE             loc_53FD20
53FD44:  LDR             R0, [R4,#0xC]
53FD46:  MOVS            R2, #4
53FD48:  LDRB.W          R1, [R0,#0x3A]
53FD4C:  BFI.W           R1, R2, #3, #0x1D
53FD50:  STRB.W          R1, [R0,#0x3A]
53FD54:  LDR             R0, [R4,#0xC]
53FD56:  MOVS            R1, #0
53FD58:  STRB.W          R1, [R0,#0x3BE]
53FD5C:  LDR             R0, [R4,#0xC]
53FD5E:  STRB.W          R1, [R0,#0x3D4]
53FD62:  B               loc_53FD20
