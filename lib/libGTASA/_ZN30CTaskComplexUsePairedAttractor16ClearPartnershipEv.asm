; =========================================================
; Game Engine Function: _ZN30CTaskComplexUsePairedAttractor16ClearPartnershipEv
; Address            : 0x4EEFE0 - 0x4EF000
; =========================================================

4EEFE0:  PUSH            {R4,R5,R7,LR}
4EEFE2:  ADD             R7, SP, #8
4EEFE4:  MOV             R4, R0
4EEFE6:  MOV             R5, R4
4EEFE8:  LDR.W           R0, [R5,#0x10]!; this
4EEFEC:  CBZ             R0, loc_4EEFF8
4EEFEE:  MOV             R1, R5; CEntity **
4EEFF0:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4EEFF4:  MOVS            R0, #0
4EEFF6:  STR             R0, [R5]
4EEFF8:  MOVS            R0, #0
4EEFFA:  STR             R0, [R4,#0x18]
4EEFFC:  STRB            R0, [R4,#0x14]
4EEFFE:  POP             {R4,R5,R7,PC}
