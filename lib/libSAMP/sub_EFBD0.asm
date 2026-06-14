; =========================================================
; Game Engine Function: sub_EFBD0
; Address            : 0xEFBD0 - 0xEFC1E
; =========================================================

EFBD0:  PUSH            {R4,R6,R7,LR}
EFBD2:  ADD             R7, SP, #8
EFBD4:  SUB             SP, SP, #8
EFBD6:  MOV             R4, R0
EFBD8:  LDRB            R0, [R0,#4]
EFBDA:  CBZ             R0, loc_EFC08
EFBDC:  LDR             R0, [R4,#0xC]
EFBDE:  MOVW            R2, #0x76C
EFBE2:  MOVS            R3, #0
EFBE4:  LDR             R0, [R0,#0x14]
EFBE6:  ASRS            R1, R0, #0x1F
EFBE8:  ADDS            R0, R0, R2
EFBEA:  ADC.W           R1, R1, #0
EFBEE:  MOVS            R2, #0x64 ; 'd'
EFBF0:  BLX             sub_221404
EFBF4:  MOV             R1, R2
EFBF6:  CMP             R3, #0
EFBF8:  IT MI
EFBFA:  NEGMI           R1, R1
EFBFC:  MOV             R0, R4
EFBFE:  ADD             SP, SP, #8
EFC00:  POP.W           {R4,R6,R7,LR}
EFC04:  B.W             sub_EFC70
EFC08:  LDR             R2, [R4]
EFC0A:  MOVS            R3, #0x45 ; 'E'
EFC0C:  LDRD.W          R0, R1, [R4,#8]
EFC10:  STR             R3, [SP,#0x10+var_10]
EFC12:  MOVS            R3, #0x79 ; 'y'
EFC14:  BL              sub_EFCE0
EFC18:  STR             R0, [R4,#8]
EFC1A:  ADD             SP, SP, #8
EFC1C:  POP             {R4,R6,R7,PC}
