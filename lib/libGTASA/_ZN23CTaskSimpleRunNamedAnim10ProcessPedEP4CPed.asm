; =========================================================
; Game Engine Function: _ZN23CTaskSimpleRunNamedAnim10ProcessPedEP4CPed
; Address            : 0x4D6DCC - 0x4D6FB6
; =========================================================

4D6DCC:  PUSH            {R4-R7,LR}
4D6DCE:  ADD             R7, SP, #0xC
4D6DD0:  PUSH.W          {R8}
4D6DD4:  SUB             SP, SP, #0x10
4D6DD6:  MOV             R4, R0
4D6DD8:  MOV             R5, R1
4D6DDA:  LDRB            R0, [R4,#0xC]
4D6DDC:  TST.W           R0, #0x40
4D6DE0:  BEQ             loc_4D6E40
4D6DE2:  MOV             R0, R5; this
4D6DE4:  BLX             j__ZN7CEntity13UpdateRpHAnimEv; CEntity::UpdateRpHAnim(void)
4D6DE8:  LDR             R0, [R5,#0x1C]
4D6DEA:  ADD.W           R2, R4, #0x50 ; 'P'
4D6DEE:  ORR.W           R0, R0, #0x800000
4D6DF2:  STR             R0, [R5,#0x1C]
4D6DF4:  LDR             R1, [R5,#0x14]; CVector *
4D6DF6:  ADD             R0, SP, #0x20+var_1C; CMatrix *
4D6DF8:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
4D6DFC:  LDR             R0, [R5,#0x14]
4D6DFE:  VLDR            S0, [SP,#0x20+var_1C]
4D6E02:  ADD.W           R1, R0, #0x30 ; '0'
4D6E06:  CMP             R0, #0
4D6E08:  IT EQ
4D6E0A:  ADDEQ           R1, R5, #4
4D6E0C:  VLDR            S2, [R1]
4D6E10:  VLDR            S4, [R1,#4]
4D6E14:  VADD.F32        S0, S0, S2
4D6E18:  VLDR            S6, [R1,#8]
4D6E1C:  VSTR            S0, [R1]
4D6E20:  VLDR            S0, [SP,#0x20+var_18]
4D6E24:  VADD.F32        S0, S0, S4
4D6E28:  VSTR            S0, [R1,#4]
4D6E2C:  VLDR            S0, [SP,#0x20+var_14]
4D6E30:  VADD.F32        S0, S0, S6
4D6E34:  VSTR            S0, [R1,#8]
4D6E38:  LDRB            R0, [R4,#0xC]
4D6E3A:  BIC.W           R0, R0, #0x40 ; '@'
4D6E3E:  STRB            R0, [R4,#0xC]
4D6E40:  LSLS            R1, R0, #0x1F
4D6E42:  BNE             loc_4D6E9E
4D6E44:  LDR             R1, [R4,#0x3C]
4D6E46:  CMP             R1, #0
4D6E48:  BEQ.W           loc_4D6F9C
4D6E4C:  LDR             R1, [R1,#4]
4D6E4E:  CMP             R1, #0
4D6E50:  BEQ.W           loc_4D6F9C
4D6E54:  LSLS            R0, R0, #0x1E
4D6E56:  BPL             loc_4D6E78
4D6E58:  LDR             R0, [R4,#0x5C]
4D6E5A:  AND.W           R0, R0, #0xA
4D6E5E:  CMP             R0, #8
4D6E60:  BEQ             loc_4D6E78
4D6E62:  LDR.W           R0, [R5,#0x440]
4D6E66:  MOVS            R1, #1; bool
4D6E68:  ADDS            R0, #0x68 ; 'h'; this
4D6E6A:  BLX             j__ZN11CEventGroup19RemoveInvalidEventsEb; CEventGroup::RemoveInvalidEvents(bool)
4D6E6E:  LDR.W           R0, [R5,#0x440]
4D6E72:  ADDS            R0, #0x68 ; 'h'; this
4D6E74:  BLX             j__ZN11CEventGroup10ReorganiseEv; CEventGroup::Reorganise(void)
4D6E78:  LDRB.W          R0, [R4,#0x4C]
4D6E7C:  CMP             R0, #0
4D6E7E:  BEQ.W           loc_4D6F84
4D6E82:  LDRB.W          R0, [R4,#0x4D]
4D6E86:  CMP             R0, #0
4D6E88:  BEQ             loc_4D6F3C
4D6E8A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4D6E92)
4D6E8C:  MOVS            R1, #0
4D6E8E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4D6E90:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4D6E92:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4D6E94:  STRB.W          R1, [R4,#0x4D]
4D6E98:  STR             R0, [R4,#0x44]
4D6E9A:  MOV             R1, R0
4D6E9C:  B               loc_4D6F46
4D6E9E:  LSLS            R0, R0, #0x1A
4D6EA0:  BMI             loc_4D6F9C
4D6EA2:  LDR             R2, [R4,#0x3C]
4D6EA4:  MOVS            R1, #1
4D6EA6:  LDR             R0, [R5,#0x18]
4D6EA8:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpbP19CAnimBlendHierarchy; RpAnimBlendClumpGetAssociation(RpClump *,bool,CAnimBlendHierarchy *)
4D6EAC:  ADD.W           R8, SP, #0x20+var_1C
4D6EB0:  MOV             R6, R0
4D6EB2:  MOVS            R0, #0
4D6EB4:  MOVS            R2, #3
4D6EB6:  STRD.W          R0, R0, [SP,#0x20+var_1C]
4D6EBA:  MOV             R1, R8
4D6EBC:  STR             R0, [SP,#0x20+var_14]
4D6EBE:  MOV             R0, R5; this
4D6EC0:  MOVS            R3, #0
4D6EC2:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
4D6EC6:  CMP             R6, #0
4D6EC8:  BEQ             loc_4D6F9C
4D6ECA:  VLDR            S0, [R4,#0x38]
4D6ECE:  VLDR            S2, =100.0
4D6ED2:  VCMPE.F32       S0, S2
4D6ED6:  VMRS            APSR_nzcv, FPSCR
4D6EDA:  BLE             loc_4D6F9C
4D6EDC:  LDR             R1, [R5,#0x14]
4D6EDE:  ADD.W           R0, R8, #4
4D6EE2:  VLDR            S0, [SP,#0x20+var_1C]
4D6EE6:  ADD.W           R2, R1, #0x30 ; '0'
4D6EEA:  CMP             R1, #0
4D6EEC:  IT EQ
4D6EEE:  ADDEQ           R2, R5, #4
4D6EF0:  VLDR            D16, [R0]
4D6EF4:  VLDR            S2, [R2]
4D6EF8:  VLDR            D17, [R2,#4]
4D6EFC:  VSUB.F32        S0, S2, S0
4D6F00:  VSUB.F32        D16, D17, D16
4D6F04:  VMUL.F32        D1, D16, D16
4D6F08:  VMUL.F32        S0, S0, S0
4D6F0C:  VADD.F32        S0, S0, S2
4D6F10:  VADD.F32        S0, S0, S3
4D6F14:  VMOV.F32        S2, #1.0
4D6F18:  VSQRT.F32       S0, S0
4D6F1C:  VCMPE.F32       S0, S2
4D6F20:  VMRS            APSR_nzcv, FPSCR
4D6F24:  BLE             loc_4D6F9C
4D6F26:  LDRH            R0, [R6,#0x2E]
4D6F28:  ORR.W           R0, R0, #4
4D6F2C:  STRH            R0, [R6,#0x2E]
4D6F2E:  VLDR            S0, [R4,#0x38]
4D6F32:  VNEG.F32        S0, S0
4D6F36:  VSTR            S0, [R6,#0x1C]
4D6F3A:  B               loc_4D6F9C
4D6F3C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4D6F44)
4D6F3E:  LDR             R1, [R4,#0x44]
4D6F40:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4D6F42:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4D6F44:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4D6F46:  LDR             R2, [R4,#0x48]
4D6F48:  ADD             R1, R2
4D6F4A:  CMP             R1, R0
4D6F4C:  BHI             loc_4D6F84
4D6F4E:  LDRB.W          R0, [R4,#0x5C]
4D6F52:  LSLS            R0, R0, #0x1C
4D6F54:  BMI             loc_4D6F76
4D6F56:  LDR             R0, [R4,#8]; this
4D6F58:  CBZ             R0, loc_4D6F66
4D6F5A:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4D6F62)
4D6F5C:  MOVS            R2, #0; void *
4D6F5E:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4D6F60:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4D6F62:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4D6F66:  LDRB            R0, [R4,#0xC]
4D6F68:  MOVS            R1, #0
4D6F6A:  STR             R1, [R4,#8]
4D6F6C:  ORR.W           R0, R0, #1
4D6F70:  STRB            R0, [R4,#0xC]
4D6F72:  MOVS            R0, #1
4D6F74:  B               loc_4D6F9E
4D6F76:  LDR             R0, [R4]
4D6F78:  MOV             R1, R5
4D6F7A:  MOVS            R2, #0
4D6F7C:  MOVS            R3, #0
4D6F7E:  LDR             R6, [R0,#0x1C]
4D6F80:  MOV             R0, R4
4D6F82:  BLX             R6
4D6F84:  LDR             R0, [R4,#8]
4D6F86:  CBNZ            R0, loc_4D6FAE
4D6F88:  LDR             R2, [R4,#0x3C]
4D6F8A:  MOVS            R1, #1
4D6F8C:  LDR             R0, [R5,#0x18]
4D6F8E:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpbP19CAnimBlendHierarchy; RpAnimBlendClumpGetAssociation(RpClump *,bool,CAnimBlendHierarchy *)
4D6F92:  CMP             R0, #0
4D6F94:  ITT NE
4D6F96:  LDRNE           R0, [R0,#0x38]
4D6F98:  CMPNE           R0, #0
4D6F9A:  BEQ             loc_4D6FA6
4D6F9C:  MOVS            R0, #1
4D6F9E:  ADD             SP, SP, #0x10
4D6FA0:  POP.W           {R8}
4D6FA4:  POP             {R4-R7,PC}
4D6FA6:  MOV             R0, R4; this
4D6FA8:  MOV             R1, R5; CPed *
4D6FAA:  BLX             j__ZN23CTaskSimpleRunNamedAnim9StartAnimEP4CPed; CTaskSimpleRunNamedAnim::StartAnim(CPed *)
4D6FAE:  LDRB            R0, [R4,#0xC]
4D6FB0:  AND.W           R0, R0, #1
4D6FB4:  B               loc_4D6F9E
