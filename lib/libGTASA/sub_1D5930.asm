; =========================================================
; Game Engine Function: sub_1D5930
; Address            : 0x1D5930 - 0x1D593E
; =========================================================

1D5930:  PUSH            {R4,R6,R7,LR}
1D5932:  ADD             R7, SP, #8
1D5934:  MOV             R4, R0
1D5936:  BLX             j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
1D593A:  MOV             R0, R4
1D593C:  POP             {R4,R6,R7,PC}
