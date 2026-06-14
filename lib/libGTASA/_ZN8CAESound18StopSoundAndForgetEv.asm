; =========================================================
; Game Engine Function: _ZN8CAESound18StopSoundAndForgetEv
; Address            : 0x3A7D74 - 0x3A7DA6
; =========================================================

3A7D74:  PUSH            {R4,R5,R7,LR}
3A7D76:  ADD             R7, SP, #8
3A7D78:  MOV             R4, R0
3A7D7A:  MOVS            R1, #1
3A7D7C:  LDR.W           R0, [R4,#8]!; this
3A7D80:  MOVS            R5, #0
3A7D82:  STRH.W          R1, [R4,#0x60]
3A7D86:  CMP             R0, #0
3A7D88:  LDRH.W          R1, [R4,#0x4E]
3A7D8C:  STR.W           R5, [R4,#-4]
3A7D90:  BIC.W           R1, R1, #4
3A7D94:  STRH.W          R1, [R4,#0x4E]
3A7D98:  IT EQ
3A7D9A:  POPEQ           {R4,R5,R7,PC}
3A7D9C:  MOV             R1, R4; CEntity **
3A7D9E:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3A7DA2:  STR             R5, [R4]
3A7DA4:  POP             {R4,R5,R7,PC}
