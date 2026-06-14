; =========================================================
; Game Engine Function: _ZN24CTaskComplexKillCriminalC2EP4CPedb
; Address            : 0x53DE4C - 0x53DEC8
; =========================================================

53DE4C:  PUSH            {R4-R7,LR}
53DE4E:  ADD             R7, SP, #0xC
53DE50:  PUSH.W          {R11}
53DE54:  MOV             R5, R2
53DE56:  MOV             R6, R1
53DE58:  MOV             R4, R0
53DE5A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
53DE5E:  LDR             R0, =(_ZTV24CTaskComplexKillCriminal_ptr - 0x53DE6C)
53DE60:  MOVS            R2, #0
53DE62:  MOVS            R1, #0
53DE64:  MOVT            R2, #0x4040
53DE68:  ADD             R0, PC; _ZTV24CTaskComplexKillCriminal_ptr
53DE6A:  STRD.W          R1, R2, [R4,#0x10]
53DE6E:  STRB            R5, [R4,#0x18]
53DE70:  MOV             R5, R4
53DE72:  LDR             R0, [R0]; `vtable for'CTaskComplexKillCriminal ...
53DE74:  CMP             R6, #0
53DE76:  STRH.W          R1, [R4,#0x19]
53DE7A:  STRB            R1, [R4,#0x1E]
53DE7C:  ADD.W           R0, R0, #8
53DE80:  STR             R0, [R4]
53DE82:  STR.W           R6, [R5,#0xC]!
53DE86:  BEQ             loc_53DEAC
53DE88:  MOV             R0, R6; this
53DE8A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
53DE8E:  CBNZ            R0, loc_53DEA8
53DE90:  LDR             R0, [R5]; this
53DE92:  LDR.W           R1, [R0,#0x59C]
53DE96:  CMP             R1, #0x13
53DE98:  BHI             loc_53DEB4
53DE9A:  MOVS            R2, #1
53DE9C:  MOVS            R3, #:lower16:(aZn8cvehicle28q+0x2B); "v"
53DE9E:  LSLS            R2, R1
53DEA0:  MOVT            R3, #:upper16:(aZn8cvehicle28q+0x2B); "v"
53DEA4:  TST             R2, R3
53DEA6:  BEQ             loc_53DEB4
53DEA8:  MOVS            R0, #0
53DEAA:  STR             R0, [R5]
53DEAC:  MOV             R0, R4
53DEAE:  POP.W           {R11}
53DEB2:  POP             {R4-R7,PC}
53DEB4:  CMP             R1, #0x17
53DEB6:  BGT             loc_53DEA8
53DEB8:  LDRB.W          R1, [R0,#0x448]
53DEBC:  CMP             R1, #2
53DEBE:  BEQ             loc_53DEA8
53DEC0:  MOV             R1, R5; CEntity **
53DEC2:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
53DEC6:  B               loc_53DEAC
