; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo30SetAtomicRendererCB_BigVehicleEP8RpAtomicPv
; Address            : 0x3880DC - 0x388160
; =========================================================

3880DC:  PUSH            {R4,R5,R7,LR}
3880DE:  ADD             R7, SP, #8
3880E0:  SUB             SP, SP, #8
3880E2:  MOV             R4, R0
3880E4:  LDR             R0, [R4,#4]
3880E6:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
3880EA:  LDR             R1, =(aVlo - 0x3880F0); "_vlo"
3880EC:  ADD             R1, PC; "_vlo"
3880EE:  BLX             strstr
3880F2:  CBZ             R0, loc_3880FA
3880F4:  LDR             R0, =(_ZN18CVisibilityPlugins41RenderVehicleReallyLowDetailCB_BigVehicleEP8RpAtomic_ptr - 0x3880FA)
3880F6:  ADD             R0, PC; _ZN18CVisibilityPlugins41RenderVehicleReallyLowDetailCB_BigVehicleEP8RpAtomic_ptr
3880F8:  B               loc_388120
3880FA:  LDR             R1, =(_ZN17CVehicleModelInfo18HasAlphaMaterialCBEP10RpMaterialPv_ptr - 0x38810A)
3880FC:  MOVS            R0, #0
3880FE:  STRB.W          R0, [R7,#var_9]
388102:  SUB.W           R2, R7, #-var_9
388106:  ADD             R1, PC; _ZN17CVehicleModelInfo18HasAlphaMaterialCBEP10RpMaterialPv_ptr
388108:  LDR             R0, [R4,#0x18]
38810A:  LDR             R1, [R1]; CVehicleModelInfo::HasAlphaMaterialCB(RpMaterial *,void *)
38810C:  BLX             j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
388110:  LDRB.W          R0, [R7,#var_9]
388114:  CBZ             R0, loc_38811C
388116:  LDR             R0, =(_ZN18CVisibilityPlugins39RenderVehicleHiDetailAlphaCB_BigVehicleEP8RpAtomic_ptr - 0x38811C)
388118:  ADD             R0, PC; _ZN18CVisibilityPlugins39RenderVehicleHiDetailAlphaCB_BigVehicleEP8RpAtomic_ptr
38811A:  B               loc_388120
38811C:  LDR             R0, =(_ZN18CVisibilityPlugins34RenderVehicleHiDetailCB_BigVehicleEP8RpAtomic_ptr - 0x388122)
38811E:  ADD             R0, PC; _ZN18CVisibilityPlugins34RenderVehicleHiDetailCB_BigVehicleEP8RpAtomic_ptr
388120:  LDR             R1, [R0]; CVisibilityPlugins::RenderVehicleReallyLowDetailCB_BigVehicle(RpAtomic *)
388122:  MOV             R0, R4
388124:  BLX             j__ZN18CVisibilityPlugins23SetAtomicRenderCallbackEP8RpAtomicPFS1_S1_E; CVisibilityPlugins::SetAtomicRenderCallback(RpAtomic *,RpAtomic * (*)(RpAtomic *))
388128:  LDR             R5, [R4,#4]
38812A:  MOV             R0, R5
38812C:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
388130:  LDR             R1, =(aUgSpoilerDam+0xA - 0x388136); "_dam"
388132:  ADD             R1, PC; "_dam"
388134:  BLX             strstr
388138:  CBZ             R0, loc_388144
38813A:  MOVS            R0, #0
38813C:  MOVS            R1, #2
38813E:  STRB            R0, [R4,#2]
388140:  MOV             R0, R4
388142:  B               loc_388156
388144:  MOV             R0, R5
388146:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
38814A:  ADR             R1, loc_388178; needle
38814C:  BLX             strstr
388150:  CBZ             R0, loc_38815A
388152:  MOV             R0, R4
388154:  MOVS            R1, #1
388156:  BLX             j__ZN18CVisibilityPlugins13SetAtomicFlagEP8RpAtomict; CVisibilityPlugins::SetAtomicFlag(RpAtomic *,ushort)
38815A:  MOV             R0, R4
38815C:  ADD             SP, SP, #8
38815E:  POP             {R4,R5,R7,PC}
