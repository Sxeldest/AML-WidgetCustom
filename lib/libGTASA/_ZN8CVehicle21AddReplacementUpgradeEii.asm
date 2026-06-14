; =========================================================
; Game Engine Function: _ZN8CVehicle21AddReplacementUpgradeEii
; Address            : 0x58C920 - 0x58CA22
; =========================================================

58C920:  PUSH            {R4-R7,LR}
58C922:  ADD             R7, SP, #0xC
58C924:  PUSH.W          {R8-R10}
58C928:  SUB             SP, SP, #0x10
58C92A:  MOV             R8, R0
58C92C:  MOV             R5, R2
58C92E:  LDR.W           R0, [R8,#0x18]
58C932:  MOV             R9, R1
58C934:  MOV             R1, R5
58C936:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
58C93A:  MOV             R4, R0
58C93C:  LDR             R0, =(_Z15RemoveObjectsCBP8RwObjectPv_ptr - 0x58C948)
58C93E:  ADD             R6, SP, #0x28+var_1C
58C940:  MOV.W           R10, #0
58C944:  ADD             R0, PC; _Z15RemoveObjectsCBP8RwObjectPv_ptr
58C946:  STR.W           R10, [SP,#0x28+var_1C]
58C94A:  MOV             R2, R6
58C94C:  LDR             R1, [R0]; RemoveObjectsCB(RwObject *,void *)
58C94E:  MOV             R0, R4
58C950:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
58C954:  LDR             R0, =(_Z15RemoveObjectsCBP7RwFramePv_ptr - 0x58C95C)
58C956:  MOV             R2, R6
58C958:  ADD             R0, PC; _Z15RemoveObjectsCBP7RwFramePv_ptr
58C95A:  LDR             R1, [R0]; RemoveObjectsCB(RwFrame *,void *)
58C95C:  MOV             R0, R4
58C95E:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
58C962:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58C96C)
58C964:  MOV             R2, R4
58C966:  LDR             R3, [SP,#0x28+var_1C]
58C968:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58C96A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
58C96C:  LDR.W           R6, [R0,R9,LSL#2]
58C970:  MOV             R0, R8
58C972:  STRD.W          R10, R10, [SP,#0x28+var_28]
58C976:  MOV             R1, R6
58C978:  BLX             j__ZN8CVehicle23CreateReplacementAtomicEP14CBaseModelInfoP7RwFrameibb; CVehicle::CreateReplacementAtomic(CBaseModelInfo *,RwFrame *,int,bool,bool)
58C97C:  CMP             R5, #0x13
58C97E:  BNE             loc_58C9BA
58C980:  LDR.W           R0, [R8,#0x388]
58C984:  LDRB.W          R0, [R0,#0xCD]
58C988:  LSLS            R0, R0, #0x1A
58C98A:  BPL             loc_58C9DE
58C98C:  LDR             R3, [SP,#0x28+var_1C]
58C98E:  MOVS            R0, #1
58C990:  MOVS            R1, #0
58C992:  MOV             R2, R4
58C994:  STRD.W          R1, R0, [SP,#0x28+var_28]
58C998:  MOV             R0, R8
58C99A:  MOV             R1, R6
58C99C:  BLX             j__ZN8CVehicle23CreateReplacementAtomicEP14CBaseModelInfoP7RwFrameibb; CVehicle::CreateReplacementAtomic(CBaseModelInfo *,RwFrame *,int,bool,bool)
58C9A0:  VMOV.F32        S0, #-2.0
58C9A4:  B.W             loc_3F6802
58C9A8:  LDR             R0, [R0,#4]
58C9AA:  VMUL.F32        S0, S2, S0
58C9AE:  VSTR            S0, [R0,#0x40]
58C9B2:  ADDS            R0, #0x10
58C9B4:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
58C9B8:  B               loc_58C9DE
58C9BA:  ORR.W           R0, R5, #1
58C9BE:  CMP             R0, #0xD
58C9C0:  BNE             loc_58C9DE
58C9C2:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58C9CC)
58C9C4:  LDRSH.W         R1, [R8,#0x26]
58C9C8:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58C9CA:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
58C9CC:  LDR.W           R1, [R0,R1,LSL#2]
58C9D0:  LDR.W           R0, [R8,#0x18]
58C9D4:  LDRB.W          R2, [R1,#0x49]
58C9D8:  LDR             R1, [R1,#0x3C]
58C9DA:  BLX             j__ZN18CCustomCarPlateMgr29SetupClumpAfterVehicleUpgradeEP7RpClumpP10RpMaterialh; CCustomCarPlateMgr::SetupClumpAfterVehicleUpgrade(RpClump *,RpMaterial *,uchar)
58C9DE:  LDR             R0, [R6]
58C9E0:  LDR             R1, [R0,#0xC]
58C9E2:  MOV             R0, R6
58C9E4:  BLX             R1
58C9E6:  CBZ             R0, loc_58CA1A
58C9E8:  LDR             R3, [SP,#0x28+var_1C]
58C9EA:  MOVS            R0, #0
58C9EC:  MOVS            R1, #1
58C9EE:  MOV             R2, R4
58C9F0:  STRD.W          R1, R0, [SP,#0x28+var_28]
58C9F4:  MOV             R0, R8
58C9F6:  MOV             R1, R6
58C9F8:  BLX             j__ZN8CVehicle23CreateReplacementAtomicEP14CBaseModelInfoP7RwFrameibb; CVehicle::CreateReplacementAtomic(CBaseModelInfo *,RwFrame *,int,bool,bool)
58C9FC:  CBZ             R4, loc_58CA1A
58C9FE:  LDR             R0, =(_Z28SetVehicleAtomicVisibilityCBP8RwObjectPv_ptr - 0x58CA06)
58CA00:  MOVS            R2, #1
58CA02:  ADD             R0, PC; _Z28SetVehicleAtomicVisibilityCBP8RwObjectPv_ptr
58CA04:  LDR             R1, [R0]; SetVehicleAtomicVisibilityCB(RwObject *,void *)
58CA06:  MOV             R0, R4
58CA08:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
58CA0C:  LDR             R0, =(_Z28SetVehicleAtomicVisibilityCBP7RwFramePv_ptr - 0x58CA14)
58CA0E:  MOVS            R2, #1
58CA10:  ADD             R0, PC; _Z28SetVehicleAtomicVisibilityCBP7RwFramePv_ptr
58CA12:  LDR             R1, [R0]; SetVehicleAtomicVisibilityCB(RwFrame *,void *)
58CA14:  MOV             R0, R4
58CA16:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
58CA1A:  ADD             SP, SP, #0x10
58CA1C:  POP.W           {R8-R10}
58CA20:  POP             {R4-R7,PC}
