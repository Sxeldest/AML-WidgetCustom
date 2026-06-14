; =========================================================
; Game Engine Function: silk_residual_energy_FIX
; Address            : 0xD4094 - 0xD41EC
; =========================================================

D4094:  PUSH            {R4-R7,LR}
D4096:  ADD             R7, SP, #0xC
D4098:  PUSH.W          {R8-R11}
D409C:  SUB             SP, SP, #0x24
D409E:  MOV             R8, R0
D40A0:  LDR             R0, =(__stack_chk_guard_ptr - 0xD40AC)
D40A2:  STR.W           R1, [R7,#var_40]
D40A6:  MOV             R6, R3
D40A8:  ADD             R0, PC; __stack_chk_guard_ptr
D40AA:  MOV             R4, R2
D40AC:  LDR             R1, [R7,#arg_C]
D40AE:  LDR             R0, [R0]; __stack_chk_guard
D40B0:  LDRD.W          R3, R2, [R7,#arg_4]
D40B4:  LDR             R0, [R0]
D40B6:  STR.W           R0, [R7,#var_24]
D40BA:  ADDS            R0, R1, R3
D40BC:  MOVS            R1, #7
D40BE:  ADD.W           R1, R1, R0,LSL#2
D40C2:  BIC.W           R1, R1, #7
D40C6:  SUB.W           R1, SP, R1
D40CA:  STR.W           R1, [R7,#var_2C]
D40CE:  MOV             SP, R1
D40D0:  MOV.W           R10, R2,ASR#1
D40D4:  CMP.W           R10, #1
D40D8:  BLT             loc_D4172
D40DA:  LSLS            R1, R0, #1
D40DC:  LDR.W           R2, [R7,#var_2C]
D40E0:  STR.W           R1, [R7,#var_30]
D40E4:  MOV             R11, R8
D40E6:  LDR             R1, [R7,#arg_C]
D40E8:  ADD.W           R1, R2, R1,LSL#1
D40EC:  STR.W           R1, [R7,#var_34]
D40F0:  ADD.W           R1, R1, R0,LSL#1
D40F4:  LSLS            R0, R0, #2
D40F6:  STR.W           R0, [R7,#var_3C]
D40FA:  LDR.W           R0, [R7,#var_40]
D40FE:  STR.W           R1, [R7,#var_38]
D4102:  ADD.W           R9, R0, #4
D4106:  SUB             SP, SP, #8
D4108:  LDR             R0, [R7,#arg_C]
D410A:  MOV             R1, R4
D410C:  STR             R0, [SP,#0x48+var_48]
D410E:  MOV             R2, R6
D4110:  LDR             R0, [R7,#arg_10]
D4112:  STR             R0, [SP,#0x48+var_44]
D4114:  LDR.W           R0, [R7,#var_2C]
D4118:  LDR.W           R3, [R7,#var_30]
D411C:  BLX             j_silk_LPC_analysis_filter
D4120:  ADD             SP, SP, #8
D4122:  LDR             R5, [R7,#arg_4]
D4124:  SUB.W           R1, R7, #-var_28
D4128:  LDR.W           R2, [R7,#var_34]
D412C:  MOV             R0, R11
D412E:  MOV             R3, R5
D4130:  BLX             j_silk_sum_sqr_shift
D4134:  LDR.W           R0, [R7,#var_28]
D4138:  SUB.W           R1, R7, #-var_28
D413C:  MOV             R3, R5
D413E:  NEGS            R0, R0
D4140:  STR.W           R0, [R9,#-4]
D4144:  LDR.W           R2, [R7,#var_38]
D4148:  ADD.W           R0, R11, #4
D414C:  BLX             j_silk_sum_sqr_shift
D4150:  LDR.W           R0, [R7,#var_28]
D4154:  ADD.W           R11, R11, #8
D4158:  ADDS            R6, #0x20 ; ' '
D415A:  SUBS.W          R10, R10, #1
D415E:  RSB.W           R0, R0, #0
D4162:  STR.W           R0, [R9]
D4166:  LDR.W           R0, [R7,#var_3C]
D416A:  ADD.W           R9, R9, #8
D416E:  ADD             R4, R0
D4170:  BNE             loc_D4106
D4172:  LDR.W           LR, [R7,#arg_8]
D4176:  LDR.W           R5, [R7,#var_40]
D417A:  CMP.W           LR, #1
D417E:  BLT             loc_D41CC
D4180:  LDR             R0, [R7,#arg_0]
D4182:  LDR.W           R1, [R0],#4
D4186:  SUBS.W          LR, LR, #1
D418A:  LDR.W           R2, [R8]
D418E:  CLZ.W           R3, R1
D4192:  SUB.W           R3, R3, #1
D4196:  CLZ.W           R6, R2
D419A:  SUB.W           R4, R6, #1
D419E:  LSL.W           R1, R1, R3
D41A2:  SMMUL.W         R1, R1, R1
D41A6:  LSL.W           R2, R2, R4
D41AA:  UMULL.W         R4, R12, R1, R2
D41AE:  MOV.W           R2, R2,ASR#31
D41B2:  MLA.W           R1, R1, R2, R12
D41B6:  STR.W           R1, [R8],#4
D41BA:  LDR             R1, [R5]
D41BC:  ADD             R1, R6
D41BE:  ADD.W           R1, R1, R3,LSL#1
D41C2:  SUB.W           R1, R1, #0x41 ; 'A'
D41C6:  STR.W           R1, [R5],#4
D41CA:  BNE             loc_D4182
D41CC:  LDR             R0, =(__stack_chk_guard_ptr - 0xD41D6)
D41CE:  LDR.W           R1, [R7,#var_24]
D41D2:  ADD             R0, PC; __stack_chk_guard_ptr
D41D4:  LDR             R0, [R0]; __stack_chk_guard
D41D6:  LDR             R0, [R0]
D41D8:  SUBS            R0, R0, R1
D41DA:  ITTTT EQ
D41DC:  SUBEQ.W         R4, R7, #-var_1C
D41E0:  MOVEQ           SP, R4
D41E2:  POPEQ.W         {R8-R11}
D41E6:  POPEQ           {R4-R7,PC}
D41E8:  BLX             __stack_chk_fail
