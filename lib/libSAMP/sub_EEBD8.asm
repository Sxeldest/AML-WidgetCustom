; =========================================================
; Game Engine Function: sub_EEBD8
; Address            : 0xEEBD8 - 0xEEC72
; =========================================================

EEBD8:  PUSH            {R4-R7,LR}
EEBDA:  ADD             R7, SP, #0xC
EEBDC:  PUSH.W          {R8}
EEBE0:  SUB             SP, SP, #8
EEBE2:  MOV             R4, R0
EEBE4:  LDRD.W          R8, R0, [R0,#8]
EEBE8:  MOV.W           R3, #0xCD0000
EEBEC:  MOVW            R6, #0x3030
EEBF0:  LDRD.W          R1, R2, [R0]
EEBF4:  MOVT            R6, #0x303A
EEBF8:  LDR             R0, [R0,#8]
EEBFA:  ORR.W           R0, R0, R2,LSL#24
EEBFE:  MOVS            R2, #0xCD
EEC00:  MULS            R3, R1
EEC02:  UMULL.W         R2, R5, R0, R2
EEC06:  ADD             R3, R5
EEC08:  MOVS            R5, #0xF
EEC0A:  LSRS            R2, R2, #0xB
EEC0C:  MOVT            R5, #0xF00
EEC10:  ORR.W           R2, R2, R3,LSL#21
EEC14:  ANDS            R2, R5
EEC16:  ADD.W           R2, R2, R2,LSL#1
EEC1A:  ADDS.W          R0, R0, R2,LSL#1
EEC1E:  AND.W           R2, R5, R0,LSR#4
EEC22:  BFI.W           R2, R0, #8, #4
EEC26:  ORR.W           R2, R2, R6
EEC2A:  STR             R2, [SP,#0x18+var_18]
EEC2C:  MOV.W           R2, #0xF0000
EEC30:  AND.W           R3, R2, R3,LSR#11
EEC34:  ADD.W           R3, R3, R3,LSL#1
EEC38:  MOV.W           R3, R3,LSL#1
EEC3C:  ADC.W           R1, R3, R1,LSL#16
EEC40:  AND.W           R2, R2, R1,LSR#4
EEC44:  LSLS            R1, R1, #8
EEC46:  ORR.W           R0, R1, R0,LSR#24
EEC4A:  MOVW            R1, #0x3A30
EEC4E:  ANDS            R0, R5
EEC50:  MOVT            R1, #0x3030
EEC54:  ADD             R0, R2
EEC56:  ORRS            R0, R1
EEC58:  MOV             R1, SP
EEC5A:  ADD.W           R2, R1, #8
EEC5E:  STR             R0, [SP,#0x18+var_14]
EEC60:  MOV             R0, R8
EEC62:  BL              sub_DCF30
EEC66:  STR.W           R8, [R4,#8]
EEC6A:  ADD             SP, SP, #8
EEC6C:  POP.W           {R8}
EEC70:  POP             {R4-R7,PC}
