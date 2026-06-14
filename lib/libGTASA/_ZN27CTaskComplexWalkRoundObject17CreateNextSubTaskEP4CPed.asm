; =========================================================
; Game Engine Function: _ZN27CTaskComplexWalkRoundObject17CreateNextSubTaskEP4CPed
; Address            : 0x50DE1C - 0x50DF7A
; =========================================================

50DE1C:  PUSH            {R4-R7,LR}
50DE1E:  ADD             R7, SP, #0xC
50DE20:  PUSH.W          {R11}
50DE24:  SUB             SP, SP, #0x28; float
50DE26:  MOV             R4, R0
50DE28:  MOV             R5, R1
50DE2A:  LDR             R0, [R4,#0x1C]
50DE2C:  CMP             R0, #0
50DE2E:  BEQ.W           loc_50DF3E
50DE32:  LDR             R0, [R4,#8]
50DE34:  LDR             R1, [R0]
50DE36:  LDR             R1, [R1,#0x14]
50DE38:  BLX             R1
50DE3A:  MOVW            R1, #0x387; unsigned int
50DE3E:  CMP             R0, R1
50DE40:  BEQ             loc_50DE80
50DE42:  MOVW            R1, #0x386; unsigned int
50DE46:  CMP             R0, R1
50DE48:  BNE             loc_50DF3E
50DE4A:  LDR             R0, [R4,#0x20]
50DE4C:  LDR             R0, [R0]
50DE4E:  CBZ             R0, loc_50DEB6
50DE50:  MOVS            R0, #off_3C; this
50DE52:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50DE56:  MOV             R5, R0
50DE58:  LDR             R0, =(_ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr - 0x50DE5E)
50DE5A:  ADD             R0, PC; _ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr
50DE5C:  LDR             R0, [R0]; CTaskComplexFollowPointRoute::ms_fTargetRadius ...
50DE5E:  MOVS            R3, #0
50DE60:  LDR             R1, [R4,#0xC]; int
50DE62:  LDR             R2, [R4,#0x20]; CPointRoute *
50DE64:  VLDR            S0, [R0]
50DE68:  MOVS            R0, #1
50DE6A:  STRD.W          R3, R3, [SP,#0x38+var_2C]; bool
50DE6E:  STRD.W          R3, R0, [SP,#0x38+var_34]; float
50DE72:  MOV             R0, R5; this
50DE74:  MOVS            R3, #0; int
50DE76:  VSTR            S0, [SP,#0x38+var_38]
50DE7A:  BLX             j__ZN28CTaskComplexFollowPointRouteC2EiRK11CPointRouteiffbbb; CTaskComplexFollowPointRoute::CTaskComplexFollowPointRoute(int,CPointRoute const&,int,float,float,bool,bool,bool)
50DE7E:  B               loc_50DF40
50DE80:  LDR             R0, [R4,#0x20]
50DE82:  MOVS            R5, #0
50DE84:  LDR             R0, [R0]
50DE86:  CMP             R0, #0
50DE88:  BEQ             loc_50DF40
50DE8A:  MOVS            R0, #off_3C; this
50DE8C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50DE90:  LDR             R3, =(_ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr - 0x50DE98)
50DE92:  LDR             R1, [R4,#0xC]; int
50DE94:  ADD             R3, PC; _ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr
50DE96:  LDR             R2, [R4,#0x20]; CPointRoute *
50DE98:  STRD.W          R5, R5, [SP,#0x38+var_2C]; bool
50DE9C:  LDR             R3, [R3]; CTaskComplexFollowPointRoute::ms_fTargetRadius ...
50DE9E:  VLDR            S0, [R3]
50DEA2:  MOVS            R3, #1
50DEA4:  STRD.W          R5, R3, [SP,#0x38+var_34]; float
50DEA8:  MOVS            R3, #0; int
50DEAA:  VSTR            S0, [SP,#0x38+var_38]
50DEAE:  BLX             j__ZN28CTaskComplexFollowPointRouteC2EiRK11CPointRouteiffbbb; CTaskComplexFollowPointRoute::CTaskComplexFollowPointRoute(int,CPointRoute const&,int,float,float,bool,bool,bool)
50DEB2:  MOV             R5, R0
50DEB4:  B               loc_50DF40
50DEB6:  ADD             R6, SP, #0x38+var_20
50DEB8:  LDR             R1, [R4,#0x1C]; CPed *
50DEBA:  MOV             R0, R5; this
50DEBC:  MOV             R2, R6; CEntity *
50DEBE:  BLX             j__ZN20CPedGeometryAnalyser26ComputeClosestSurfacePointERK4CPedR7CEntityR7CVector; CPedGeometryAnalyser::ComputeClosestSurfacePoint(CPed const&,CEntity &,CVector &)
50DEC2:  LDR             R1, [R4,#0x1C]; CVector *
50DEC4:  MOV             R0, R6; this
50DEC6:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK7CVectorR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CVector const&,CEntity &)
50DECA:  LDR             R1, [R4,#0x1C]; CVector *
50DECC:  ADD.W           R5, R4, #0x10
50DED0:  MOV             R6, R0
50DED2:  MOV             R0, R5; this
50DED4:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK7CVectorR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CVector const&,CEntity &)
50DED8:  CMP             R6, R0
50DEDA:  BNE             loc_50DF4A
50DEDC:  LDR             R0, [R4,#0x20]
50DEDE:  LDR             R1, [R0]
50DEE0:  CMP             R1, #7
50DEE2:  BGT             loc_50DEFE
50DEE4:  ADD.W           R1, R1, R1,LSL#1
50DEE8:  VLDR            D16, [SP,#0x38+var_20]
50DEEC:  LDR             R2, [SP,#0x38+var_18]
50DEEE:  ADD.W           R1, R0, R1,LSL#2
50DEF2:  STR             R2, [R1,#0xC]
50DEF4:  VSTR            D16, [R1,#4]
50DEF8:  LDR             R1, [R0]
50DEFA:  ADDS            R1, #1
50DEFC:  STR             R1, [R0]
50DEFE:  LDR             R1, [R4,#0x1C]; CVector *
50DF00:  ADD             R2, SP, #0x38+var_20; CEntity *
50DF02:  MOV             R0, R5; this
50DF04:  BLX             j__ZN20CPedGeometryAnalyser26ComputeClosestSurfacePointERK7CVectorR7CEntityRS0_; CPedGeometryAnalyser::ComputeClosestSurfacePoint(CVector const&,CEntity &,CVector&)
50DF08:  LDR             R0, [R4,#0x20]
50DF0A:  LDR             R1, [R0]
50DF0C:  CMP             R1, #7
50DF0E:  BGT             loc_50DF30
50DF10:  ADD.W           R1, R1, R1,LSL#1
50DF14:  VLDR            D16, [SP,#0x38+var_20]
50DF18:  LDR             R2, [SP,#0x38+var_18]
50DF1A:  ADD.W           R1, R0, R1,LSL#2
50DF1E:  STR             R2, [R1,#0xC]
50DF20:  VSTR            D16, [R1,#4]
50DF24:  LDR             R1, [R0]
50DF26:  ADDS            R1, #1; unsigned int
50DF28:  STR             R1, [R0]
50DF2A:  LDR             R0, [R4,#0x20]
50DF2C:  LDR             R0, [R0]
50DF2E:  CBZ             R0, loc_50DF3E
50DF30:  MOVS            R0, #off_3C; this
50DF32:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50DF36:  MOV             R5, R0
50DF38:  LDR             R0, =(_ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr - 0x50DF3E)
50DF3A:  ADD             R0, PC; _ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr
50DF3C:  B               loc_50DE5C
50DF3E:  MOVS            R5, #0
50DF40:  MOV             R0, R5
50DF42:  ADD             SP, SP, #0x28 ; '('
50DF44:  POP.W           {R11}
50DF48:  POP             {R4-R7,PC}; float
50DF4A:  MOVS            R0, #word_28; this
50DF4C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50DF50:  MOV             R5, R0
50DF52:  LDR             R0, =(_ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr - 0x50DF5C)
50DF54:  LDR             R1, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x50DF62)
50DF56:  MOVS            R2, #0
50DF58:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr
50DF5A:  STRD.W          R2, R2, [SP,#0x38+var_34]; bool
50DF5E:  ADD             R1, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
50DF60:  ADD             R2, SP, #0x38+var_20; CVector *
50DF62:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fTargetRadius ...
50DF64:  LDR             R1, [R1]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
50DF66:  LDR             R3, [R0]; float
50DF68:  MOV             R0, R5; this
50DF6A:  VLDR            S0, [R1]
50DF6E:  MOVS            R1, #4; int
50DF70:  VSTR            S0, [SP,#0x38+var_38]
50DF74:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
50DF78:  B               loc_50DF40
