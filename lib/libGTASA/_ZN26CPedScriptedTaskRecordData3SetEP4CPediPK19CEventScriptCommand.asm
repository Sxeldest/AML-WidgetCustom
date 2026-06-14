; =========================================================
; Game Engine Function: _ZN26CPedScriptedTaskRecordData3SetEP4CPediPK19CEventScriptCommand
; Address            : 0x4C2A4C - 0x4C2A94
; =========================================================

4C2A4C:  PUSH            {R4-R7,LR}
4C2A4E:  ADD             R7, SP, #0xC
4C2A50:  PUSH.W          {R8-R10}
4C2A54:  MOV             R5, R0
4C2A56:  MOV             R8, R3
4C2A58:  MOV             R6, R5
4C2A5A:  MOV             R9, R2
4C2A5C:  LDR.W           R0, [R6,#0xC]!; this
4C2A60:  MOV             R10, R1
4C2A62:  CMP             R0, #0
4C2A64:  ITT NE
4C2A66:  MOVNE           R1, R6; CEntity **
4C2A68:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C2A6C:  MOVS            R4, #0
4C2A6E:  MOV.W           R1, #0xFFFFFFFF
4C2A72:  MOVS            R0, #3
4C2A74:  STRD.W          R1, R4, [R5]
4C2A78:  STRD.W          R4, R10, [R5,#8]
4C2A7C:  MOV             R1, R6; CEntity **
4C2A7E:  STR             R0, [R5,#0x10]
4C2A80:  MOV             R0, R10; this
4C2A82:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4C2A86:  STRD.W          R9, R8, [R5]
4C2A8A:  STR             R4, [R5,#8]
4C2A8C:  STR             R4, [R5,#0x10]
4C2A8E:  POP.W           {R8-R10}
4C2A92:  POP             {R4-R7,PC}
