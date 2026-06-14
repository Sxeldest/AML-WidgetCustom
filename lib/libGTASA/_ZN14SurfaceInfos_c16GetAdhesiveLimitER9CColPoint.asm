; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c16GetAdhesiveLimitER9CColPoint
; Address            : 0x41E154 - 0x41E18E
; =========================================================

41E154:  LDRB.W          R2, [R1,#0x20]
41E158:  ADD.W           R3, R0, #0x90
41E15C:  LDRB.W          R1, [R1,#0x23]
41E160:  ADD.W           R2, R2, R2,LSL#1
41E164:  ADD.W           R1, R1, R1,LSL#1
41E168:  ADD.W           R2, R3, R2,LSL#2
41E16C:  ADD.W           R1, R3, R1,LSL#2
41E170:  LDR.W           R2, [R2,#2]
41E174:  LDR.W           R1, [R1,#2]
41E178:  AND.W           R2, R2, #7
41E17C:  AND.W           R1, R1, #7
41E180:  ADD.W           R1, R1, R1,LSL#1
41E184:  ADD.W           R1, R2, R1,LSL#1
41E188:  LDR.W           R0, [R0,R1,LSL#2]
41E18C:  BX              LR
