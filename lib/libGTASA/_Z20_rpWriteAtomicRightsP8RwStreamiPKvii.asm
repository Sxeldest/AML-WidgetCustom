; =========================================================
; Game Engine Function: _Z20_rpWriteAtomicRightsP8RwStreamiPKvii
; Address            : 0x213914 - 0x213946
; =========================================================

213914:  PUSH            {R4,R5,R7,LR}
213916:  ADD             R7, SP, #8
213918:  MOV             R5, R2
21391A:  MOV             R4, R0
21391C:  LDR             R0, [R5,#0x6C]
21391E:  MOVS            R2, #4
213920:  ADD.W           R1, R0, #0x2C ; ','
213924:  MOV             R0, R4
213926:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
21392A:  CBZ             R0, loc_213942
21392C:  LDR             R0, [R5,#0x6C]
21392E:  MOVS            R2, #4
213930:  ADD.W           R1, R0, #0x30 ; '0'
213934:  MOV             R0, R4
213936:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
21393A:  CMP             R0, #0
21393C:  IT NE
21393E:  MOVNE           R0, R4
213940:  POP             {R4,R5,R7,PC}
213942:  MOVS            R0, #0
213944:  POP             {R4,R5,R7,PC}
