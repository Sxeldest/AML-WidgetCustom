; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGun5ResetEP4CPedP7CEntity7CVectoras
; Address            : 0x4DBD9C - 0x4DBDFA
; =========================================================

4DBD9C:  PUSH            {R4-R7,LR}
4DBD9E:  ADD             R7, SP, #0xC
4DBDA0:  PUSH.W          {R11}
4DBDA4:  MOV             R6, R2
4DBDA6:  MOV             R5, R0
4DBDA8:  LDR             R2, [R7,#arg_C]
4DBDAA:  LDRD.W          R0, R4, [R7,#arg_0]
4DBDAE:  STRD.W          R3, R0, [R5,#0x20]
4DBDB2:  MOVS            R0, #0xFF
4DBDB4:  STR             R4, [R5,#0x28]
4DBDB6:  MOVS            R4, #0
4DBDB8:  STRH            R4, [R5,#0x36]
4DBDBA:  STRH            R2, [R5,#0x34]
4DBDBC:  STRB.W          R0, [R5,#0x38]
4DBDC0:  MOV             R0, R5; this
4DBDC2:  STRB            R4, [R5,#0xC]
4DBDC4:  BLX             j__ZN17CTaskSimpleUseGun7AbortIKEP4CPed; CTaskSimpleUseGun::AbortIK(CPed *)
4DBDC8:  LDR.W           R0, [R5,#0x1C]!; this
4DBDCC:  CMP             R0, R6
4DBDCE:  STRH.W          R4, [R5,#0x1D]
4DBDD2:  BEQ             loc_4DBDF4
4DBDD4:  CMP             R0, #0
4DBDD6:  ITT NE
4DBDD8:  MOVNE           R1, R5; CEntity **
4DBDDA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4DBDDE:  CMP             R6, #0
4DBDE0:  STR             R6, [R5]
4DBDE2:  BEQ             loc_4DBDF4
4DBDE4:  MOV             R0, R6; this
4DBDE6:  MOV             R1, R5; CEntity **
4DBDE8:  POP.W           {R11}
4DBDEC:  POP.W           {R4-R7,LR}
4DBDF0:  B.W             j_j__ZN7CEntity17RegisterReferenceEPPS_; j_CEntity::RegisterReference(CEntity**)
4DBDF4:  POP.W           {R11}
4DBDF8:  POP             {R4-R7,PC}
