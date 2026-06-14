; =========================================================
; Game Engine Function: _Z18RwCameraShowRasterP8RwCameraPvj
; Address            : 0x1D5D94 - 0x1D5DA8
; =========================================================

1D5D94:  PUSH            {R4,R6,R7,LR}
1D5D96:  ADD             R7, SP, #8
1D5D98:  MOV             R4, R0
1D5D9A:  LDR             R0, [R4,#0x60]
1D5D9C:  BLX             j__Z18RwRasterShowRasterP8RwRasterPvj; RwRasterShowRaster(RwRaster *,void *,uint)
1D5DA0:  CMP             R0, #0
1D5DA2:  IT NE
1D5DA4:  MOVNE           R0, R4
1D5DA6:  POP             {R4,R6,R7,PC}
