; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo22SetEnvMapCoeffAtomicCBEP8RpAtomicPv
; Address            : 0x387DC8 - 0x387DE0
; =========================================================

387DC8:  PUSH            {R4,R6,R7,LR}
387DCA:  ADD             R7, SP, #8
387DCC:  MOV             R2, R1
387DCE:  LDR             R1, =(_ZN17CVehicleModelInfo16SetEnvMapCoeffCBEP10RpMaterialPv_ptr - 0x387DD6)
387DD0:  MOV             R4, R0
387DD2:  ADD             R1, PC; _ZN17CVehicleModelInfo16SetEnvMapCoeffCBEP10RpMaterialPv_ptr
387DD4:  LDR             R0, [R4,#0x18]
387DD6:  LDR             R1, [R1]; CVehicleModelInfo::SetEnvMapCoeffCB(RpMaterial *,void *)
387DD8:  BLX             j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
387DDC:  MOV             R0, R4
387DDE:  POP             {R4,R6,R7,PC}
