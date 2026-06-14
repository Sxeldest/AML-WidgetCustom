; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo19SetAtomicRendererCBEP8RpAtomicPv
; Address            : 0x387F28 - 0x387FC2
; =========================================================

387F28:  PUSH            {R4,R5,R7,LR}
387F2A:  ADD             R7, SP, #8
387F2C:  SUB             SP, SP, #8
387F2E:  MOV             R4, R0
387F30:  LDR             R0, [R4,#4]
387F32:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
387F36:  LDR             R1, =(aVlo - 0x387F3E); "_vlo"
387F38:  MOV             R5, R0
387F3A:  ADD             R1, PC; "_vlo"
387F3C:  BLX             strstr
387F40:  CBZ             R0, loc_387F48
387F42:  LDR             R0, =(_ZN18CVisibilityPlugins30RenderVehicleReallyLowDetailCBEP8RpAtomic_ptr - 0x387F48)
387F44:  ADD             R0, PC; _ZN18CVisibilityPlugins30RenderVehicleReallyLowDetailCBEP8RpAtomic_ptr
387F46:  B               loc_387F82
387F48:  LDR             R1, =(_ZN17CVehicleModelInfo18HasAlphaMaterialCBEP10RpMaterialPv_ptr - 0x387F58)
387F4A:  MOVS            R0, #0
387F4C:  STRB.W          R0, [R7,#var_9]
387F50:  SUB.W           R2, R7, #-var_9
387F54:  ADD             R1, PC; _ZN17CVehicleModelInfo18HasAlphaMaterialCBEP10RpMaterialPv_ptr
387F56:  LDR             R0, [R4,#0x18]
387F58:  LDR             R1, [R1]; CVehicleModelInfo::HasAlphaMaterialCB(RpMaterial *,void *)
387F5A:  BLX             j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
387F5E:  LDRB.W          R0, [R7,#var_9]
387F62:  CBZ             R0, loc_387F6A
387F64:  LDR             R0, =(_ZN18CVisibilityPlugins28RenderVehicleHiDetailAlphaCBEP8RpAtomic_ptr - 0x387F6A)
387F66:  ADD             R0, PC; _ZN18CVisibilityPlugins28RenderVehicleHiDetailAlphaCBEP8RpAtomic_ptr
387F68:  B               loc_387F82
387F6A:  LDR             R1, =(aWindscreen - 0x387F74); "windscreen"
387F6C:  MOV             R0, R5; char *
387F6E:  MOVS            R2, #0xA; size_t
387F70:  ADD             R1, PC; "windscreen"
387F72:  BLX             strncmp
387F76:  CBZ             R0, loc_387F7E
387F78:  LDR             R0, =(_ZN18CVisibilityPlugins23RenderVehicleHiDetailCBEP8RpAtomic_ptr - 0x387F7E)
387F7A:  ADD             R0, PC; _ZN18CVisibilityPlugins23RenderVehicleHiDetailCBEP8RpAtomic_ptr
387F7C:  B               loc_387F82
387F7E:  LDR             R0, =(_ZN18CVisibilityPlugins28RenderVehicleHiDetailAlphaCBEP8RpAtomic_ptr - 0x387F84)
387F80:  ADD             R0, PC; _ZN18CVisibilityPlugins28RenderVehicleHiDetailAlphaCBEP8RpAtomic_ptr
387F82:  LDR             R1, [R0]; CVisibilityPlugins::RenderVehicleReallyLowDetailCB(RpAtomic *)
387F84:  MOV             R0, R4
387F86:  BLX             j__ZN18CVisibilityPlugins23SetAtomicRenderCallbackEP8RpAtomicPFS1_S1_E; CVisibilityPlugins::SetAtomicRenderCallback(RpAtomic *,RpAtomic * (*)(RpAtomic *))
387F8A:  LDR             R5, [R4,#4]
387F8C:  MOV             R0, R5
387F8E:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
387F92:  LDR             R1, =(aUgSpoilerDam+0xA - 0x387F98); "_dam"
387F94:  ADD             R1, PC; "_dam"
387F96:  BLX             strstr
387F9A:  CBZ             R0, loc_387FA6
387F9C:  MOVS            R0, #0
387F9E:  MOVS            R1, #2
387FA0:  STRB            R0, [R4,#2]
387FA2:  MOV             R0, R4
387FA4:  B               loc_387FB8
387FA6:  MOV             R0, R5
387FA8:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
387FAC:  ADR             R1, loc_387FE4; needle
387FAE:  BLX             strstr
387FB2:  CBZ             R0, loc_387FBC
387FB4:  MOV             R0, R4
387FB6:  MOVS            R1, #1
387FB8:  BLX             j__ZN18CVisibilityPlugins13SetAtomicFlagEP8RpAtomict; CVisibilityPlugins::SetAtomicFlag(RpAtomic *,ushort)
387FBC:  MOV             R0, R4
387FBE:  ADD             SP, SP, #8
387FC0:  POP             {R4,R5,R7,PC}
