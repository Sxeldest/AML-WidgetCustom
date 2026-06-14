; =========================================================
; Game Engine Function: _ZN26CPedScriptedTaskRecordData5FlushEv
; Address            : 0x4C2A24 - 0x4C2A4C
; =========================================================

4C2A24:  PUSH            {R4,R6,R7,LR}
4C2A26:  ADD             R7, SP, #8
4C2A28:  MOV             R4, R0
4C2A2A:  MOV             R1, R4
4C2A2C:  LDR.W           R0, [R1,#0xC]!; CEntity **
4C2A30:  CMP             R0, #0
4C2A32:  IT NE
4C2A34:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C2A38:  MOVS            R0, #0
4C2A3A:  MOV.W           R2, #0xFFFFFFFF
4C2A3E:  MOVS            R1, #3
4C2A40:  STRD.W          R2, R0, [R4]
4C2A44:  STRD.W          R0, R0, [R4,#8]
4C2A48:  STR             R1, [R4,#0x10]
4C2A4A:  POP             {R4,R6,R7,PC}
