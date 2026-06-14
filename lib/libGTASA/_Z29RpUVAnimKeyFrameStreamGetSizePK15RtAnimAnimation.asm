; =========================================================
; Game Engine Function: _Z29RpUVAnimKeyFrameStreamGetSizePK15RtAnimAnimation
; Address            : 0x1CB12E - 0x1CB144
; =========================================================

1CB12E:  PUSH            {R4,R6,R7,LR}
1CB130:  ADD             R7, SP, #8
1CB132:  MOV             R4, R0
1CB134:  LDR             R0, [R4,#0x14]
1CB136:  BLX             j__Z32_rpUVAnimCustomDataStreamGetSizePK19_rpUVAnimCustomData; _rpUVAnimCustomDataStreamGetSize(_rpUVAnimCustomData const*)
1CB13A:  LDR             R1, [R4,#4]
1CB13C:  ADD.W           R0, R0, R1,LSL#5
1CB140:  ADDS            R0, #4
1CB142:  POP             {R4,R6,R7,PC}
