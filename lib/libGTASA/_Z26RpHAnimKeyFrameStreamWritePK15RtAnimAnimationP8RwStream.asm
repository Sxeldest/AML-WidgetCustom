; =========================================================
; Game Engine Function: _Z26RpHAnimKeyFrameStreamWritePK15RtAnimAnimationP8RwStream
; Address            : 0x1C400A - 0x1C406C
; =========================================================

1C400A:  PUSH            {R4-R7,LR}
1C400C:  ADD             R7, SP, #0xC
1C400E:  PUSH.W          {R8-R10}
1C4012:  SUB             SP, SP, #8
1C4014:  MOV             R10, R0
1C4016:  MOV             R4, R1
1C4018:  LDR.W           R0, [R10,#4]
1C401C:  CMP             R0, #1
1C401E:  BLT             loc_1C405E
1C4020:  LDR.W           R9, [R10,#0x10]
1C4024:  ADD.W           R8, SP, #0x20+var_1C
1C4028:  MOVS            R5, #0
1C402A:  ADD.W           R6, R9, #4
1C402E:  MOV             R0, R4; int
1C4030:  MOV             R1, R6; void *
1C4032:  MOVS            R2, #0x20 ; ' '
1C4034:  BLX             j__Z17RwStreamWriteRealP8RwStreamPKfj; RwStreamWriteReal(RwStream *,float const*,uint)
1C4038:  CBZ             R0, loc_1C4062
1C403A:  LDR.W           R0, [R6,#-4]
1C403E:  MOV             R1, R8
1C4040:  MOVS            R2, #4
1C4042:  SUB.W           R0, R0, R9
1C4046:  STR             R0, [SP,#0x20+var_1C]
1C4048:  MOV             R0, R4
1C404A:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1C404E:  CMP             R0, #0
1C4050:  BEQ             loc_1C4062
1C4052:  LDR.W           R0, [R10,#4]
1C4056:  ADDS            R5, #1
1C4058:  ADDS            R6, #0x24 ; '$'
1C405A:  CMP             R5, R0
1C405C:  BLT             loc_1C402E
1C405E:  MOVS            R0, #1
1C4060:  B               loc_1C4064
1C4062:  MOVS            R0, #0
1C4064:  ADD             SP, SP, #8
1C4066:  POP.W           {R8-R10}
1C406A:  POP             {R4-R7,PC}
