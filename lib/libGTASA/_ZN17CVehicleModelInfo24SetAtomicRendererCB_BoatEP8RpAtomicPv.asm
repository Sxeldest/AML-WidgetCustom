; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo24SetAtomicRendererCB_BoatEP8RpAtomicPv
; Address            : 0x38817C - 0x388214
; =========================================================

38817C:  PUSH            {R4,R5,R7,LR}
38817E:  ADD             R7, SP, #8
388180:  SUB             SP, SP, #8
388182:  MOV             R4, R0
388184:  LDR             R0, [R4,#4]
388186:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
38818A:  MOV             R5, R0
38818C:  LDR             R0, =(_ZN17CVehicleModelInfo18HasAlphaMaterialCBEP10RpMaterialPv_ptr - 0x388196)
38818E:  SUB.W           R2, R7, #-var_9
388192:  ADD             R0, PC; _ZN17CVehicleModelInfo18HasAlphaMaterialCBEP10RpMaterialPv_ptr
388194:  LDR             R1, [R0]; CVehicleModelInfo::HasAlphaMaterialCB(RpMaterial *,void *)
388196:  MOVS            R0, #0
388198:  STRB.W          R0, [R7,#var_9]
38819C:  LDR             R0, [R4,#0x18]
38819E:  BLX             j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
3881A2:  ADR             R1, aBoatHi; "boat_hi"
3881A4:  MOV             R0, R5; char *
3881A6:  BLX             strcmp
3881AA:  CBZ             R0, loc_3881BE
3881AC:  LDR             R1, =(aVlo - 0x3881B4); "_vlo"
3881AE:  MOV             R0, R5; haystack
3881B0:  ADD             R1, PC; "_vlo"
3881B2:  BLX             strstr
3881B6:  CBZ             R0, loc_3881C4
3881B8:  LDR             R0, =(_ZN18CVisibilityPlugins28RenderVehicleLoDetailCB_BoatEP8RpAtomic_ptr - 0x3881BE)
3881BA:  ADD             R0, PC; _ZN18CVisibilityPlugins28RenderVehicleLoDetailCB_BoatEP8RpAtomic_ptr
3881BC:  B               loc_3881D4
3881BE:  LDR             R0, =(_ZN18CVisibilityPlugins28RenderVehicleHiDetailCB_BoatEP8RpAtomic_ptr - 0x3881C4)
3881C0:  ADD             R0, PC; _ZN18CVisibilityPlugins28RenderVehicleHiDetailCB_BoatEP8RpAtomic_ptr
3881C2:  B               loc_3881D4
3881C4:  LDRB.W          R0, [R7,#var_9]
3881C8:  CBZ             R0, loc_3881D0
3881CA:  LDR             R0, =(_ZN18CVisibilityPlugins33RenderVehicleHiDetailAlphaCB_BoatEP8RpAtomic_ptr - 0x3881D0)
3881CC:  ADD             R0, PC; _ZN18CVisibilityPlugins33RenderVehicleHiDetailAlphaCB_BoatEP8RpAtomic_ptr
3881CE:  B               loc_3881D4
3881D0:  LDR             R0, =(_ZN18CVisibilityPlugins28RenderVehicleHiDetailCB_BoatEP8RpAtomic_ptr - 0x3881D6)
3881D2:  ADD             R0, PC; _ZN18CVisibilityPlugins28RenderVehicleHiDetailCB_BoatEP8RpAtomic_ptr
3881D4:  LDR             R1, [R0]; CVisibilityPlugins::RenderVehicleLoDetailCB_Boat(RpAtomic *)
3881D6:  MOV             R0, R4
3881D8:  BLX             j__ZN18CVisibilityPlugins23SetAtomicRenderCallbackEP8RpAtomicPFS1_S1_E; CVisibilityPlugins::SetAtomicRenderCallback(RpAtomic *,RpAtomic * (*)(RpAtomic *))
3881DC:  LDR             R5, [R4,#4]
3881DE:  MOV             R0, R5
3881E0:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
3881E4:  LDR             R1, =(aUgSpoilerDam+0xA - 0x3881EA); "_dam"
3881E6:  ADD             R1, PC; "_dam"
3881E8:  BLX             strstr
3881EC:  CBZ             R0, loc_3881F8
3881EE:  MOVS            R0, #0
3881F0:  MOVS            R1, #2
3881F2:  STRB            R0, [R4,#2]
3881F4:  MOV             R0, R4
3881F6:  B               loc_38820A
3881F8:  MOV             R0, R5
3881FA:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
3881FE:  ADR             R1, loc_388238; needle
388200:  BLX             strstr
388204:  CBZ             R0, loc_38820E
388206:  MOV             R0, R4
388208:  MOVS            R1, #1
38820A:  BLX             j__ZN18CVisibilityPlugins13SetAtomicFlagEP8RpAtomict; CVisibilityPlugins::SetAtomicFlag(RpAtomic *,ushort)
38820E:  MOV             R0, R4
388210:  ADD             SP, SP, #8
388212:  POP             {R4,R5,R7,PC}
