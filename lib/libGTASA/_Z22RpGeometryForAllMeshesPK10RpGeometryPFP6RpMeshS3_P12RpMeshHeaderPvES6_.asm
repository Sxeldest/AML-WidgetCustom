; =========================================================
; Game Engine Function: _Z22RpGeometryForAllMeshesPK10RpGeometryPFP6RpMeshS3_P12RpMeshHeaderPvES6_
; Address            : 0x215FE0 - 0x215FFE
; =========================================================

215FE0:  PUSH            {R4,R6,R7,LR}
215FE2:  ADD             R7, SP, #8
215FE4:  MOV             R4, R0
215FE6:  LDR             R0, [R4,#0x58]
215FE8:  CBZ             R0, loc_215FF8
215FEA:  BLX             j__Z25_rpMeshHeaderForAllMeshesP12RpMeshHeaderPFP6RpMeshS2_S0_PvES3_; _rpMeshHeaderForAllMeshes(RpMeshHeader *,RpMesh * (*)(RpMesh *,RpMeshHeader *,void *),void *)
215FEE:  CMP             R0, #0
215FF0:  IT EQ
215FF2:  MOVEQ           R4, #0
215FF4:  MOV             R0, R4
215FF6:  POP             {R4,R6,R7,PC}
215FF8:  MOVS            R4, #0
215FFA:  MOV             R0, R4
215FFC:  POP             {R4,R6,R7,PC}
