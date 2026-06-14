; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo25SetAtomicRendererCB_TrainEP8RpAtomicPv
; Address            : 0x388298 - 0x38831C
; =========================================================

388298:  PUSH            {R4,R5,R7,LR}
38829A:  ADD             R7, SP, #8
38829C:  SUB             SP, SP, #8
38829E:  MOV             R4, R0
3882A0:  LDR             R0, [R4,#4]
3882A2:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
3882A6:  LDR             R1, =(aVlo - 0x3882AC); "_vlo"
3882A8:  ADD             R1, PC; "_vlo"
3882AA:  BLX             strstr
3882AE:  CBZ             R0, loc_3882B6
3882B0:  LDR             R0, =(_ZN18CVisibilityPlugins41RenderVehicleReallyLowDetailCB_BigVehicleEP8RpAtomic_ptr - 0x3882B6)
3882B2:  ADD             R0, PC; _ZN18CVisibilityPlugins41RenderVehicleReallyLowDetailCB_BigVehicleEP8RpAtomic_ptr
3882B4:  B               loc_3882DC
3882B6:  LDR             R1, =(_ZN17CVehicleModelInfo18HasAlphaMaterialCBEP10RpMaterialPv_ptr - 0x3882C6)
3882B8:  MOVS            R0, #0
3882BA:  STRB.W          R0, [R7,#var_9]
3882BE:  SUB.W           R2, R7, #-var_9
3882C2:  ADD             R1, PC; _ZN17CVehicleModelInfo18HasAlphaMaterialCBEP10RpMaterialPv_ptr
3882C4:  LDR             R0, [R4,#0x18]
3882C6:  LDR             R1, [R1]; CVehicleModelInfo::HasAlphaMaterialCB(RpMaterial *,void *)
3882C8:  BLX             j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
3882CC:  LDRB.W          R0, [R7,#var_9]
3882D0:  CBZ             R0, loc_3882D8
3882D2:  LDR             R0, =(_ZN18CVisibilityPlugins26RenderTrainHiDetailAlphaCBEP8RpAtomic_ptr - 0x3882D8)
3882D4:  ADD             R0, PC; _ZN18CVisibilityPlugins26RenderTrainHiDetailAlphaCBEP8RpAtomic_ptr
3882D6:  B               loc_3882DC
3882D8:  LDR             R0, =(_ZN18CVisibilityPlugins21RenderTrainHiDetailCBEP8RpAtomic_ptr - 0x3882DE)
3882DA:  ADD             R0, PC; _ZN18CVisibilityPlugins21RenderTrainHiDetailCBEP8RpAtomic_ptr
3882DC:  LDR             R1, [R0]; CVisibilityPlugins::RenderTrainHiDetailCB(RpAtomic *)
3882DE:  MOV             R0, R4
3882E0:  BLX             j__ZN18CVisibilityPlugins23SetAtomicRenderCallbackEP8RpAtomicPFS1_S1_E; CVisibilityPlugins::SetAtomicRenderCallback(RpAtomic *,RpAtomic * (*)(RpAtomic *))
3882E4:  LDR             R5, [R4,#4]
3882E6:  MOV             R0, R5
3882E8:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
3882EC:  LDR             R1, =(aUgSpoilerDam+0xA - 0x3882F2); "_dam"
3882EE:  ADD             R1, PC; "_dam"
3882F0:  BLX             strstr
3882F4:  CBZ             R0, loc_388300
3882F6:  MOVS            R0, #0
3882F8:  MOVS            R1, #2
3882FA:  STRB            R0, [R4,#2]
3882FC:  MOV             R0, R4
3882FE:  B               loc_388312
388300:  MOV             R0, R5
388302:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
388306:  ADR             R1, loc_388334; needle
388308:  BLX             strstr
38830C:  CBZ             R0, loc_388316
38830E:  MOV             R0, R4
388310:  MOVS            R1, #1
388312:  BLX             j__ZN18CVisibilityPlugins13SetAtomicFlagEP8RpAtomict; CVisibilityPlugins::SetAtomicFlag(RpAtomic *,ushort)
388316:  MOV             R0, R4
388318:  ADD             SP, SP, #8
38831A:  POP             {R4,R5,R7,PC}
