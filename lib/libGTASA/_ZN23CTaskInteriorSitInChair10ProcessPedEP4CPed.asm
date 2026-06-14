; =========================================================
; Game Engine Function: _ZN23CTaskInteriorSitInChair10ProcessPedEP4CPed
; Address            : 0x529D04 - 0x52A1A0
; =========================================================

529D04:  PUSH            {R4-R7,LR}
529D06:  ADD             R7, SP, #0xC
529D08:  PUSH.W          {R8,R9,R11}
529D0C:  VPUSH           {D8}
529D10:  SUB             SP, SP, #0x38; int
529D12:  MOV             R5, R0
529D14:  MOV             R4, R1
529D16:  LDR             R0, [R5,#0x14]
529D18:  MOVS            R1, #1
529D1A:  CMP             R0, #0
529D1C:  ITE NE
529D1E:  LDRSHNE.W       R6, [R0,#0x2C]
529D22:  MOVEQ.W         R6, #0xFFFFFFFF
529D26:  MOV             R0, R4
529D28:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
529D2C:  LDRB.W          R0, [R5,#0x29]
529D30:  CBZ             R0, loc_529D3E
529D32:  LDR             R0, [R4,#0x18]
529D34:  MOV.W           R1, #0x158
529D38:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
529D3C:  CBZ             R0, loc_529D76
529D3E:  LDRB.W          R0, [R5,#0x2A]
529D42:  CMP             R0, #0
529D44:  BEQ             loc_529DC6
529D46:  LDR.W           R0, =(g_interiorMan_ptr - 0x529D50)
529D4A:  MOVS            R1, #0; int
529D4C:  ADD             R0, PC; g_interiorMan_ptr
529D4E:  LDR             R0, [R0]; g_interiorMan ; this
529D50:  BLX             j__ZN17InteriorManager_c14AreAnimsLoadedEi; InteriorManager_c::AreAnimsLoaded(int)
529D54:  CBZ             R0, loc_529D76
529D56:  MOVW            R0, #0x159
529D5A:  CMP             R6, R0
529D5C:  BEQ             loc_529D7A
529D5E:  CMP.W           R6, #0x158
529D62:  BEQ             loc_529DBC
529D64:  MOVW            R0, #0x157
529D68:  CMP             R6, R0
529D6A:  ITTT EQ
529D6C:  LDREQ           R0, [R5,#0x14]
529D6E:  MOVEQ.W         R1, #0xC1000000
529D72:  STREQ           R1, [R0,#0x1C]
529D74:  B               loc_529DC6
529D76:  MOVS            R6, #1
529D78:  B               loc_52A172
529D7A:  LDRB.W          R0, [R5,#0x28]
529D7E:  CBNZ            R0, loc_529DC6
529D80:  LDR.W           R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x529D8E)
529D84:  MOVS            R2, #0; void *
529D86:  LDR             R0, [R5,#0x14]; this
529D88:  MOVS            R6, #0
529D8A:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
529D8C:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
529D8E:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
529D92:  LDR             R0, [R4,#0x18]; int
529D94:  MOVS            R3, #0x447A0000
529D9A:  MOVS            R1, #0x54 ; 'T'; int
529D9C:  MOV.W           R2, #0x158; unsigned int
529DA0:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
529DA4:  LDR.W           R1, =(_ZN23CTaskInteriorSitInChair12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x529DB0)
529DA8:  MOV             R2, R5; void *
529DAA:  STR             R0, [R5,#0x14]
529DAC:  ADD             R1, PC; _ZN23CTaskInteriorSitInChair12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
529DAE:  LDR             R1, [R1]; CTaskInteriorSitInChair::FinishAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
529DB0:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
529DB4:  MOVS            R0, #1
529DB6:  STRB.W          R0, [R5,#0x28]
529DBA:  B               loc_52A172
529DBC:  LDR             R0, [R5,#0x14]
529DBE:  MOVS            R1, #0x40400000
529DC4:  STR             R1, [R0,#0x24]
529DC6:  LDR             R0, [R5,#0x14]
529DC8:  CBZ             R0, loc_529E36
529DCA:  LDRB.W          R0, [R5,#0x28]
529DCE:  CMP             R0, #0
529DD0:  BEQ.W           loc_529F0E
529DD4:  LDR             R1, [R4,#0x14]
529DD6:  ADD.W           R0, R1, #0x30 ; '0'
529DDA:  CMP             R1, #0
529DDC:  IT EQ
529DDE:  ADDEQ           R0, R4, #4
529DE0:  CMP.W           R6, #0x158
529DE4:  LDR.W           R8, [R0,#8]
529DE8:  BEQ             loc_529E90
529DEA:  MOVW            R2, #0x159
529DEE:  CMP             R6, R2
529DF0:  BNE             loc_529EA2
529DF2:  LDR.W           R2, =(_ZN13CCarEnterExit24ms_vecPedChairAnimOffsetE_ptr - 0x529DFC)
529DF6:  ADD             R0, SP, #0x58+var_2C
529DF8:  ADD             R2, PC; _ZN13CCarEnterExit24ms_vecPedChairAnimOffsetE_ptr
529DFA:  LDR             R2, [R2]; CCarEnterExit::ms_vecPedChairAnimOffset ...
529DFC:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
529E00:  ADDW            R0, R4, #0x55C
529E04:  LDRD.W          R6, R9, [SP,#0x58+var_2C]
529E08:  VLDR            S0, =3.1416
529E0C:  VLDR            S2, [R0]
529E10:  VADD.F32        S0, S2, S0
529E14:  VMOV            R0, S0; this
529E18:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
529E1C:  MOV             R1, R0
529E1E:  LDR             R0, [R4,#0x14]; this
529E20:  VMOV            S0, R1; x
529E24:  STR.W           R1, [R4,#0x55C]
529E28:  CMP             R0, #0
529E2A:  STR.W           R1, [R4,#0x560]
529E2E:  BEQ             loc_529EF8
529E30:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
529E34:  B               loc_529EA6
529E36:  LDR             R0, =(g_interiorMan_ptr - 0x529E3E)
529E38:  MOVS            R1, #0; int
529E3A:  ADD             R0, PC; g_interiorMan_ptr
529E3C:  LDR             R0, [R0]; g_interiorMan ; this
529E3E:  BLX             j__ZN17InteriorManager_c14AreAnimsLoadedEi; InteriorManager_c::AreAnimsLoaded(int)
529E42:  CMP             R0, #0
529E44:  BEQ.W           loc_52A060
529E48:  LDR             R0, [R5,#0x18]
529E4A:  MOVW            R1, #0x157
529E4E:  CMP             R0, R1
529E50:  BEQ             loc_529EB8
529E52:  ADDS            R0, #1
529E54:  BNE.W           loc_52A060
529E58:  LDRB            R0, [R5,#0x10]
529E5A:  CMP             R0, #0
529E5C:  BEQ.W           loc_52A180
529E60:  LDR             R0, [R5,#8]
529E62:  CMP             R0, #0
529E64:  BLT             loc_529E78
529E66:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x529E6E)
529E68:  MOVS            R2, #1
529E6A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
529E6C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
529E6E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
529E70:  STRB.W          R2, [R5,#0x24]
529E74:  STRD.W          R1, R0, [R5,#0x1C]
529E78:  LDR             R0, [R4,#0x18]; int
529E7A:  MOVS            R3, #0x447A0000
529E80:  MOVS            R1, #0x54 ; 'T'; int
529E82:  MOVW            R2, #0x159; unsigned int
529E86:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
529E8A:  LDR             R1, =(_ZN23CTaskInteriorSitInChair12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x529E90)
529E8C:  ADD             R1, PC; _ZN23CTaskInteriorSitInChair12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
529E8E:  B               loc_529EE6
529E90:  LDR             R2, =(_ZN13CCarEnterExit24ms_vecPedChairAnimOffsetE_ptr - 0x529E98)
529E92:  ADD             R0, SP, #0x58+var_2C
529E94:  ADD             R2, PC; _ZN13CCarEnterExit24ms_vecPedChairAnimOffsetE_ptr
529E96:  LDR             R2, [R2]; CCarEnterExit::ms_vecPedChairAnimOffset ...
529E98:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
529E9C:  LDRD.W          R6, R9, [SP,#0x58+var_2C]
529EA0:  B               loc_529EA6
529EA2:  LDRD.W          R6, R9, [R0]
529EA6:  LDR             R0, [R4,#0x14]
529EA8:  CBZ             R0, loc_529EFC
529EAA:  STR             R6, [R0,#0x30]
529EAC:  LDR             R0, [R4,#0x14]
529EAE:  STR.W           R9, [R0,#0x34]
529EB2:  LDR             R0, [R4,#0x14]
529EB4:  ADDS            R0, #0x38 ; '8'
529EB6:  B               loc_529F04
529EB8:  LDR             R0, [R5,#8]
529EBA:  CMP             R0, #0
529EBC:  BLT             loc_529ED0
529EBE:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x529EC6)
529EC0:  MOVS            R2, #1
529EC2:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
529EC4:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
529EC6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
529EC8:  STRB.W          R2, [R5,#0x24]
529ECC:  STRD.W          R1, R0, [R5,#0x1C]
529ED0:  LDR             R0, [R4,#0x18]; int
529ED2:  MOVS            R3, #0x447A0000
529ED8:  MOVS            R1, #0x54 ; 'T'; int
529EDA:  MOVW            R2, #0x159; unsigned int
529EDE:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
529EE2:  LDR             R1, =(_ZN23CTaskInteriorSitInChair12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x529EE8)
529EE4:  ADD             R1, PC; _ZN23CTaskInteriorSitInChair12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
529EE6:  LDR             R1, [R1]; CTaskInteriorSitInChair::FinishAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
529EE8:  MOV             R2, R5; void *
529EEA:  STR             R0, [R5,#0x14]
529EEC:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
529EF0:  MOVS            R0, #1
529EF2:  STRB.W          R0, [R5,#0x28]
529EF6:  B               loc_52A060
529EF8:  VSTR            S0, [R4,#0x10]
529EFC:  ADD.W           R0, R4, #0xC
529F00:  STRD.W          R6, R9, [R4,#4]
529F04:  STR.W           R8, [R0]
529F08:  MOVS            R0, #0
529F0A:  STRB.W          R0, [R5,#0x28]
529F0E:  LDRB.W          R0, [R5,#0x24]
529F12:  CBZ             R0, loc_529F7C
529F14:  LDRB.W          R0, [R5,#0x25]
529F18:  CBZ             R0, loc_529F2E
529F1A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x529F22)
529F1C:  MOVS            R1, #0
529F1E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
529F20:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
529F22:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
529F24:  STRB.W          R1, [R5,#0x25]
529F28:  STR             R0, [R5,#0x1C]
529F2A:  MOV             R1, R0
529F2C:  B               loc_529F38
529F2E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x529F36)
529F30:  LDR             R1, [R5,#0x1C]
529F32:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
529F34:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
529F36:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
529F38:  LDR             R2, [R5,#0x20]
529F3A:  ADD             R1, R2
529F3C:  CMP             R1, R0
529F3E:  BHI             loc_529F7C
529F40:  LDR             R0, [R5,#0x14]; this
529F42:  LDRH            R1, [R0,#0x2C]
529F44:  CMP.W           R1, #0x158
529F48:  BEQ             loc_529F7C
529F4A:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x529F52)
529F4C:  MOVS            R2, #0; void *
529F4E:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
529F50:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
529F52:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
529F56:  LDR             R0, [R4,#0x18]; int
529F58:  MOVS            R3, #0x447A0000
529F5E:  MOVS            R1, #0x54 ; 'T'; int
529F60:  MOV.W           R2, #0x158; unsigned int
529F64:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
529F68:  LDR             R1, =(_ZN23CTaskInteriorSitInChair12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x529F72)
529F6A:  MOV             R2, R5; void *
529F6C:  STR             R0, [R5,#0x14]
529F6E:  ADD             R1, PC; _ZN23CTaskInteriorSitInChair12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
529F70:  LDR             R1, [R1]; CTaskInteriorSitInChair::FinishAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
529F72:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
529F76:  MOVS            R0, #1
529F78:  STRB.W          R0, [R5,#0x28]
529F7C:  LDR             R0, [R5,#0x14]
529F7E:  MOVW            R2, #0x157
529F82:  LDRH            R1, [R0,#0x2C]
529F84:  CMP             R1, R2
529F86:  BNE             loc_52A062
529F88:  LDR             R1, [R5,#0xC]
529F8A:  MOVS            R3, #0; float
529F8C:  LDR             R0, [R4,#0x14]
529F8E:  ADD.W           R2, R0, #0x30 ; '0'
529F92:  CMP             R0, #0
529F94:  VLDR            S0, [R1,#4]
529F98:  VLDR            S2, [R1,#8]
529F9C:  VLDR            S4, [R1,#0xC]
529FA0:  IT EQ
529FA2:  ADDEQ           R2, R4, #4
529FA4:  VLDR            S6, [R2]
529FA8:  VLDR            S8, [R2,#4]
529FAC:  VSUB.F32        S0, S0, S6
529FB0:  VLDR            S10, [R2,#8]
529FB4:  VSUB.F32        S2, S2, S8
529FB8:  VLDR            S14, [R0,#0x10]
529FBC:  VSUB.F32        S4, S4, S10
529FC0:  VLDR            S1, [R0,#0x14]
529FC4:  VLDR            S12, [R0,#8]
529FC8:  MOVS            R2, #0; float
529FCA:  VLDR            S3, [R0,#0x18]
529FCE:  VMUL.F32        S8, S0, S0
529FD2:  VMUL.F32        S6, S2, S2
529FD6:  VMUL.F32        S10, S4, S4
529FDA:  VADD.F32        S6, S8, S6
529FDE:  VMOV.F32        S8, #1.0
529FE2:  VADD.F32        S6, S6, S10
529FE6:  VLDR            S10, =0.02
529FEA:  VSQRT.F32       S6, S6
529FEE:  VDIV.F32        S8, S8, S6
529FF2:  VMUL.F32        S2, S2, S8
529FF6:  VMUL.F32        S0, S0, S8
529FFA:  VMIN.F32        D3, D3, D5
529FFE:  VLDR            S10, [R0,#4]
52A002:  VMUL.F32        S4, S4, S8
52A006:  VLDR            S8, [R0]
52A00A:  ADDW            R0, R4, #0x4E4
52A00E:  VMUL.F32        S2, S2, S6
52A012:  VMUL.F32        S0, S0, S6
52A016:  VMUL.F32        S4, S4, S6
52A01A:  VMUL.F32        S6, S10, S2
52A01E:  VMUL.F32        S8, S8, S0
52A022:  VMUL.F32        S2, S1, S2
52A026:  VMUL.F32        S0, S14, S0
52A02A:  VMUL.F32        S10, S12, S4
52A02E:  VMUL.F32        S4, S4, S3
52A032:  VADD.F32        S6, S8, S6
52A036:  VADD.F32        S0, S0, S2
52A03A:  VADD.F32        S2, S10, S6
52A03E:  VADD.F32        S0, S4, S0
52A042:  VSTR            S2, [R0]
52A046:  ADD.W           R0, R4, #0x4E8
52A04A:  VSTR            S0, [R0]
52A04E:  LDR             R1, [R5,#0xC]
52A050:  LDRD.W          R0, R1, [R1,#0x10]; float
52A054:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
52A058:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
52A05C:  STR.W           R0, [R4,#0x560]
52A060:  LDR             R0, [R5,#0x14]
52A062:  CMP             R0, #0
52A064:  BEQ             loc_52A154
52A066:  LDRH            R0, [R0,#0x2C]
52A068:  MOVW            R1, #0x159
52A06C:  CMP             R0, R1
52A06E:  BNE             loc_52A154
52A070:  LDR             R0, =(g_ikChainMan_ptr - 0x52A078)
52A072:  MOV             R1, R4; CPed *
52A074:  ADD             R0, PC; g_ikChainMan_ptr
52A076:  LDR             R0, [R0]; g_ikChainMan ; this
52A078:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
52A07C:  CMP             R0, #0
52A07E:  BNE             loc_52A170
52A080:  BLX             rand
52A084:  UXTH            R0, R0
52A086:  VLDR            S16, =0.000015259
52A08A:  VMOV            S0, R0
52A08E:  VLDR            S2, =1000.0
52A092:  VCVT.F32.S32    S0, S0
52A096:  VMUL.F32        S0, S0, S16
52A09A:  VMUL.F32        S0, S0, S2
52A09E:  VCVT.S32.F32    S0, S0
52A0A2:  VMOV            R0, S0
52A0A6:  CMP.W           R0, #0x3D4
52A0AA:  BLE             loc_52A170
52A0AC:  LDR             R0, =(g_interiorMan_ptr - 0x52A0B4)
52A0AE:  MOV             R1, R4; CPed *
52A0B0:  ADD             R0, PC; g_interiorMan_ptr
52A0B2:  LDR             R0, [R0]; g_interiorMan ; this
52A0B4:  BLX             j__ZN17InteriorManager_c20GetPedsInteriorGroupEP4CPed; InteriorManager_c::GetPedsInteriorGroup(CPed *)
52A0B8:  MOVS            R6, #0
52A0BA:  CMP             R0, #0
52A0BC:  BEQ             loc_52A172
52A0BE:  STRD.W          R6, R6, [SP,#0x58+var_30]
52A0C2:  MOVS            R5, #0
52A0C4:  LDR             R1, [R4,#0x14]
52A0C6:  ADD.W           LR, SP, #0x58+var_30
52A0CA:  MOVT            R5, #0x4120
52A0CE:  ADD.W           R12, SP, #0x58+var_34
52A0D2:  ADD.W           R6, R1, #0x30 ; '0'
52A0D6:  CMP             R1, #0
52A0D8:  IT EQ
52A0DA:  ADDEQ           R6, R4, #4
52A0DC:  LDRD.W          R2, R3, [R6]; int
52A0E0:  LDR             R1, [R6,#8]
52A0E2:  ADD             R6, SP, #0x58+var_2C
52A0E4:  STMEA.W         SP, {R1,R5,R6,LR}
52A0E8:  MOVS            R1, #0; int
52A0EA:  STR.W           R12, [SP,#0x58+var_48]; float
52A0EE:  BLX             j__ZN15InteriorGroup_c23FindClosestInteriorInfoEi7CVectorfPP14InteriorInfo_tPP10Interior_cPf; InteriorGroup_c::FindClosestInteriorInfo(int,CVector,float,InteriorInfo_t **,Interior_c **,float *)
52A0F2:  LDR             R0, [SP,#0x58+var_2C]
52A0F4:  CBZ             R0, loc_52A170
52A0F6:  BLX             rand
52A0FA:  UXTH            R0, R0
52A0FC:  VLDR            S2, =10000.0
52A100:  VMOV            S0, R0
52A104:  MOVS            R2, #0
52A106:  MOVS            R3, #3
52A108:  LDR             R0, =(g_ikChainMan_ptr - 0x52A116)
52A10A:  VCVT.F32.S32    S0, S0
52A10E:  LDR             R1, [SP,#0x58+var_2C]
52A110:  STR             R2, [SP,#0x58+var_3C]; int
52A112:  ADD             R0, PC; g_ikChainMan_ptr
52A114:  STR             R3, [SP,#0x58+var_40]; int
52A116:  MOV.W           R3, #0x1F4
52A11A:  STR             R3, [SP,#0x58+var_44]; int
52A11C:  MOV.W           R3, #0x3E800000
52A120:  STRD.W          R2, R3, [SP,#0x58+var_4C]; int
52A124:  ADDS            R1, #4
52A126:  STR             R1, [SP,#0x58+var_50]; int
52A128:  MOV.W           R1, #0xFFFFFFFF
52A12C:  LDR             R0, [R0]; g_ikChainMan ; int
52A12E:  MOVW            R2, #0x2710
52A132:  VMUL.F32        S0, S0, S16
52A136:  MOVS            R3, #0; int
52A138:  VMUL.F32        S0, S0, S2
52A13C:  VCVT.S32.F32    S0, S0
52A140:  STR             R1, [SP,#0x58+var_54]; int
52A142:  VMOV            R1, S0
52A146:  ADD             R2, R1
52A148:  ADR             R1, aTasksitinchair; "TaskSitInChair"
52A14A:  STR             R2, [SP,#0x58+var_58]; int
52A14C:  MOV             R2, R4; CPed *
52A14E:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
52A152:  B               loc_52A170
52A154:  LDR             R0, =(g_ikChainMan_ptr - 0x52A15C)
52A156:  MOV             R1, R4; CPed *
52A158:  ADD             R0, PC; g_ikChainMan_ptr
52A15A:  LDR             R0, [R0]; g_ikChainMan ; this
52A15C:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
52A160:  CBZ             R0, loc_52A170
52A162:  LDR             R0, =(g_ikChainMan_ptr - 0x52A16C)
52A164:  MOV             R1, R4; CPed *
52A166:  MOVS            R2, #0xFA; int
52A168:  ADD             R0, PC; g_ikChainMan_ptr
52A16A:  LDR             R0, [R0]; g_ikChainMan ; this
52A16C:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
52A170:  MOVS            R6, #0
52A172:  MOV             R0, R6
52A174:  ADD             SP, SP, #0x38 ; '8'
52A176:  VPOP            {D8}
52A17A:  POP.W           {R8,R9,R11}
52A17E:  POP             {R4-R7,PC}
52A180:  LDR             R0, [R4,#0x18]; int
52A182:  MOVS            R1, #0x54 ; 'T'; int
52A184:  MOVW            R2, #0x157; unsigned int
52A188:  MOV.W           R3, #0x40800000
52A18C:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52A190:  LDR             R1, =(_ZN23CTaskInteriorSitInChair12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52A19A)
52A192:  MOV             R2, R5; void *
52A194:  STR             R0, [R5,#0x14]
52A196:  ADD             R1, PC; _ZN23CTaskInteriorSitInChair12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
52A198:  LDR             R1, [R1]; CTaskInteriorSitInChair::FinishAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52A19A:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52A19E:  B               loc_52A060
