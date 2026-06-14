; =========================================================
; Game Engine Function: _ZN18CInterestingEventsD2Ev
; Address            : 0x4C1DB4 - 0x4C1E4E
; =========================================================

4C1DB4:  PUSH            {R4,R5,R7,LR}
4C1DB6:  ADD             R7, SP, #8
4C1DB8:  MOV             R4, R0
4C1DBA:  MOV             R5, R4
4C1DBC:  LDR.W           R0, [R5,#8]!; this
4C1DC0:  CBZ             R0, loc_4C1DCC
4C1DC2:  MOV             R1, R5; CEntity **
4C1DC4:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C1DC8:  MOVS            R0, #0
4C1DCA:  STR             R0, [R5]
4C1DCC:  MOV             R5, R4
4C1DCE:  LDR.W           R0, [R5,#0x14]!; this
4C1DD2:  CBZ             R0, loc_4C1DDE
4C1DD4:  MOV             R1, R5; CEntity **
4C1DD6:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C1DDA:  MOVS            R0, #0
4C1DDC:  STR             R0, [R5]
4C1DDE:  MOV             R5, R4
4C1DE0:  LDR.W           R0, [R5,#0x20]!; this
4C1DE4:  CBZ             R0, loc_4C1DF0
4C1DE6:  MOV             R1, R5; CEntity **
4C1DE8:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C1DEC:  MOVS            R0, #0
4C1DEE:  STR             R0, [R5]
4C1DF0:  MOV             R5, R4
4C1DF2:  LDR.W           R0, [R5,#0x2C]!; this
4C1DF6:  CBZ             R0, loc_4C1E02
4C1DF8:  MOV             R1, R5; CEntity **
4C1DFA:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C1DFE:  MOVS            R0, #0
4C1E00:  STR             R0, [R5]
4C1E02:  MOV             R5, R4
4C1E04:  LDR.W           R0, [R5,#0x38]!; this
4C1E08:  CBZ             R0, loc_4C1E14
4C1E0A:  MOV             R1, R5; CEntity **
4C1E0C:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C1E10:  MOVS            R0, #0
4C1E12:  STR             R0, [R5]
4C1E14:  MOV             R5, R4
4C1E16:  LDR.W           R0, [R5,#0x44]!; this
4C1E1A:  CBZ             R0, loc_4C1E26
4C1E1C:  MOV             R1, R5; CEntity **
4C1E1E:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C1E22:  MOVS            R0, #0
4C1E24:  STR             R0, [R5]
4C1E26:  MOV             R5, R4
4C1E28:  LDR.W           R0, [R5,#0x50]!; this
4C1E2C:  CBZ             R0, loc_4C1E38
4C1E2E:  MOV             R1, R5; CEntity **
4C1E30:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C1E34:  MOVS            R0, #0
4C1E36:  STR             R0, [R5]
4C1E38:  MOV             R5, R4
4C1E3A:  LDR.W           R0, [R5,#0x5C]!; this
4C1E3E:  CBZ             R0, loc_4C1E4A
4C1E40:  MOV             R1, R5; CEntity **
4C1E42:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C1E46:  MOVS            R0, #0
4C1E48:  STR             R0, [R5]
4C1E4A:  MOV             R0, R4
4C1E4C:  POP             {R4,R5,R7,PC}
