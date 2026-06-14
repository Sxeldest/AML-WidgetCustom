; =========================================================
; Game Engine Function: sub_EF2C6
; Address            : 0xEF2C6 - 0xEF316
; =========================================================

EF2C6:  PUSH            {R4,R6,R7,LR}
EF2C8:  ADD             R7, SP, #8
EF2CA:  SUB             SP, SP, #8
EF2CC:  MOV             R4, R0
EF2CE:  CBZ             R1, loc_EF2EA
EF2D0:  LDRB            R0, [R4,#4]
EF2D2:  CBNZ            R0, loc_EF2EA
EF2D4:  LDR             R2, [R4]
EF2D6:  MOVS            R3, #0x4F ; 'O'
EF2D8:  LDRD.W          R0, R1, [R4,#8]
EF2DC:  STR             R3, [SP,#0x10+var_10]
EF2DE:  MOVS            R3, #0x79 ; 'y'
EF2E0:  BL              sub_EFCE0
EF2E4:  STR             R0, [R4,#8]
EF2E6:  ADD             SP, SP, #8
EF2E8:  POP             {R4,R6,R7,PC}
EF2EA:  LDR             R0, [R4,#0xC]
EF2EC:  MOVW            R2, #0x76C
EF2F0:  MOVS            R3, #0
EF2F2:  LDR             R0, [R0,#0x14]
EF2F4:  ASRS            R1, R0, #0x1F
EF2F6:  ADDS            R0, R0, R2
EF2F8:  ADC.W           R1, R1, #0
EF2FC:  MOVS            R2, #0x64 ; 'd'
EF2FE:  BLX             sub_221404
EF302:  MOV             R1, R2
EF304:  CMP             R3, #0
EF306:  IT MI
EF308:  NEGMI           R1, R1
EF30A:  MOV             R0, R4
EF30C:  ADD             SP, SP, #8
EF30E:  POP.W           {R4,R6,R7,LR}
EF312:  B.W             sub_EFC70
