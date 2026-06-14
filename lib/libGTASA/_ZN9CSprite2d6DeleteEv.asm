; =========================================================
; Game Engine Function: _ZN9CSprite2d6DeleteEv
; Address            : 0x5C881C - 0x5C8834
; =========================================================

5C881C:  PUSH            {R4,R6,R7,LR}
5C881E:  ADD             R7, SP, #8
5C8820:  MOV             R4, R0
5C8822:  LDR             R0, [R4]
5C8824:  CMP             R0, #0
5C8826:  IT EQ
5C8828:  POPEQ           {R4,R6,R7,PC}
5C882A:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5C882E:  MOVS            R0, #0
5C8830:  STR             R0, [R4]
5C8832:  POP             {R4,R6,R7,PC}
