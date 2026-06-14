; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline21CustomPipeAtomicSetupEP8RpAtomic
; Address            : 0x2CA608 - 0x2CA636
; =========================================================

2CA608:  PUSH            {R4,R6,R7,LR}
2CA60A:  ADD             R7, SP, #8
2CA60C:  LDR             R1, =(_ZN25CCustomBuildingDNPipeline23CustomPipeMaterialSetupEP10RpMaterialPv_ptr - 0x2CA618)
2CA60E:  MOV             R4, R0
2CA610:  LDR             R0, [R4,#0x18]
2CA612:  MOVS            R2, #0
2CA614:  ADD             R1, PC; _ZN25CCustomBuildingDNPipeline23CustomPipeMaterialSetupEP10RpMaterialPv_ptr
2CA616:  LDR             R1, [R1]; CCustomBuildingDNPipeline::CustomPipeMaterialSetup(RpMaterial *,void *)
2CA618:  BLX             j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
2CA61C:  LDR             R0, =(_ZN25CCustomBuildingDNPipeline11ObjPipelineE_ptr - 0x2CA628)
2CA61E:  MOVS            R1, #0x53F20098
2CA624:  ADD             R0, PC; _ZN25CCustomBuildingDNPipeline11ObjPipelineE_ptr
2CA626:  LDR             R0, [R0]; CCustomBuildingDNPipeline::ObjPipeline ...
2CA628:  LDR             R0, [R0]; CCustomBuildingDNPipeline::ObjPipeline
2CA62A:  STR             R0, [R4,#0x6C]
2CA62C:  MOV             R0, R4
2CA62E:  BLX             j__Z13SetPipelineIDP8RpAtomicj; SetPipelineID(RpAtomic *,uint)
2CA632:  MOV             R0, R4
2CA634:  POP             {R4,R6,R7,PC}
