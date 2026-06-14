; =========================================================
; Game Engine Function: _ZN8CVehicle10AddUpgradeEii
; Address            : 0x58CABC - 0x58CBA8
; =========================================================

58CABC:  PUSH            {R4-R7,LR}
58CABE:  ADD             R7, SP, #0xC
58CAC0:  PUSH.W          {R8-R11}
58CAC4:  SUB             SP, SP, #4
58CAC6:  MOV             R4, R0
58CAC8:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58CAD4)
58CACA:  MOV             R5, R2
58CACC:  LDRSH.W         R2, [R4,#0x26]
58CAD0:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58CAD2:  LDR             R3, [R0]; CModelInfo::ms_modelInfoPtrs ...
58CAD4:  LDR             R0, [R4,#0x18]
58CAD6:  LDR.W           R10, [R3,R2,LSL#2]
58CADA:  LDR.W           R8, [R3,R1,LSL#2]
58CADE:  LDR.W           R2, [R10,#0x74]
58CAE2:  ADD.W           R6, R2, R5,LSL#5
58CAE6:  LDR.W           R1, [R6,#0xD0]
58CAEA:  BLX             j__ZN15CClumpModelInfo14GetFrameFromIdEP7RpClumpi; CClumpModelInfo::GetFrameFromId(RpClump *,int)
58CAEE:  MOV             R9, R0
58CAF0:  LDR             R0, =(_Z15RemoveUpgradeCBP8RpAtomicPv_ptr - 0x58CAF8)
58CAF2:  MOV             R2, R5
58CAF4:  ADD             R0, PC; _Z15RemoveUpgradeCBP8RpAtomicPv_ptr
58CAF6:  LDR             R1, [R0]; RemoveUpgradeCB(RpAtomic *,void *)
58CAF8:  LDR             R0, [R4,#0x18]
58CAFA:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
58CAFE:  ADD.W           R11, R6, #0xB4
58CB02:  MOVS            R0, #0
58CB04:  STR             R0, [SP,#0x20+var_20]
58CB06:  MOV             R0, R4
58CB08:  MOV             R1, R8
58CB0A:  MOV             R2, R11
58CB0C:  MOV             R3, R9
58CB0E:  BLX             j__ZN8CVehicle19CreateUpgradeAtomicEP14CBaseModelInfoPK15UpgradePosnDescP7RwFrameb; CVehicle::CreateUpgradeAtomic(CBaseModelInfo *,UpgradePosnDesc const*,RwFrame *,bool)
58CB12:  LDR.W           R0, [R6,#0xD0]
58CB16:  CMP             R0, #1
58CB18:  BEQ             loc_58CBA0
58CB1A:  CMP             R5, #0xC; switch 13 cases
58CB1C:  BHI             def_58CB20; jumptable 0058CB20 default case, cases 3-5,7-11
58CB1E:  MOVS            R0, #4
58CB20:  TBB.W           [PC,R5]; switch jump
58CB24:  DCB 7; jump table for switch statement
58CB25:  DCB 0xE
58CB26:  DCB 9
58CB27:  DCB 0x18
58CB28:  DCB 0x18
58CB29:  DCB 0x18
58CB2A:  DCB 0xB
58CB2B:  DCB 0x18
58CB2C:  DCB 0x18
58CB2D:  DCB 0x18
58CB2E:  DCB 0x18
58CB2F:  DCB 0x18
58CB30:  DCB 0xD
58CB31:  ALIGN 2
58CB32:  MOVS            R0, #3; jumptable 0058CB20 case 0
58CB34:  B               loc_58CB40; jumptable 0058CB20 case 1
58CB36:  MOVS            R0, #5; jumptable 0058CB20 case 2
58CB38:  B               loc_58CB40; jumptable 0058CB20 case 1
58CB3A:  MOVS            R0, #7; jumptable 0058CB20 case 6
58CB3C:  B               loc_58CB40; jumptable 0058CB20 case 1
58CB3E:  MOVS            R0, #0xD; jumptable 0058CB20 case 12
58CB40:  LDR.W           R1, [R10,#0x74]; jumptable 0058CB20 case 1
58CB44:  ADD.W           R0, R1, R0,LSL#5
58CB48:  LDR.W           R1, [R0,#0xD0]
58CB4C:  ADDS            R1, #1
58CB4E:  IT NE
58CB50:  ADDNE.W         R11, R0, #0xB4
58CB54:  MOVS            R0, #1; jumptable 0058CB20 default case, cases 3-5,7-11
58CB56:  MOV             R1, R8
58CB58:  STR             R0, [SP,#0x20+var_20]
58CB5A:  MOV             R0, R4
58CB5C:  MOV             R2, R11
58CB5E:  MOV             R3, R9
58CB60:  BLX             j__ZN8CVehicle19CreateUpgradeAtomicEP14CBaseModelInfoPK15UpgradePosnDescP7RwFrameb; CVehicle::CreateUpgradeAtomic(CBaseModelInfo *,UpgradePosnDesc const*,RwFrame *,bool)
58CB64:  CMP.W           R9, #0
58CB68:  BEQ             loc_58CB86
58CB6A:  LDR             R0, =(_Z28SetVehicleAtomicVisibilityCBP8RwObjectPv_ptr - 0x58CB72)
58CB6C:  MOVS            R2, #1
58CB6E:  ADD             R0, PC; _Z28SetVehicleAtomicVisibilityCBP8RwObjectPv_ptr
58CB70:  LDR             R1, [R0]; SetVehicleAtomicVisibilityCB(RwObject *,void *)
58CB72:  MOV             R0, R9
58CB74:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
58CB78:  LDR             R0, =(_Z28SetVehicleAtomicVisibilityCBP7RwFramePv_ptr - 0x58CB80)
58CB7A:  MOVS            R2, #1
58CB7C:  ADD             R0, PC; _Z28SetVehicleAtomicVisibilityCBP7RwFramePv_ptr
58CB7E:  LDR             R1, [R0]; SetVehicleAtomicVisibilityCB(RwFrame *,void *)
58CB80:  MOV             R0, R9
58CB82:  BLX             j__Z21RwFrameForAllChildrenP7RwFramePFS0_S0_PvES1_; RwFrameForAllChildren(RwFrame *,RwFrame * (*)(RwFrame *,void *),void *)
58CB86:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58CB90)
58CB88:  LDRSH.W         R1, [R4,#0x26]
58CB8C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58CB8E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
58CB90:  LDR.W           R1, [R0,R1,LSL#2]
58CB94:  LDR             R0, [R4,#0x18]
58CB96:  LDRB.W          R2, [R1,#0x49]
58CB9A:  LDR             R1, [R1,#0x3C]
58CB9C:  BLX             j__ZN18CCustomCarPlateMgr29SetupClumpAfterVehicleUpgradeEP7RpClumpP10RpMaterialh; CCustomCarPlateMgr::SetupClumpAfterVehicleUpgrade(RpClump *,RpMaterial *,uchar)
58CBA0:  ADD             SP, SP, #4
58CBA2:  POP.W           {R8-R11}
58CBA6:  POP             {R4-R7,PC}
