; =========================================================
; Game Engine Function: sub_EF284
; Address            : 0xEF284 - 0xEF2C6
; =========================================================

EF284:  PUSH            {R4,R6,R7,LR}
EF286:  ADD             R7, SP, #8
EF288:  SUB             SP, SP, #8
EF28A:  MOV             R4, R0
EF28C:  CBZ             R1, loc_EF2A8
EF28E:  LDRB            R0, [R4,#4]
EF290:  CBNZ            R0, loc_EF2A8
EF292:  LDR             R2, [R4]
EF294:  MOVS            R3, #0x45 ; 'E'
EF296:  LDRD.W          R0, R1, [R4,#8]
EF29A:  STR             R3, [SP,#0x10+var_10]
EF29C:  MOVS            R3, #0x59 ; 'Y'
EF29E:  BL              sub_EFCE0
EF2A2:  STR             R0, [R4,#8]
EF2A4:  ADD             SP, SP, #8
EF2A6:  POP             {R4,R6,R7,PC}
EF2A8:  LDR             R0, [R4,#0xC]
EF2AA:  MOVW            R2, #0x76C
EF2AE:  LDR             R0, [R0,#0x14]
EF2B0:  ADDS            R2, R2, R0
EF2B2:  MOV.W           R1, R0,ASR#31
EF2B6:  ADC.W           R3, R1, #0
EF2BA:  MOV             R0, R4
EF2BC:  ADD             SP, SP, #8
EF2BE:  POP.W           {R4,R6,R7,LR}
EF2C2:  B.W             sub_EFC1E
