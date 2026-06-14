; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo25SetEnvironmentMapAtomicCBEP8RpAtomicPv
; Address            : 0x387D4C - 0x387D64
; =========================================================

387D4C:  PUSH            {R4,R6,R7,LR}
387D4E:  ADD             R7, SP, #8
387D50:  MOV             R2, R1
387D52:  LDR             R1, =(_ZN17CVehicleModelInfo19SetEnvironmentMapCBEP10RpMaterialPv_ptr - 0x387D5A)
387D54:  MOV             R4, R0
387D56:  ADD             R1, PC; _ZN17CVehicleModelInfo19SetEnvironmentMapCBEP10RpMaterialPv_ptr
387D58:  LDR             R0, [R4,#0x18]
387D5A:  LDR             R1, [R1]; CVehicleModelInfo::SetEnvironmentMapCB(RpMaterial *,void *)
387D5C:  BLX             j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
387D60:  MOV             R0, R4
387D62:  POP             {R4,R6,R7,PC}
