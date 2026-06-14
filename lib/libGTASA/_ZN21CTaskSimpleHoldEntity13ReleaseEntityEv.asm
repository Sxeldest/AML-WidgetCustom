; =========================================================
; Game Engine Function: _ZN21CTaskSimpleHoldEntity13ReleaseEntityEv
; Address            : 0x541D8C - 0x541DA8
; =========================================================

541D8C:  PUSH            {R4,R6,R7,LR}
541D8E:  ADD             R7, SP, #8
541D90:  MOV             R4, R0
541D92:  LDR.W           R0, [R4,#8]!; this
541D96:  CMP             R0, #0
541D98:  IT EQ
541D9A:  POPEQ           {R4,R6,R7,PC}
541D9C:  MOV             R1, R4; CEntity **
541D9E:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
541DA2:  MOVS            R0, #0
541DA4:  STR             R0, [R4]
541DA6:  POP             {R4,R6,R7,PC}
