; =========================================================
; Game Engine Function: sub_12ABEA
; Address            : 0x12ABEA - 0x12AC34
; =========================================================

12ABEA:  PUSH            {R4-R7,LR}
12ABEC:  ADD             R7, SP, #0xC
12ABEE:  PUSH.W          {R8-R10}
12ABF2:  SUB             SP, SP, #0x10
12ABF4:  LDR.W           R10, [R0,#4]
12ABF8:  MOV             R0, R3
12ABFA:  MOV             R8, R2
12ABFC:  MOV             R9, R1
12ABFE:  BL              sub_165778
12AC02:  MOV             R4, R0
12AC04:  LDR             R0, [R7,#arg_0]
12AC06:  BL              sub_165778
12AC0A:  MOV             R5, R0
12AC0C:  LDR             R0, [R7,#arg_4]
12AC0E:  BL              sub_165778
12AC12:  MOV             R6, R0
12AC14:  LDR             R0, [R7,#arg_8]
12AC16:  BL              sub_165778
12AC1A:  STR             R0, [SP,#0x28+var_20]
12AC1C:  MOV             R0, R10
12AC1E:  MOV             R1, R9
12AC20:  MOV             R2, R8
12AC22:  MOV             R3, R4
12AC24:  STRD.W          R5, R6, [SP,#0x28+var_28]
12AC28:  BL              sub_174204
12AC2C:  ADD             SP, SP, #0x10
12AC2E:  POP.W           {R8-R10}
12AC32:  POP             {R4-R7,PC}
