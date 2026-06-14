; =========================================================
; Game Engine Function: _ZN8CVehicle19CreateUpgradeAtomicEP14CBaseModelInfoPK15UpgradePosnDescP7RwFrameb
; Address            : 0x58D230 - 0x58D318
; =========================================================

58D230:  PUSH            {R4-R7,LR}
58D232:  ADD             R7, SP, #0xC
58D234:  PUSH.W          {R8-R11}
58D238:  SUB             SP, SP, #4
58D23A:  MOV             R9, R0
58D23C:  LDR             R0, [R7,#arg_0]
58D23E:  MOV             R8, R3
58D240:  MOV             R11, R2
58D242:  MOV             R10, R1
58D244:  CMP             R0, #1
58D246:  BNE             loc_58D252
58D248:  LDR             R0, =(_ZN22CDamageAtomicModelInfo23m_bCreateDamagedVersionE_ptr - 0x58D250)
58D24A:  MOVS            R1, #1
58D24C:  ADD             R0, PC; _ZN22CDamageAtomicModelInfo23m_bCreateDamagedVersionE_ptr
58D24E:  LDR             R0, [R0]; CDamageAtomicModelInfo::m_bCreateDamagedVersion ...
58D250:  STRB            R1, [R0]; CDamageAtomicModelInfo::m_bCreateDamagedVersion
58D252:  LDR.W           R0, [R10]
58D256:  LDR             R1, [R0,#0x2C]
58D258:  MOV             R0, R10
58D25A:  BLX             R1
58D25C:  MOV             R4, R0
58D25E:  ADD.W           R0, R11, #0xC
58D262:  LDR             R5, [R4,#4]
58D264:  ADD.W           R6, R5, #0x10
58D268:  MOV             R1, R6
58D26A:  BLX.W           j__ZNK11CQuaternion3GetEP11RwMatrixTag; CQuaternion::Get(RwMatrixTag *)
58D26E:  VLDR            D16, [R11]
58D272:  LDR.W           R0, [R11,#8]
58D276:  STR             R0, [R5,#0x48]
58D278:  MOV             R0, R6
58D27A:  VSTR            D16, [R5,#0x40]
58D27E:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
58D282:  LDR.W           R0, [R9,#0x18]
58D286:  MOV             R1, R4
58D288:  BLX.W           j__Z16RpClumpAddAtomicP7RpClumpP8RpAtomic; RpClumpAddAtomic(RpClump *,RpAtomic *)
58D28C:  MOV             R0, R8
58D28E:  MOV             R1, R5
58D290:  BLX             j__Z15RwFrameAddChildP7RwFrameS0_; RwFrameAddChild(RwFrame *,RwFrame *)
58D294:  MOV             R0, R10; this
58D296:  BLX             j__ZN14CBaseModelInfo6AddRefEv; CBaseModelInfo::AddRef(void)
58D29A:  LDR             R0, [R7,#arg_0]
58D29C:  CMP             R0, #0
58D29E:  MOV             R0, R4
58D2A0:  ITE NE
58D2A2:  MOVNE           R1, #2
58D2A4:  MOVEQ           R1, #1
58D2A6:  BLX             j__ZN18CVisibilityPlugins11SetAtomicIdEP8RpAtomici; CVisibilityPlugins::SetAtomicId(RpAtomic *,int)
58D2AA:  MOV             R0, R4
58D2AC:  MOV.W           R1, #0x800
58D2B0:  BLX.W           j__ZN18CVisibilityPlugins13SetAtomicFlagEP8RpAtomict; CVisibilityPlugins::SetAtomicFlag(RpAtomic *,ushort)
58D2B4:  MOV             R0, R4
58D2B6:  MOV.W           R1, #0x400
58D2BA:  BLX.W           j__ZN18CVisibilityPlugins13SetAtomicFlagEP8RpAtomict; CVisibilityPlugins::SetAtomicFlag(RpAtomic *,ushort)
58D2BE:  LDR             R0, =(_ZN17CVehicleModelInfo18HasAlphaMaterialCBEP10RpMaterialPv_ptr - 0x58D2C8)
58D2C0:  SUB.W           R2, R7, #-var_1D
58D2C4:  ADD             R0, PC; _ZN17CVehicleModelInfo18HasAlphaMaterialCBEP10RpMaterialPv_ptr
58D2C6:  LDR             R1, [R0]; CVehicleModelInfo::HasAlphaMaterialCB(RpMaterial *,void *)
58D2C8:  MOVS            R0, #0
58D2CA:  STRB.W          R0, [R7,#var_1D]
58D2CE:  LDR             R0, [R4,#0x18]
58D2D0:  BLX             j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
58D2D4:  LDRB.W          R0, [R7,#var_1D]
58D2D8:  CBZ             R0, loc_58D2F0
58D2DA:  LDR             R0, =(_ZN18CVisibilityPlugins28RenderVehicleHiDetailAlphaCBEP8RpAtomic_ptr - 0x58D2E0)
58D2DC:  ADD             R0, PC; _ZN18CVisibilityPlugins28RenderVehicleHiDetailAlphaCBEP8RpAtomic_ptr
58D2DE:  LDR             R1, [R0]; CVisibilityPlugins::RenderVehicleHiDetailAlphaCB(RpAtomic *)
58D2E0:  MOV             R0, R4
58D2E2:  BLX             j__ZN18CVisibilityPlugins23SetAtomicRenderCallbackEP8RpAtomicPFS1_S1_E; CVisibilityPlugins::SetAtomicRenderCallback(RpAtomic *,RpAtomic * (*)(RpAtomic *))
58D2E6:  MOV             R0, R4
58D2E8:  MOVS            R1, #0x40 ; '@'
58D2EA:  BLX.W           j__ZN18CVisibilityPlugins13SetAtomicFlagEP8RpAtomict; CVisibilityPlugins::SetAtomicFlag(RpAtomic *,ushort)
58D2EE:  B               loc_58D2FC
58D2F0:  LDR             R0, =(_ZN18CVisibilityPlugins23RenderVehicleHiDetailCBEP8RpAtomic_ptr - 0x58D2F6)
58D2F2:  ADD             R0, PC; _ZN18CVisibilityPlugins23RenderVehicleHiDetailCBEP8RpAtomic_ptr
58D2F4:  LDR             R1, [R0]; CVisibilityPlugins::RenderVehicleHiDetailCB(RpAtomic *)
58D2F6:  MOV             R0, R4
58D2F8:  BLX             j__ZN18CVisibilityPlugins23SetAtomicRenderCallbackEP8RpAtomicPFS1_S1_E; CVisibilityPlugins::SetAtomicRenderCallback(RpAtomic *,RpAtomic * (*)(RpAtomic *))
58D2FC:  MOV             R0, R4
58D2FE:  MOVS            R1, #0
58D300:  MOVS            R5, #0
58D302:  BLX             j__ZN17CVehicleModelInfo20SetRenderPipelinesCBEP8RpAtomicPv; CVehicleModelInfo::SetRenderPipelinesCB(RpAtomic *,void *)
58D306:  LDR             R0, =(_ZN22CDamageAtomicModelInfo23m_bCreateDamagedVersionE_ptr - 0x58D30C)
58D308:  ADD             R0, PC; _ZN22CDamageAtomicModelInfo23m_bCreateDamagedVersionE_ptr
58D30A:  LDR             R0, [R0]; CDamageAtomicModelInfo::m_bCreateDamagedVersion ...
58D30C:  STRB            R5, [R0]; CDamageAtomicModelInfo::m_bCreateDamagedVersion
58D30E:  MOV             R0, R4
58D310:  ADD             SP, SP, #4
58D312:  POP.W           {R8-R11}
58D316:  POP             {R4-R7,PC}
