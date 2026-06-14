; =========================================================
; Game Engine Function: _Z19_rpWriteWorldRightsP8RwStreamiPKvii
; Address            : 0x212630 - 0x212662
; =========================================================

212630:  PUSH            {R4,R5,R7,LR}
212632:  ADD             R7, SP, #8
212634:  MOV             R5, R2
212636:  MOV             R4, R0
212638:  LDR             R0, [R5,#0x6C]
21263A:  MOVS            R2, #4
21263C:  ADD.W           R1, R0, #0x2C ; ','
212640:  MOV             R0, R4
212642:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
212646:  CBZ             R0, loc_21265E
212648:  LDR             R0, [R5,#0x6C]
21264A:  MOVS            R2, #4
21264C:  ADD.W           R1, R0, #0x30 ; '0'
212650:  MOV             R0, R4
212652:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
212656:  CMP             R0, #0
212658:  IT NE
21265A:  MOVNE           R0, R4
21265C:  POP             {R4,R5,R7,PC}
21265E:  MOVS            R0, #0
212660:  POP             {R4,R5,R7,PC}
