; =========================================================
; Game Engine Function: _Z30SetFilterModeOnAtomicsTexturesP8RpAtomic19RwTextureFilterMode
; Address            : 0x5D15C0 - 0x5D15D6
; =========================================================

5D15C0:  PUSH            {R7,LR}
5D15C2:  MOV             R7, SP
5D15C4:  MOV             R2, R1
5D15C6:  LDR             R1, =(_Z33forceLinearFilteringMatTexturesCBP10RpMaterialPv_ptr - 0x5D15CE)
5D15C8:  LDR             R0, [R0,#0x18]
5D15CA:  ADD             R1, PC; _Z33forceLinearFilteringMatTexturesCBP10RpMaterialPv_ptr
5D15CC:  LDR             R1, [R1]; forceLinearFilteringMatTexturesCB(RpMaterial *,void *)
5D15CE:  BLX.W           j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
5D15D2:  MOVS            R0, #1
5D15D4:  POP             {R7,PC}
