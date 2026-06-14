; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo28SetAtomicRendererCB_RealHeliEP8RpAtomicPv
; Address            : 0x387FE8 - 0x3880A6
; =========================================================

387FE8:  PUSH            {R4,R5,R7,LR}
387FEA:  ADD             R7, SP, #8
387FEC:  SUB             SP, SP, #8
387FEE:  MOV             R4, R0
387FF0:  LDR             R0, [R4,#4]
387FF2:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
387FF6:  LDR             R1, =(aMovingRotor - 0x387FFE); "moving_rotor"
387FF8:  MOV             R5, R0
387FFA:  ADD             R1, PC; "moving_rotor"
387FFC:  BLX             strcmp
388000:  CBZ             R0, loc_388020
388002:  LDR             R1, =(aMovingRotor2 - 0x38800A); "moving_rotor2"
388004:  MOV             R0, R5; char *
388006:  ADD             R1, PC; "moving_rotor2"
388008:  BLX             strcmp
38800C:  CBZ             R0, loc_388026
38800E:  LDR             R1, =(aVlo - 0x388016); "_vlo"
388010:  MOV             R0, R5; haystack
388012:  ADD             R1, PC; "_vlo"
388014:  BLX             strstr
388018:  CBZ             R0, loc_38802C
38801A:  LDR             R0, =(_ZN18CVisibilityPlugins30RenderVehicleReallyLowDetailCBEP8RpAtomic_ptr - 0x388020)
38801C:  ADD             R0, PC; _ZN18CVisibilityPlugins30RenderVehicleReallyLowDetailCBEP8RpAtomic_ptr
38801E:  B               loc_388066
388020:  LDR             R0, =(_ZN18CVisibilityPlugins22RenderHeliRotorAlphaCBEP8RpAtomic_ptr - 0x388026)
388022:  ADD             R0, PC; _ZN18CVisibilityPlugins22RenderHeliRotorAlphaCBEP8RpAtomic_ptr
388024:  B               loc_388066
388026:  LDR             R0, =(_ZN18CVisibilityPlugins26RenderHeliTailRotorAlphaCBEP8RpAtomic_ptr - 0x38802C)
388028:  ADD             R0, PC; _ZN18CVisibilityPlugins26RenderHeliTailRotorAlphaCBEP8RpAtomic_ptr
38802A:  B               loc_388066
38802C:  LDR             R1, =(_ZN17CVehicleModelInfo18HasAlphaMaterialCBEP10RpMaterialPv_ptr - 0x38803C)
38802E:  MOVS            R0, #0
388030:  STRB.W          R0, [R7,#var_9]
388034:  SUB.W           R2, R7, #-var_9
388038:  ADD             R1, PC; _ZN17CVehicleModelInfo18HasAlphaMaterialCBEP10RpMaterialPv_ptr
38803A:  LDR             R0, [R4,#0x18]
38803C:  LDR             R1, [R1]; CVehicleModelInfo::HasAlphaMaterialCB(RpMaterial *,void *)
38803E:  BLX             j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
388042:  LDRB.W          R0, [R7,#var_9]
388046:  CBZ             R0, loc_38804E
388048:  LDR             R0, =(_ZN18CVisibilityPlugins28RenderVehicleHiDetailAlphaCBEP8RpAtomic_ptr - 0x38804E)
38804A:  ADD             R0, PC; _ZN18CVisibilityPlugins28RenderVehicleHiDetailAlphaCBEP8RpAtomic_ptr
38804C:  B               loc_388066
38804E:  LDR             R1, =(aWindscreen - 0x388058); "windscreen"
388050:  MOV             R0, R5; char *
388052:  MOVS            R2, #0xA; size_t
388054:  ADD             R1, PC; "windscreen"
388056:  BLX             strncmp
38805A:  CBZ             R0, loc_388062
38805C:  LDR             R0, =(_ZN18CVisibilityPlugins23RenderVehicleHiDetailCBEP8RpAtomic_ptr - 0x388062)
38805E:  ADD             R0, PC; _ZN18CVisibilityPlugins23RenderVehicleHiDetailCBEP8RpAtomic_ptr
388060:  B               loc_388066
388062:  LDR             R0, =(_ZN18CVisibilityPlugins28RenderVehicleHiDetailAlphaCBEP8RpAtomic_ptr - 0x388068)
388064:  ADD             R0, PC; _ZN18CVisibilityPlugins28RenderVehicleHiDetailAlphaCBEP8RpAtomic_ptr
388066:  LDR             R1, [R0]; CVisibilityPlugins::RenderVehicleReallyLowDetailCB(RpAtomic *)
388068:  MOV             R0, R4
38806A:  BLX             j__ZN18CVisibilityPlugins23SetAtomicRenderCallbackEP8RpAtomicPFS1_S1_E; CVisibilityPlugins::SetAtomicRenderCallback(RpAtomic *,RpAtomic * (*)(RpAtomic *))
38806E:  LDR             R5, [R4,#4]
388070:  MOV             R0, R5
388072:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
388076:  LDR             R1, =(aUgSpoilerDam+0xA - 0x38807C); "_dam"
388078:  ADD             R1, PC; "_dam"
38807A:  BLX             strstr
38807E:  CBZ             R0, loc_38808A
388080:  MOVS            R0, #0
388082:  MOVS            R1, #2
388084:  STRB            R0, [R4,#2]
388086:  MOV             R0, R4
388088:  B               loc_38809C
38808A:  MOV             R0, R5
38808C:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
388090:  ADR             R1, loc_3880D8; needle
388092:  BLX             strstr
388096:  CBZ             R0, loc_3880A0
388098:  MOV             R0, R4
38809A:  MOVS            R1, #1
38809C:  BLX             j__ZN18CVisibilityPlugins13SetAtomicFlagEP8RpAtomict; CVisibilityPlugins::SetAtomicFlag(RpAtomic *,ushort)
3880A0:  MOV             R0, R4
3880A2:  ADD             SP, SP, #8
3880A4:  POP             {R4,R5,R7,PC}
