; =========================================================
; Game Engine Function: sub_458DDC
; Address            : 0x458DDC - 0x458DF0
; =========================================================

458DDC:  PUSH            {R4,R6,R7,LR}
458DDE:  ADD             R7, SP, #8
458DE0:  MOV             R4, R0
458DE2:  BLX             j__Z28RwTexDictionaryRemoveTextureP9RwTexture; RwTexDictionaryRemoveTexture(RwTexture *)
458DE6:  MOV             R0, R4
458DE8:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
458DEC:  MOV             R0, R4
458DEE:  POP             {R4,R6,R7,PC}
