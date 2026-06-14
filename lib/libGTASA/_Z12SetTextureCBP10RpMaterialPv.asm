; =========================================================
; Game Engine Function: _Z12SetTextureCBP10RpMaterialPv
; Address            : 0x5D601C - 0x5D602A
; =========================================================

5D601C:  PUSH            {R4,R6,R7,LR}
5D601E:  ADD             R7, SP, #8
5D6020:  MOV             R4, R0
5D6022:  BLX.W           j__Z20RpMaterialSetTextureP10RpMaterialP9RwTexture; RpMaterialSetTexture(RpMaterial *,RwTexture *)
5D6026:  MOV             R0, R4
5D6028:  POP             {R4,R6,R7,PC}
