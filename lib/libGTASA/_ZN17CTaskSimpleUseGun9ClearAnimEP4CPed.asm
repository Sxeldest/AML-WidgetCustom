; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGun9ClearAnimEP4CPed
; Address            : 0x4DDD18 - 0x4DDD70
; =========================================================

4DDD18:  PUSH            {R4,R5,R7,LR}
4DDD1A:  ADD             R7, SP, #8
4DDD1C:  MOV             R5, R0
4DDD1E:  MOV             R4, R1
4DDD20:  LDR             R0, [R5,#0x2C]
4DDD22:  CBZ             R0, loc_4DDD56
4DDD24:  VLDR            S0, [R0,#0x18]
4DDD28:  VCMPE.F32       S0, #0.0
4DDD2C:  VMRS            APSR_nzcv, FPSCR
4DDD30:  BLE             loc_4DDD4A
4DDD32:  VLDR            S0, [R0,#0x1C]
4DDD36:  VCMPE.F32       S0, #0.0
4DDD3A:  VMRS            APSR_nzcv, FPSCR
4DDD3E:  BLT             loc_4DDD4A
4DDD40:  MOV.W           R1, #0xC1000000
4DDD44:  STR             R1, [R0,#0x1C]
4DDD46:  LDR             R0, [R5,#0x2C]; this
4DDD48:  CBZ             R0, loc_4DDD56
4DDD4A:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DDD52)
4DDD4C:  MOVS            R2, #0; void *
4DDD4E:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DDD50:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DDD52:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DDD56:  LDRSB.W         R1, [R5,#0x10]
4DDD5A:  MOVS            R0, #0
4DDD5C:  STR             R0, [R5,#0x2C]
4DDD5E:  CMP             R1, #5
4DDD60:  MOV             R1, R4; CPed *
4DDD62:  IT LE
4DDD64:  STRBLE          R0, [R5,#0x10]
4DDD66:  MOV             R0, R5; this
4DDD68:  POP.W           {R4,R5,R7,LR}
4DDD6C:  B.W             _ZN17CTaskSimpleUseGun7AbortIKEP4CPed; CTaskSimpleUseGun::AbortIK(CPed *)
