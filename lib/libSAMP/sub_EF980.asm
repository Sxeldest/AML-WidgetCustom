; =========================================================
; Game Engine Function: sub_EF980
; Address            : 0xEF980 - 0xEFA38
; =========================================================

EF980:  PUSH            {R4-R7,LR}
EF982:  ADD             R7, SP, #0xC
EF984:  PUSH.W          {R8}
EF988:  SUB             SP, SP, #8
EF98A:  MOV             R4, R0
EF98C:  LDRD.W          R8, R0, [R0,#8]
EF990:  MOVW            R2, #0x76C
EF994:  MOVS            R3, #0
EF996:  LDRD.W          R6, R5, [R0,#0xC]
EF99A:  LDR             R0, [R0,#0x14]
EF99C:  ASRS            R1, R0, #0x1F
EF99E:  ADDS            R0, R0, R2
EF9A0:  ADC.W           R1, R1, #0
EF9A4:  MOVS            R2, #0x64 ; 'd'
EF9A6:  BLX             sub_221404
EF9AA:  ADDS            R0, R5, #1
EF9AC:  CMP             R3, #0
EF9AE:  ORR.W           R0, R0, R6,LSL#24
EF9B2:  MOV.W           R1, #0xCD
EF9B6:  MOV.W           R3, #0xCD0000
EF9BA:  IT MI
EF9BC:  NEGMI           R2, R2
EF9BE:  UMULL.W         R1, R6, R0, R1
EF9C2:  MOV             R5, #0x302F3030
EF9CA:  MULS            R3, R2
EF9CC:  LSRS            R1, R1, #0xB
EF9CE:  ADD             R3, R6
EF9D0:  MOVS            R6, #0xF00000F
EF9D6:  ORR.W           R1, R1, R3,LSL#21
EF9DA:  ANDS            R1, R6
EF9DC:  ADD.W           R1, R1, R1,LSL#1
EF9E0:  ADDS.W          R0, R0, R1,LSL#1
EF9E4:  AND.W           R1, R6, R0,LSR#4
EF9E8:  BFI.W           R1, R0, #8, #4
EF9EC:  ORR.W           R1, R1, R5
EF9F0:  STR             R1, [SP,#0x18+var_18]
EF9F2:  MOV.W           R1, #0xF0000
EF9F6:  AND.W           R3, R1, R3,LSR#11
EF9FA:  ADD.W           R3, R3, R3,LSL#1
EF9FE:  MOV.W           R3, R3,LSL#1
EFA02:  ADC.W           R2, R3, R2,LSL#16
EFA06:  AND.W           R1, R1, R2,LSR#4
EFA0A:  LSLS            R2, R2, #8
EFA0C:  ORR.W           R0, R2, R0,LSR#24
EFA10:  ANDS            R0, R6
EFA12:  ADD             R0, R1
EFA14:  MOV             R1, #0x30302F30
EFA1C:  ORRS            R0, R1
EFA1E:  MOV             R1, SP
EFA20:  ADD.W           R2, R1, #8
EFA24:  STR             R0, [SP,#0x18+var_14]
EFA26:  MOV             R0, R8
EFA28:  BL              sub_DCF30
EFA2C:  STR.W           R8, [R4,#8]
EFA30:  ADD             SP, SP, #8
EFA32:  POP.W           {R8}
EFA36:  POP             {R4-R7,PC}
