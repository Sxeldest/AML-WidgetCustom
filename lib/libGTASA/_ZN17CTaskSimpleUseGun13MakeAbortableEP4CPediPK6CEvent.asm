; =========================================================
; Game Engine Function: _ZN17CTaskSimpleUseGun13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4DBEA0 - 0x4DBF20
; =========================================================

4DBEA0:  PUSH            {R4-R7,LR}
4DBEA2:  ADD             R7, SP, #0xC
4DBEA4:  PUSH.W          {R11}
4DBEA8:  MOV             R6, R2
4DBEAA:  MOV             R5, R0
4DBEAC:  SUBS            R0, R6, #1
4DBEAE:  MOV             R4, R1
4DBEB0:  CMP             R0, #1
4DBEB2:  BHI             loc_4DBF12
4DBEB4:  MOV             R0, R5; this
4DBEB6:  MOV             R1, R4; CPed *
4DBEB8:  BLX             j__ZN17CTaskSimpleUseGun17RemoveStanceAnimsEP4CPedf; CTaskSimpleUseGun::RemoveStanceAnims(CPed *,float)
4DBEBC:  CMP             R6, #2
4DBEBE:  BNE             loc_4DBED2
4DBEC0:  LDR.W           R1, [R4,#0x4E0]; int
4DBEC4:  MOVS            R3, #0
4DBEC6:  LDR             R0, [R4,#0x18]; int
4DBEC8:  MOVT            R3, #0x447A
4DBECC:  MOVS            R2, #3; unsigned int
4DBECE:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4DBED2:  LDR             R0, [R5,#0x2C]
4DBED4:  CBZ             R0, loc_4DBEF6
4DBED6:  CMP             R6, #2
4DBED8:  MOV.W           R2, #0; void *
4DBEDC:  ITTTT EQ
4DBEDE:  MOVEQ           R1, #0
4DBEE0:  MOVTEQ          R1, #0xC47A
4DBEE4:  STREQ           R1, [R0,#0x1C]
4DBEE6:  LDREQ           R0, [R5,#0x2C]; this
4DBEE8:  MOVS            R6, #0
4DBEEA:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DBEF0)
4DBEEC:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DBEEE:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DBEF0:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DBEF4:  STR             R6, [R5,#0x2C]
4DBEF6:  MOVS            R6, #1
4DBEF8:  MOV             R0, R5; this
4DBEFA:  MOV             R1, R4; CPed *
4DBEFC:  STRB            R6, [R5,#8]
4DBEFE:  BLX             j__ZN17CTaskSimpleUseGun7AbortIKEP4CPed; CTaskSimpleUseGun::AbortIK(CPed *)
4DBF02:  LDR.W           R0, [R4,#0x444]
4DBF06:  CMP             R0, #0
4DBF08:  ITTT NE
4DBF0A:  MOVNE           R1, #0
4DBF0C:  STRNE           R1, [R0,#0x2C]
4DBF0E:  MOVNE           R6, #1
4DBF10:  B               loc_4DBF18
4DBF12:  MOVS            R0, #6
4DBF14:  MOVS            R6, #0
4DBF16:  STRB            R0, [R5,#0xF]
4DBF18:  MOV             R0, R6
4DBF1A:  POP.W           {R11}
4DBF1E:  POP             {R4-R7,PC}
