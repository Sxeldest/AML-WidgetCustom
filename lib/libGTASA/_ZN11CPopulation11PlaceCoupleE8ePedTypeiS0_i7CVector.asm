; =========================================================
; Game Engine Function: _ZN11CPopulation11PlaceCoupleE8ePedTypeiS0_i7CVector
; Address            : 0x4CED58 - 0x4CF0C8
; =========================================================

4CED58:  PUSH            {R4-R7,LR}
4CED5A:  ADD             R7, SP, #0xC
4CED5C:  PUSH.W          {R8-R11}
4CED60:  SUB             SP, SP, #4
4CED62:  VPUSH           {D8-D11}
4CED66:  SUB             SP, SP, #0x40
4CED68:  MOV             R4, R3
4CED6A:  MOV             R5, R1
4CED6C:  LDRD.W          R3, R1, [R7,#arg_0]
4CED70:  CMP             R0, #4
4CED72:  LDR             R6, [R7,#arg_8]
4CED74:  STRD.W          R3, R1, [SP,#0x80+var_50]
4CED78:  STR             R6, [SP,#0x80+var_48]
4CED7A:  IT EQ
4CED7C:  CMPEQ           R2, #5
4CED7E:  BNE.W           loc_4CF0B0
4CED82:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
4CED86:  CMP             R0, #0
4CED88:  BNE.W           loc_4CF0B0
4CED8C:  LDR             R0, =(TheCamera_ptr - 0x4CED98)
4CED8E:  ADD             R1, SP, #0x80+var_50; CVector *
4CED90:  MOV.W           R2, #0x3FC00000; float
4CED94:  ADD             R0, PC; TheCamera_ptr
4CED96:  LDR             R0, [R0]; TheCamera ; this
4CED98:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
4CED9C:  CMP             R0, #1
4CED9E:  BNE             loc_4CEDE8
4CEDA0:  MOV.W           R0, #0xFFFFFFFF; int
4CEDA4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4CEDA8:  LDR             R1, [R0,#0x14]
4CEDAA:  VLDR            D16, [SP,#0x80+var_50]
4CEDAE:  ADD.W           R2, R1, #0x30 ; '0'
4CEDB2:  CMP             R1, #0
4CEDB4:  IT EQ
4CEDB6:  ADDEQ           R2, R0, #4
4CEDB8:  VLDR            D17, [R2]
4CEDBC:  VSUB.F32        D16, D16, D17
4CEDC0:  VMUL.F32        D0, D16, D16
4CEDC4:  VADD.F32        S0, S0, S1
4CEDC8:  VSQRT.F32       S16, S0
4CEDCC:  BLX             j__ZN11CPopulation25PedCreationDistMultiplierEv; CPopulation::PedCreationDistMultiplier(void)
4CEDD0:  VLDR            S0, =42.5
4CEDD4:  VMOV            S2, R0
4CEDD8:  VMUL.F32        S0, S2, S0
4CEDDC:  VCMPE.F32       S16, S0
4CEDE0:  VMRS            APSR_nzcv, FPSCR
4CEDE4:  BLT.W           loc_4CF0B0
4CEDE8:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CEDF6)
4CEDEA:  MOV.W           R2, #0xFFFFFFFF; float
4CEDEE:  MOVS            R3, #0; int
4CEDF0:  MOVS            R6, #0
4CEDF2:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CEDF4:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CEDF6:  LDR.W           R0, [R0,R5,LSL#2]
4CEDFA:  LDR             R0, [R0,#0x2C]
4CEDFC:  LDR             R1, [R0,#0x24]; CVector *
4CEDFE:  MOVS            R0, #(stderr+1)
4CEE00:  STRD.W          R0, R0, [SP,#0x80+var_80]; CEntity **
4CEE04:  STR             R0, [SP,#0x80+var_78]; unsigned __int8
4CEE06:  ADD             R0, SP, #0x80+var_50; this
4CEE08:  BLX             j__ZN13CPedPlacement21IsPositionClearForPedERK7CVectorfiPP7CEntityhhh; CPedPlacement::IsPositionClearForPed(CVector const&,float,int,CEntity **,uchar,uchar,uchar)
4CEE0C:  CMP             R0, #1
4CEE0E:  BNE.W           loc_4CF0B0
4CEE12:  VMOV.F32        S16, #1.0
4CEE16:  VLDR            S0, [SP,#0x80+var_48]
4CEE1A:  LDRD.W          R0, R1, [SP,#0x80+var_50]; float
4CEE1E:  SUB.W           R3, R7, #-var_51; float
4CEE22:  STR             R6, [SP,#0x80+var_80]; bool *
4CEE24:  VADD.F32        S0, S0, S16
4CEE28:  VMOV            R2, S0; float
4CEE2C:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
4CEE30:  LDRB.W          R1, [R7,#var_51]
4CEE34:  CMP             R1, #0
4CEE36:  BEQ.W           loc_4CF0B0
4CEE3A:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CEE40)
4CEE3C:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CEE3E:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
4CEE40:  LDR.W           R1, [R1,R5,LSL#2]
4CEE44:  LDR             R1, [R1,#0x34]
4CEE46:  CMP             R1, #0
4CEE48:  BEQ.W           loc_4CF0B0
4CEE4C:  VMOV            S0, R0
4CEE50:  VLDR            S2, [SP,#0x80+var_48]
4CEE54:  LDRD.W          R0, R1, [SP,#0x80+var_50]
4CEE58:  ADD             R2, SP, #0x80+var_60
4CEE5A:  VADD.F32        S0, S0, S16
4CEE5E:  MOVS            R3, #1
4CEE60:  VMAX.F32        D9, D1, D0
4CEE64:  VSTR            S18, [SP,#0x80+var_58]
4CEE68:  STRD.W          R0, R1, [SP,#0x80+var_60]
4CEE6C:  MOVS            R0, #4
4CEE6E:  MOV             R1, R5
4CEE70:  BLX             j__ZN11CPopulation6AddPedE8ePedTypejRK7CVectorb; CPopulation::AddPed(ePedType,uint,CVector const&,bool)
4CEE74:  MOV             R5, R0
4CEE76:  CMP             R5, #0
4CEE78:  BEQ.W           loc_4CF0B0
4CEE7C:  LDR             R0, [R5,#0x18]
4CEE7E:  MOVS            R1, #0
4CEE80:  BLX             j__ZN18CVisibilityPlugins13SetClumpAlphaEP7RpClumpi; CVisibilityPlugins::SetClumpAlpha(RpClump *,int)
4CEE84:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CEE8A)
4CEE86:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CEE88:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CEE8A:  LDR.W           R0, [R0,R4,LSL#2]
4CEE8E:  LDR             R0, [R0,#0x34]
4CEE90:  CMP             R0, #0
4CEE92:  BEQ.W           loc_4CF0B0
4CEE96:  LDRD.W          R0, R1, [SP,#0x80+var_50]
4CEE9A:  ADD             R2, SP, #0x80+var_60
4CEE9C:  VSTR            S18, [SP,#0x80+var_58]
4CEEA0:  MOVS            R3, #1
4CEEA2:  STRD.W          R0, R1, [SP,#0x80+var_60]
4CEEA6:  MOVS            R0, #5
4CEEA8:  MOV             R1, R4
4CEEAA:  BLX             j__ZN11CPopulation6AddPedE8ePedTypejRK7CVectorb; CPopulation::AddPed(ePedType,uint,CVector const&,bool)
4CEEAE:  MOV             R6, R0
4CEEB0:  CMP             R6, #0
4CEEB2:  BEQ.W           loc_4CF0B0
4CEEB6:  MOV             R0, R6; this
4CEEB8:  BLX             j__ZN4CPed16GetWalkAnimSpeedEv; CPed::GetWalkAnimSpeed(void)
4CEEBC:  VMOV            S18, R0
4CEEC0:  MOV             R0, R5; this
4CEEC2:  VMOV.F32        S20, #0.75
4CEEC6:  BLX             j__ZN4CPed16GetWalkAnimSpeedEv; CPed::GetWalkAnimSpeed(void)
4CEECA:  VCMPE.F32       S18, S20
4CEECE:  VMRS            APSR_nzcv, FPSCR
4CEED2:  ITTT GE
4CEED4:  VMOVGE          S0, R0
4CEED8:  VCMPEGE.F32     S0, S20
4CEEDC:  VMRSGE          APSR_nzcv, FPSCR
4CEEE0:  BLT.W           loc_4CF0B0
4CEEE4:  VSUB.F32        S2, S18, S0
4CEEE8:  VLDR            S4, =0.45
4CEEEC:  VABS.F32        S2, S2
4CEEF0:  VCMPE.F32       S2, S4
4CEEF4:  VMRS            APSR_nzcv, FPSCR
4CEEF8:  BGT.W           loc_4CF0B0
4CEEFC:  VCMPE.F32       S18, S0
4CEF00:  VMRS            APSR_nzcv, FPSCR
4CEF04:  BLE             loc_4CEF4E
4CEF06:  MOVS            R0, #dword_20; this
4CEF08:  LDR.W           R10, [R5,#0x440]
4CEF0C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4CEF10:  MOVW            R9, #0
4CEF14:  MOV.W           R11, #1
4CEF18:  MOVT            R9, #0x4120
4CEF1C:  MOV             R1, R6; CPed *
4CEF1E:  MOVS            R2, #0; unsigned __int8
4CEF20:  MOVS            R3, #1; unsigned __int8
4CEF22:  MOV             R8, R0
4CEF24:  STRD.W          R11, R9, [SP,#0x80+var_80]; unsigned __int8
4CEF28:  BLX             j__ZN22CTaskComplexBeInCoupleC2EP4CPedhhhf; CTaskComplexBeInCouple::CTaskComplexBeInCouple(CPed *,uchar,uchar,uchar,float)
4CEF2C:  ADD.W           R0, R10, #4; this
4CEF30:  MOV             R1, R8; CTask *
4CEF32:  MOVS            R2, #3; int
4CEF34:  MOVS            R3, #0; bool
4CEF36:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
4CEF3A:  MOVS            R0, #dword_20; this
4CEF3C:  LDR.W           R10, [R6,#0x440]
4CEF40:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4CEF44:  MOV             R8, R0
4CEF46:  STRD.W          R11, R9, [SP,#0x80+var_80]
4CEF4A:  MOV             R1, R5
4CEF4C:  B               loc_4CEF94
4CEF4E:  MOVS            R0, #dword_20; this
4CEF50:  LDR.W           R10, [R6,#0x440]
4CEF54:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4CEF58:  MOVW            R9, #0
4CEF5C:  MOV.W           R11, #1
4CEF60:  MOVT            R9, #0x4120
4CEF64:  MOV             R1, R5; CPed *
4CEF66:  MOVS            R2, #0; unsigned __int8
4CEF68:  MOVS            R3, #1; unsigned __int8
4CEF6A:  MOV             R8, R0
4CEF6C:  STRD.W          R11, R9, [SP,#0x80+var_80]; unsigned __int8
4CEF70:  BLX             j__ZN22CTaskComplexBeInCoupleC2EP4CPedhhhf; CTaskComplexBeInCouple::CTaskComplexBeInCouple(CPed *,uchar,uchar,uchar,float)
4CEF74:  ADD.W           R0, R10, #4; this
4CEF78:  MOV             R1, R8; CTask *
4CEF7A:  MOVS            R2, #3; int
4CEF7C:  MOVS            R3, #0; bool
4CEF7E:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
4CEF82:  MOVS            R0, #dword_20; this
4CEF84:  LDR.W           R10, [R5,#0x440]
4CEF88:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4CEF8C:  MOV             R8, R0
4CEF8E:  MOV             R1, R6; CPed *
4CEF90:  STRD.W          R11, R9, [SP,#0x80+var_80]; unsigned __int8
4CEF94:  MOVS            R2, #1; unsigned __int8
4CEF96:  MOVS            R3, #1; unsigned __int8
4CEF98:  BLX             j__ZN22CTaskComplexBeInCoupleC2EP4CPedhhhf; CTaskComplexBeInCouple::CTaskComplexBeInCouple(CPed *,uchar,uchar,uchar,float)
4CEF9C:  ADD.W           R0, R10, #4; this
4CEFA0:  MOV             R1, R8; CTask *
4CEFA2:  MOVS            R2, #3; int
4CEFA4:  MOVS            R3, #0; bool
4CEFA6:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
4CEFAA:  LDR             R0, [R5,#0x14]
4CEFAC:  MOVS            R3, #0
4CEFAE:  LDR             R1, =(_ZN35CTaskComplexFollowLeaderInFormation10ms_offsetsE_ptr - 0x4CEFC6)
4CEFB0:  ADD.W           R2, R0, #0x30 ; '0'
4CEFB4:  CMP             R0, #0
4CEFB6:  IT EQ
4CEFB8:  ADDEQ           R2, R5, #4
4CEFBA:  VLDR            S0, =0.0
4CEFBE:  VLDR            S6, [R2,#8]
4CEFC2:  ADD             R1, PC; _ZN35CTaskComplexFollowLeaderInFormation10ms_offsetsE_ptr
4CEFC4:  VLDR            S2, [R2]
4CEFC8:  VADD.F32        S22, S6, S0
4CEFCC:  LDR             R0, [R1]; CTaskComplexFollowLeaderInFormation::ms_offsets ...
4CEFCE:  VLDR            S4, [R2,#4]
4CEFD2:  STR             R3, [SP,#0x80+var_80]; bool *
4CEFD4:  SUB.W           R3, R7, #-var_61; float
4CEFD8:  VLDR            S0, [R0,#0x20]
4CEFDC:  VLDR            S6, [R0,#0x24]
4CEFE0:  VADD.F32        S20, S0, S2
4CEFE4:  VADD.F32        S18, S6, S4
4CEFE8:  VADD.F32        S0, S22, S16
4CEFEC:  VMOV            R0, S20; this
4CEFF0:  VSTR            S20, [SP,#0x80+var_60]
4CEFF4:  VMOV            R1, S18; float
4CEFF8:  VSTR            S18, [SP,#0x80+var_5C]
4CEFFC:  VMOV            R2, S0; float
4CF000:  VSTR            S22, [SP,#0x80+var_58]
4CF004:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
4CF008:  LDRB.W          R1, [R7,#var_61]
4CF00C:  CMP             R1, #0
4CF00E:  BEQ             loc_4CF094
4CF010:  VMOV            S0, R0
4CF014:  LDR             R0, [R6,#0x14]
4CF016:  VADD.F32        S0, S0, S16
4CF01A:  CMP             R0, #0
4CF01C:  VMAX.F32        D0, D11, D0
4CF020:  BEQ             loc_4CF032
4CF022:  VSTR            S20, [R0,#0x30]
4CF026:  LDR             R0, [R6,#0x14]
4CF028:  VSTR            S18, [R0,#0x34]
4CF02C:  LDR             R0, [R6,#0x14]
4CF02E:  ADDS            R0, #0x38 ; '8'
4CF030:  B               loc_4CF03E
4CF032:  ADD.W           R0, R6, #0xC
4CF036:  VSTR            S20, [R6,#4]
4CF03A:  VSTR            S18, [R6,#8]
4CF03E:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CF04C)
4CF040:  ADD             R3, SP, #0x80+var_70; int
4CF042:  VSTR            S0, [R0]
4CF046:  MOVS            R2, #3; float
4CF048:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CF04A:  LDR             R0, [R1]; CModelInfo::ms_modelInfoPtrs ...
4CF04C:  MOVS            R1, #0
4CF04E:  STRD.W          R1, R1, [SP,#0x80+var_70]
4CF052:  STR             R1, [SP,#0x80+var_68]
4CF054:  LDR.W           R0, [R0,R4,LSL#2]
4CF058:  LDR             R0, [R0,#0x2C]
4CF05A:  LDR             R1, [R0,#0x24]; CVector *
4CF05C:  MOVS            R0, #(stderr+1)
4CF05E:  STRD.W          R0, R0, [SP,#0x80+var_80]; CEntity **
4CF062:  STR             R0, [SP,#0x80+var_78]; unsigned __int8
4CF064:  ADD             R0, SP, #0x80+var_60; this
4CF066:  BLX             j__ZN13CPedPlacement21IsPositionClearForPedERK7CVectorfiPP7CEntityhhh; CPedPlacement::IsPositionClearForPed(CVector const&,float,int,CEntity **,uchar,uchar,uchar)
4CF06A:  LDR             R0, [SP,#0x80+var_70]
4CF06C:  CMP             R0, R6
4CF06E:  IT NE
4CF070:  CMPNE           R0, #0
4CF072:  BEQ             loc_4CF078
4CF074:  CMP             R0, R5
4CF076:  BNE             loc_4CF094
4CF078:  LDR             R0, [SP,#0x80+var_6C]
4CF07A:  CMP             R0, R6
4CF07C:  BEQ             loc_4CF086
4CF07E:  CMP             R0, #0
4CF080:  IT NE
4CF082:  CMPNE           R0, R5
4CF084:  BNE             loc_4CF094
4CF086:  LDR             R0, [SP,#0x80+var_68]
4CF088:  CMP             R0, R6
4CF08A:  IT NE
4CF08C:  CMPNE           R0, #0
4CF08E:  BEQ             loc_4CF0BE
4CF090:  CMP             R0, R5
4CF092:  BEQ             loc_4CF0BE
4CF094:  MOV             R0, R5; this
4CF096:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
4CF09A:  LDR             R0, [R5]
4CF09C:  LDR             R1, [R0,#4]
4CF09E:  MOV             R0, R5
4CF0A0:  BLX             R1
4CF0A2:  MOV             R0, R6; this
4CF0A4:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
4CF0A8:  LDR             R0, [R6]
4CF0AA:  LDR             R1, [R0,#4]
4CF0AC:  MOV             R0, R6
4CF0AE:  BLX             R1
4CF0B0:  ADD             SP, SP, #0x40 ; '@'
4CF0B2:  VPOP            {D8-D11}
4CF0B6:  ADD             SP, SP, #4
4CF0B8:  POP.W           {R8-R11}
4CF0BC:  POP             {R4-R7,PC}
4CF0BE:  LDR             R0, [R6,#0x18]
4CF0C0:  MOVS            R1, #0
4CF0C2:  BLX             j__ZN18CVisibilityPlugins13SetClumpAlphaEP7RpClumpi; CVisibilityPlugins::SetClumpAlpha(RpClump *,int)
4CF0C6:  B               loc_4CF0B0
