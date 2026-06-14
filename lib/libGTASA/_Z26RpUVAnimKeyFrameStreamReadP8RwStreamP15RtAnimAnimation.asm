; =========================================================
; Game Engine Function: _Z26RpUVAnimKeyFrameStreamReadP8RwStreamP15RtAnimAnimation
; Address            : 0x1CB038 - 0x1CB0AE
; =========================================================

1CB038:  PUSH            {R4-R7,LR}
1CB03A:  ADD             R7, SP, #0xC
1CB03C:  PUSH.W          {R8-R10}
1CB040:  SUB             SP, SP, #8
1CB042:  MOV             R10, R1
1CB044:  ADD             R1, SP, #0x20+var_1C
1CB046:  MOVS            R2, #4
1CB048:  MOV             R5, R0
1CB04A:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
1CB04E:  CBZ             R0, loc_1CB0A0
1CB050:  MOV             R0, R5
1CB052:  BLX             j__Z29_rpUVAnimCustomDataStreamReadP8RwStream; _rpUVAnimCustomDataStreamRead(RwStream *)
1CB056:  CBZ             R0, loc_1CB0A0
1CB058:  LDR.W           R1, [R10,#4]
1CB05C:  LDR.W           R9, [R10,#0x10]
1CB060:  CMP             R1, #1
1CB062:  STR.W           R0, [R10,#0x14]
1CB066:  BLT             loc_1CB0A4
1CB068:  ADD.W           R6, R9, #4
1CB06C:  MOVS            R4, #0
1CB06E:  MOV             R8, SP
1CB070:  MOV             R0, R5
1CB072:  MOV             R1, R6
1CB074:  MOVS            R2, #0x1C
1CB076:  BLX             j__Z16RwStreamReadRealP8RwStreamPfj; RwStreamReadReal(RwStream *,float *,uint)
1CB07A:  CBZ             R0, loc_1CB0A0
1CB07C:  MOV             R0, R5
1CB07E:  MOV             R1, R8
1CB080:  MOVS            R2, #4
1CB082:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
1CB086:  CBZ             R0, loc_1CB0A0
1CB088:  LDR             R0, [SP,#0x20+var_20]
1CB08A:  ADDS            R4, #1
1CB08C:  ADD.W           R0, R9, R0,LSL#5
1CB090:  STR.W           R0, [R6,#-4]
1CB094:  LDR.W           R0, [R10,#4]
1CB098:  ADDS            R6, #0x20 ; ' '
1CB09A:  CMP             R4, R0
1CB09C:  BLT             loc_1CB070
1CB09E:  B               loc_1CB0A4
1CB0A0:  MOV.W           R10, #0
1CB0A4:  MOV             R0, R10
1CB0A6:  ADD             SP, SP, #8
1CB0A8:  POP.W           {R8-R10}
1CB0AC:  POP             {R4-R7,PC}
