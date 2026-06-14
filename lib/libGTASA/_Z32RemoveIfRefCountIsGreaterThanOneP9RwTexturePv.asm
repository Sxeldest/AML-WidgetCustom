; =========================================================
; Game Engine Function: _Z32RemoveIfRefCountIsGreaterThanOneP9RwTexturePv
; Address            : 0x5D404C - 0x5D4068
; =========================================================

5D404C:  PUSH            {R4,R6,R7,LR}
5D404E:  ADD             R7, SP, #8
5D4050:  MOV             R4, R0
5D4052:  LDR             R0, [R4,#0x54]
5D4054:  CMP             R0, #2
5D4056:  BLT             loc_5D4064
5D4058:  MOV             R0, R4
5D405A:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5D405E:  MOV             R0, R4
5D4060:  BLX.W           j__Z28RwTexDictionaryRemoveTextureP9RwTexture; RwTexDictionaryRemoveTexture(RwTexture *)
5D4064:  MOV             R0, R4
5D4066:  POP             {R4,R6,R7,PC}
