; =========================================================
; Game Engine Function: _Z13RpWorldRenderP7RpWorld
; Address            : 0x21CD0C - 0x21CD2A
; =========================================================

21CD0C:  PUSH            {R4,R6,R7,LR}
21CD0E:  ADD             R7, SP, #8
21CD10:  MOV             R4, R0
21CD12:  LDR             R0, =(RwEngineInstance_ptr - 0x21CD1C)
21CD14:  LDR             R1, =(sub_21CD34+1 - 0x21CD1E)
21CD16:  MOV             R2, R4
21CD18:  ADD             R0, PC; RwEngineInstance_ptr
21CD1A:  ADD             R1, PC; sub_21CD34
21CD1C:  LDR             R0, [R0]; RwEngineInstance
21CD1E:  LDR             R0, [R0]
21CD20:  LDR             R0, [R0]
21CD22:  BLX             j__Z30RwCameraForAllSectorsInFrustumP8RwCameraPFP13RpWorldSectorS2_PvES3_; RwCameraForAllSectorsInFrustum(RwCamera *,RpWorldSector * (*)(RpWorldSector *,void *),void *)
21CD26:  MOV             R0, R4
21CD28:  POP             {R4,R6,R7,PC}
