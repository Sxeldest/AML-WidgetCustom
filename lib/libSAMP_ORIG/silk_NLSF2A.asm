; =========================================================
; Game Engine Function: silk_NLSF2A
; Address            : 0xB3038 - 0xB3380
; =========================================================

B3038:  PUSH            {R4-R7,LR}
B303A:  ADD             R7, SP, #0xC
B303C:  PUSH.W          {R8-R11}
B3040:  SUB             SP, SP, #0x13C
B3042:  MOV             R11, R0
B3044:  LDR             R0, =(__stack_chk_guard_ptr - 0xB304E)
B3046:  MOV             R8, R2
B3048:  ADR             R2, byte_B3384
B304A:  ADD             R0, PC; __stack_chk_guard_ptr
B304C:  CMP.W           R8, #0x10
B3050:  LDR             R0, [R0]; __stack_chk_guard
B3052:  LDR             R0, [R0]
B3054:  STR             R0, [SP,#0x158+var_20]
B3056:  ADR             R0, dword_B3390
B3058:  IT NE
B305A:  MOVNE           R0, R2
B305C:  CMP.W           R8, #1
B3060:  BLT             loc_B30B4
B3062:  LDR             R2, =(silk_LSFCosTab_FIX_Q12_ptr - 0xB3072)
B3064:  ADD.W           LR, SP, #0x158+var_80
B3068:  MOV.W           R12, #1
B306C:  MOV             R5, R8
B306E:  ADD             R2, PC; silk_LSFCosTab_FIX_Q12_ptr
B3070:  LDR.W           R9, [R2]; silk_LSFCosTab_FIX_Q12
B3074:  LDRSH.W         R4, [R1],#2
B3078:  SUBS            R5, #1
B307A:  BIC.W           R2, R4, #0xFF
B307E:  MOV.W           R3, R4,ASR#8
B3082:  SUB.W           R2, R4, R2
B3086:  LDRSH.W         R6, [R9,R3,LSL#1]
B308A:  ADD.W           R3, R9, R3,LSL#1
B308E:  LDRSH.W         R3, [R3,#2]
B3092:  SUB.W           R3, R3, R6
B3096:  MUL.W           R2, R3, R2
B309A:  LDRB.W          R3, [R0],#1
B309E:  ADD.W           R2, R2, R6,LSL#8
B30A2:  ADD.W           R2, R12, R2,ASR#3
B30A6:  MOV.W           R2, R2,ASR#1
B30AA:  STR.W           R2, [LR,R3,LSL#2]
B30AE:  BNE             loc_B3074
B30B0:  LDR             R0, [SP,#0x158+var_80]
B30B2:  B               loc_B30B4
B30B4:  RSB.W           R9, R0, #0
B30B8:  MOV.W           R10, R8,ASR#1
B30BC:  CMP.W           R10, #2
B30C0:  MOV.W           R0, #0x10000
B30C4:  STR.W           R9, [SP,#0x158+var_B0]
B30C8:  STR             R0, [SP,#0x158+var_B4]
B30CA:  BLT             loc_B31A0
B30CC:  ADD             R2, SP, #0x158+var_B4
B30CE:  MOVS            R0, #2
B30D0:  MOVS            R1, #1
B30D2:  MOV.W           R5, #0x10000
B30D6:  STR             R0, [SP,#0x158+var_14C]
B30D8:  STR             R2, [SP,#0x158+var_150]
B30DA:  B               loc_B30F4
B30DC:  LDR             R0, [SP,#0x158+var_150]
B30DE:  ADD             R2, SP, #0x158+var_B4
B30E0:  ADDS            R0, #4
B30E2:  STR             R0, [SP,#0x158+var_150]
B30E4:  LDR             R0, [SP,#0x158+var_14C]
B30E6:  LDR.W           R5, [R2,R1,LSL#2]
B30EA:  MOV             R1, R3
B30EC:  ADDS            R0, #1
B30EE:  LDR.W           R9, [R2,R3,LSL#2]
B30F2:  STR             R0, [SP,#0x158+var_14C]
B30F4:  ADD             R0, SP, #0x158+var_80
B30F6:  LDR.W           R6, [R0,R1,LSL#3]
B30FA:  SMULL.W         R3, R4, R6, R9
B30FE:  LSRS            R3, R3, #0xF
B3100:  ORR.W           R3, R3, R4,LSL#17
B3104:  LSRS            R4, R4, #0xF
B3106:  ADDS            R3, #1
B3108:  ADC.W           R4, R4, #0
B310C:  MOVS.W          R4, R4,LSR#1
B3110:  MOV.W           R3, R3,RRX
B3114:  CMP             R1, #2
B3116:  RSB.W           R4, R3, R5,LSL#1
B311A:  ADD.W           R3, R1, #1
B311E:  STR.W           R4, [R2,R3,LSL#2]
B3122:  BLT             loc_B3194
B3124:  SMULL.W         R4, R2, R5, R6
B3128:  ADD             R0, SP, #0x158+var_B4
B312A:  ADD.W           R5, R0, R1,LSL#2
B312E:  LDR.W           R5, [R5,#-8]
B3132:  LSRS            R4, R4, #0xF
B3134:  ORR.W           R4, R4, R2,LSL#17
B3138:  LSRS            R2, R2, #0xF
B313A:  ADDS            R4, #1
B313C:  ADC.W           R2, R2, #0
B3140:  MOVS.W          R2, R2,LSR#1
B3144:  MOV.W           R2, R4,RRX
B3148:  ADD.W           R4, R5, R9
B314C:  CMP             R1, #2
B314E:  SUB.W           R2, R4, R2
B3152:  STR.W           R2, [R0,R1,LSL#2]
B3156:  BEQ             loc_B3194
B3158:  LDRD.W          R2, R9, [SP,#0x158+var_150]
B315C:  SMULL.W         R4, LR, R5, R6
B3160:  LDR.W           R12, [R2]
B3164:  LDR.W           R5, [R2,#-8]
B3168:  SUB.W           R9, R9, #1
B316C:  LSRS            R4, R4, #0xF
B316E:  MOV.W           R0, LR,LSR#15
B3172:  ORR.W           R4, R4, LR,LSL#17
B3176:  ADDS            R4, #1
B3178:  ADC.W           R0, R0, #0
B317C:  MOVS.W          R0, R0,LSR#1
B3180:  MOV.W           R0, R4,RRX
B3184:  ADD.W           R4, R5, R12
B3188:  SUBS            R0, R4, R0
B318A:  STR.W           R0, [R2],#-4
B318E:  CMP.W           R9, #3
B3192:  BGT             loc_B315C
B3194:  LDR             R0, [SP,#0x158+var_B0]
B3196:  CMP             R3, R10
B3198:  SUB.W           R0, R0, R6
B319C:  STR             R0, [SP,#0x158+var_B0]
B319E:  BNE             loc_B30DC
B31A0:  LDR             R0, [SP,#0x158+var_7C]
B31A2:  MOV.W           R1, #0x10000
B31A6:  CMP.W           R10, #2
B31AA:  STR             R1, [SP,#0x158+var_E8]
B31AC:  RSB.W           R2, R0, #0
B31B0:  STR             R2, [SP,#0x158+var_E4]
B31B2:  BLT             loc_B3290
B31B4:  ADD             R0, SP, #0x158+var_80
B31B6:  ADD             R1, SP, #0x158+var_E8
B31B8:  ADD.W           R12, R0, #4
B31BC:  MOVS            R0, #2
B31BE:  MOV.W           LR, #1
B31C2:  MOV.W           R5, #0x10000
B31C6:  STR             R0, [SP,#0x158+var_14C]
B31C8:  STR             R1, [SP,#0x158+var_150]
B31CA:  B               loc_B31E4
B31CC:  LDR             R0, [SP,#0x158+var_150]
B31CE:  ADD             R1, SP, #0x158+var_E8
B31D0:  ADDS            R0, #4
B31D2:  STR             R0, [SP,#0x158+var_150]
B31D4:  LDR             R0, [SP,#0x158+var_14C]
B31D6:  LDR.W           R5, [R1,LR,LSL#2]
B31DA:  MOV             LR, R9
B31DC:  ADDS            R0, #1
B31DE:  LDR.W           R2, [R1,R9,LSL#2]
B31E2:  STR             R0, [SP,#0x158+var_14C]
B31E4:  LDR.W           R6, [R12,LR,LSL#3]
B31E8:  ADD.W           R9, LR, #1
B31EC:  SMULL.W         R3, R4, R6, R2
B31F0:  LSRS            R3, R3, #0xF
B31F2:  ORR.W           R3, R3, R4,LSL#17
B31F6:  LSRS            R4, R4, #0xF
B31F8:  ADDS            R3, #1
B31FA:  ADC.W           R4, R4, #0
B31FE:  MOVS.W          R4, R4,LSR#1
B3202:  MOV.W           R3, R3,RRX
B3206:  CMP.W           LR, #2
B320A:  RSB.W           R4, R3, R5,LSL#1
B320E:  STR.W           R4, [R1,R9,LSL#2]
B3212:  BLT             loc_B3284
B3214:  MOV             R1, R12
B3216:  SMULL.W         R4, R12, R5, R6
B321A:  ADD             R0, SP, #0x158+var_E8
B321C:  MOV             R3, R0
B321E:  ADD.W           R5, R3, LR,LSL#2
B3222:  LDR.W           R5, [R5,#-8]
B3226:  LSRS            R4, R4, #0xF
B3228:  MOV.W           R0, R12,LSR#15
B322C:  ORR.W           R4, R4, R12,LSL#17
B3230:  MOV             R12, R1
B3232:  ADDS            R4, #1
B3234:  ADD             R2, R5
B3236:  ADC.W           R0, R0, #0
B323A:  MOVS.W          R0, R0,LSR#1
B323E:  MOV.W           R0, R4,RRX
B3242:  CMP.W           LR, #2
B3246:  SUB.W           R0, R2, R0
B324A:  STR.W           R0, [R3,LR,LSL#2]
B324E:  BEQ             loc_B3284
B3250:  LDRD.W          R2, R4, [SP,#0x158+var_150]
B3254:  SMULL.W         R0, R3, R5, R6
B3258:  LDR             R1, [R2]
B325A:  LDR.W           R5, [R2,#-8]
B325E:  SUBS            R4, #1
B3260:  ADD             R1, R5
B3262:  LSRS            R0, R0, #0xF
B3264:  ORR.W           R0, R0, R3,LSL#17
B3268:  LSRS            R3, R3, #0xF
B326A:  ADDS            R0, #1
B326C:  ADC.W           R3, R3, #0
B3270:  MOVS.W          R3, R3,LSR#1
B3274:  MOV.W           R0, R0,RRX
B3278:  CMP             R4, #3
B327A:  SUB.W           R0, R1, R0
B327E:  STR.W           R0, [R2],#-4
B3282:  BGT             loc_B3254
B3284:  LDR             R0, [SP,#0x158+var_E4]
B3286:  CMP             R9, R10
B3288:  SUB.W           R0, R0, R6
B328C:  STR             R0, [SP,#0x158+var_E4]
B328E:  BNE             loc_B31CC
B3290:  CMP.W           R10, #1
B3294:  BLT             loc_B32D8
B3296:  ADD             R1, SP, #0x158+var_148
B3298:  LDR.W           R12, [SP,#0x158+var_E8]
B329C:  ADD.W           R0, R1, R8,LSL#2
B32A0:  LDR             R4, [SP,#0x158+var_B4]
B32A2:  SUBS            R2, R0, #4
B32A4:  ADD             R0, SP, #0x158+var_B4
B32A6:  ADDS            R3, R0, #4
B32A8:  ADD             R0, SP, #0x158+var_E8
B32AA:  ADDS            R6, R0, #4
B32AC:  LDR.W           LR, [R3],#4
B32B0:  SUBS.W          R10, R10, #1
B32B4:  LDR.W           R9, [R6],#4
B32B8:  ADD             R4, LR
B32BA:  SUB.W           R0, R9, R12
B32BE:  ADD.W           R5, R0, R4
B32C2:  SUB.W           R0, R0, R4
B32C6:  RSB.W           R5, R5, #0
B32CA:  STR.W           R5, [R1],#4
B32CE:  STR.W           R0, [R2],#-4
B32D2:  MOV             R12, R9
B32D4:  MOV             R4, LR
B32D6:  BNE             loc_B32AC
B32D8:  ADD             R6, SP, #0x158+var_148
B32DA:  MOV             R0, R11
B32DC:  MOVS            R2, #0xC
B32DE:  MOVS            R3, #0x11
B32E0:  MOV             R1, R6
B32E2:  STR.W           R8, [SP,#0x158+var_158]
B32E6:  BLX             j_silk_LPC_fit
B32EA:  MOV             R0, R11
B32EC:  MOV             R1, R8
B32EE:  BLX             j_silk_LPC_inverse_pred_gain_c
B32F2:  CBZ             R0, loc_B330E
B32F4:  LDR             R0, =(__stack_chk_guard_ptr - 0xB32FC)
B32F6:  LDR             R1, [SP,#0x158+var_20]
B32F8:  ADD             R0, PC; __stack_chk_guard_ptr
B32FA:  LDR             R0, [R0]; __stack_chk_guard
B32FC:  LDR             R0, [R0]
B32FE:  SUBS            R0, R0, R1
B3300:  ITTT EQ
B3302:  ADDEQ           SP, SP, #0x13C
B3304:  POPEQ.W         {R8-R11}
B3308:  POPEQ           {R4-R7,PC}
B330A:  BLX             __stack_chk_fail
B330E:  CMP.W           R8, #0
B3312:  BLE             loc_B3356
B3314:  MOVS            R5, #0
B3316:  MOV.W           R9, #2
B331A:  MOVS            R4, #1
B331C:  LSL.W           R0, R9, R5
B3320:  RSB.W           R2, R0, #0x10000
B3324:  MOV             R0, R6
B3326:  MOV             R1, R8
B3328:  BLX             j_silk_bwexpander_32
B332C:  MOVS            R0, #0
B332E:  LDR.W           R1, [R6,R0,LSL#2]
B3332:  ADD.W           R1, R4, R1,LSR#4
B3336:  LSRS            R1, R1, #1
B3338:  STRH.W          R1, [R11,R0,LSL#1]
B333C:  ADDS            R0, #1
B333E:  CMP             R8, R0
B3340:  BNE             loc_B332E
B3342:  MOV             R0, R11
B3344:  MOV             R1, R8
B3346:  BLX             j_silk_LPC_inverse_pred_gain_c
B334A:  CMP             R5, #0xE
B334C:  BGT             loc_B32F4
B334E:  ADDS            R5, #1
B3350:  CMP             R0, #0
B3352:  BEQ             loc_B331C
B3354:  B               loc_B32F4
B3356:  ADD             R6, SP, #0x158+var_148
B3358:  MOVS            R4, #0
B335A:  MOVS            R5, #2
B335C:  LSL.W           R0, R5, R4
B3360:  RSB.W           R2, R0, #0x10000
B3364:  MOV             R0, R6
B3366:  MOV             R1, R8
B3368:  BLX             j_silk_bwexpander_32
B336C:  MOV             R0, R11
B336E:  MOV             R1, R8
B3370:  BLX             j_silk_LPC_inverse_pred_gain_c
B3374:  CMP             R4, #0xE
B3376:  BGT             loc_B32F4
B3378:  ADDS            R4, #1
B337A:  CMP             R0, #0
B337C:  BEQ             loc_B335C
B337E:  B               loc_B32F4
