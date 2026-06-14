; =========================================================
; Game Engine Function: _Z29forceLinearFilteringAtomicsCBP8RpAtomicPv
; Address            : 0x5D15DC - 0x5D15F4
; =========================================================

5D15DC:  PUSH            {R4,R6,R7,LR}
5D15DE:  ADD             R7, SP, #8
5D15E0:  MOV             R2, R1
5D15E2:  LDR             R1, =(_Z33forceLinearFilteringMatTexturesCBP10RpMaterialPv_ptr - 0x5D15EA)
5D15E4:  MOV             R4, R0
5D15E6:  ADD             R1, PC; _Z33forceLinearFilteringMatTexturesCBP10RpMaterialPv_ptr
5D15E8:  LDR             R0, [R4,#0x18]
5D15EA:  LDR             R1, [R1]; forceLinearFilteringMatTexturesCB(RpMaterial *,void *)
5D15EC:  BLX.W           j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
5D15F0:  MOV             R0, R4
5D15F2:  POP             {R4,R6,R7,PC}
