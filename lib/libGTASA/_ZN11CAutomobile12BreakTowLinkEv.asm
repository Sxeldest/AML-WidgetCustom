; =========================================================
; Game Engine Function: _ZN11CAutomobile12BreakTowLinkEv
; Address            : 0x55EC6C - 0x55ECF6
; =========================================================

55EC6C:  PUSH            {R4,R5,R7,LR}
55EC6E:  ADD             R7, SP, #8
55EC70:  MOV             R4, R0
55EC72:  LDR.W           R0, [R4,#0x4D0]
55EC76:  CBZ             R0, loc_55ECA0
55EC78:  LDR.W           R2, [R0,#0x4D4]
55EC7C:  ADD.W           R5, R4, #0x4D0
55EC80:  CBZ             R2, loc_55EC96
55EC82:  ADDW            R1, R0, #0x4D4; CEntity **
55EC86:  MOV             R0, R2; this
55EC88:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
55EC8C:  LDR             R0, [R5]
55EC8E:  MOVS            R1, #0
55EC90:  STR.W           R1, [R0,#0x4D4]
55EC94:  LDR             R0, [R5]; this
55EC96:  MOV             R1, R5; CEntity **
55EC98:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
55EC9C:  MOVS            R0, #0
55EC9E:  STR             R0, [R5]
55ECA0:  LDRB.W          R1, [R4,#0x3A]
55ECA4:  AND.W           R0, R1, #0xF0
55ECA8:  CMP             R0, #0x50 ; 'P'
55ECAA:  ITT NE
55ECAC:  MOVNE           R0, #0
55ECAE:  POPNE           {R4,R5,R7,PC}
55ECB0:  LDR.W           R0, [R4,#0x464]; this
55ECB4:  CBZ             R0, loc_55ECCC
55ECB6:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
55ECBA:  LDRB.W          R1, [R4,#0x3A]
55ECBE:  CMP             R0, #0
55ECC0:  AND.W           R1, R1, #7
55ECC4:  IT EQ
55ECC6:  ORREQ.W         R1, R1, #0x18
55ECCA:  B               loc_55ECEE
55ECCC:  VMOV.F32        S0, #1.0
55ECD0:  ADDW            R0, R4, #0x4CC
55ECD4:  VLDR            S2, [R0]
55ECD8:  AND.W           R0, R1, #7
55ECDC:  VCMPE.F32       S2, S0
55ECE0:  VMRS            APSR_nzcv, FPSCR
55ECE4:  ITE GE
55ECE6:  ORRGE.W         R1, R0, #0x20 ; ' '
55ECEA:  ORRLT.W         R1, R0, #0x28 ; '('
55ECEE:  MOVS            R0, #1
55ECF0:  STRB.W          R1, [R4,#0x3A]
55ECF4:  POP             {R4,R5,R7,PC}
