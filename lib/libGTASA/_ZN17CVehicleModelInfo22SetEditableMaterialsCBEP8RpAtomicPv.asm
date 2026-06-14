; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo22SetEditableMaterialsCBEP8RpAtomicPv
; Address            : 0x388AC0 - 0x388AFA
; =========================================================

388AC0:  PUSH            {R4,R5,R7,LR}
388AC2:  ADD             R7, SP, #8
388AC4:  MOV             R4, R0
388AC6:  MOV             R5, R1
388AC8:  LDRB            R0, [R4,#2]
388ACA:  LSLS            R0, R0, #0x1D
388ACC:  BPL             loc_388AF6
388ACE:  MOV             R0, R4
388AD0:  BLX             j__ZN18CVisibilityPlugins11GetAtomicIdEP8RpAtomic; CVisibilityPlugins::GetAtomicId(RpAtomic *)
388AD4:  TST.W           R0, #0x1000
388AD8:  BEQ             loc_388AE8
388ADA:  LDR             R1, =(_Z19RemoveWindowAlphaCBP10RpMaterialPv_ptr - 0x388AE4)
388ADC:  MOV             R2, R5
388ADE:  LDR             R0, [R4,#0x18]
388AE0:  ADD             R1, PC; _Z19RemoveWindowAlphaCBP10RpMaterialPv_ptr
388AE2:  LDR             R1, [R1]; RemoveWindowAlphaCB(RpMaterial *,void *)
388AE4:  BLX             j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
388AE8:  LDR             R1, =(_ZN17CVehicleModelInfo22SetEditableMaterialsCBEP10RpMaterialPv_ptr - 0x388AF2)
388AEA:  MOV             R2, R5
388AEC:  LDR             R0, [R4,#0x18]
388AEE:  ADD             R1, PC; _ZN17CVehicleModelInfo22SetEditableMaterialsCBEP10RpMaterialPv_ptr
388AF0:  LDR             R1, [R1]; CVehicleModelInfo::SetEditableMaterialsCB(RpMaterial *,void *)
388AF2:  BLX             j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
388AF6:  MOV             R0, R4
388AF8:  POP             {R4,R5,R7,PC}
