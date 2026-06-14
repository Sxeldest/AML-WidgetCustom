; =========================================================
; Game Engine Function: _ZN18CCustomRoadsignMgr19SetupRoadsignAtomicEP8RpAtomicPci
; Address            : 0x5A5BD0 - 0x5A5BF8
; =========================================================

5A5BD0:  PUSH            {R4,R5,R7,LR}
5A5BD2:  ADD             R7, SP, #8
5A5BD4:  MOV             R4, R0
5A5BD6:  MOV             R0, R1; this
5A5BD8:  MOV             R1, R2; char *
5A5BDA:  LDR             R5, [R4,#0x18]
5A5BDC:  BLX.W           j__ZN18CCustomRoadsignMgr21CreateRoadsignTextureEPci; CCustomRoadsignMgr::CreateRoadsignTexture(char *,int)
5A5BE0:  MOV             R2, R0
5A5BE2:  CBZ             R2, loc_5A5BF2
5A5BE4:  LDR             R1, =(sub_5A5BFC+1 - 0x5A5BEC)
5A5BE6:  MOV             R0, R5
5A5BE8:  ADD             R1, PC; sub_5A5BFC
5A5BEA:  BLX.W           j__Z25RpGeometryForAllMaterialsP10RpGeometryPFP10RpMaterialS2_PvES3_; RpGeometryForAllMaterials(RpGeometry *,RpMaterial * (*)(RpMaterial *,void *),void *)
5A5BEE:  MOV             R0, R4
5A5BF0:  POP             {R4,R5,R7,PC}
5A5BF2:  MOVS            R4, #0
5A5BF4:  MOV             R0, R4
5A5BF6:  POP             {R4,R5,R7,PC}
