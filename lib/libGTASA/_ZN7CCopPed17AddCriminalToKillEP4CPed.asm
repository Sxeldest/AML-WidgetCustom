; =========================================================
; Game Engine Function: _ZN7CCopPed17AddCriminalToKillEP4CPed
; Address            : 0x49EAE0 - 0x49ED00
; =========================================================

49EAE0:  PUSH            {R4-R7,LR}
49EAE2:  ADD             R7, SP, #0xC
49EAE4:  PUSH.W          {R8-R11}
49EAE8:  SUB             SP, SP, #4
49EAEA:  MOV             R4, R1
49EAEC:  MOV             R5, R0
49EAEE:  CBZ             R4, loc_49EB0E
49EAF0:  MOV             R0, R4; this
49EAF2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
49EAF6:  CBNZ            R0, loc_49EB0E
49EAF8:  LDR.W           R0, [R4,#0x59C]
49EAFC:  CMP             R0, #0x13
49EAFE:  BHI             loc_49EB1C
49EB00:  MOVS            R1, #1
49EB02:  MOVS            R2, #:lower16:(aZn8cvehicle28q+0x2B); "v"
49EB04:  LSLS            R1, R0
49EB06:  MOVT            R2, #:upper16:(aZn8cvehicle28q+0x2B); "v"
49EB0A:  TST             R1, R2
49EB0C:  BEQ             loc_49EB1C
49EB0E:  MOV.W           R6, #0xFFFFFFFF
49EB12:  MOV             R0, R6
49EB14:  ADD             SP, SP, #4
49EB16:  POP.W           {R8-R11}
49EB1A:  POP             {R4-R7,PC}
49EB1C:  CMP             R0, #0x17
49EB1E:  BGT             loc_49EB0E
49EB20:  LDRB.W          R0, [R4,#0x448]
49EB24:  CMP             R0, #2
49EB26:  BEQ             loc_49EB0E
49EB28:  LDR.W           R0, [R5,#0x7B4]; this
49EB2C:  ADDW            R9, R5, #0x7B4
49EB30:  CBZ             R0, loc_49EB50
49EB32:  ADDW            R1, R0, #0x544
49EB36:  VLDR            S0, [R1]
49EB3A:  VCMPE.F32       S0, #0.0
49EB3E:  VMRS            APSR_nzcv, FPSCR
49EB42:  BGT             loc_49EB50
49EB44:  MOV             R1, R9; CEntity **
49EB46:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
49EB4A:  MOVS            R0, #0
49EB4C:  STR.W           R0, [R9]
49EB50:  LDR.W           R0, [R5,#0x7B8]; this
49EB54:  ADD.W           R11, R5, #0x7B8
49EB58:  CBZ             R0, loc_49EB78
49EB5A:  ADDW            R1, R0, #0x544
49EB5E:  VLDR            S0, [R1]
49EB62:  VCMPE.F32       S0, #0.0
49EB66:  VMRS            APSR_nzcv, FPSCR
49EB6A:  BGT             loc_49EB78
49EB6C:  MOV             R1, R11; CEntity **
49EB6E:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
49EB72:  MOVS            R0, #0
49EB74:  STR.W           R0, [R11]
49EB78:  LDR.W           R0, [R5,#0x7BC]; this
49EB7C:  ADDW            R10, R5, #0x7BC
49EB80:  CBZ             R0, loc_49EBA0
49EB82:  ADDW            R1, R0, #0x544
49EB86:  VLDR            S0, [R1]
49EB8A:  VCMPE.F32       S0, #0.0
49EB8E:  VMRS            APSR_nzcv, FPSCR
49EB92:  BGT             loc_49EBA0
49EB94:  MOV             R1, R10; CEntity **
49EB96:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
49EB9A:  MOVS            R0, #0
49EB9C:  STR.W           R0, [R10]
49EBA0:  LDR.W           R0, [R5,#0x7C0]; this
49EBA4:  ADD.W           R8, R5, #0x7C0
49EBA8:  CBZ             R0, loc_49EBC8
49EBAA:  ADDW            R1, R0, #0x544
49EBAE:  VLDR            S0, [R1]
49EBB2:  VCMPE.F32       S0, #0.0
49EBB6:  VMRS            APSR_nzcv, FPSCR
49EBBA:  BGT             loc_49EBC8
49EBBC:  MOV             R1, R8; CEntity **
49EBBE:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
49EBC2:  MOVS            R0, #0
49EBC4:  STR.W           R0, [R8]
49EBC8:  LDR.W           R0, [R5,#0x7C4]; this
49EBCC:  CBZ             R0, loc_49EBF0
49EBCE:  ADDW            R1, R0, #0x544
49EBD2:  VLDR            S0, [R1]
49EBD6:  VCMPE.F32       S0, #0.0
49EBDA:  VMRS            APSR_nzcv, FPSCR
49EBDE:  BGT             loc_49EBF2
49EBE0:  ADDW            R6, R5, #0x7C4
49EBE4:  MOV             R1, R6; CEntity **
49EBE6:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
49EBEA:  MOVS            R0, #0
49EBEC:  STR             R0, [R6]
49EBEE:  B               loc_49EBF2
49EBF0:  MOVS            R0, #0
49EBF2:  ADDW            R1, R4, #0x544
49EBF6:  VLDR            S0, [R1]
49EBFA:  VCMPE.F32       S0, #0.0
49EBFE:  VMRS            APSR_nzcv, FPSCR
49EC02:  BLE.W           loc_49EB0E
49EC06:  LDR.W           R1, [R9]
49EC0A:  CBZ             R1, loc_49EC22
49EC0C:  CMP             R1, R4
49EC0E:  BEQ             loc_49EC4E
49EC10:  LDR.W           R1, [R11]
49EC14:  CBZ             R1, loc_49EC52
49EC16:  MOV.W           R6, #0xFFFFFFFF
49EC1A:  CMP             R1, R4
49EC1C:  BNE             loc_49EC2C
49EC1E:  MOVS            R6, #1
49EC20:  B               loc_49EB12
49EC22:  LDR.W           R1, [R11]
49EC26:  MOVS            R6, #0
49EC28:  CMP             R1, R4
49EC2A:  BEQ             loc_49EC1E
49EC2C:  LDR.W           R1, [R10]
49EC30:  ADDS            R2, R6, #1
49EC32:  IT EQ
49EC34:  CMPEQ           R1, #0
49EC36:  BNE             loc_49EC58
49EC38:  LDR.W           R1, [R8]
49EC3C:  MOVS            R6, #2
49EC3E:  CMP             R1, R4
49EC40:  BEQ             loc_49ECF4
49EC42:  ADDS            R1, R6, #1
49EC44:  IT EQ
49EC46:  CMPEQ           R0, #0
49EC48:  BNE             loc_49EC6A
49EC4A:  MOVS            R6, #4
49EC4C:  B               loc_49EC74
49EC4E:  MOVS            R6, #0
49EC50:  B               loc_49EB12
49EC52:  LDR.W           R1, [R10]
49EC56:  MOVS            R6, #1
49EC58:  CMP             R1, R4
49EC5A:  BEQ             loc_49ECF8
49EC5C:  LDR.W           R1, [R8]
49EC60:  ADDS            R2, R6, #1
49EC62:  IT EQ
49EC64:  CMPEQ           R1, #0
49EC66:  BNE             loc_49EC3E
49EC68:  MOVS            R6, #3
49EC6A:  CMP             R0, R4
49EC6C:  BEQ             loc_49ECFC
49EC6E:  ADDS            R0, R6, #1
49EC70:  BEQ.W           loc_49EB0E
49EC74:  ADD.W           R0, R5, R6,LSL#2
49EC78:  ADDW            R1, R0, #0x7B4; CEntity **
49EC7C:  STR.W           R4, [R0,#0x7B4]
49EC80:  MOV             R0, R4; this
49EC82:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
49EC86:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49EC90)
49EC88:  LDR.W           R2, [R4,#0x488]
49EC8C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49EC8E:  LDR.W           R3, [R4,#0x490]
49EC92:  ORR.W           R2, R2, #0x40 ; '@'
49EC96:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
49EC98:  LDR.W           R0, [R4,#0x590]
49EC9C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
49EC9E:  CMP             R0, #0
49ECA0:  STR.W           R2, [R4,#0x488]
49ECA4:  ORR.W           R2, R3, #0x800
49ECA8:  STR.W           R2, [R4,#0x490]
49ECAC:  MOVW            R2, #0x999A
49ECB0:  ADD.W           R1, R1, #0x48000
49ECB4:  MOVT            R2, #0x3E99
49ECB8:  STR.W           R2, [R4,#0x798]
49ECBC:  ADD.W           R1, R1, #0x13E0
49ECC0:  STR.W           R1, [R4,#0x550]
49ECC4:  BEQ             loc_49ECE4
49ECC6:  MOVS            R1, #0xFF
49ECC8:  STRH.W          R1, [R0,#0x4B0]
49ECCC:  LDR.W           R0, [R4,#0x590]
49ECD0:  LDR.W           R2, [R0,#0x430]
49ECD4:  LDR.W           R1, [R0,#0x42C]
49ECD8:  ORR.W           R2, R2, #0x40 ; '@'
49ECDC:  STR.W           R1, [R0,#0x42C]
49ECE0:  STR.W           R2, [R0,#0x430]
49ECE4:  LDR.W           R0, [R5,#0x7B0]; this
49ECE8:  CMP             R0, #0
49ECEA:  ITT NE
49ECEC:  MOVNE           R1, R4; CPed *
49ECEE:  BLXNE           j__ZN7CCopPed17AddCriminalToKillEP4CPed; CCopPed::AddCriminalToKill(CPed *)
49ECF2:  B               loc_49EB12
49ECF4:  MOVS            R6, #3
49ECF6:  B               loc_49EB12
49ECF8:  MOVS            R6, #2
49ECFA:  B               loc_49EB12
49ECFC:  MOVS            R6, #4
49ECFE:  B               loc_49EB12
