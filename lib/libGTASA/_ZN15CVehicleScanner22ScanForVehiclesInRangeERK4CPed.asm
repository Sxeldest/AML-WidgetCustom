; =========================================================
; Game Engine Function: _ZN15CVehicleScanner22ScanForVehiclesInRangeERK4CPed
; Address            : 0x4BADE4 - 0x4BAE4C
; =========================================================

4BADE4:  PUSH            {R4,R5,R7,LR}
4BADE6:  ADD             R7, SP, #8
4BADE8:  MOV             R5, R1
4BADEA:  MOV             R4, R0
4BADEC:  MOV             R0, R5; this
4BADEE:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4BADF2:  CMP             R0, #1
4BADF4:  BNE             locret_4BAE14
4BADF6:  LDR.W           R0, [R5,#0x590]
4BADFA:  CMP             R0, #0
4BADFC:  ITT NE
4BADFE:  LDRBNE.W        R0, [R5,#0x485]
4BAE02:  MOVSNE.W        R0, R0,LSL#31
4BAE06:  BNE             loc_4BAE16
4BAE08:  MOV             R0, R4; this
4BAE0A:  MOVS            R1, #0; int
4BAE0C:  MOV             R2, R5; CPed *
4BAE0E:  POP.W           {R4,R5,R7,LR}
4BAE12:  B               _ZN14CEntityScanner22ScanForEntitiesInRangeEiRK4CPed; CEntityScanner::ScanForEntitiesInRange(int,CPed const&)
4BAE14:  POP             {R4,R5,R7,PC}
4BAE16:  LDRB.W          R0, [R5,#0x448]
4BAE1A:  CMP             R0, #2
4BAE1C:  BNE             loc_4BAE28
4BAE1E:  MOV             R0, R4; this
4BAE20:  MOVS            R1, #0; int
4BAE22:  MOV             R2, R5; CPed *
4BAE24:  BLX             j__ZN14CEntityScanner22ScanForEntitiesInRangeEiRK4CPed; CEntityScanner::ScanForEntitiesInRange(int,CPed const&)
4BAE28:  LDR.W           R0, [R4,#0x4C]!; this
4BAE2C:  CMP             R0, #0
4BAE2E:  ITT NE
4BAE30:  MOVNE           R1, R4; CEntity **
4BAE32:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4BAE36:  LDR.W           R0, [R5,#0x590]; this
4BAE3A:  STR             R0, [R4]
4BAE3C:  CMP             R0, #0
4BAE3E:  IT EQ
4BAE40:  POPEQ           {R4,R5,R7,PC}
4BAE42:  MOV             R1, R4; CEntity **
4BAE44:  POP.W           {R4,R5,R7,LR}
4BAE48:  B.W             j_j__ZN7CEntity17RegisterReferenceEPPS_; j_CEntity::RegisterReference(CEntity**)
