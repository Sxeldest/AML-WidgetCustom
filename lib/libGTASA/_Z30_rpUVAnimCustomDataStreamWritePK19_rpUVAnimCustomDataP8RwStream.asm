; =========================================================
; Game Engine Function: _Z30_rpUVAnimCustomDataStreamWritePK19_rpUVAnimCustomDataP8RwStream
; Address            : 0x1CA950 - 0x1CA97C
; =========================================================

1CA950:  PUSH            {R4,R5,R7,LR}
1CA952:  ADD             R7, SP, #8
1CA954:  MOV             R5, R1
1CA956:  MOV             R4, R0
1CA958:  MOV             R0, R5; int
1CA95A:  MOV             R1, R4; void *
1CA95C:  MOVS            R2, #0x20 ; ' '; size_t
1CA95E:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1CA962:  CBZ             R0, loc_1CA978
1CA964:  ADD.W           R1, R4, #0x20 ; ' '
1CA968:  MOV             R0, R5
1CA96A:  MOVS            R2, #0x20 ; ' '
1CA96C:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1CA970:  CMP             R0, #0
1CA972:  IT NE
1CA974:  MOVNE           R0, R4
1CA976:  POP             {R4,R5,R7,PC}
1CA978:  MOVS            R0, #0
1CA97A:  POP             {R4,R5,R7,PC}
