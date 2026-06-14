; =========================================================
; Game Engine Function: _ZN14CCarFXRenderer17AtomicRemapDirtCBEP8RpAtomicPv
; Address            : 0x2CA154 - 0x2CA16C
; =========================================================

2CA154:  PUSH            {R4,R6,R7,LR}
2CA156:  ADD             R7, SP, #8
2CA158:  MOV             R2, R1
2CA15A:  LDR             R1, =(_ZN14CCarFXRenderer19MaterialRemapDirtCBEP10RpMaterialPv_ptr - 0x2CA162)
2CA15C:  MOV             R4, R0
2CA15E:  ADD             R1, PC; _ZN14CCarFXRenderer19MaterialRemapDirtCBEP10RpMaterialPv_ptr
2CA160:  LDR             R0, [R4,#0x18]
2CA162:  LDR             R1, [R1]; CCarFXRenderer::MaterialRemapDirtCB(RpMaterial *,void *)
2CA164:  BLX             j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
2CA168:  MOV             R0, R4
2CA16A:  POP             {R4,R6,R7,PC}
