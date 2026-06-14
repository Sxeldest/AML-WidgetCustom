; =========================================================
; Game Engine Function: _Z14DestroyTextureRP9RwTexture
; Address            : 0x297220 - 0x297238
; =========================================================

297220:  PUSH            {R4,R6,R7,LR}
297222:  ADD             R7, SP, #8
297224:  MOV             R4, R0
297226:  LDR             R0, [R4]
297228:  CMP             R0, #0
29722A:  IT EQ
29722C:  POPEQ           {R4,R6,R7,PC}
29722E:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
297232:  MOVS            R0, #0
297234:  STR             R0, [R4]
297236:  POP             {R4,R6,R7,PC}
