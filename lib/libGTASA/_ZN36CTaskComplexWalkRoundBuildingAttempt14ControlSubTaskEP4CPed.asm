; =========================================================
; Game Engine Function: _ZN36CTaskComplexWalkRoundBuildingAttempt14ControlSubTaskEP4CPed
; Address            : 0x50DB60 - 0x50DD2A
; =========================================================

50DB60:  PUSH            {R4-R7,LR}
50DB62:  ADD             R7, SP, #0xC
50DB64:  PUSH.W          {R8}
50DB68:  SUB             SP, SP, #0x20; float
50DB6A:  MOV             R4, R0
50DB6C:  MOV             R6, R1
50DB6E:  LDRB.W          R0, [R4,#0x49]
50DB72:  TST.W           R0, #0x10
50DB76:  BNE             loc_50DBFE
50DB78:  LSLS            R1, R0, #0x1D
50DB7A:  BPL             loc_50DC06
50DB7C:  LDR             R5, [R4,#0x38]
50DB7E:  CBZ             R5, loc_50DBD8
50DB80:  LDR             R1, [R5,#0x14]
50DB82:  CBNZ            R1, loc_50DB94
50DB84:  MOV             R0, R5; this
50DB86:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
50DB8A:  LDR             R1, [R5,#0x14]; CMatrix *
50DB8C:  ADDS            R0, R5, #4; this
50DB8E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
50DB92:  LDR             R1, [R5,#0x14]; CMatrix *
50DB94:  ADD.W           R2, R4, #0x3C ; '<'; CVector *
50DB98:  ADD             R0, SP, #0x30+var_1C; this
50DB9A:  BLX             j__ZN7CVector12FromMultiplyERK7CMatrixRKS_; CVector::FromMultiply(CMatrix const&,CVector const&)
50DB9E:  VLDR            S0, [R4,#0x14]
50DBA2:  VMOV.F32        S4, #16.0
50DBA6:  VLDR            S2, [SP,#0x30+var_1C]
50DBAA:  VLDR            D16, [R4,#0x18]
50DBAE:  VSUB.F32        S0, S2, S0
50DBB2:  VLDR            D17, [SP,#0x30+var_18]
50DBB6:  VSUB.F32        D16, D17, D16
50DBBA:  VMUL.F32        D1, D16, D16
50DBBE:  VMUL.F32        S0, S0, S0
50DBC2:  VADD.F32        S0, S0, S2
50DBC6:  VADD.F32        S0, S0, S3
50DBCA:  VCMPE.F32       S0, S4
50DBCE:  VMRS            APSR_nzcv, FPSCR
50DBD2:  BLE             loc_50DC02
50DBD4:  LDRB.W          R0, [R4,#0x49]
50DBD8:  ORR.W           R0, R0, #0x10
50DBDC:  STRB.W          R0, [R4,#0x49]
50DBE0:  MOVS            R0, #dword_20; this
50DBE2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50DBE6:  MOV             R5, R0
50DBE8:  MOV.W           R0, #0x41000000
50DBEC:  STR             R0, [SP,#0x30+var_30]; float
50DBEE:  MOV             R0, R5; this
50DBF0:  MOV.W           R1, #0x3E8; int
50DBF4:  MOVS            R2, #0; bool
50DBF6:  MOVS            R3, #0; bool
50DBF8:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
50DBFC:  B               loc_50DD20
50DBFE:  LDR             R5, [R4,#8]
50DC00:  B               loc_50DD20
50DC02:  LDRB.W          R0, [R4,#0x49]
50DC06:  LSLS            R1, R0, #0x1E
50DC08:  BMI             loc_50DC14
50DC0A:  MOV             R0, R4; this
50DC0C:  MOV             R1, R6; CPed *
50DC0E:  BLX             j__ZN36CTaskComplexWalkRoundBuildingAttempt12ComputeRouteERK4CPed; CTaskComplexWalkRoundBuildingAttempt::ComputeRoute(CPed const&)
50DC12:  B               loc_50DC72
50DC14:  LSLS            R0, R0, #0x1A
50DC16:  BMI             loc_50DC72
50DC18:  LDR             R0, [R4,#8]
50DC1A:  MOVS            R2, #1
50DC1C:  MOVS            R3, #0
50DC1E:  LDR             R1, [R0]
50DC20:  LDR             R5, [R1,#0x1C]
50DC22:  MOV             R1, R6
50DC24:  BLX             R5
50DC26:  CMP             R0, #1
50DC28:  BNE             loc_50DC72
50DC2A:  LDRB.W          R0, [R4,#0x49]
50DC2E:  LDR             R1, [R4,#0xC]
50DC30:  ORR.W           R2, R0, #0x20 ; ' '
50DC34:  STRB.W          R2, [R4,#0x49]
50DC38:  LDR             R1, [R1]; unsigned int
50DC3A:  CMP             R1, #0
50DC3C:  BEQ             loc_50DCE8
50DC3E:  MOVS            R0, #off_3C; this
50DC40:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50DC44:  MOV             R5, R0
50DC46:  LDR             R0, =(_ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr - 0x50DC52)
50DC48:  LDRSB.W         R1, [R4,#0x48]; int
50DC4C:  MOVS            R3, #1
50DC4E:  ADD             R0, PC; _ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr
50DC50:  LDR             R2, [R4,#0xC]; CPointRoute *
50DC52:  STR             R3, [SP,#0x30+var_20]; bool
50DC54:  MOVS            R3, #0; int
50DC56:  LDR             R0, [R0]; CTaskComplexFollowPointRoute::ms_fTargetRadius ...
50DC58:  VLDR            S0, [R0]
50DC5C:  MOVS            R0, #0
50DC5E:  STRD.W          R0, R0, [SP,#0x30+var_28]; bool
50DC62:  MOV             R0, R5; this
50DC64:  VSTR            S0, [SP,#0x30+var_30]
50DC68:  VSTR            S0, [SP,#0x30+var_2C]
50DC6C:  BLX             j__ZN28CTaskComplexFollowPointRouteC2EiRK11CPointRouteiffbbb; CTaskComplexFollowPointRoute::CTaskComplexFollowPointRoute(int,CPointRoute const&,int,float,float,bool,bool,bool)
50DC70:  B               loc_50DD20
50DC72:  LDR             R5, [R4,#8]
50DC74:  LDR             R0, [R5]
50DC76:  LDR             R1, [R0,#0x14]
50DC78:  MOV             R0, R5
50DC7A:  BLX             R1
50DC7C:  MOVW            R1, #0x389
50DC80:  CMP             R0, R1
50DC82:  BNE             loc_50DD20
50DC84:  LDR             R0, =(_ZN16CPedIntelligence27ms_iStaticCounterStuckCountE_ptr - 0x50DC8E)
50DC86:  LDR.W           R1, [R6,#0x440]
50DC8A:  ADD             R0, PC; _ZN16CPedIntelligence27ms_iStaticCounterStuckCountE_ptr
50DC8C:  LDR             R0, [R0]; CPedIntelligence::ms_iStaticCounterStuckCount ...
50DC8E:  LDR.W           R1, [R1,#0x278]
50DC92:  LDR             R0, [R0]; CPedIntelligence::ms_iStaticCounterStuckCount
50DC94:  CMP             R1, R0
50DC96:  BLE             loc_50DD20
50DC98:  LDR             R0, [R4,#8]
50DC9A:  MOVS            R2, #1
50DC9C:  MOVS            R3, #0
50DC9E:  MOV.W           R8, #0
50DCA2:  LDR             R1, [R0]
50DCA4:  LDR.W           R12, [R1,#0x1C]
50DCA8:  MOV             R1, R6
50DCAA:  BLX             R12
50DCAC:  CMP             R0, #1
50DCAE:  BNE             loc_50DD20
50DCB0:  LDRB.W          R0, [R4,#0x49]
50DCB4:  ORR.W           R0, R0, #0x10
50DCB8:  STRB.W          R0, [R4,#0x49]
50DCBC:  MOVS            R0, #dword_20; this
50DCBE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50DCC2:  MOV             R5, R0
50DCC4:  LDR             R0, =(aHitwall - 0x50DCD0); "HitWall"
50DCC6:  MOVW            R1, #0x19B
50DCCA:  MOVS            R2, #0x26 ; '&'
50DCCC:  ADD             R0, PC; "HitWall"
50DCCE:  MOV.W           R3, #0x40800000
50DCD2:  STRD.W          R1, R0, [SP,#0x30+var_30]
50DCD6:  MOV             R0, R5
50DCD8:  MOVS            R1, #0
50DCDA:  STR.W           R8, [SP,#0x30+var_28]
50DCDE:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
50DCE2:  LDR             R0, =(_ZTV18CTaskSimpleHitWall_ptr - 0x50DCE8)
50DCE4:  ADD             R0, PC; _ZTV18CTaskSimpleHitWall_ptr
50DCE6:  B               loc_50DD1A
50DCE8:  ORR.W           R0, R0, #0x30 ; '0'
50DCEC:  STRB.W          R0, [R4,#0x49]
50DCF0:  MOVS            R0, #dword_20; this
50DCF2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50DCF6:  MOV             R5, R0
50DCF8:  LDR             R0, =(aHitwall - 0x50DD04); "HitWall"
50DCFA:  MOVS            R1, #0
50DCFC:  MOVW            R2, #0x19B
50DD00:  ADD             R0, PC; "HitWall"
50DD02:  MOV.W           R3, #0x40800000
50DD06:  STRD.W          R2, R0, [SP,#0x30+var_30]
50DD0A:  MOV             R0, R5
50DD0C:  STR             R1, [SP,#0x30+var_28]
50DD0E:  MOVS            R1, #0
50DD10:  MOVS            R2, #0x26 ; '&'
50DD12:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
50DD16:  LDR             R0, =(_ZTV18CTaskSimpleHitWall_ptr - 0x50DD1C)
50DD18:  ADD             R0, PC; _ZTV18CTaskSimpleHitWall_ptr
50DD1A:  LDR             R0, [R0]; `vtable for'CTaskSimpleHitWall ...
50DD1C:  ADDS            R0, #8
50DD1E:  STR             R0, [R5]
50DD20:  MOV             R0, R5
50DD22:  ADD             SP, SP, #0x20 ; ' '
50DD24:  POP.W           {R8}
50DD28:  POP             {R4-R7,PC}
