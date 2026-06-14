; =========================================================
; Game Engine Function: _Z25_rpMatFXStreamSizeTexturePK9RwTexture
; Address            : 0x1C6092 - 0x1C60A6
; =========================================================

1C6092:  CMP             R0, #0
1C6094:  ITT EQ
1C6096:  MOVEQ           R0, #4
1C6098:  BXEQ            LR
1C609A:  PUSH            {R7,LR}
1C609C:  MOV             R7, SP
1C609E:  BLX             j__Z22RwTextureStreamGetSizePK9RwTexture; RwTextureStreamGetSize(RwTexture const*)
1C60A2:  ADDS            R0, #0x10
1C60A4:  POP             {R7,PC}
