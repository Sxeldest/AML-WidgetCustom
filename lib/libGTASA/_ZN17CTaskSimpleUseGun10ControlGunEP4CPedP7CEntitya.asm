; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGun10ControlGunEP4CPedP7CEntitya
; Address            : 0x4DD9FC - 0x4DDA58
; =========================================================

4DD9FC:  PUSH            {R4-R7,LR}
4DD9FE:  ADD             R7, SP, #0xC
4DDA00:  PUSH.W          {R8,R9,R11}
4DDA04:  MOV             R5, R0
4DDA06:  MOV             R8, R1
4DDA08:  MOV             R4, R5
4DDA0A:  MOV             R9, R3
4DDA0C:  LDR.W           R0, [R4,#0x1C]!; this
4DDA10:  MOV             R6, R2
4DDA12:  MOVS            R1, #1
4DDA14:  CMP             R0, R6
4DDA16:  STRB.W          R1, [R4,#-0x13]
4DDA1A:  BEQ             loc_4DDA42
4DDA1C:  CMP             R0, #0
4DDA1E:  ITT NE
4DDA20:  MOVNE           R1, R4; CEntity **
4DDA22:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DDA26:  CMP             R6, #0
4DDA28:  STR             R6, [R4]
4DDA2A:  ITTT NE
4DDA2C:  MOVNE           R0, R6; this
4DDA2E:  MOVNE           R1, R4; CEntity **
4DDA30:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4DDA34:  MOV             R0, R5; this
4DDA36:  MOV             R1, R8; CPed *
4DDA38:  BLX             j__ZN17CTaskSimpleUseGun7AbortIKEP4CPed; CTaskSimpleUseGun::AbortIK(CPed *)
4DDA3C:  MOVS            R0, #0
4DDA3E:  STRH.W          R0, [R5,#0x39]
4DDA42:  LDRSB.W         R0, [R5,#0xF]
4DDA46:  CMP             R0, R9
4DDA48:  MOV.W           R0, #1
4DDA4C:  IT LT
4DDA4E:  STRBLT.W        R9, [R5,#0xF]
4DDA52:  POP.W           {R8,R9,R11}
4DDA56:  POP             {R4-R7,PC}
