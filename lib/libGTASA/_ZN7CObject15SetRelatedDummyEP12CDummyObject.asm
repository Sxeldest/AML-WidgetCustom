; =========================================================
; Game Engine Function: _ZN7CObject15SetRelatedDummyEP12CDummyObject
; Address            : 0x4537B0 - 0x4537C0
; =========================================================

4537B0:  ADD.W           R2, R0, #0x178
4537B4:  STR.W           R1, [R0,#0x178]
4537B8:  MOV             R0, R1; this
4537BA:  MOV             R1, R2; CEntity **
4537BC:  B.W             j_j__ZN7CEntity17RegisterReferenceEPPS_; j_CEntity::RegisterReference(CEntity**)
