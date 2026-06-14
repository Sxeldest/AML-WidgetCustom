; =========================================================
; Game Engine Function: sub_86ECA
; Address            : 0x86ECA - 0x86F46
; =========================================================

86ECA:  PUSH            {R4-R7,LR}
86ECC:  ADD             R7, SP, #0xC
86ECE:  PUSH.W          {R8}
86ED2:  LDR             R1, [R0]
86ED4:  MOV             R4, R0
86ED6:  ADDS            R0, R1, #1
86ED8:  CMP             R1, #0
86EDA:  BMI             loc_86F24
86EDC:  LDR             R6, [R4,#4]
86EDE:  SUBS            R2, R6, #1
86EE0:  ASRS            R2, R2, #3
86EE2:  CMP.W           R2, R1,LSR#3
86EE6:  BGE             loc_86F24
86EE8:  MOVS            R1, #7
86EEA:  LDR             R5, [R4,#0xC]
86EEC:  ADD.W           R1, R1, R0,LSL#1
86EF0:  ADD.W           R2, R4, #0x11
86EF4:  MOV.W           R8, R0,LSL#1
86EF8:  CMP             R5, R2
86EFA:  MOV.W           R1, R1,ASR#3; size
86EFE:  BEQ             loc_86F0A
86F00:  MOV             R0, R5; ptr
86F02:  BLX             realloc
86F06:  STR             R0, [R4,#0xC]
86F08:  B               loc_86F22
86F0A:  CMP.W           R0, #0x400
86F0E:  BLS             loc_86F22
86F10:  MOV             R0, R1; size
86F12:  BLX             malloc
86F16:  ADDS            R1, R6, #7
86F18:  STR             R0, [R4,#0xC]
86F1A:  ASRS            R2, R1, #3; n
86F1C:  MOV             R1, R5; src
86F1E:  BLX             j_memcpy
86F22:  MOV             R0, R8
86F24:  LDR             R1, [R4,#4]
86F26:  CMP             R0, R1
86F28:  IT GT
86F2A:  STRGT           R0, [R4,#4]
86F2C:  LDR             R0, [R4]
86F2E:  LSLS            R1, R0, #0x1D
86F30:  BNE             loc_86F3C
86F32:  LDR             R1, [R4,#0xC]
86F34:  ASRS            R0, R0, #3
86F36:  MOVS            R2, #0
86F38:  STRB            R2, [R1,R0]
86F3A:  LDR             R0, [R4]
86F3C:  ADDS            R0, #1
86F3E:  STR             R0, [R4]
86F40:  POP.W           {R8}
86F44:  POP             {R4-R7,PC}
