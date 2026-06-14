; =========================================================
; Game Engine Function: _Z25RpHAnimKeyFrameStreamReadP8RwStreamP15RtAnimAnimation
; Address            : 0x1C3F98 - 0x1C400A
; =========================================================

1C3F98:  PUSH            {R4-R7,LR}
1C3F9A:  ADD             R7, SP, #0xC
1C3F9C:  PUSH.W          {R8-R11}
1C3FA0:  SUB             SP, SP, #4
1C3FA2:  MOV             R10, R1
1C3FA4:  MOV             R5, R0
1C3FA6:  LDR.W           R0, [R10,#4]
1C3FAA:  CMP             R0, #1
1C3FAC:  BLT             loc_1C4000
1C3FAE:  LDR.W           R9, [R10,#0x10]
1C3FB2:  MOVW            R11, #0x8E39
1C3FB6:  MOVS            R4, #0
1C3FB8:  MOV             R8, SP
1C3FBA:  ADD.W           R6, R9, #4
1C3FBE:  MOVT            R11, #0x38E3
1C3FC2:  MOV             R0, R5
1C3FC4:  MOV             R1, R6
1C3FC6:  MOVS            R2, #0x20 ; ' '
1C3FC8:  BLX             j__Z16RwStreamReadRealP8RwStreamPfj; RwStreamReadReal(RwStream *,float *,uint)
1C3FCC:  CBZ             R0, loc_1C3FFC
1C3FCE:  MOV             R0, R5
1C3FD0:  MOV             R1, R8
1C3FD2:  MOVS            R2, #4
1C3FD4:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
1C3FD8:  CBZ             R0, loc_1C3FFC
1C3FDA:  LDR             R0, [SP,#0x20+var_20]
1C3FDC:  ADDS            R4, #1
1C3FDE:  UMULL.W         R0, R1, R0, R11
1C3FE2:  LSRS            R0, R1, #3
1C3FE4:  ADD.W           R0, R0, R0,LSL#3
1C3FE8:  ADD.W           R0, R9, R0,LSL#2
1C3FEC:  STR.W           R0, [R6,#-4]
1C3FF0:  LDR.W           R0, [R10,#4]
1C3FF4:  ADDS            R6, #0x24 ; '$'
1C3FF6:  CMP             R4, R0
1C3FF8:  BLT             loc_1C3FC2
1C3FFA:  B               loc_1C4000
1C3FFC:  MOV.W           R10, #0
1C4000:  MOV             R0, R10
1C4002:  ADD             SP, SP, #4
1C4004:  POP.W           {R8-R11}
1C4008:  POP             {R4-R7,PC}
