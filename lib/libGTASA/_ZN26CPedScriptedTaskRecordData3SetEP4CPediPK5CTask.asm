; =========================================================
; Game Engine Function: _ZN26CPedScriptedTaskRecordData3SetEP4CPediPK5CTask
; Address            : 0x4C2A94 - 0x4C2AE2
; =========================================================

4C2A94:  PUSH            {R4-R7,LR}
4C2A96:  ADD             R7, SP, #0xC
4C2A98:  PUSH.W          {R8-R10}
4C2A9C:  MOV             R5, R0
4C2A9E:  MOV             R8, R3
4C2AA0:  MOV             R6, R5
4C2AA2:  MOV             R9, R2
4C2AA4:  LDR.W           R0, [R6,#0xC]!; this
4C2AA8:  MOV             R4, R1
4C2AAA:  CMP             R0, #0
4C2AAC:  ITT NE
4C2AAE:  MOVNE           R1, R6; CEntity **
4C2AB0:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C2AB4:  MOV.W           R10, #0
4C2AB8:  MOV.W           R1, #0xFFFFFFFF
4C2ABC:  MOVS            R0, #3
4C2ABE:  STRD.W          R1, R10, [R5]
4C2AC2:  STRD.W          R10, R4, [R5,#8]
4C2AC6:  MOV             R1, R6; CEntity **
4C2AC8:  STR             R0, [R5,#0x10]
4C2ACA:  MOV             R0, R4; this
4C2ACC:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4C2AD0:  MOVS            R0, #1
4C2AD2:  STRD.W          R9, R10, [R5]
4C2AD6:  STR.W           R8, [R5,#8]
4C2ADA:  STR             R0, [R5,#0x10]
4C2ADC:  POP.W           {R8-R10}
4C2AE0:  POP             {R4-R7,PC}
