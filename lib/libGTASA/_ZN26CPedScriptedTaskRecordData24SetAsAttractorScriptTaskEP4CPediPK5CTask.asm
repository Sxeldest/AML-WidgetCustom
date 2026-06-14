; =========================================================
; Game Engine Function: _ZN26CPedScriptedTaskRecordData24SetAsAttractorScriptTaskEP4CPediPK5CTask
; Address            : 0x4C2AE2 - 0x4C2B30
; =========================================================

4C2AE2:  PUSH            {R4-R7,LR}
4C2AE4:  ADD             R7, SP, #0xC
4C2AE6:  PUSH.W          {R8-R10}
4C2AEA:  MOV             R5, R0
4C2AEC:  MOV             R8, R3
4C2AEE:  MOV             R6, R5
4C2AF0:  MOV             R9, R2
4C2AF2:  LDR.W           R0, [R6,#0xC]!; this
4C2AF6:  MOV             R4, R1
4C2AF8:  CMP             R0, #0
4C2AFA:  ITT NE
4C2AFC:  MOVNE           R1, R6; CEntity **
4C2AFE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C2B02:  MOV.W           R10, #0
4C2B06:  MOV.W           R1, #0xFFFFFFFF
4C2B0A:  MOVS            R0, #3
4C2B0C:  STRD.W          R1, R10, [R5]
4C2B10:  STRD.W          R10, R4, [R5,#8]
4C2B14:  MOV             R1, R6; CEntity **
4C2B16:  STR             R0, [R5,#0x10]
4C2B18:  MOV             R0, R4; this
4C2B1A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4C2B1E:  MOVS            R0, #5
4C2B20:  STRD.W          R9, R10, [R5]
4C2B24:  STR.W           R8, [R5,#8]
4C2B28:  STR             R0, [R5,#0x10]
4C2B2A:  POP.W           {R8-R10}
4C2B2E:  POP             {R4-R7,PC}
