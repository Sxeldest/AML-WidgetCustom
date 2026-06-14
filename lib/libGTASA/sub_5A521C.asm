; =========================================================
; Game Engine Function: sub_5A521C
; Address            : 0x5A521C - 0x5A5232
; =========================================================

5A521C:  PUSH            {R4,R6,R7,LR}
5A521E:  ADD             R7, SP, #8
5A5220:  MOV             R4, R0
5A5222:  LDR             R1, =(sub_5A56A4+1 - 0x5A522A)
5A5224:  LDR             R0, [R4,#0x18]
5A5226:  ADD             R1, PC; sub_5A56A4
5A5228:  MOV             R2, R0
5A522A:  BLX.W           j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
5A522E:  MOV             R0, R4
5A5230:  POP             {R4,R6,R7,PC}
