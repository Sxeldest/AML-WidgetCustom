; =========================================================
; Game Engine Function: _ZN10CGameLogic36RestorePlayerStuffDuringResurrectionEP10CPlayerPed7CVectorf
; Address            : 0x307990 - 0x307C7A
; =========================================================

307990:  PUSH            {R4-R7,LR}
307992:  ADD             R7, SP, #0xC
307994:  PUSH.W          {R8}
307998:  VPUSH           {D8}
30799C:  SUB             SP, SP, #0x10
30799E:  MOV             R4, R0
3079A0:  LDR             R0, =(_ZN10CGameLogic9SkipStateE_ptr - 0x3079AA)
3079A2:  STRD.W          R1, R2, [SP,#0x28+var_24]
3079A6:  ADD             R0, PC; _ZN10CGameLogic9SkipStateE_ptr
3079A8:  STR             R3, [SP,#0x28+var_1C]
3079AA:  LDR             R0, [R0]; CGameLogic::SkipState ...
3079AC:  LDR             R0, [R0]; CGameLogic::SkipState
3079AE:  CMP             R0, #2
3079B0:  BNE             loc_3079D0
3079B2:  LDR             R0, =(TheCamera_ptr - 0x3079BE)
3079B4:  MOVS            R1, #0; unsigned __int8
3079B6:  MOVS            R2, #0; unsigned __int8
3079B8:  MOVS            R3, #0; unsigned __int8
3079BA:  ADD             R0, PC; TheCamera_ptr
3079BC:  LDR             R5, [R0]; TheCamera
3079BE:  MOV             R0, R5; this
3079C0:  BLX             j__ZN7CCamera13SetFadeColourEhhh; CCamera::SetFadeColour(uchar,uchar,uchar)
3079C4:  MOV             R0, R5; this
3079C6:  MOV.W           R1, #0x3F000000; float
3079CA:  MOVS            R2, #1; __int16
3079CC:  BLX             j__ZN7CCamera4FadeEfs; CCamera::Fade(float,short)
3079D0:  LDR             R0, =(_ZN10CGameLogic9SkipStateE_ptr - 0x3079D8)
3079D2:  MOVS            R5, #0
3079D4:  ADD             R0, PC; _ZN10CGameLogic9SkipStateE_ptr
3079D6:  LDR             R0, [R0]; CGameLogic::SkipState ...
3079D8:  STR             R5, [R0]; CGameLogic::SkipState
3079DA:  MOVS            R0, #0; this
3079DC:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3079E0:  LDRH.W          R1, [R0,#0x110]
3079E4:  ADDW            R6, R4, #0x544
3079E8:  BIC.W           R1, R1, #0x100
3079EC:  STRH.W          R1, [R0,#0x110]
3079F0:  VLDR            S0, [R6]
3079F4:  VCMPE.F32       S0, #0.0
3079F8:  VMRS            APSR_nzcv, FPSCR
3079FC:  IT LE
3079FE:  BLXLE           j__ZN6CStats20UpdateStatsOnRespawnEv; CStats::UpdateStatsOnRespawn(void)
307A02:  MOV             R0, R4; this
307A04:  BLX             j__ZN10CPlayerPed29GetPlayerInfoForThisPlayerPedEv; CPlayerPed::GetPlayerInfoForThisPlayerPed(void)
307A08:  MOV             R8, R0
307A0A:  LDRB.W          R0, [R8,#0x14F]
307A0E:  VMOV            S0, R0
307A12:  VCVT.F32.U32    S0, S0
307A16:  VSTR            S0, [R6]
307A1A:  MOV             R6, R4
307A1C:  LDR             R0, [R4,#0x44]
307A1E:  LDR.W           R1, [R4,#0x444]
307A22:  LDR.W           R3, [R6,#0x1C]!
307A26:  BIC.W           R0, R0, #0x20000000
307A2A:  LDR.W           R2, [R4,#0x484]
307A2E:  STR.W           R5, [R4,#0x758]
307A32:  STR.W           R5, [R4,#0x54C]
307A36:  STR             R0, [R4,#0x44]
307A38:  ORR.W           R0, R3, #0x80
307A3C:  STR             R0, [R6]
307A3E:  BIC.W           R0, R2, #0x10000000
307A42:  STR.W           R0, [R4,#0x484]
307A46:  STRB.W          R5, [R1,#0x40]
307A4A:  LDR.W           R0, [R4,#0x444]; this
307A4E:  STRB.W          R5, [R0,#0x41]
307A52:  BLX             j__ZN6CMBlur14ClearDrunkBlurEv; CMBlur::ClearDrunkBlur(void)
307A56:  LDR.W           R0, [R4,#0x444]
307A5A:  STRB.W          R5, [R0,#0x42]
307A5E:  MOV             R0, R4; this
307A60:  BLX             j__ZN10CPlayerPed15ClearAdrenalineEv; CPlayerPed::ClearAdrenaline(void)
307A64:  MOV             R0, R4; this
307A66:  BLX             j__ZN10CPlayerPed17ResetSprintEnergyEv; CPlayerPed::ResetSprintEnergy(void)
307A6A:  LDR.W           R0, [R4,#0x738]
307A6E:  ADDW            R5, R4, #0x484
307A72:  CBZ             R0, loc_307A8A
307A74:  LDRB            R1, [R0]
307A76:  AND.W           R1, R1, #0xFD
307A7A:  STRB            R1, [R0]
307A7C:  LDR.W           R0, [R4,#0x738]; this
307A80:  BLX             j__ZN5CFire10ExtinguishEv; CFire::Extinguish(void)
307A84:  MOVS            R0, #0
307A86:  STR.W           R0, [R4,#0x738]
307A8A:  ADD.W           R0, R4, #0x13C; this
307A8E:  BLX             j__ZN17CAEPedAudioEntity14TurnOffJetPackEv; CAEPedAudioEntity::TurnOffJetPack(void)
307A92:  LDR             R0, [R5]
307A94:  BIC.W           R0, R0, #0x100
307A98:  STR             R0, [R5]
307A9A:  LDR.W           R0, [R4,#0x590]; this
307A9E:  CMP             R0, #0
307AA0:  ITT NE
307AA2:  ADDNE.W         R1, R4, #0x590; CEntity **
307AA6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
307AAA:  LDR.W           R0, [R4,#0x444]
307AAE:  MOVS            R5, #0
307AB0:  STR.W           R5, [R4,#0x590]
307AB4:  CMP             R0, #0
307AB6:  VLDR            S16, [R7,#arg_0]
307ABA:  ITE NE
307ABC:  LDRNE           R0, [R0]
307ABE:  MOVEQ           R0, #0
307AC0:  NOP
307AC2:  NOP
307AC4:  MOV             R0, R4; this
307AC6:  BLX             j__ZN4CPed22RestartNonPartialAnimsEv; CPed::RestartNonPartialAnims(void)
307ACA:  MOVW            R2, #0x4000
307ACE:  MOV             R0, R8; this
307AD0:  MOVT            R2, #0x461C; float
307AD4:  MOVS            R1, #0; bool
307AD6:  BLX             j__ZN11CPlayerInfo14MakePlayerSafeEbf; CPlayerInfo::MakePlayerSafe(bool,float)
307ADA:  LDR             R0, [R6]
307ADC:  BIC.W           R0, R0, #0x800
307AE0:  STR             R0, [R6]
307AE2:  MOV             R0, R4; this
307AE4:  BLX             j__ZN10CPlayerPed17ClearWeaponTargetEv; CPlayerPed::ClearWeaponTarget(void)
307AE8:  MOV             R0, R4; this
307AEA:  MOVS            R1, #0; bool
307AEC:  BLX             j__ZN10CPlayerPed15SetInitialStateEb; CPlayerPed::SetInitialState(bool)
307AF0:  LDR.W           R0, [R4,#0x59C]; this
307AF4:  BLX             j__ZN8CPedType23GetPedTypeAcquaintancesEi; CPedType::GetPedTypeAcquaintances(int)
307AF8:  LDR             R1, [R0]
307AFA:  STR.W           R1, [R4,#0x4EC]
307AFE:  LDR             R1, [R0,#4]
307B00:  STR.W           R1, [R4,#0x4F0]
307B04:  LDR             R1, [R0,#8]
307B06:  STR.W           R1, [R4,#0x4F4]
307B0A:  LDR             R1, [R0,#0xC]
307B0C:  STR.W           R1, [R4,#0x4F8]
307B10:  LDR             R0, [R0,#0x10]; this
307B12:  STR.W           R0, [R4,#0x4FC]
307B16:  BLX             j__ZN8CCarCtrl27ClearInterestingVehicleListEv; CCarCtrl::ClearInterestingVehicleList(void)
307B1A:  VMOV.F32        S0, #1.0
307B1E:  VLDR            S8, [SP,#0x28+var_1C]
307B22:  VLDR            S2, =0.0
307B26:  VLDR            S4, [SP,#0x28+var_24]
307B2A:  VLDR            S6, [SP,#0x28+var_20]
307B2E:  VADD.F32        S4, S4, S2
307B32:  LDR             R0, [R4]
307B34:  VADD.F32        S2, S6, S2
307B38:  VADD.F32        S0, S8, S0
307B3C:  LDR             R6, [R0,#0x3C]
307B3E:  MOV             R0, R4
307B40:  STR             R5, [SP,#0x28+var_28]
307B42:  VMOV            R1, S4
307B46:  VMOV            R2, S2
307B4A:  VMOV            R3, S0
307B4E:  BLX             R6
307B50:  VLDR            S0, =3.1416
307B54:  ADD.W           R0, R4, #0x560
307B58:  VLDR            S2, =180.0
307B5C:  ADDW            R1, R4, #0x55C
307B60:  VMUL.F32        S0, S16, S0
307B64:  STRD.W          R5, R5, [R4,#0x48]
307B68:  STR             R5, [R4,#0x50]
307B6A:  VDIV.F32        S0, S0, S2
307B6E:  VSTR            S0, [R0]
307B72:  LDR             R0, [R4,#0x14]; this
307B74:  VSTR            S0, [R1]
307B78:  CBZ             R0, loc_307B84
307B7A:  VMOV            R1, S0; x
307B7E:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
307B82:  B               loc_307B88
307B84:  VSTR            S0, [R4,#0x10]
307B88:  ADD.W           R8, SP, #0x28+var_24
307B8C:  MOV             R1, R4; CVector *
307B8E:  MOV             R0, R8; this
307B90:  BLX             j__ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity; CTheScripts::ClearSpaceForMissionEntity(CVector const&,CEntity *)
307B94:  MOVS            R1, #0
307B96:  MOV             R0, R8; this
307B98:  MOVT            R1, #0x457A; CVector *
307B9C:  MOVS            R2, #1; float
307B9E:  BLX             j__ZN6CWorld26ClearExcitingStuffFromAreaERK7CVectorfh; CWorld::ClearExcitingStuffFromArea(CVector const&,float,uchar)
307BA2:  MOV             R0, R4; this
307BA4:  BLX             j__ZN4CPed18RestoreHeadingRateEv; CPed::RestoreHeadingRate(void)
307BA8:  LDR             R0, =(_ZN11CPopulation16bInPoliceStationE_ptr - 0x307BB4)
307BAA:  MOVS            R5, #0
307BAC:  LDR             R1, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x307BB6)
307BAE:  LDR             R2, =(_ZN5CGame8currAreaE_ptr - 0x307BBC)
307BB0:  ADD             R0, PC; _ZN11CPopulation16bInPoliceStationE_ptr
307BB2:  ADD             R1, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
307BB4:  STR.W           R5, [R4,#0x794]
307BB8:  ADD             R2, PC; _ZN5CGame8currAreaE_ptr
307BBA:  LDR             R0, [R0]; CPopulation::bInPoliceStation ...
307BBC:  LDR             R1, [R1]; int
307BBE:  LDR             R2, [R2]; CGame::currArea ...
307BC0:  STRB.W          R5, [R4,#0x33]
307BC4:  STRB            R5, [R0]; CPopulation::bInPoliceStation
307BC6:  MOVS            R0, #0; this
307BC8:  STR             R5, [R2]; CGame::currArea
307BCA:  STR             R5, [R1]; CEntryExitManager::ms_entryExitStackPosn
307BCC:  BLX             j__ZN10CStreaming24RemoveBuildingsNotInAreaEi; CStreaming::RemoveBuildingsNotInArea(int)
307BD0:  LDR             R0, =(TheCamera_ptr - 0x307BD6)
307BD2:  ADD             R0, PC; TheCamera_ptr
307BD4:  LDR             R6, [R0]; TheCamera
307BD6:  MOV             R0, R6; this
307BD8:  BLX             j__ZN7CCamera48SetCameraDirectlyBehindForFollowPed_CamOnAStringEv; CCamera::SetCameraDirectlyBehindForFollowPed_CamOnAString(void)
307BDC:  MOV             R0, R6; this
307BDE:  BLX             j__ZN7CCamera18RestoreWithJumpCutEv; CCamera::RestoreWithJumpCut(void)
307BE2:  BLX             j__ZN11CReferences24RemoveReferencesToPlayerEv; CReferences::RemoveReferencesToPlayer(void)
307BE6:  BLX             j__ZN8CGarages20PlayerArrestedOrDiedEv; CGarages::PlayerArrestedOrDied(void)
307BEA:  MOVS            R0, #dword_B0; this
307BEC:  MOVS            R1, #0
307BEE:  NOP
307BF0:  NOP
307BF2:  BLX             j__ZN9CShopping16RemoveLoadedShopEv; CShopping::RemoveLoadedShop(void)
307BF6:  MOV             R0, R4; this
307BF8:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
307BFC:  MOV             R0, R4; this
307BFE:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
307C02:  BLX             j__ZN4CHud15ResetWastedTextEv; CHud::ResetWastedText(void)
307C06:  MOV             R0, R8; this
307C08:  BLX             j__ZN10CStreaming16StreamZoneModelsERK7CVector; CStreaming::StreamZoneModels(CVector const&)
307C0C:  LDR             R0, =(_ZN12CPostEffects13m_waterEnableE_ptr - 0x307C12)
307C0E:  ADD             R0, PC; _ZN12CPostEffects13m_waterEnableE_ptr
307C10:  LDR             R0, [R0]; CPostEffects::m_waterEnable ...
307C12:  STRB            R5, [R0]; CPostEffects::m_waterEnable
307C14:  MOVS            R0, #0; this
307C16:  BLX             j__ZN10CTimeCycle15StopExtraColourEb; CTimeCycle::StopExtraColour(bool)
307C1A:  BLX             j__ZN12CPostEffects21ScriptResetForEffectsEv; CPostEffects::ScriptResetForEffects(void)
307C1E:  LDR.W           R0, [R4,#0x444]
307C22:  LDR             R0, [R0,#4]; this
307C24:  LDR             R1, [R0,#0x24]; CPlayerPed *
307C26:  CBZ             R1, loc_307C3C
307C28:  MOVS            R1, #0; unsigned int
307C2A:  MOVS            R2, #0; unsigned int
307C2C:  MOVS            R3, #0x11; int
307C2E:  BLX             j__ZN15CPedClothesDesc18SetTextureAndModelEjji; CPedClothesDesc::SetTextureAndModel(uint,uint,int)
307C32:  MOV             R0, R4; this
307C34:  MOVS            R1, #0; CPlayerPed *
307C36:  BLX             j__ZN8CClothes13RebuildPlayerEP10CPlayerPedb; CClothes::RebuildPlayer(CPlayerPed *,bool)
307C3A:  B               loc_307C42
307C3C:  MOV             R0, R4; this
307C3E:  BLX             j__ZN8CClothes21RebuildPlayerIfNeededEP10CPlayerPed; CClothes::RebuildPlayerIfNeeded(CPlayerPed *)
307C42:  ADD             R3, SP, #0x28+var_24
307C44:  MOVS            R0, #1
307C46:  LDM             R3, {R1-R3}
307C48:  BLX             j__ZN11CAudioZones6UpdateEb7CVector; CAudioZones::Update(bool,CVector)
307C4C:  LDR             R0, =(AudioEngine_ptr - 0x307C54)
307C4E:  MOVS            R1, #(stderr+1); CAEPoliceScannerAudioEntity *
307C50:  ADD             R0, PC; AudioEngine_ptr
307C52:  LDR             R0, [R0]; AudioEngine ; this
307C54:  BLX             j__ZN12CAudioEngine17StopPoliceScannerEh; CAudioEngine::StopPoliceScanner(uchar)
307C58:  BLX             j__ZN11CWaterLevel26FindNearestWaterAndItsFlowEv; CWaterLevel::FindNearestWaterAndItsFlow(void)
307C5C:  LDR             R0, =(TheCamera_ptr - 0x307C6A)
307C5E:  MOV             R1, #0x47C34FF3
307C66:  ADD             R0, PC; TheCamera_ptr
307C68:  LDR             R0, [R0]; TheCamera
307C6A:  STR.W           R1, [R0,#(dword_952088 - 0x951FA8)]
307C6E:  ADD             SP, SP, #0x10
307C70:  VPOP            {D8}
307C74:  POP.W           {R8}
307C78:  POP             {R4-R7,PC}
