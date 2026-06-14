; =========================================================
; Game Engine Function: _Z29RpGeometryTriangleSetMaterialP10RpGeometryP10RpTriangleP10RpMaterial
; Address            : 0x215F36 - 0x215F78
; =========================================================

215F36:  PUSH            {R4-R7,LR}
215F38:  ADD             R7, SP, #0xC
215F3A:  PUSH.W          {R8}
215F3E:  MOV             R6, R2
215F40:  MOV             R8, R1
215F42:  MOV             R4, R0
215F44:  CBZ             R6, loc_215F68
215F46:  ADD.W           R5, R4, #0x20 ; ' '
215F4A:  MOV             R1, R6
215F4C:  MOV             R0, R5
215F4E:  BLX             j__Z32_rpMaterialListFindMaterialIndexPK14RpMaterialListPK10RpMaterial; _rpMaterialListFindMaterialIndex(RpMaterialList const*,RpMaterial const*)
215F52:  CMP.W           R0, #0xFFFFFFFF
215F56:  BGT             loc_215F6C
215F58:  MOV             R0, R5
215F5A:  MOV             R1, R6
215F5C:  BLX             j__Z29_rpMaterialListAppendMaterialP14RpMaterialListP10RpMaterial; _rpMaterialListAppendMaterial(RpMaterialList *,RpMaterial *)
215F60:  CMP             R0, #0
215F62:  BGE             loc_215F6C
215F64:  MOVS            R4, #0
215F66:  B               loc_215F70
215F68:  MOVW            R0, #0xFFFF
215F6C:  STRH.W          R0, [R8,#6]
215F70:  MOV             R0, R4
215F72:  POP.W           {R8}
215F76:  POP             {R4-R7,PC}
