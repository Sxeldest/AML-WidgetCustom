; =========================================================
; Game Engine Function: _ZN8CAESound28UnregisterWithPhysicalEntityEv
; Address            : 0x3A7A38 - 0x3A7A54
; =========================================================

3A7A38:  PUSH            {R4,R6,R7,LR}
3A7A3A:  ADD             R7, SP, #8
3A7A3C:  MOV             R4, R0
3A7A3E:  LDR.W           R0, [R4,#8]!; this
3A7A42:  CMP             R0, #0
3A7A44:  IT EQ
3A7A46:  POPEQ           {R4,R6,R7,PC}
3A7A48:  MOV             R1, R4; CEntity **
3A7A4A:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3A7A4E:  MOVS            R0, #0
3A7A50:  STR             R0, [R4]
3A7A52:  POP             {R4,R6,R7,PC}
