; =========================================================
; Game Engine Function: _ZN22CTaskInteriorSitAtDesk19StartRandomLoopAnimEP4CPedf
; Address            : 0x52AE24 - 0x52AF04
; =========================================================

52AE24:  PUSH            {R4-R7,LR}
52AE26:  ADD             R7, SP, #0xC
52AE28:  PUSH.W          {R8}
52AE2C:  VPUSH           {D8}
52AE30:  MOV             R4, R0
52AE32:  MOV             R8, R2
52AE34:  LDR             R0, [R4,#0x14]; this
52AE36:  MOV             R6, R1
52AE38:  CBZ             R0, loc_52AE46
52AE3A:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52AE42)
52AE3C:  MOVS            R2, #0; void *
52AE3E:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52AE40:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52AE42:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52AE46:  BLX             rand
52AE4A:  UXTH            R0, R0
52AE4C:  VLDR            S16, =0.000015259
52AE50:  VMOV            S0, R0
52AE54:  VLDR            S2, =100.0
52AE58:  VCVT.F32.S32    S0, S0
52AE5C:  VMUL.F32        S0, S0, S16
52AE60:  VMUL.F32        S0, S0, S2
52AE64:  VCVT.S32.F32    S0, S0
52AE68:  VMOV            R5, S0
52AE6C:  CMP             R5, #0x29 ; ')'
52AE6E:  BLT             loc_52AE9E
52AE70:  BLX             rand
52AE74:  UXTH            R0, R0
52AE76:  VLDR            S2, =5000.0
52AE7A:  VMOV            S0, R0
52AE7E:  MOVW            R1, #0x1B58
52AE82:  MOVW            R2, #0x14B
52AE86:  VCVT.F32.S32    S0, S0
52AE8A:  VMUL.F32        S0, S0, S16
52AE8E:  VMUL.F32        S0, S0, S2
52AE92:  VCVT.S32.F32    S0, S0
52AE96:  VMOV            R0, S0
52AE9A:  ADDS            R5, R0, R1
52AE9C:  B               loc_52AED0
52AE9E:  BLX             rand
52AEA2:  UXTH            R0, R0
52AEA4:  VLDR            S2, =3000.0
52AEA8:  VMOV            S0, R0
52AEAC:  MOV.W           R2, #0x14C
52AEB0:  CMP             R5, #0xA
52AEB2:  VCVT.F32.S32    S0, S0
52AEB6:  VMUL.F32        S0, S0, S16
52AEBA:  VMUL.F32        S0, S0, S2
52AEBE:  VCVT.S32.F32    S0, S0
52AEC2:  IT GT
52AEC4:  MOVGT.W         R2, #0x14A; unsigned int
52AEC8:  VMOV            R0, S0
52AECC:  ADD.W           R5, R0, #0x7D0
52AED0:  LDR             R0, [R6,#0x18]; int
52AED2:  MOVS            R1, #0x55 ; 'U'; int
52AED4:  MOV             R3, R8
52AED6:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52AEDA:  LDR             R1, =(_ZN22CTaskInteriorSitAtDesk12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52AEE4)
52AEDC:  MOV             R2, R4; void *
52AEDE:  STR             R0, [R4,#0x14]
52AEE0:  ADD             R1, PC; _ZN22CTaskInteriorSitAtDesk12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
52AEE2:  LDR             R1, [R1]; CTaskInteriorSitAtDesk::FinishAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52AEE4:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52AEE8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52AEF0)
52AEEA:  MOVS            R1, #1
52AEEC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52AEEE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
52AEF0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
52AEF2:  STRB.W          R1, [R4,#0x30]
52AEF6:  STRD.W          R0, R5, [R4,#0x28]
52AEFA:  VPOP            {D8}
52AEFE:  POP.W           {R8}
52AF02:  POP             {R4-R7,PC}
