; =========================================================
; Game Engine Function: _Z29_rpUVAnimCustomDataStreamReadP8RwStream
; Address            : 0x1CA900 - 0x1CA948
; =========================================================

1CA900:  PUSH            {R4,R5,R7,LR}
1CA902:  ADD             R7, SP, #8
1CA904:  MOV             R5, R0
1CA906:  LDR             R0, =(RwEngineInstance_ptr - 0x1CA90E)
1CA908:  LDR             R1, =(dword_6B8AE8 - 0x1CA910)
1CA90A:  ADD             R0, PC; RwEngineInstance_ptr
1CA90C:  ADD             R1, PC; dword_6B8AE8
1CA90E:  LDR             R0, [R0]; RwEngineInstance
1CA910:  LDR             R2, [R0]
1CA912:  LDR             R0, [R1]
1CA914:  LDR.W           R1, [R2,#0x13C]
1CA918:  BLX             R1
1CA91A:  MOV             R4, R0
1CA91C:  CBZ             R4, loc_1CA942
1CA91E:  MOV             R0, R5; int
1CA920:  MOV             R1, R4; void *
1CA922:  MOVS            R2, #0x20 ; ' '; size_t
1CA924:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1CA928:  CBZ             R0, loc_1CA942
1CA92A:  ADD.W           R1, R4, #0x20 ; ' '
1CA92E:  MOV             R0, R5
1CA930:  MOVS            R2, #0x20 ; ' '
1CA932:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
1CA936:  CMP             R0, #0
1CA938:  ITTTT NE
1CA93A:  MOVNE           R0, #1
1CA93C:  STRNE           R0, [R4,#0x40]
1CA93E:  MOVNE           R0, R4
1CA940:  POPNE           {R4,R5,R7,PC}
1CA942:  MOVS            R4, #0
1CA944:  MOV             R0, R4
1CA946:  POP             {R4,R5,R7,PC}
