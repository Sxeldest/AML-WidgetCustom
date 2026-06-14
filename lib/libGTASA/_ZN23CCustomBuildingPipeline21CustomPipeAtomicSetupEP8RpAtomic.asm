; =========================================================
; Game Engine Function: _ZN23CCustomBuildingPipeline21CustomPipeAtomicSetupEP8RpAtomic
; Address            : 0x2CB240 - 0x2CB26E
; =========================================================

2CB240:  PUSH            {R4,R6,R7,LR}
2CB242:  ADD             R7, SP, #8
2CB244:  LDR             R1, =(_ZN23CCustomBuildingPipeline23CustomPipeMaterialSetupEP10RpMaterialPv_ptr - 0x2CB250)
2CB246:  MOV             R4, R0
2CB248:  LDR             R0, [R4,#0x18]
2CB24A:  MOVS            R2, #0
2CB24C:  ADD             R1, PC; _ZN23CCustomBuildingPipeline23CustomPipeMaterialSetupEP10RpMaterialPv_ptr
2CB24E:  LDR             R1, [R1]; CCustomBuildingPipeline::CustomPipeMaterialSetup(RpMaterial *,void *)
2CB250:  BLX             j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
2CB254:  LDR             R0, =(_ZN23CCustomBuildingPipeline11ObjPipelineE_ptr - 0x2CB260)
2CB256:  MOVS            R1, #0x53F2009C
2CB25C:  ADD             R0, PC; _ZN23CCustomBuildingPipeline11ObjPipelineE_ptr
2CB25E:  LDR             R0, [R0]; CCustomBuildingPipeline::ObjPipeline ...
2CB260:  LDR             R0, [R0]; CCustomBuildingPipeline::ObjPipeline
2CB262:  STR             R0, [R4,#0x6C]
2CB264:  MOV             R0, R4
2CB266:  BLX             j__Z13SetPipelineIDP8RpAtomicj; SetPipelineID(RpAtomic *,uint)
2CB26A:  MOV             R0, R4
2CB26C:  POP             {R4,R6,R7,PC}
