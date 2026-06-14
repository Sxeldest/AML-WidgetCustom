; =========================================================
; Game Engine Function: _Z26RtAnimAnimationStreamWritePK15RtAnimAnimationP8RwStream
; Address            : 0x1EB1DC - 0x1EB264
; =========================================================

1EB1DC:  PUSH            {R4,R5,R7,LR}
1EB1DE:  ADD             R7, SP, #8
1EB1E0:  SUB             SP, SP, #8
1EB1E2:  MOV             R5, R0
1EB1E4:  MOV.W           R0, #0x100
1EB1E8:  STR             R0, [SP,#0x10+var_C]
1EB1EA:  MOV             R4, R1
1EB1EC:  LDR             R0, [R5]
1EB1EE:  LDR             R1, [R0,#0x28]
1EB1F0:  MOV             R0, R5
1EB1F2:  BLX             R1
1EB1F4:  MOVW            R3, #:lower16:(stru_35FF8.st_size+3)
1EB1F8:  MOVW            R1, #0xFFFF
1EB1FC:  ADD.W           R2, R0, #0x14
1EB200:  STR             R1, [SP,#0x10+var_10]
1EB202:  MOVT            R3, #:upper16:(stru_35FF8.st_size+3)
1EB206:  MOV             R0, R4
1EB208:  MOVS            R1, #0x1B
1EB20A:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
1EB20E:  ADD             R1, SP, #0x10+var_C
1EB210:  MOV             R0, R4
1EB212:  MOVS            R2, #4
1EB214:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1EB218:  CBZ             R0, loc_1EB25E
1EB21A:  LDR             R1, [R5]
1EB21C:  MOV             R0, R4
1EB21E:  MOVS            R2, #4
1EB220:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1EB224:  CBZ             R0, loc_1EB25E
1EB226:  ADDS            R1, R5, #4
1EB228:  MOV             R0, R4
1EB22A:  MOVS            R2, #4
1EB22C:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1EB230:  CBZ             R0, loc_1EB25E
1EB232:  ADD.W           R1, R5, #8
1EB236:  MOV             R0, R4
1EB238:  MOVS            R2, #4
1EB23A:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1EB23E:  CBZ             R0, loc_1EB25E
1EB240:  ADD.W           R1, R5, #0xC; void *
1EB244:  MOV             R0, R4; int
1EB246:  MOVS            R2, #4
1EB248:  BLX             j__Z17RwStreamWriteRealP8RwStreamPKfj; RwStreamWriteReal(RwStream *,float const*,uint)
1EB24C:  CBZ             R0, loc_1EB25E
1EB24E:  LDR             R0, [R5]
1EB250:  MOV             R1, R4
1EB252:  LDR             R2, [R0,#0x24]
1EB254:  MOV             R0, R5
1EB256:  BLX             R2
1EB258:  MOVS            R0, #1
1EB25A:  ADD             SP, SP, #8
1EB25C:  POP             {R4,R5,R7,PC}
1EB25E:  MOVS            R0, #0
1EB260:  ADD             SP, SP, #8
1EB262:  POP             {R4,R5,R7,PC}
