; =========================================================
; Game Engine Function: _Z14destroyTextureP9RwTexturePv
; Address            : 0x5D33C0 - 0x5D33CC
; =========================================================

5D33C0:  PUSH            {R7,LR}
5D33C2:  MOV             R7, SP
5D33C4:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5D33C8:  MOVS            R0, #0
5D33CA:  POP             {R7,PC}
