; =========================================================
; Game Engine Function: sub_86CE4
; Address            : 0x86CE4 - 0x86D52
; =========================================================

86CE4:  PUSH            {R4-R7,LR}
86CE6:  ADD             R7, SP, #0xC
86CE8:  PUSH.W          {R8}
86CEC:  CMP             R1, #1
86CEE:  BLT             loc_86D4C
86CF0:  MOV             R4, R0
86CF2:  LDR             R0, [R0]
86CF4:  ADD             R0, R1
86CF6:  CMP             R0, #1
86CF8:  BLT             loc_86D44
86CFA:  LDR             R6, [R4,#4]
86CFC:  SUBS            R1, R0, #1
86CFE:  SUBS            R2, R6, #1
86D00:  ASRS            R2, R2, #3
86D02:  CMP.W           R2, R1,LSR#3
86D06:  BGE             loc_86D44
86D08:  MOVS            R1, #7
86D0A:  LDR             R5, [R4,#0xC]
86D0C:  ADD.W           R1, R1, R0,LSL#1
86D10:  ADD.W           R2, R4, #0x11
86D14:  MOV.W           R8, R0,LSL#1
86D18:  CMP             R5, R2
86D1A:  MOV.W           R1, R1,ASR#3; size
86D1E:  BEQ             loc_86D2A
86D20:  MOV             R0, R5; ptr
86D22:  BLX             realloc
86D26:  STR             R0, [R4,#0xC]
86D28:  B               loc_86D42
86D2A:  CMP.W           R0, #0x400
86D2E:  BLS             loc_86D42
86D30:  MOV             R0, R1; size
86D32:  BLX             malloc
86D36:  ADDS            R1, R6, #7
86D38:  STR             R0, [R4,#0xC]
86D3A:  ASRS            R2, R1, #3; n
86D3C:  MOV             R1, R5; src
86D3E:  BLX             j_memcpy
86D42:  MOV             R0, R8
86D44:  LDR             R1, [R4,#4]
86D46:  CMP             R0, R1
86D48:  IT GT
86D4A:  STRGT           R0, [R4,#4]
86D4C:  POP.W           {R8}
86D50:  POP             {R4-R7,PC}
