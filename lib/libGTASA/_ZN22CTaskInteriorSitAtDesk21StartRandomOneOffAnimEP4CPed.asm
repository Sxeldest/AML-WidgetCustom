; =========================================================
; Game Engine Function: _ZN22CTaskInteriorSitAtDesk21StartRandomOneOffAnimEP4CPed
; Address            : 0x52AF20 - 0x52AF9C
; =========================================================

52AF20:  PUSH            {R4,R5,R7,LR}
52AF22:  ADD             R7, SP, #8
52AF24:  MOV             R4, R0
52AF26:  MOV             R5, R1
52AF28:  LDR             R0, [R4,#0x14]; this
52AF2A:  CBZ             R0, loc_52AF38
52AF2C:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52AF34)
52AF2E:  MOVS            R2, #0; void *
52AF30:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52AF32:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52AF34:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52AF38:  BLX             rand
52AF3C:  UXTH            R0, R0
52AF3E:  VLDR            S2, =0.000015259
52AF42:  VMOV            S0, R0
52AF46:  VCVT.F32.S32    S0, S0
52AF4A:  VMUL.F32        S0, S0, S2
52AF4E:  VLDR            S2, =100.0
52AF52:  VMUL.F32        S0, S0, S2
52AF56:  VCVT.S32.F32    S0, S0
52AF5A:  VMOV            R0, S0
52AF5E:  CMP             R0, #0x3C ; '<'
52AF60:  BLE             loc_52AF68
52AF62:  MOVW            R2, #0x14F
52AF66:  B               loc_52AF7E
52AF68:  CMP             R0, #0x23 ; '#'
52AF6A:  BLE             loc_52AF72
52AF6C:  MOV.W           R2, #0x14E
52AF70:  B               loc_52AF7E
52AF72:  MOVW            R2, #0x14D
52AF76:  CMP             R0, #0xA
52AF78:  IT GT
52AF7A:  MOVGT.W         R2, #0x150; unsigned int
52AF7E:  LDR             R0, [R5,#0x18]; int
52AF80:  MOVS            R1, #0x55 ; 'U'; int
52AF82:  MOV.W           R3, #0x40800000
52AF86:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52AF8A:  LDR             R1, =(_ZN22CTaskInteriorSitAtDesk12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52AF94)
52AF8C:  MOV             R2, R4
52AF8E:  STR             R0, [R4,#0x14]
52AF90:  ADD             R1, PC; _ZN22CTaskInteriorSitAtDesk12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
52AF92:  LDR             R1, [R1]; CTaskInteriorSitAtDesk::FinishAnimCB(CAnimBlendAssociation *,void *)
52AF94:  POP.W           {R4,R5,R7,LR}
52AF98:  B.W             sub_18C20C
