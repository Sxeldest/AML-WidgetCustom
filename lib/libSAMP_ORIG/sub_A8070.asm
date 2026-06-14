; =========================================================
; Game Engine Function: sub_A8070
; Address            : 0xA8070 - 0xA818A
; =========================================================

A8070:  PUSH            {R4-R7,LR}
A8072:  ADD             R7, SP, #0xC
A8074:  PUSH.W          {R8-R11}
A8078:  SUB             SP, SP, #0x14
A807A:  MOV             R8, R0
A807C:  LDR             R0, =(off_114D5C - 0xA8086)
A807E:  MOV             R10, R2
A8080:  LDR             R2, =(__stack_chk_guard_ptr - 0xA808A)
A8082:  ADD             R0, PC; off_114D5C
A8084:  MOV             R6, R1
A8086:  ADD             R2, PC; __stack_chk_guard_ptr
A8088:  MOV             R11, R3
A808A:  LDR             R1, [R0]; dword_1ACF68
A808C:  MOVS            R4, #0
A808E:  LDR             R2, [R2]; __stack_chk_guard
A8090:  LDR             R0, [R7,#arg_0]
A8092:  LDR             R2, [R2]
A8094:  STR             R2, [SP,#0x30+var_20]
A8096:  LDR             R2, [R6]
A8098:  LDR             R1, [R1]
A809A:  CMP             R2, #0
A809C:  BMI             loc_A80A6
A809E:  CMP             R2, R11
A80A0:  IT LT
A80A2:  LDRLT.W         R4, [R10,R2,LSL#2]
A80A6:  ADDS            R2, R0, #1
A80A8:  BEQ             loc_A8104
A80AA:  ADD.W           R1, R1, #0x1520
A80AE:  LDRB.W          R2, [R1,#0x4F0]
A80B2:  LSLS            R2, R2, #0x1B
A80B4:  BMI             loc_A8104
A80B6:  MOVS            R2, #0
A80B8:  CMP             R0, #1
A80BA:  STRD.W          R2, R2, [SP,#0x30+var_28]
A80BE:  BLT             loc_A80E6
A80C0:  VMOV            S6, R0
A80C4:  VLDR            S2, [R1,#0x44]
A80C8:  VLDR            S4, [R1,#0x3A8]
A80CC:  VCVT.F32.S32    S6, S6
A80D0:  VLDR            S0, [R1]
A80D4:  VADD.F32        S4, S4, S2
A80D8:  VADD.F32        S0, S0, S0
A80DC:  VNMLS.F32       S2, S4, S6
A80E0:  VADD.F32        S0, S0, S2
A80E4:  B               loc_A80EA
A80E6:  VLDR            S0, =3.4028e38
A80EA:  MOVW            R0, #0xFFFF
A80EE:  MOV             R1, SP
A80F0:  MOVT            R0, #0x7F7F
A80F4:  MOVS            R2, #0
A80F6:  STR             R0, [SP,#0x30+var_30]
A80F8:  ADD             R0, SP, #0x30+var_28
A80FA:  MOVS            R3, #0
A80FC:  VSTR            S0, [SP,#0x30+var_2C]
A8100:  BL              sub_97734
A8104:  MOV             R0, R8
A8106:  MOV             R1, R4
A8108:  MOVS            R2, #0
A810A:  MOV.W           R9, #0
A810E:  BL              sub_A77E0
A8112:  CBZ             R0, loc_A816C
A8114:  MOVS            R4, #0
A8116:  CMP.W           R11, #1
A811A:  BLT             loc_A8164
A811C:  MOVS            R5, #0
A811E:  MOV.W           R9, #0
A8122:  MOV             R0, R5
A8124:  BL              sub_97B74
A8128:  LDR.W           R8, [R6]
A812C:  ADD             R3, SP, #0x30+var_28
A812E:  LDR.W           R0, [R10,R5,LSL#2]
A8132:  MOVS            R2, #0
A8134:  SUB.W           R1, R5, R8
A8138:  CLZ.W           R1, R1
A813C:  STRD.W          R4, R4, [SP,#0x30+var_28]
A8140:  LSRS            R1, R1, #5
A8142:  BL              sub_A7C88
A8146:  CMP             R0, #0
A8148:  ITT NE
A814A:  STRNE           R5, [R6]
A814C:  MOVNE.W         R9, #1
A8150:  CMP             R5, R8
A8152:  IT EQ
A8154:  BLEQ            sub_97918
A8158:  BL              sub_97DAC
A815C:  ADDS            R5, #1
A815E:  CMP             R11, R5
A8160:  BNE             loc_A8122
A8162:  B               loc_A8168
A8164:  MOV.W           R9, #0
A8168:  BL              sub_989E8
A816C:  LDR             R0, [SP,#0x30+var_20]
A816E:  LDR             R1, =(__stack_chk_guard_ptr - 0xA8174)
A8170:  ADD             R1, PC; __stack_chk_guard_ptr
A8172:  LDR             R1, [R1]; __stack_chk_guard
A8174:  LDR             R1, [R1]
A8176:  CMP             R1, R0
A8178:  ITTTT EQ
A817A:  ANDEQ.W         R0, R9, #1
A817E:  ADDEQ           SP, SP, #0x14
A8180:  POPEQ.W         {R8-R11}
A8184:  POPEQ           {R4-R7,PC}
A8186:  BLX             __stack_chk_fail
