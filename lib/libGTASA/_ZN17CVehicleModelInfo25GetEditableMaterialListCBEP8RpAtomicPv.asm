; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo25GetEditableMaterialListCBEP8RpAtomicPv
; Address            : 0x388BA8 - 0x388BC0
; =========================================================

388BA8:  PUSH            {R4,R6,R7,LR}
388BAA:  ADD             R7, SP, #8
388BAC:  MOV             R2, R1
388BAE:  LDR             R1, =(_ZN17CVehicleModelInfo25GetEditableMaterialListCBEP10RpMaterialPv_ptr - 0x388BB6)
388BB0:  MOV             R4, R0
388BB2:  ADD             R1, PC; _ZN17CVehicleModelInfo25GetEditableMaterialListCBEP10RpMaterialPv_ptr
388BB4:  LDR             R0, [R4,#0x18]
388BB6:  LDR             R1, [R1]; CVehicleModelInfo::GetEditableMaterialListCB(RpMaterial *,void *)
388BB8:  BLX             j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
388BBC:  MOV             R0, R4
388BBE:  POP             {R4,R6,R7,PC}
