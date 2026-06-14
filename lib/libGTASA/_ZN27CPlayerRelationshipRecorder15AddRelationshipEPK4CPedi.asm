; =========================================================
; Game Engine Function: _ZN27CPlayerRelationshipRecorder15AddRelationshipEPK4CPedi
; Address            : 0x4D6734 - 0x4D6740
; =========================================================

4D6734:  LDR             R3, [R0]
4D6736:  CMP             R3, #0
4D6738:  ITT NE
4D673A:  STRBNE          R2, [R0,#4]
4D673C:  STRNE           R1, [R0]
4D673E:  BX              LR
