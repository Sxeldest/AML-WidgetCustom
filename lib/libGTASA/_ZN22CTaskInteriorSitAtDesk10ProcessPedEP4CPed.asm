; =========================================================
; Game Engine Function: _ZN22CTaskInteriorSitAtDesk10ProcessPedEP4CPed
; Address            : 0x52A93C - 0x52AD94
; =========================================================

52A93C:  PUSH            {R4-R7,LR}
52A93E:  ADD             R7, SP, #0xC
52A940:  PUSH.W          {R8}
52A944:  SUB             SP, SP, #0x18; float
52A946:  MOV             R4, R0
52A948:  MOV             R5, R1
52A94A:  LDR             R0, [R4,#0x14]
52A94C:  MOVS            R1, #1
52A94E:  CMP             R0, #0
52A950:  ITE NE
52A952:  LDRSHNE.W       R6, [R0,#0x2C]
52A956:  MOVEQ.W         R6, #0xFFFFFFFF
52A95A:  MOV             R0, R5
52A95C:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
52A960:  LDRB.W          R0, [R4,#0x35]
52A964:  CBZ             R0, loc_52A972
52A966:  LDR             R0, [R5,#0x18]
52A968:  MOVW            R1, #0x149
52A96C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52A970:  CBZ             R0, loc_52A99A
52A972:  LDRB.W          R0, [R4,#0x36]
52A976:  CMP             R0, #0
52A978:  BEQ             loc_52AA30
52A97A:  LDR.W           R0, =(g_interiorMan_ptr - 0x52A984)
52A97E:  MOVS            R1, #2; int
52A980:  ADD             R0, PC; g_interiorMan_ptr
52A982:  LDR             R0, [R0]; g_interiorMan ; this
52A984:  BLX             j__ZN17InteriorManager_c14AreAnimsLoadedEi; InteriorManager_c::AreAnimsLoaded(int)
52A988:  CBZ             R0, loc_52A9CA
52A98A:  CMP.W           R6, #0x148
52A98E:  BNE             loc_52A9CE
52A990:  LDR             R0, [R4,#0x14]
52A992:  MOV.W           R1, #0xC1000000
52A996:  STR             R1, [R0,#0x1C]
52A998:  B               loc_52AA30
52A99A:  ADDW            R0, R5, #0x55C
52A99E:  VLDR            S0, =3.1416
52A9A2:  VLDR            S2, [R0]
52A9A6:  VADD.F32        S0, S2, S0
52A9AA:  VMOV            R0, S0; this
52A9AE:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
52A9B2:  MOV             R1, R0
52A9B4:  LDR             R0, [R5,#0x14]; this
52A9B6:  VMOV            S0, R1; x
52A9BA:  STR.W           R1, [R5,#0x55C]
52A9BE:  CMP             R0, #0
52A9C0:  STR.W           R1, [R5,#0x560]
52A9C4:  BEQ             loc_52AA18
52A9C6:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
52A9CA:  MOVS            R6, #1
52A9CC:  B               loc_52AD8A
52A9CE:  SUB.W           R0, R6, #0x14A
52A9D2:  CMP             R0, #6
52A9D4:  BHI             loc_52AA20
52A9D6:  LDRB.W          R0, [R4,#0x34]
52A9DA:  CBNZ            R0, loc_52AA30
52A9DC:  LDR.W           R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52A9EA)
52A9E0:  MOVS            R2, #0; void *
52A9E2:  LDR             R0, [R4,#0x14]; this
52A9E4:  MOVS            R6, #0
52A9E6:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52A9E8:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52A9EA:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52A9EE:  LDR             R0, [R5,#0x18]; int
52A9F0:  MOVS            R3, #0x447A0000
52A9F6:  MOVS            R1, #0x55 ; 'U'; int
52A9F8:  MOVW            R2, #0x149; unsigned int
52A9FC:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52AA00:  LDR.W           R1, =(_ZN22CTaskInteriorSitAtDesk12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52AA0C)
52AA04:  MOV             R2, R4; void *
52AA06:  STR             R0, [R4,#0x14]
52AA08:  ADD             R1, PC; _ZN22CTaskInteriorSitAtDesk12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
52AA0A:  LDR             R1, [R1]; CTaskInteriorSitAtDesk::FinishAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52AA0C:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52AA10:  MOVS            R0, #1
52AA12:  STRB.W          R0, [R4,#0x34]
52AA16:  B               loc_52AD8A
52AA18:  VSTR            S0, [R5,#0x10]
52AA1C:  MOVS            R6, #1
52AA1E:  B               loc_52AD8A
52AA20:  MOVW            R0, #0x149
52AA24:  CMP             R6, R0
52AA26:  ITTT EQ
52AA28:  LDREQ           R0, [R4,#0x14]
52AA2A:  MOVEQ.W         R1, #0x40000000
52AA2E:  STREQ           R1, [R0,#0x24]
52AA30:  LDR             R0, [R4,#0x14]
52AA32:  CBZ             R0, loc_52AA5E
52AA34:  LDRB.W          R0, [R4,#0x34]
52AA38:  CMP             R0, #0
52AA3A:  BEQ             loc_52AAFC
52AA3C:  LDR             R1, [R5,#0x14]
52AA3E:  SUB.W           R0, R6, #0x14A
52AA42:  ADD.W           R2, R1, #0x30 ; '0'
52AA46:  CMP             R1, #0
52AA48:  IT EQ
52AA4A:  ADDEQ           R2, R5, #4
52AA4C:  CMP             R0, #2
52AA4E:  LDR.W           R8, [R2,#8]
52AA52:  BHI             loc_52AA96
52AA54:  LDR             R2, =(_ZN13CCarEnterExit23ms_vecPedDeskAnimOffsetE_ptr - 0x52AA5C)
52AA56:  ADD             R0, SP, #0x28+var_1C
52AA58:  ADD             R2, PC; _ZN13CCarEnterExit23ms_vecPedDeskAnimOffsetE_ptr
52AA5A:  LDR             R2, [R2]; CCarEnterExit::ms_vecPedDeskAnimOffset ...
52AA5C:  B               loc_52AACC
52AA5E:  LDR             R0, =(g_interiorMan_ptr - 0x52AA66)
52AA60:  MOVS            R1, #2; int
52AA62:  ADD             R0, PC; g_interiorMan_ptr
52AA64:  LDR             R0, [R0]; g_interiorMan ; this
52AA66:  BLX             j__ZN17InteriorManager_c14AreAnimsLoadedEi; InteriorManager_c::AreAnimsLoaded(int)
52AA6A:  CMP             R0, #0
52AA6C:  BEQ.W           loc_52AD88
52AA70:  LDR             R0, [R4,#0x18]
52AA72:  CMP.W           R0, #0x148
52AA76:  BEQ.W           loc_52ABC4
52AA7A:  ADDS            R1, R0, #1
52AA7C:  BNE.W           loc_52ABF4
52AA80:  LDRB            R0, [R4,#0x10]
52AA82:  CMP             R0, #0
52AA84:  BEQ.W           loc_52AC56
52AA88:  LDR             R0, [R4,#8]
52AA8A:  CMP             R0, #0
52AA8C:  BLT.W           loc_52ABDC
52AA90:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52AA96)
52AA92:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52AA94:  B               loc_52ABCE
52AA96:  MOVW            R0, #0x149
52AA9A:  CMP             R6, R0
52AA9C:  BNE             loc_52AAD6
52AA9E:  LDR             R0, =(_ZN13CCarEnterExit23ms_vecPedDeskAnimOffsetE_ptr - 0x52AAA6)
52AAA0:  MOV             R2, SP
52AAA2:  ADD             R0, PC; _ZN13CCarEnterExit23ms_vecPedDeskAnimOffsetE_ptr
52AAA4:  LDR             R0, [R0]; CCarEnterExit::ms_vecPedDeskAnimOffset ...
52AAA6:  VLDR            S0, [R0]
52AAAA:  VLDR            S2, [R0,#4]
52AAAE:  VLDR            S4, [R0,#8]
52AAB2:  VNEG.F32        S0, S0
52AAB6:  VNEG.F32        S2, S2
52AABA:  ADD             R0, SP, #0x28+var_1C
52AABC:  VNEG.F32        S4, S4
52AAC0:  VSTR            S0, [SP,#0x28+var_28]
52AAC4:  VSTR            S2, [SP,#0x28+var_24]
52AAC8:  VSTR            S4, [SP,#0x28+var_20]
52AACC:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
52AAD0:  LDR             R0, [SP,#0x28+var_1C]
52AAD2:  LDR             R1, [SP,#0x28+var_18]
52AAD4:  B               loc_52AADA
52AAD6:  LDRD.W          R0, R1, [R2]
52AADA:  LDR             R2, [R5,#0x14]
52AADC:  CBZ             R2, loc_52AAEA
52AADE:  STR             R0, [R2,#0x30]
52AAE0:  LDR             R0, [R5,#0x14]
52AAE2:  STR             R1, [R0,#0x34]
52AAE4:  LDR             R0, [R5,#0x14]
52AAE6:  ADDS            R0, #0x38 ; '8'
52AAE8:  B               loc_52AAF2
52AAEA:  STRD.W          R0, R1, [R5,#4]
52AAEE:  ADD.W           R0, R5, #0xC
52AAF2:  STR.W           R8, [R0]
52AAF6:  MOVS            R0, #0
52AAF8:  STRB.W          R0, [R4,#0x34]
52AAFC:  LDRB.W          R0, [R4,#0x24]
52AB00:  CBZ             R0, loc_52AB2E
52AB02:  LDRB.W          R0, [R4,#0x25]
52AB06:  CBZ             R0, loc_52AB1C
52AB08:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52AB10)
52AB0A:  MOVS            R1, #0
52AB0C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52AB0E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
52AB10:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
52AB12:  STRB.W          R1, [R4,#0x25]
52AB16:  STR             R0, [R4,#0x1C]
52AB18:  MOV             R1, R0
52AB1A:  B               loc_52AB26
52AB1C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52AB24)
52AB1E:  LDR             R1, [R4,#0x1C]
52AB20:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52AB22:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
52AB24:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
52AB26:  LDR             R2, [R4,#0x20]
52AB28:  ADD             R1, R2
52AB2A:  CMP             R1, R0
52AB2C:  BLS             loc_52AB52
52AB2E:  LDRB.W          R0, [R4,#0x30]
52AB32:  CMP             R0, #0
52AB34:  BEQ.W           loc_52ACA2
52AB38:  LDRB.W          R0, [R4,#0x31]
52AB3C:  CBZ             R0, loc_52AB94
52AB3E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52AB46)
52AB40:  MOVS            R1, #0
52AB42:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52AB44:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
52AB46:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
52AB48:  STRB.W          R1, [R4,#0x31]
52AB4C:  STR             R0, [R4,#0x28]
52AB4E:  MOV             R1, R0
52AB50:  B               loc_52AB9E
52AB52:  LDR             R0, [R4,#0x14]; this
52AB54:  MOVW            R2, #0x149
52AB58:  LDRH            R1, [R0,#0x2C]
52AB5A:  CMP             R1, R2
52AB5C:  BEQ.W           loc_52ACA2
52AB60:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52AB68)
52AB62:  MOVS            R2, #0; void *
52AB64:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52AB66:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52AB68:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52AB6C:  LDR             R0, [R5,#0x18]; int
52AB6E:  MOVS            R3, #0x447A0000
52AB74:  MOVS            R1, #0x55 ; 'U'; int
52AB76:  MOVW            R2, #0x149; unsigned int
52AB7A:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52AB7E:  LDR             R1, =(_ZN22CTaskInteriorSitAtDesk12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52AB88)
52AB80:  MOV             R2, R4; void *
52AB82:  STR             R0, [R4,#0x14]
52AB84:  ADD             R1, PC; _ZN22CTaskInteriorSitAtDesk12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
52AB86:  LDR             R1, [R1]; CTaskInteriorSitAtDesk::FinishAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52AB88:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52AB8C:  MOVS            R0, #1
52AB8E:  STRB.W          R0, [R4,#0x34]
52AB92:  B               loc_52ACA2
52AB94:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52AB9C)
52AB96:  LDR             R1, [R4,#0x28]
52AB98:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52AB9A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
52AB9C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
52AB9E:  LDR             R2, [R4,#0x2C]
52ABA0:  ADD             R1, R2
52ABA2:  CMP             R1, R0
52ABA4:  BHI             loc_52ACA2
52ABA6:  MOVS            R0, #0
52ABA8:  STRB.W          R0, [R4,#0x30]
52ABAC:  BLX             rand
52ABB0:  TST.W           R0, #1
52ABB4:  BNE             loc_52AC0C
52ABB6:  MOV             R0, R4; this
52ABB8:  MOV             R1, R5; CPed *
52ABBA:  MOV.W           R2, #0x40800000; float
52ABBE:  BLX             j__ZN22CTaskInteriorSitAtDesk19StartRandomLoopAnimEP4CPedf; CTaskInteriorSitAtDesk::StartRandomLoopAnim(CPed *,float)
52ABC2:  B               loc_52ACA2
52ABC4:  LDR             R0, [R4,#8]
52ABC6:  CMP             R0, #0
52ABC8:  BLT             loc_52ABDC
52ABCA:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52ABD0)
52ABCC:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52ABCE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
52ABD0:  MOVS            R2, #1
52ABD2:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
52ABD4:  STRB.W          R2, [R4,#0x24]
52ABD8:  STR             R1, [R4,#0x1C]
52ABDA:  STR             R0, [R4,#0x20]
52ABDC:  MOVS            R2, #0
52ABDE:  MOV             R0, R4; this
52ABE0:  MOVT            R2, #0x447A; float
52ABE4:  MOV             R1, R5; CPed *
52ABE6:  BLX             j__ZN22CTaskInteriorSitAtDesk19StartRandomLoopAnimEP4CPedf; CTaskInteriorSitAtDesk::StartRandomLoopAnim(CPed *,float)
52ABEA:  MOVS            R0, #1
52ABEC:  MOVS            R6, #0
52ABEE:  STRB.W          R0, [R4,#0x34]
52ABF2:  B               loc_52AD8A
52ABF4:  SUBW            R0, R0, #0x14D
52ABF8:  CMP             R0, #3
52ABFA:  BHI.W           loc_52AD88
52ABFE:  MOV             R0, R4; this
52AC00:  MOV             R1, R5; CPed *
52AC02:  MOV.W           R2, #0x40800000; float
52AC06:  BLX             j__ZN22CTaskInteriorSitAtDesk19StartRandomLoopAnimEP4CPedf; CTaskInteriorSitAtDesk::StartRandomLoopAnim(CPed *,float)
52AC0A:  B               loc_52AD88
52AC0C:  LDR             R0, [R4,#0x14]; this
52AC0E:  CBZ             R0, loc_52AC1C
52AC10:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52AC18)
52AC12:  MOVS            R2, #0; void *
52AC14:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52AC16:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52AC18:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52AC1C:  BLX             rand
52AC20:  UXTH            R0, R0
52AC22:  VLDR            S2, =0.000015259
52AC26:  VMOV            S0, R0
52AC2A:  VCVT.F32.S32    S0, S0
52AC2E:  VMUL.F32        S0, S0, S2
52AC32:  VLDR            S2, =100.0
52AC36:  VMUL.F32        S0, S0, S2
52AC3A:  VCVT.S32.F32    S0, S0
52AC3E:  VMOV            R0, S0
52AC42:  CMP             R0, #0x3C ; '<'
52AC44:  BLE             loc_52AC4C
52AC46:  MOVW            R2, #0x14F
52AC4A:  B               loc_52AC88
52AC4C:  CMP             R0, #0x23 ; '#'
52AC4E:  BLE             loc_52AC7C
52AC50:  MOV.W           R2, #0x14E
52AC54:  B               loc_52AC88
52AC56:  LDR             R0, [R5,#0x18]; int
52AC58:  MOVS            R1, #0x55 ; 'U'; int
52AC5A:  MOV.W           R2, #0x148; unsigned int
52AC5E:  MOV.W           R3, #0x40800000
52AC62:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52AC66:  LDR             R1, =(_ZN22CTaskInteriorSitAtDesk12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52AC70)
52AC68:  MOV             R2, R4; void *
52AC6A:  STR             R0, [R4,#0x14]
52AC6C:  ADD             R1, PC; _ZN22CTaskInteriorSitAtDesk12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
52AC6E:  LDR             R1, [R1]; CTaskInteriorSitAtDesk::FinishAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52AC70:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52AC74:  B               loc_52AD88
52AC76:  ALIGN 4
52AC78:  DCFS 3.1416
52AC7C:  MOVW            R2, #0x14D
52AC80:  CMP             R0, #0xA
52AC82:  IT GT
52AC84:  MOVGT.W         R2, #0x150; unsigned int
52AC88:  LDR             R0, [R5,#0x18]; int
52AC8A:  MOVS            R1, #0x55 ; 'U'; int
52AC8C:  MOV.W           R3, #0x40800000
52AC90:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52AC94:  LDR             R1, =(_ZN22CTaskInteriorSitAtDesk12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52AC9E)
52AC96:  MOV             R2, R4; void *
52AC98:  STR             R0, [R4,#0x14]
52AC9A:  ADD             R1, PC; _ZN22CTaskInteriorSitAtDesk12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
52AC9C:  LDR             R1, [R1]; CTaskInteriorSitAtDesk::FinishAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52AC9E:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52ACA2:  LDR             R0, [R4,#0x14]
52ACA4:  LDRH            R0, [R0,#0x2C]
52ACA6:  CMP.W           R0, #0x148
52ACAA:  BNE             loc_52AD88
52ACAC:  LDR             R1, [R4,#0xC]
52ACAE:  MOVS            R3, #0; float
52ACB0:  LDR             R0, [R5,#0x14]
52ACB2:  MOVS            R6, #0
52ACB4:  ADD.W           R2, R0, #0x30 ; '0'
52ACB8:  CMP             R0, #0
52ACBA:  VLDR            S0, [R1,#4]
52ACBE:  VLDR            S2, [R1,#8]
52ACC2:  VLDR            S4, [R1,#0xC]
52ACC6:  IT EQ
52ACC8:  ADDEQ           R2, R5, #4
52ACCA:  VLDR            S6, [R2]
52ACCE:  VLDR            S8, [R2,#4]
52ACD2:  VSUB.F32        S0, S0, S6
52ACD6:  VLDR            S10, [R2,#8]
52ACDA:  VSUB.F32        S2, S2, S8
52ACDE:  VLDR            S14, [R0,#0x10]
52ACE2:  VSUB.F32        S4, S4, S10
52ACE6:  VLDR            S1, [R0,#0x14]
52ACEA:  VLDR            S12, [R0,#8]
52ACEE:  MOVS            R2, #0; float
52ACF0:  VLDR            S3, [R0,#0x18]
52ACF4:  VMUL.F32        S8, S0, S0
52ACF8:  VMUL.F32        S6, S2, S2
52ACFC:  VMUL.F32        S10, S4, S4
52AD00:  VADD.F32        S6, S8, S6
52AD04:  VMOV.F32        S8, #1.0
52AD08:  VADD.F32        S6, S6, S10
52AD0C:  VLDR            S10, =0.02
52AD10:  VSQRT.F32       S6, S6
52AD14:  VDIV.F32        S8, S8, S6
52AD18:  VMUL.F32        S2, S2, S8
52AD1C:  VMUL.F32        S0, S0, S8
52AD20:  VMIN.F32        D3, D3, D5
52AD24:  VLDR            S10, [R0,#4]
52AD28:  VMUL.F32        S4, S4, S8
52AD2C:  VLDR            S8, [R0]
52AD30:  ADDW            R0, R5, #0x4E4
52AD34:  VMUL.F32        S2, S2, S6
52AD38:  VMUL.F32        S0, S0, S6
52AD3C:  VMUL.F32        S4, S4, S6
52AD40:  VMUL.F32        S6, S10, S2
52AD44:  VMUL.F32        S8, S8, S0
52AD48:  VMUL.F32        S2, S1, S2
52AD4C:  VMUL.F32        S0, S14, S0
52AD50:  VMUL.F32        S10, S12, S4
52AD54:  VMUL.F32        S4, S4, S3
52AD58:  VADD.F32        S6, S8, S6
52AD5C:  VADD.F32        S0, S0, S2
52AD60:  VADD.F32        S2, S10, S6
52AD64:  VADD.F32        S0, S4, S0
52AD68:  VSTR            S2, [R0]
52AD6C:  ADD.W           R0, R5, #0x4E8
52AD70:  VSTR            S0, [R0]
52AD74:  LDR             R1, [R4,#0xC]
52AD76:  LDRD.W          R0, R1, [R1,#0x10]; float
52AD7A:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
52AD7E:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
52AD82:  STR.W           R0, [R5,#0x560]
52AD86:  B               loc_52AD8A
52AD88:  MOVS            R6, #0
52AD8A:  MOV             R0, R6
52AD8C:  ADD             SP, SP, #0x18
52AD8E:  POP.W           {R8}
52AD92:  POP             {R4-R7,PC}
