; =========================================================
; Game Engine Function: _ZN8CAESound9StopSoundEv
; Address            : 0x3A7D08 - 0x3A7D2A
; =========================================================

3A7D08:  PUSH            {R4,R6,R7,LR}
3A7D0A:  ADD             R7, SP, #8
3A7D0C:  MOV             R4, R0
3A7D0E:  MOVS            R1, #1
3A7D10:  LDR.W           R0, [R4,#8]!; this
3A7D14:  CMP             R0, #0
3A7D16:  STRH.W          R1, [R4,#0x60]
3A7D1A:  IT EQ
3A7D1C:  POPEQ           {R4,R6,R7,PC}
3A7D1E:  MOV             R1, R4; CEntity **
3A7D20:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3A7D24:  MOVS            R0, #0
3A7D26:  STR             R0, [R4]
3A7D28:  POP             {R4,R6,R7,PC}
