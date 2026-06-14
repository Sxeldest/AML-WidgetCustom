; =========================================================
; Game Engine Function: _ZN7CCopPed10SetPartnerEPS_
; Address            : 0x49EAB0 - 0x49EADE
; =========================================================

49EAB0:  PUSH            {R4,R5,R7,LR}
49EAB2:  ADD             R7, SP, #8
49EAB4:  MOV             R4, R1
49EAB6:  MOV             R1, R0
49EAB8:  LDR.W           R0, [R1,#0x7B0]; this
49EABC:  ADD.W           R5, R1, #0x7B0
49EAC0:  CMP             R0, #0
49EAC2:  ITT NE
49EAC4:  MOVNE           R1, R5; CEntity **
49EAC6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
49EACA:  CMP             R4, #0
49EACC:  STR             R4, [R5]
49EACE:  IT EQ
49EAD0:  POPEQ           {R4,R5,R7,PC}
49EAD2:  MOV             R0, R4; this
49EAD4:  MOV             R1, R5; CEntity **
49EAD6:  POP.W           {R4,R5,R7,LR}
49EADA:  B.W             j_j__ZN7CEntity17RegisterReferenceEPPS_; j_CEntity::RegisterReference(CEntity**)
