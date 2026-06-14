; =========================================================
; Game Engine Function: _ZN9IKChain_c12UpdateEntityEP7CEntity
; Address            : 0x4D2E30 - 0x4D2E44
; =========================================================

4D2E30:  MOV             R2, R0
4D2E32:  CMP             R1, #0
4D2E34:  STR.W           R1, [R2,#0x30]!
4D2E38:  ITTT NE
4D2E3A:  MOVNE           R0, R1; this
4D2E3C:  MOVNE           R1, R2; CEntity **
4D2E3E:  BNE.W           j_j__ZN7CEntity17RegisterReferenceEPPS_; j_CEntity::RegisterReference(CEntity**)
4D2E42:  BX              LR
