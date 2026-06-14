; =========================================================
; Game Engine Function: sub_A4014
; Address            : 0xA4014 - 0xA40EE
; =========================================================

A4014:  PUSH            {R4-R7,LR}
A4016:  ADD             R7, SP, #0xC
A4018:  PUSH.W          {R8,R9,R11}
A401C:  SUB             SP, SP, #0x38
A401E:  LDR             R2, =(__stack_chk_guard_ptr - 0xA402C)
A4020:  MOV             R6, R1
A4022:  MOV             R8, R0
A4024:  LDRD.W          R0, R1, [R7,#arg_0]
A4028:  ADD             R2, PC; __stack_chk_guard_ptr
A402A:  MOV             R9, R3
A402C:  MOVS            R5, #0
A402E:  LDR             R2, [R2]; __stack_chk_guard
A4030:  LDR             R2, [R2]
A4032:  STR             R2, [SP,#0x50+var_1C]
A4034:  STR             R3, [SP,#0x50+var_20]
A4036:  ADD             R3, SP, #0x50+var_34
A4038:  LDR             R2, [R7,#arg_8]
A403A:  STM             R3!, {R0-R2,R6}
A403C:  ADD             R0, SP, #0x50+var_34
A403E:  ADD             R3, SP, #0x50+var_40
A4040:  MOVS            R1, #0x12
A4042:  MOVS            R2, #2
A4044:  STR             R5, [SP,#0x50+var_38]
A4046:  STRD.W          R5, R5, [SP,#0x50+var_40]
A404A:  BL              sub_A3EFC
A404E:  LDR             R4, [SP,#0x50+var_3C]
A4050:  CMP             R4, #0
A4052:  ITT NE
A4054:  LDRNE           R0, [SP,#0x50+var_40]
A4056:  CMPNE           R0, #0
A4058:  BNE             loc_A4064
A405A:  STRD.W          R5, R5, [R8]
A405E:  STR.W           R5, [R8,#8]
A4062:  B               loc_A40D4
A4064:  ORRS.W          R1, R0, R4
A4068:  MOV.W           R1, #0
A406C:  BMI             loc_A4094
A406E:  CMP             R9, R4
A4070:  MOV.W           R2, #0
A4074:  SUB.W           R3, R9, R4
A4078:  IT LT
A407A:  MOVLT           R2, #1
A407C:  CMP             R3, R0
A407E:  MOV.W           R3, #0
A4082:  IT LT
A4084:  MOVLT           R3, #1
A4086:  ORRS            R2, R3
A4088:  ADD.W           R2, R6, R4
A408C:  ITT NE
A408E:  MOVNE           R2, #0
A4090:  MOVNE           R0, #0
A4092:  B               loc_A4098
A4094:  MOVS            R0, #0
A4096:  MOVS            R2, #0
A4098:  STR             R0, [SP,#0x50+var_44]
A409A:  ADD             R0, SP, #0x50+var_4C
A409C:  ADD             R3, SP, #0x50+var_38
A409E:  STRD.W          R2, R1, [SP,#0x50+var_4C]
A40A2:  MOVS            R1, #0x13
A40A4:  MOVS            R2, #1
A40A6:  BL              sub_A3EFC
A40AA:  LDR             R0, [SP,#0x50+var_38]
A40AC:  CBZ             R0, loc_A40CA
A40AE:  ADD             R0, R4
A40B0:  CMP             R9, R0
A40B2:  MOV             R1, R0
A40B4:  IT LT
A40B6:  MOVLT           R1, R9
A40B8:  CMP             R0, #0
A40BA:  IT MI
A40BC:  MOVMI           R1, R9
A40BE:  STR             R1, [SP,#0x50+var_24]
A40C0:  ADD             R1, SP, #0x50+var_28
A40C2:  MOV             R0, R8
A40C4:  BL              sub_A3D60
A40C8:  B               loc_A40D4
A40CA:  MOVS            R0, #0
A40CC:  STRD.W          R0, R0, [R8]
A40D0:  STR.W           R0, [R8,#8]
A40D4:  LDR             R0, [SP,#0x50+var_1C]
A40D6:  LDR             R1, =(__stack_chk_guard_ptr - 0xA40DC)
A40D8:  ADD             R1, PC; __stack_chk_guard_ptr
A40DA:  LDR             R1, [R1]; __stack_chk_guard
A40DC:  LDR             R1, [R1]
A40DE:  CMP             R1, R0
A40E0:  ITTT EQ
A40E2:  ADDEQ           SP, SP, #0x38 ; '8'
A40E4:  POPEQ.W         {R8,R9,R11}
A40E8:  POPEQ           {R4-R7,PC}
A40EA:  BLX             __stack_chk_fail
