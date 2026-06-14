; =========================================================
; Game Engine Function: _ZN13CEventHandler34ComputePedCollisionWithPedResponseEP6CEventP5CTaskS3_
; Address            : 0x37CAAC - 0x37D4C6
; =========================================================

37CAAC:  PUSH            {R4-R7,LR}
37CAAE:  ADD             R7, SP, #0xC
37CAB0:  PUSH.W          {R8-R11}
37CAB4:  SUB             SP, SP, #4
37CAB6:  VPUSH           {D8-D15}
37CABA:  SUB             SP, SP, #0x90
37CABC:  MOV             R6, R1
37CABE:  MOV             R4, R3
37CAC0:  LDR.W           R10, [R6,#0x10]
37CAC4:  MOV             R5, R0
37CAC6:  CMP.W           R10, #0
37CACA:  BEQ.W           loc_37D480
37CACE:  LDR.W           R0, [R10,#0x440]
37CAD2:  ADDS            R0, #4; this
37CAD4:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
37CAD8:  STR             R5, [SP,#0xF0+var_CC]
37CADA:  LDR             R0, [R5]; this
37CADC:  LDR.W           R1, [R10,#0x14]; CPed *
37CAE0:  LDR             R2, [R0,#0x14]
37CAE2:  ADD.W           R3, R1, #0x30 ; '0'
37CAE6:  CMP             R1, #0
37CAE8:  IT EQ
37CAEA:  ADDEQ.W         R3, R10, #4
37CAEE:  ADD.W           R5, R2, #0x30 ; '0'
37CAF2:  CMP             R2, #0
37CAF4:  VLDR            S22, [R3]
37CAF8:  VLDR            S26, [R3,#4]
37CAFC:  VLDR            S24, [R3,#8]
37CB00:  IT EQ
37CB02:  ADDEQ           R5, R0, #4
37CB04:  VLDR            S28, [R5]
37CB08:  VLDR            S17, [R5,#4]
37CB0C:  VLDR            S30, [R5,#8]
37CB10:  VLDR            S16, [R1,#0x10]
37CB14:  VLDR            S20, [R1,#0x14]
37CB18:  VLDR            S18, [R1,#0x18]
37CB1C:  VLDR            S19, [R2,#0x10]
37CB20:  VLDR            S23, [R2,#0x14]
37CB24:  VLDR            S21, [R2,#0x18]
37CB28:  LDRH.W          R11, [R6,#0x2E]
37CB2C:  LDRH.W          R8, [R6,#0x2C]
37CB30:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
37CB34:  MOV             R5, R0
37CB36:  CMP             R5, #0
37CB38:  BEQ             loc_37CB62
37CB3A:  ADD.W           R0, R5, #8; this
37CB3E:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
37CB42:  MOV             R4, R0
37CB44:  MOV             R0, R10; this
37CB46:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
37CB4A:  MOV             R6, R0
37CB4C:  CMP             R6, #0
37CB4E:  BEQ             loc_37CC0A
37CB50:  ADD.W           R0, R6, #8; this
37CB54:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
37CB58:  MOV             R9, R0
37CB5A:  CMP             R5, R6
37CB5C:  BEQ             loc_37CC12
37CB5E:  MOVS            R5, #0
37CB60:  B               loc_37CC38
37CB62:  VSUB.F32        S0, S26, S17
37CB66:  CMP.W           R8, #4
37CB6A:  VSUB.F32        S4, S22, S28
37CB6E:  VSUB.F32        S6, S24, S30
37CB72:  VMUL.F32        S2, S0, S23
37CB76:  VMUL.F32        S8, S4, S19
37CB7A:  VMUL.F32        S10, S6, S21
37CB7E:  VADD.F32        S2, S8, S2
37CB82:  VADD.F32        S2, S2, S10
37CB86:  BNE.W           loc_37CCBE
37CB8A:  CMP.W           R11, #1
37CB8E:  BHI.W           loc_37CCBE
37CB92:  VCMPE.F32       S2, #0.0
37CB96:  VMRS            APSR_nzcv, FPSCR
37CB9A:  BLT.W           loc_37CD5C
37CB9E:  MOVS            R5, #0
37CBA0:  CMP             R4, #0
37CBA2:  BEQ.W           loc_37CFC2
37CBA6:  MOV             R0, R4; this
37CBA8:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
37CBAC:  MOVS            R6, #0
37CBAE:  CMP             R0, #0
37CBB0:  BEQ.W           loc_37CFC4
37CBB4:  LDR.W           R11, [SP,#0xF0+var_CC]
37CBB8:  ADD.W           R2, R4, #0xC; CEntity *
37CBBC:  STR             R6, [SP,#0xF0+var_C8]
37CBBE:  ADD             R4, SP, #0xF0+var_C8
37CBC0:  MOV             R1, R10; CPed *
37CBC2:  LDR.W           R0, [R11]; this
37CBC6:  MOV             R3, R4; CVector *
37CBC8:  STR             R6, [SP,#0xF0+var_F0]; float
37CBCA:  BLX             j__ZN20CPedGeometryAnalyser34ComputeRouteRoundEntityBoundingBoxERK4CPedR7CEntityRK7CVectorR11CPointRoutei; CPedGeometryAnalyser::ComputeRouteRoundEntityBoundingBox(CPed const&,CEntity &,CVector const&,CPointRoute &,int)
37CBCE:  MOVS            R0, #off_3C; this
37CBD0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37CBD4:  LDR.W           R1, =(_ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr - 0x37CBE2)
37CBD8:  MOVS            R3, #1
37CBDA:  LDR.W           R2, =(_ZN28CTaskComplexFollowPointRoute20ms_fSlowDownDistanceE_ptr - 0x37CBE8)
37CBDE:  ADD             R1, PC; _ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr
37CBE0:  STRD.W          R6, R3, [SP,#0xF0+var_E8]; bool
37CBE4:  ADD             R2, PC; _ZN28CTaskComplexFollowPointRoute20ms_fSlowDownDistanceE_ptr
37CBE6:  STR             R3, [SP,#0xF0+var_E0]; bool
37CBE8:  LDR             R1, [R1]; CTaskComplexFollowPointRoute::ms_fTargetRadius ...
37CBEA:  MOVS            R3, #0; int
37CBEC:  LDR             R2, [R2]; CTaskComplexFollowPointRoute::ms_fSlowDownDistance ...
37CBEE:  VLDR            S0, [R1]
37CBF2:  MOVS            R1, #4; int
37CBF4:  VLDR            S2, [R2]
37CBF8:  MOV             R2, R4; CPointRoute *
37CBFA:  VSTR            S0, [SP,#0xF0+var_F0]
37CBFE:  VSTR            S2, [SP,#0xF0+var_EC]
37CC02:  BLX             j__ZN28CTaskComplexFollowPointRouteC2EiRK11CPointRouteiffbbb; CTaskComplexFollowPointRoute::CTaskComplexFollowPointRoute(int,CPointRoute const&,int,float,float,bool,bool,bool)
37CC06:  MOV             R6, R0
37CC08:  B               loc_37CFC8
37CC0A:  MOV.W           R9, #0
37CC0E:  CMP             R5, R6
37CC10:  BNE             loc_37CB5E
37CC12:  MOV.W           R0, #0x80000000
37CC16:  CMP             R10, R4
37CC18:  ITTT EQ
37CC1A:  LDREQ.W         R1, [R10,#0x48C]
37CC1E:  ORREQ           R1, R0
37CC20:  STREQ.W         R1, [R10,#0x48C]
37CC24:  MOVS            R5, #1
37CC26:  LDR             R1, [SP,#0xF0+var_CC]
37CC28:  LDR             R1, [R1]
37CC2A:  CMP             R1, R4
37CC2C:  ITTT EQ
37CC2E:  LDREQ.W         R1, [R4,#0x48C]
37CC32:  ORREQ           R0, R1
37CC34:  STREQ.W         R0, [R4,#0x48C]
37CC38:  MOV             R0, R10; this
37CC3A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37CC3E:  CMP             R0, #1
37CC40:  BNE             loc_37CC76
37CC42:  MOVS            R0, #dword_1C; this
37CC44:  MOVS            R4, #0x1C
37CC46:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37CC4A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37CC4E:  LDR.W           R1, =(_ZTV14CTaskSimpleSay_ptr - 0x37CC5A)
37CC52:  MOVS            R2, #0
37CC54:  STRH            R2, [R0,#0x18]
37CC56:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
37CC58:  STRD.W          R2, R2, [R0,#0x10]
37CC5C:  MOV.W           R2, #0xFFFFFFFF
37CC60:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
37CC62:  STRD.W          R4, R2, [R0,#8]
37CC66:  ADDS            R1, #8
37CC68:  STR             R1, [R0]
37CC6A:  LDR.W           R11, [SP,#0xF0+var_CC]
37CC6E:  STR.W           R0, [R11,#0x2C]
37CC72:  B.W             loc_37D47A
37CC76:  CMP.W           R11, #1
37CC7A:  IT NE
37CC7C:  MOVNE.W         R11, #0
37CC80:  CMP.W           R8, #1
37CC84:  IT NE
37CC86:  MOVNE.W         R8, #0
37CC8A:  CMP             R6, #0
37CC8C:  ORR.W           R0, R8, R11
37CC90:  BEQ             loc_37CD50
37CC92:  LDR.W           R11, [SP,#0xF0+var_CC]
37CC96:  CMP             R0, #1
37CC98:  BNE.W           loc_37D47A
37CC9C:  CMP             R5, #0
37CC9E:  BEQ.W           loc_37CF32
37CCA2:  CMP             R10, R9
37CCA4:  BEQ.W           loc_37D244
37CCA8:  CMP             R4, #0
37CCAA:  BEQ.W           loc_37D47A
37CCAE:  LDR.W           R0, [R4,#0x440]; this
37CCB2:  BLX             j__ZNK16CPedIntelligence24GetMoveStateFromGoToTaskEv; CPedIntelligence::GetMoveStateFromGoToTask(void)
37CCB6:  CMP             R0, #1
37CCB8:  BEQ.W           loc_37D244
37CCBC:  B               loc_37D47A
37CCBE:  VMUL.F32        S0, S0, S20
37CCC2:  CMP.W           R8, #4
37CCC6:  VMUL.F32        S4, S4, S16
37CCCA:  IT EQ
37CCCC:  CMPEQ.W         R11, #4
37CCD0:  VMUL.F32        S6, S6, S18
37CCD4:  VADD.F32        S0, S4, S0
37CCD8:  VADD.F32        S0, S0, S6
37CCDC:  BNE             loc_37CDC6
37CCDE:  LDR.W           R11, [SP,#0xF0+var_CC]
37CCE2:  VCMPE.F32       S2, #0.0
37CCE6:  VMRS            APSR_nzcv, FPSCR
37CCEA:  BLT.W           loc_37CEBE
37CCEE:  MOV             R0, R4; this
37CCF0:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
37CCF4:  CMP             R0, #0
37CCF6:  BEQ.W           loc_37CFEC
37CCFA:  MOVS            R5, #0
37CCFC:  ADD.W           R2, R4, #0xC; CEntity *
37CD00:  STR             R5, [SP,#0xF0+var_C8]
37CD02:  ADD             R4, SP, #0xF0+var_C8
37CD04:  LDR.W           R0, [R11]; this
37CD08:  MOV             R1, R10; CPed *
37CD0A:  MOV             R3, R4; CVector *
37CD0C:  STR             R5, [SP,#0xF0+var_F0]; float
37CD0E:  BLX             j__ZN20CPedGeometryAnalyser34ComputeRouteRoundEntityBoundingBoxERK4CPedR7CEntityRK7CVectorR11CPointRoutei; CPedGeometryAnalyser::ComputeRouteRoundEntityBoundingBox(CPed const&,CEntity &,CVector const&,CPointRoute &,int)
37CD12:  MOVS            R0, #off_3C; this
37CD14:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37CD18:  LDR.W           R1, =(_ZN28CTaskComplexFollowPointRoute20ms_fSlowDownDistanceE_ptr - 0x37CD28)
37CD1C:  MOV             R6, R0
37CD1E:  LDR.W           R0, =(_ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr - 0x37CD2E)
37CD22:  MOVS            R2, #1
37CD24:  ADD             R1, PC; _ZN28CTaskComplexFollowPointRoute20ms_fSlowDownDistanceE_ptr
37CD26:  STRD.W          R5, R2, [SP,#0xF0+var_E8]; bool
37CD2A:  ADD             R0, PC; _ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr
37CD2C:  STR             R2, [SP,#0xF0+var_E0]; bool
37CD2E:  LDR             R1, [R1]; CTaskComplexFollowPointRoute::ms_fSlowDownDistance ...
37CD30:  MOV             R2, R4; CPointRoute *
37CD32:  LDR             R0, [R0]; CTaskComplexFollowPointRoute::ms_fTargetRadius ...
37CD34:  MOVS            R3, #0; int
37CD36:  VLDR            S2, [R1]
37CD3A:  MOVS            R1, #4; int
37CD3C:  VLDR            S0, [R0]
37CD40:  MOV             R0, R6; this
37CD42:  VSTR            S0, [SP,#0xF0+var_F0]
37CD46:  VSTR            S2, [SP,#0xF0+var_EC]
37CD4A:  BLX             j__ZN28CTaskComplexFollowPointRouteC2EiRK11CPointRouteiffbbb; CTaskComplexFollowPointRoute::CTaskComplexFollowPointRoute(int,CPointRoute const&,int,float,float,bool,bool,bool)
37CD4E:  B               loc_37CFEE
37CD50:  LDR.W           R11, [SP,#0xF0+var_CC]
37CD54:  CMP             R0, #1
37CD56:  BNE.W           loc_37D47A
37CD5A:  B               loc_37D36A
37CD5C:  LDR.W           R12, =(g_ikChainMan_ptr - 0x37CD6E)
37CD60:  MOVS            R0, #5
37CD62:  LDR.W           R11, [SP,#0xF0+var_CC]
37CD66:  MOV.W           R1, #0x7D0
37CD6A:  ADD             R12, PC; g_ikChainMan_ptr
37CD6C:  MOVS            R6, #0
37CD6E:  MOV.W           R3, #0x1F4
37CD72:  MOV.W           R5, #0x3E800000
37CD76:  LDR.W           R2, [R11]; CPed *
37CD7A:  MOVS            R4, #1
37CD7C:  STRD.W          R1, R0, [SP,#0xF0+var_F0]; int
37CD80:  ADR.W           R1, aComppedcollped; "CompPedCollPedResp"
37CD84:  LDR.W           R0, [R12]; g_ikChainMan ; int
37CD88:  MOV.W           LR, #3
37CD8C:  STRD.W          R6, R4, [SP,#0xF0+var_E8]; int
37CD90:  STRD.W          R5, R3, [SP,#0xF0+var_E0]; float
37CD94:  MOV             R3, R10; int
37CD96:  STRD.W          LR, R6, [SP,#0xF0+var_D8]; int
37CD9A:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37CD9E:  MOVS            R0, #dword_1C; this
37CDA0:  MOVS            R4, #0x1C
37CDA2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37CDA6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37CDAA:  LDR.W           R1, =(_ZTV14CTaskSimpleSay_ptr - 0x37CDB4)
37CDAE:  STR             R4, [R0,#8]
37CDB0:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
37CDB2:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
37CDB4:  ADDS            R1, #8
37CDB6:  STR             R1, [R0]
37CDB8:  MOV.W           R1, #0xFFFFFFFF
37CDBC:  STR             R1, [R0,#0xC]
37CDBE:  STRH            R6, [R0,#0x18]
37CDC0:  STRD.W          R6, R6, [R0,#0x10]
37CDC4:  B               loc_37D052
37CDC6:  SXTH.W          R0, R8
37CDCA:  ORR.W           R3, R0, #1
37CDCE:  SXTH.W          R2, R11
37CDD2:  ORR.W           R1, R2, #1; unsigned int
37CDD6:  CMP             R3, #7
37CDD8:  IT EQ
37CDDA:  CMPEQ           R1, #7
37CDDC:  BNE.W           loc_37D058
37CDE0:  VCMPE.F32       S2, #0.0
37CDE4:  VMRS            APSR_nzcv, FPSCR
37CDE8:  BLT.W           loc_37D12E
37CDEC:  VCMPE.F32       S0, #0.0
37CDF0:  VMRS            APSR_nzcv, FPSCR
37CDF4:  BGT.W           loc_37D12E
37CDF8:  LDR.W           R11, [SP,#0xF0+var_CC]
37CDFC:  LDR.W           R0, =(_ZN25CEventPedCollisionWithPed21ms_fPedBrushKnockdownE_ptr - 0x37CE08)
37CE00:  LDR.W           R1, [R11]; CPed *
37CE04:  ADD             R0, PC; _ZN25CEventPedCollisionWithPed21ms_fPedBrushKnockdownE_ptr
37CE06:  LDR             R0, [R0]; CEventPedCollisionWithPed::ms_fPedBrushKnockdown ...
37CE08:  LDR.W           R2, [R1,#0x5A0]; CEntity *
37CE0C:  VLDR            S2, [R0]
37CE10:  VLDR            S0, [R2,#0x2C]
37CE14:  VCMPE.F32       S0, S2
37CE18:  VMRS            APSR_nzcv, FPSCR
37CE1C:  BLE             loc_37CE3E
37CE1E:  LDR.W           R0, [R10,#0x5A0]
37CE22:  VLDR            S4, [R0,#0x2C]
37CE26:  VCMPE.F32       S4, S2
37CE2A:  VMRS            APSR_nzcv, FPSCR
37CE2E:  BLE.W           loc_37D48E
37CE32:  VCMPE.F32       S0, S4
37CE36:  VMRS            APSR_nzcv, FPSCR
37CE3A:  BGT.W           loc_37D48E
37CE3E:  MOVS            R0, #dword_1C; this
37CE40:  MOVS            R4, #0x1C
37CE42:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37CE46:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37CE4A:  LDR.W           R1, =(_ZTV14CTaskSimpleSay_ptr - 0x37CE5C)
37CE4E:  MOVS            R6, #0
37CE50:  LDR.W           R3, =(g_ikChainMan_ptr - 0x37CE60)
37CE54:  MOV.W           R2, #0xFFFFFFFF
37CE58:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
37CE5A:  STRH            R6, [R0,#0x18]
37CE5C:  ADD             R3, PC; g_ikChainMan_ptr
37CE5E:  STRD.W          R6, R6, [R0,#0x10]
37CE62:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
37CE64:  MOVS            R5, #3
37CE66:  STRD.W          R4, R2, [R0,#8]
37CE6A:  ADDS            R1, #8
37CE6C:  STR             R1, [R0]
37CE6E:  LDR.W           R2, [R11]; CPed *
37CE72:  ADR.W           R1, aComppedcollped; "CompPedCollPedResp"
37CE76:  STR.W           R0, [R11,#0x2C]
37CE7A:  LDR             R0, [R3]; g_ikChainMan ; int
37CE7C:  MOV.W           R3, #0x1F4
37CE80:  STR             R6, [SP,#0xF0+var_D4]; int
37CE82:  STR             R5, [SP,#0xF0+var_D8]; int
37CE84:  STR             R3, [SP,#0xF0+var_DC]; int
37CE86:  MOV.W           R3, #0x3E800000
37CE8A:  STR             R3, [SP,#0xF0+var_E0]; float
37CE8C:  MOVS            R3, #1
37CE8E:  STRD.W          R6, R3, [SP,#0xF0+var_E8]; int
37CE92:  MOVS            R3, #5
37CE94:  STR             R3, [SP,#0xF0+var_EC]; int
37CE96:  MOV.W           R3, #0x7D0
37CE9A:  STR             R3, [SP,#0xF0+var_F0]; int
37CE9C:  MOV             R3, R10; int
37CE9E:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37CEA2:  LDR.W           R1, [R11]; CPed *
37CEA6:  MOV             R0, R10; this
37CEA8:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK4CPedR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CPed const&,CEntity &)
37CEAC:  MOV             R4, R0
37CEAE:  MOVS            R0, #word_10; this
37CEB0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37CEB4:  MOV             R1, R4; int
37CEB6:  MOV             R6, R0
37CEB8:  BLX             j__ZN23CTaskComplexHitResponseC2Ei; CTaskComplexHitResponse::CTaskComplexHitResponse(int)
37CEBC:  B               loc_37D3A0
37CEBE:  VCMPE.F32       S0, #0.0
37CEC2:  VMRS            APSR_nzcv, FPSCR
37CEC6:  BGT.W           loc_37D47A
37CECA:  LDR.W           R12, =(g_ikChainMan_ptr - 0x37CEDC)
37CECE:  MOVS            R0, #5
37CED0:  MOV.W           R1, #0x7D0
37CED4:  LDR.W           R2, [R11]; CPed *
37CED8:  ADD             R12, PC; g_ikChainMan_ptr
37CEDA:  STRD.W          R1, R0, [SP,#0xF0+var_F0]; int
37CEDE:  MOVS            R4, #0
37CEE0:  MOV.W           R6, #0x3E800000
37CEE4:  MOVS            R5, #1
37CEE6:  ADD             R0, SP, #0xF0+var_E8
37CEE8:  STM             R0!, {R4-R6}
37CEEA:  MOV.W           LR, #3
37CEEE:  MOV.W           R3, #0x1F4
37CEF2:  LDR.W           R0, [R12]; g_ikChainMan ; int
37CEF6:  ADR.W           R1, aComppedcollped; "CompPedCollPedResp"
37CEFA:  STRD.W          R3, LR, [SP,#0xF0+var_DC]; int
37CEFE:  MOV             R3, R10; int
37CF00:  STR             R4, [SP,#0xF0+var_D4]; int
37CF02:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37CF06:  MOVS            R0, #dword_1C; this
37CF08:  MOVS            R5, #0x1C
37CF0A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37CF0E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37CF12:  LDR.W           R1, =(_ZTV14CTaskSimpleSay_ptr - 0x37CF20)
37CF16:  MOV.W           R2, #0xFFFFFFFF
37CF1A:  STRH            R4, [R0,#0x18]
37CF1C:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
37CF1E:  STRD.W          R5, R2, [R0,#8]
37CF22:  STRD.W          R4, R4, [R0,#0x10]
37CF26:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
37CF28:  ADDS            R1, #8
37CF2A:  STR             R1, [R0]
37CF2C:  STR.W           R0, [R11,#0x2C]
37CF30:  B               loc_37D47A
37CF32:  BLX             rand
37CF36:  VMOV            S0, R0
37CF3A:  VLDR            S16, =4.6566e-10
37CF3E:  VLDR            S18, =0.0
37CF42:  VMOV.F32        S2, #0.25
37CF46:  VCVT.F32.S32    S0, S0
37CF4A:  VMUL.F32        S0, S0, S16
37CF4E:  VADD.F32        S0, S0, S18
37CF52:  VCMPE.F32       S0, S2
37CF56:  VMRS            APSR_nzcv, FPSCR
37CF5A:  BGE.W           loc_37D244
37CF5E:  BLX             rand
37CF62:  VMOV            S0, R0
37CF66:  VLDR            S2, =0.33
37CF6A:  VCVT.F32.S32    S0, S0
37CF6E:  VMUL.F32        S0, S0, S16
37CF72:  VADD.F32        S0, S0, S18
37CF76:  VCMPE.F32       S0, S2
37CF7A:  VMRS            APSR_nzcv, FPSCR
37CF7E:  BGE.W           loc_37D20C
37CF82:  LDR.W           R12, =(g_ikChainMan_ptr - 0x37CF90)
37CF86:  MOVS            R1, #0
37CF88:  MOVS            R0, #1
37CF8A:  MOVS            R3, #5
37CF8C:  ADD             R12, PC; g_ikChainMan_ptr
37CF8E:  MOV.W           R6, #0x7D0
37CF92:  LDR.W           R2, [R11]; CPed *
37CF96:  MOV.W           LR, #3
37CF9A:  STRD.W          R6, R3, [SP,#0xF0+var_F0]; int
37CF9E:  MOV.W           R8, #0x1F4
37CFA2:  STRD.W          R1, R0, [SP,#0xF0+var_E8]; int
37CFA6:  MOV.W           R4, #0x3E800000
37CFAA:  ADD             R0, SP, #0xF0+var_E0
37CFAC:  MOV             R3, R10; int
37CFAE:  STM.W           R0, {R4,R8,LR}
37CFB2:  LDR.W           R0, [R12]; g_ikChainMan ; int
37CFB6:  STR             R1, [SP,#0xF0+var_D4]; int
37CFB8:  ADR.W           R1, aComppedcollped; "CompPedCollPedResp"
37CFBC:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37CFC0:  B               loc_37D244
37CFC2:  MOVS            R6, #0
37CFC4:  LDR.W           R11, [SP,#0xF0+var_CC]
37CFC8:  MOVS            R0, #dword_1C; this
37CFCA:  MOVS            R4, #0x1C
37CFCC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37CFD0:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37CFD4:  LDR.W           R1, =(_ZTV14CTaskSimpleSay_ptr - 0x37CFE2)
37CFD8:  MOV.W           R2, #0xFFFFFFFF
37CFDC:  STR             R4, [R0,#8]
37CFDE:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
37CFE0:  STR             R2, [R0,#0xC]
37CFE2:  STRH            R5, [R0,#0x18]
37CFE4:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
37CFE6:  STRD.W          R5, R5, [R0,#0x10]
37CFEA:  B               loc_37D04E
37CFEC:  MOVS            R6, #0
37CFEE:  LDR.W           R12, =(g_ikChainMan_ptr - 0x37CFFC)
37CFF2:  MOVS            R4, #0
37CFF4:  MOVS            R0, #1
37CFF6:  MOVS            R1, #5
37CFF8:  ADD             R12, PC; g_ikChainMan_ptr
37CFFA:  MOV.W           R3, #0x7D0
37CFFE:  LDR.W           R2, [R11]; CPed *
37D002:  MOV.W           LR, #3
37D006:  STRD.W          R3, R1, [SP,#0xF0+var_F0]; int
37D00A:  MOV.W           R8, #0x1F4
37D00E:  STRD.W          R4, R0, [SP,#0xF0+var_E8]; int
37D012:  MOV.W           R5, #0x3E800000
37D016:  ADD             R0, SP, #0xF0+var_E0
37D018:  ADR.W           R1, aComppedcollped; "CompPedCollPedResp"
37D01C:  STM.W           R0, {R5,R8,LR}
37D020:  MOV             R3, R10; int
37D022:  LDR.W           R0, [R12]; g_ikChainMan ; int
37D026:  STR             R4, [SP,#0xF0+var_D4]; int
37D028:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37D02C:  MOVS            R0, #dword_1C; this
37D02E:  MOVS            R5, #0x1C
37D030:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37D034:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37D038:  LDR.W           R1, =(_ZTV14CTaskSimpleSay_ptr - 0x37D046)
37D03C:  MOV.W           R2, #0xFFFFFFFF
37D040:  STRH            R4, [R0,#0x18]
37D042:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
37D044:  STRD.W          R5, R2, [R0,#8]
37D048:  STRD.W          R4, R4, [R0,#0x10]
37D04C:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
37D04E:  ADDS            R1, #8
37D050:  STR             R1, [R0]
37D052:  STR.W           R0, [R11,#0x2C]
37D056:  B               loc_37D3A0
37D058:  CMP.W           R8, #1
37D05C:  IT LS
37D05E:  CMPLS           R2, #7
37D060:  BHI.W           loc_37D16E
37D064:  MOVS            R3, #1
37D066:  LSL.W           R2, R3, R2
37D06A:  TST.W           R2, #0xD0
37D06E:  BEQ             loc_37D16E
37D070:  VCMPE.F32       S0, #0.0
37D074:  VMRS            APSR_nzcv, FPSCR
37D078:  BGT             loc_37D16E
37D07A:  CMP             R1, #7
37D07C:  BNE             loc_37D0C0
37D07E:  LDR             R1, [SP,#0xF0+var_CC]
37D080:  LDR.W           R0, =(_ZN25CEventPedCollisionWithPed21ms_fPedBrushKnockdownE_ptr - 0x37D08A)
37D084:  LDR             R1, [R1]; CPed *
37D086:  ADD             R0, PC; _ZN25CEventPedCollisionWithPed21ms_fPedBrushKnockdownE_ptr
37D088:  LDR             R0, [R0]; CEventPedCollisionWithPed::ms_fPedBrushKnockdown ...
37D08A:  LDR.W           R2, [R1,#0x5A0]; CEntity *
37D08E:  VLDR            S2, [R0]
37D092:  VLDR            S0, [R2,#0x2C]
37D096:  VCMPE.F32       S0, S2
37D09A:  VMRS            APSR_nzcv, FPSCR
37D09E:  BLE             loc_37D0C0
37D0A0:  LDR.W           R0, [R10,#0x5A0]
37D0A4:  VLDR            S4, [R0,#0x2C]
37D0A8:  VCMPE.F32       S4, S2
37D0AC:  VMRS            APSR_nzcv, FPSCR
37D0B0:  BLE.W           loc_37D4A8
37D0B4:  VCMPE.F32       S0, S4
37D0B8:  VMRS            APSR_nzcv, FPSCR
37D0BC:  BGT.W           loc_37D4A8
37D0C0:  MOVS            R0, #dword_1C; this
37D0C2:  MOVS            R4, #0x1C
37D0C4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37D0C8:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37D0CC:  LDR.W           R1, =(_ZTV14CTaskSimpleSay_ptr - 0x37D0DE)
37D0D0:  MOVS            R6, #0
37D0D2:  MOV.W           R2, #0xFFFFFFFF
37D0D6:  LDR.W           R3, =(g_ikChainMan_ptr - 0x37D0E6)
37D0DA:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
37D0DC:  STRH            R6, [R0,#0x18]
37D0DE:  STRD.W          R6, R6, [R0,#0x10]
37D0E2:  ADD             R3, PC; g_ikChainMan_ptr
37D0E4:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
37D0E6:  MOVS            R5, #3
37D0E8:  STRD.W          R4, R2, [R0,#8]
37D0EC:  ADDS            R1, #8
37D0EE:  STR             R1, [R0]
37D0F0:  LDR             R4, [SP,#0xF0+var_CC]
37D0F2:  ADR.W           R1, aComppedcollped; "CompPedCollPedResp"
37D0F6:  LDR             R2, [R4]; CPed *
37D0F8:  STR             R0, [R4,#0x2C]
37D0FA:  LDR             R0, [R3]; g_ikChainMan ; int
37D0FC:  MOV.W           R3, #0x1F4
37D100:  STR             R6, [SP,#0xF0+var_D4]; int
37D102:  STR             R5, [SP,#0xF0+var_D8]; int
37D104:  STR             R3, [SP,#0xF0+var_DC]; int
37D106:  MOV.W           R3, #0x3E800000
37D10A:  STR             R3, [SP,#0xF0+var_E0]; float
37D10C:  MOVS            R3, #1
37D10E:  STRD.W          R6, R3, [SP,#0xF0+var_E8]; int
37D112:  MOVS            R3, #5
37D114:  STR             R3, [SP,#0xF0+var_EC]; int
37D116:  MOV.W           R3, #0x7D0
37D11A:  STR             R3, [SP,#0xF0+var_F0]; int
37D11C:  MOV             R3, R10; int
37D11E:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37D122:  CMP.W           R11, #4
37D126:  MOV             R11, R4
37D128:  BNE.W           loc_37CEA2
37D12C:  B               loc_37D47A
37D12E:  VCMPE.F32       S2, #0.0
37D132:  VMRS            APSR_nzcv, FPSCR
37D136:  BLT.W           loc_37D40E
37D13A:  MOVS            R0, #dword_1C; this
37D13C:  MOVS            R4, #0x1C
37D13E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37D142:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37D146:  LDR.W           R1, =(_ZTV14CTaskSimpleSay_ptr - 0x37D158)
37D14A:  MOVS            R6, #0
37D14C:  LDR.W           R3, =(g_ikChainMan_ptr - 0x37D160)
37D150:  MOV.W           R2, #0xFFFFFFFF
37D154:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
37D156:  STRH            R6, [R0,#0x18]
37D158:  STRD.W          R6, R6, [R0,#0x10]
37D15C:  ADD             R3, PC; g_ikChainMan_ptr
37D15E:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
37D160:  STRD.W          R4, R2, [R0,#8]
37D164:  ADDS            R1, #8
37D166:  STR             R1, [R0]
37D168:  LDR.W           R11, [SP,#0xF0+var_CC]
37D16C:  B               loc_37D446
37D16E:  CMP.W           R11, #1
37D172:  LDR.W           R11, [SP,#0xF0+var_CC]
37D176:  IT LS
37D178:  CMPLS           R0, #7
37D17A:  BHI.W           loc_37D47A
37D17E:  MOVS            R1, #1; unsigned int
37D180:  LSL.W           R0, R1, R0
37D184:  TST.W           R0, #0xD0
37D188:  BEQ.W           loc_37D47A
37D18C:  VCMPE.F32       S0, #0.0
37D190:  VMRS            APSR_nzcv, FPSCR
37D194:  BGT.W           loc_37D47A
37D198:  MOVS            R0, #dword_1C; this
37D19A:  MOVS            R4, #0x1C
37D19C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37D1A0:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37D1A4:  LDR             R1, =(_ZTV14CTaskSimpleSay_ptr - 0x37D1B2)
37D1A6:  MOVS            R6, #0
37D1A8:  LDR             R3, =(g_ikChainMan_ptr - 0x37D1B6)
37D1AA:  MOV.W           R2, #0xFFFFFFFF
37D1AE:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
37D1B0:  STRH            R6, [R0,#0x18]
37D1B2:  ADD             R3, PC; g_ikChainMan_ptr
37D1B4:  STRD.W          R6, R6, [R0,#0x10]
37D1B8:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
37D1BA:  MOVS            R5, #3
37D1BC:  STRD.W          R4, R2, [R0,#8]
37D1C0:  ADDS            R1, #8
37D1C2:  STR             R1, [R0]
37D1C4:  LDR.W           R2, [R11]; CPed *
37D1C8:  ADR             R1, aComppedcollped; "CompPedCollPedResp"
37D1CA:  STR.W           R0, [R11,#0x2C]
37D1CE:  LDR             R0, [R3]; g_ikChainMan ; int
37D1D0:  MOV.W           R3, #0x1F4
37D1D4:  STR             R6, [SP,#0xF0+var_D4]; int
37D1D6:  STR             R5, [SP,#0xF0+var_D8]; int
37D1D8:  STR             R3, [SP,#0xF0+var_DC]; int
37D1DA:  MOV.W           R3, #0x3E800000
37D1DE:  STR             R3, [SP,#0xF0+var_E0]; float
37D1E0:  MOVS            R3, #1
37D1E2:  STRD.W          R6, R3, [SP,#0xF0+var_E8]; int
37D1E6:  MOVS            R3, #5
37D1E8:  STR             R3, [SP,#0xF0+var_EC]; int
37D1EA:  MOV.W           R3, #0x7D0
37D1EE:  STR             R3, [SP,#0xF0+var_F0]; int
37D1F0:  MOV             R3, R10; int
37D1F2:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37D1F6:  CMP.W           R8, #4
37D1FA:  BNE.W           loc_37CEA2
37D1FE:  B               loc_37D47A
37D200:  DCFS 4.6566e-10
37D204:  DCFS 0.0
37D208:  DCFS 0.33
37D20C:  VLDR            S2, =0.66
37D210:  VCMPE.F32       S0, S2
37D214:  VMRS            APSR_nzcv, FPSCR
37D218:  BGE             loc_37D244
37D21A:  MOVS            R0, #dword_1C; this
37D21C:  MOVS            R4, #0x1C
37D21E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37D222:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37D226:  LDR             R1, =(_ZTV14CTaskSimpleSay_ptr - 0x37D230)
37D228:  MOVS            R2, #0
37D22A:  STRH            R2, [R0,#0x18]
37D22C:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
37D22E:  STRD.W          R2, R2, [R0,#0x10]
37D232:  MOV.W           R2, #0xFFFFFFFF
37D236:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
37D238:  STRD.W          R4, R2, [R0,#8]
37D23C:  ADDS            R1, #8
37D23E:  STR             R1, [R0]
37D240:  STR.W           R0, [R11,#0x2C]
37D244:  LDR.W           R0, [R11]
37D248:  MOVW            R1, #0x4B7; int
37D24C:  LDR.W           R0, [R0,#0x440]; this
37D250:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
37D254:  MOV             R4, R0
37D256:  LDR.W           R0, [R11]
37D25A:  MOVW            R1, #0x395; int
37D25E:  LDR.W           R0, [R0,#0x440]
37D262:  ADDS            R0, #4; this
37D264:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
37D268:  MOV             R6, R0
37D26A:  LDR.W           R0, [R11]
37D26E:  MOV.W           R1, #0x384; int
37D272:  LDR.W           R0, [R0,#0x440]; this
37D276:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
37D27A:  MOV             R9, R0
37D27C:  LDR.W           R0, [R11]
37D280:  MOVW            R1, #0x38B; int
37D284:  LDR.W           R0, [R0,#0x440]; this
37D288:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
37D28C:  CMP             R4, #0
37D28E:  MOV             R1, R4
37D290:  IT NE
37D292:  MOVNE           R1, #1
37D294:  ANDS            R1, R5
37D296:  CMP             R1, #1
37D298:  BNE             loc_37D36A
37D29A:  CMP             R0, #0
37D29C:  BEQ.W           loc_37D47A
37D2A0:  LDR             R1, [R4,#0x10]
37D2A2:  CMP             R1, #0
37D2A4:  IT NE
37D2A6:  ORRSNE.W        R2, R6, R9
37D2AA:  BEQ.W           loc_37D47A
37D2AE:  LDR.W           R12, [R11]
37D2B2:  LDR             R3, [R1,#0x14]
37D2B4:  LDR.W           R5, [R12,#0x14]
37D2B8:  ADD.W           R2, R3, #0x30 ; '0'
37D2BC:  CMP             R3, #0
37D2BE:  IT EQ
37D2C0:  ADDEQ           R2, R1, #4
37D2C2:  ADD.W           R1, R5, #0x30 ; '0'
37D2C6:  CMP             R5, #0
37D2C8:  VLDR            S2, [R2]
37D2CC:  VLDR            S0, [R2,#4]
37D2D0:  IT EQ
37D2D2:  ADDEQ.W         R1, R12, #4
37D2D6:  VLDR            S4, [R1]
37D2DA:  CMP             R6, #0
37D2DC:  VLDR            S6, [R1,#4]
37D2E0:  ITTT NE
37D2E2:  LDRBNE.W        R1, [R6,#0x5C]
37D2E6:  ORRNE.W         R1, R1, #2
37D2EA:  STRBNE.W        R1, [R6,#0x5C]
37D2EE:  VSUB.F32        S2, S4, S2
37D2F2:  CMP.W           R9, #0
37D2F6:  VSUB.F32        S0, S6, S0
37D2FA:  VMUL.F32        S6, S2, S2
37D2FE:  VMUL.F32        S4, S0, S0
37D302:  VADD.F32        S4, S6, S4
37D306:  VLDR            S6, =0.0
37D30A:  VADD.F32        S4, S4, S6
37D30E:  VLDR            S6, =0.1
37D312:  VSQRT.F32       S4, S4
37D316:  VADD.F32        S6, S4, S6
37D31A:  IT NE
37D31C:  VSTRNE          S6, [R9,#0x18]
37D320:  VLDR            S8, [R0,#0x18]
37D324:  VCMP.F32        S8, S6
37D328:  VMRS            APSR_nzcv, FPSCR
37D32C:  BEQ             loc_37D346
37D32E:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x37D33A)
37D330:  MOVS            R2, #0
37D332:  VSTR            S6, [R0,#0x18]
37D336:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
37D338:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
37D33A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
37D33C:  STRD.W          R1, R2, [R0,#0x28]
37D340:  MOVS            R1, #1
37D342:  STRB.W          R1, [R0,#0x30]
37D346:  LDR             R0, =(_ZN24CTaskComplexGangFollower25ms_fDistFromLeaderCanStopE_ptr - 0x37D34C)
37D348:  ADD             R0, PC; _ZN24CTaskComplexGangFollower25ms_fDistFromLeaderCanStopE_ptr
37D34A:  LDR             R0, [R0]; CTaskComplexGangFollower::ms_fDistFromLeaderCanStop ...
37D34C:  VLDR            S6, [R0]
37D350:  VCMPE.F32       S4, S6
37D354:  VMRS            APSR_nzcv, FPSCR
37D358:  BGE.W           loc_37D47A
37D35C:  MOVS            R0, #0
37D35E:  VSTR            S2, [R4,#0x20]
37D362:  VSTR            S0, [R4,#0x24]
37D366:  STR             R0, [R4,#0x28]
37D368:  B               loc_37D47A
37D36A:  LDR.W           R0, [R11]
37D36E:  ADD             R4, SP, #0xF0+var_C8
37D370:  LDR             R0, [R0,#0x14]
37D372:  LDR             R1, [R0,#0x10]
37D374:  LDR             R0, [R0,#0x14]
37D376:  STR             R0, [SP,#0xF0+var_C4]
37D378:  MOVS            R0, #0
37D37A:  STR             R1, [SP,#0xF0+var_C8]
37D37C:  VLDR            S0, [SP,#0xF0+var_C4]
37D380:  STR             R0, [SP,#0xF0+var_C0]
37D382:  MOV             R0, R4; this
37D384:  VNEG.F32        S0, S0
37D388:  VSTR            S0, [SP,#0xF0+var_C4]
37D38C:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
37D390:  MOVS            R0, #dword_1C; this
37D392:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37D396:  MOV             R1, R10; CEntity *
37D398:  MOV             R2, R4; CVector *
37D39A:  MOV             R6, R0
37D39C:  BLX             j__ZN23CTaskComplexEvasiveStepC2EP7CEntityRK7CVector; CTaskComplexEvasiveStep::CTaskComplexEvasiveStep(CEntity *,CVector const&)
37D3A0:  CMP             R6, #0
37D3A2:  STR.W           R6, [R11,#0x24]
37D3A6:  BEQ             loc_37D480
37D3A8:  MOV             R0, R10; this
37D3AA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37D3AE:  CMP             R0, #1
37D3B0:  BNE             loc_37D480
37D3B2:  LDR.W           R0, [R11]
37D3B6:  LDR.W           R0, [R0,#0x440]
37D3BA:  LDRB.W          R1, [R0,#0x180]
37D3BE:  CMP             R1, #0
37D3C0:  BEQ             loc_37D480
37D3C2:  LDRB.W          R1, [R0,#0x181]
37D3C6:  CBZ             R1, loc_37D3DE
37D3C8:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x37D3D0)
37D3CA:  MOVS            R2, #0
37D3CC:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
37D3CE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
37D3D0:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
37D3D2:  STRB.W          R2, [R0,#0x181]
37D3D6:  STR.W           R1, [R0,#0x178]
37D3DA:  MOV             R2, R1
37D3DC:  B               loc_37D3EA
37D3DE:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x37D3E8)
37D3E0:  LDR.W           R2, [R0,#0x178]
37D3E4:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
37D3E6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
37D3E8:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
37D3EA:  LDR.W           R3, [R0,#0x17C]
37D3EE:  ADD             R2, R3
37D3F0:  CMP             R2, R1
37D3F2:  BHI             loc_37D480
37D3F4:  MOVW            R2, #0xBB8
37D3F8:  STRD.W          R1, R2, [R0,#0x178]
37D3FC:  MOVS            R2, #1
37D3FE:  LDRB.W          R1, [R0,#0x174]
37D402:  STRB.W          R2, [R0,#0x180]
37D406:  ADDS            R1, #1
37D408:  STRB.W          R1, [R0,#0x174]
37D40C:  B               loc_37D480
37D40E:  LDR.W           R11, [SP,#0xF0+var_CC]
37D412:  VCMPE.F32       S0, #0.0
37D416:  VMRS            APSR_nzcv, FPSCR
37D41A:  BGT             loc_37D47A
37D41C:  MOVS            R0, #dword_1C; this
37D41E:  MOVS            R4, #0x1C
37D420:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37D424:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37D428:  LDR             R1, =(_ZTV14CTaskSimpleSay_ptr - 0x37D436)
37D42A:  MOVS            R6, #0
37D42C:  LDR             R3, =(g_ikChainMan_ptr - 0x37D43A)
37D42E:  MOV.W           R2, #0xFFFFFFFF
37D432:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
37D434:  STRH            R6, [R0,#0x18]
37D436:  ADD             R3, PC; g_ikChainMan_ptr
37D438:  STRD.W          R6, R6, [R0,#0x10]
37D43C:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
37D43E:  STRD.W          R4, R2, [R0,#8]
37D442:  ADDS            R1, #8
37D444:  STR             R1, [R0]
37D446:  LDR.W           R2, [R11]; CPed *
37D44A:  MOVS            R5, #3
37D44C:  STR.W           R0, [R11,#0x2C]
37D450:  ADR             R1, aComppedcollped; "CompPedCollPedResp"
37D452:  LDR             R0, [R3]; g_ikChainMan ; int
37D454:  MOV.W           R3, #0x1F4
37D458:  STR             R6, [SP,#0xF0+var_D4]; int
37D45A:  STR             R5, [SP,#0xF0+var_D8]; int
37D45C:  STR             R3, [SP,#0xF0+var_DC]; int
37D45E:  MOV.W           R3, #0x3E800000
37D462:  STR             R3, [SP,#0xF0+var_E0]; float
37D464:  MOVS            R3, #1
37D466:  STRD.W          R6, R3, [SP,#0xF0+var_E8]; int
37D46A:  MOVS            R3, #5
37D46C:  STR             R3, [SP,#0xF0+var_EC]; int
37D46E:  MOV.W           R3, #0x7D0
37D472:  STR             R3, [SP,#0xF0+var_F0]; int
37D474:  MOV             R3, R10; int
37D476:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
37D47A:  MOVS            R0, #0
37D47C:  STR.W           R0, [R11,#0x24]
37D480:  ADD             SP, SP, #0x90
37D482:  VPOP            {D8-D15}
37D486:  ADD             SP, SP, #4
37D488:  POP.W           {R8-R11}
37D48C:  POP             {R4-R7,PC}
37D48E:  MOV             R0, R10; this
37D490:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK4CPedR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CPed const&,CEntity &)
37D494:  MOV             R4, R0
37D496:  MOVS            R0, #off_18; this
37D498:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37D49C:  MOV             R1, R4; int
37D49E:  MOVS            R2, #0; int
37D4A0:  MOV             R6, R0
37D4A2:  BLX             j__ZN24CTaskComplexFallAndGetUpC2Eii; CTaskComplexFallAndGetUp::CTaskComplexFallAndGetUp(int,int)
37D4A6:  B               loc_37D3A0
37D4A8:  MOV             R0, R10; this
37D4AA:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK4CPedR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CPed const&,CEntity &)
37D4AE:  MOV             R4, R0
37D4B0:  MOVS            R0, #off_18; this
37D4B2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37D4B6:  MOV             R1, R4; int
37D4B8:  MOVS            R2, #0; int
37D4BA:  MOV             R6, R0
37D4BC:  BLX             j__ZN24CTaskComplexFallAndGetUpC2Eii; CTaskComplexFallAndGetUp::CTaskComplexFallAndGetUp(int,int)
37D4C0:  LDR.W           R11, [SP,#0xF0+var_CC]
37D4C4:  B               loc_37D3A0
