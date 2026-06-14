; =========================================================
; Game Engine Function: _ZN18CCustomCarPlateMgr25SetupMaterialPlateTextureEP10RpMaterialPch
; Address            : 0x5A52A8 - 0x5A52D4
; =========================================================

5A52A8:  PUSH            {R4,R5,R7,LR}
5A52AA:  ADD             R7, SP, #8
5A52AC:  MOV             R4, R0
5A52AE:  CBZ             R4, loc_5A52CE
5A52B0:  MOV             R0, R1; this
5A52B2:  MOV             R1, R2; char *
5A52B4:  BLX.W           j__ZN18CCustomCarPlateMgr18CreatePlateTextureEPch; CCustomCarPlateMgr::CreatePlateTexture(char *,uchar)
5A52B8:  MOV             R5, R0
5A52BA:  CBZ             R5, loc_5A52CE
5A52BC:  MOV             R0, R4
5A52BE:  MOV             R1, R5
5A52C0:  BLX.W           j__Z20RpMaterialSetTextureP10RpMaterialP9RwTexture; RpMaterialSetTexture(RpMaterial *,RwTexture *)
5A52C4:  MOV             R0, R5
5A52C6:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5A52CA:  MOV             R0, R4
5A52CC:  POP             {R4,R5,R7,PC}
5A52CE:  MOVS            R4, #0
5A52D0:  MOV             R0, R4
5A52D2:  POP             {R4,R5,R7,PC}
