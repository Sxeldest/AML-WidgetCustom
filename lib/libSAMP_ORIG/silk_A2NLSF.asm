; =========================================================
; Game Engine Function: silk_A2NLSF
; Address            : 0xD2F58 - 0xD3454
; =========================================================

D2F58:  PUSH            {R4-R7,LR}
D2F5A:  ADD             R7, SP, #0xC
D2F5C:  PUSH.W          {R8-R11}
D2F60:  SUB             SP, SP, #0xBC
D2F62:  STR             R0, [SP,#0xD8+var_B4]
D2F64:  ADD.W           R8, SP, #0xD8+var_88
D2F68:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xD2F7A)
D2F6C:  MOV.W           R10, R2,ASR#1
D2F70:  STR             R1, [SP,#0xD8+var_C0]
D2F72:  MOV.W           R1, #0x10000
D2F76:  ADD             R0, PC; __stack_chk_guard_ptr
D2F78:  CMP.W           R10, #1
D2F7C:  LDR             R0, [R0]; __stack_chk_guard
D2F7E:  LDR             R0, [R0]
D2F80:  STR             R0, [SP,#0xD8+var_20]
D2F82:  ADD             R0, SP, #0xD8+var_54
D2F84:  STR.W           R8, [SP,#0xD8+var_8C]
D2F88:  STR             R0, [SP,#0xD8+var_90]
D2F8A:  STR             R2, [SP,#0xD8+var_B0]
D2F8C:  STR.W           R1, [R0,R10,LSL#2]
D2F90:  STR.W           R1, [R8,R10,LSL#2]
D2F94:  BLT             loc_D306E
D2F96:  LDR             R1, [SP,#0xD8+var_C0]
D2F98:  MOVS            R2, #0
D2F9A:  MOV.W           R3, #0xFFFFFFFF
D2F9E:  ADD.W           R1, R1, R10,LSL#2
D2FA2:  LDR.W           R5, [R1,R3,LSL#2]
D2FA6:  SUBS            R3, #1
D2FA8:  LDR.W           R6, [R1,R2,LSL#2]
D2FAC:  ADDS            R4, R5, R6
D2FAE:  SUBS            R6, R6, R5
D2FB0:  NEGS            R4, R4
D2FB2:  STR.W           R4, [R0,R2,LSL#2]
D2FB6:  STR.W           R6, [R8,R2,LSL#2]
D2FBA:  ADDS            R2, #1
D2FBC:  CMP             R10, R2
D2FBE:  BNE             loc_D2FA2
D2FC0:  LDR.W           R1, [R8,R10,LSL#2]
D2FC4:  SUB.W           R3, R10, #1
D2FC8:  LDR.W           R2, [R0,R10,LSL#2]
D2FCC:  LDR.W           R6, [R0,R3,LSL#2]
D2FD0:  SUBS            R2, R6, R2
D2FD2:  LDR.W           R6, [R8,R3,LSL#2]
D2FD6:  STR.W           R2, [R0,R3,LSL#2]
D2FDA:  ADD             R1, R6
D2FDC:  ADDS            R6, R3, #1
D2FDE:  STR.W           R1, [R8,R3,LSL#2]
D2FE2:  SUBS            R3, #1
D2FE4:  CMP             R6, #1
D2FE6:  BGT             loc_D2FCC
D2FE8:  CMP.W           R10, #2
D2FEC:  BLT             loc_D306E
D2FEE:  ADD.W           R1, R0, R10,LSL#2
D2FF2:  MOVS            R2, #2
D2FF4:  SUBS            R1, #8
D2FF6:  CMP             R2, R10
D2FF8:  BGE             loc_D3010
D2FFA:  MOV             R3, R1
D2FFC:  MOV             R6, R10
D2FFE:  LDR             R5, [R3]
D3000:  SUBS            R6, #1
D3002:  LDR             R4, [R3,#8]
D3004:  CMP             R6, R2
D3006:  SUB.W           R5, R5, R4
D300A:  STR.W           R5, [R3],#-4
D300E:  BGT             loc_D2FFE
D3010:  ADD.W           R6, R0, R2,LSL#2
D3014:  LDR.W           R3, [R0,R2,LSL#2]
D3018:  CMP             R2, R10
D301A:  LDR.W           R5, [R6,#-8]
D301E:  SUB.W           R3, R5, R3,LSL#1
D3022:  STR.W           R3, [R6,#-8]
D3026:  ADD.W           R3, R2, #1
D302A:  MOV             R2, R3
D302C:  BNE             loc_D2FF6
D302E:  ADD.W           R0, R8, R10,LSL#2
D3032:  MOVS            R1, #2
D3034:  SUBS            R0, #8
D3036:  CMP             R1, R10
D3038:  BGE             loc_D3050
D303A:  MOV             R2, R0
D303C:  MOV             R3, R10
D303E:  LDR             R6, [R2]
D3040:  SUBS            R3, #1
D3042:  LDR             R5, [R2,#8]
D3044:  CMP             R3, R1
D3046:  SUB.W           R6, R6, R5
D304A:  STR.W           R6, [R2],#-4
D304E:  BGT             loc_D303E
D3050:  ADD.W           R3, R8, R1,LSL#2
D3054:  LDR.W           R2, [R8,R1,LSL#2]
D3058:  CMP             R1, R10
D305A:  LDR.W           R6, [R3,#-8]
D305E:  SUB.W           R2, R6, R2,LSL#1
D3062:  STR.W           R2, [R3,#-8]
D3066:  ADD.W           R2, R1, #1
D306A:  MOV             R1, R2
D306C:  BNE             loc_D3036
D306E:  LDR.W           R0, =(silk_LSFCosTab_FIX_Q12_ptr - 0xD307A)
D3072:  ADD             R4, SP, #0xD8+var_54
D3074:  MOV             R2, R10
D3076:  ADD             R0, PC; silk_LSFCosTab_FIX_Q12_ptr
D3078:  LDR             R0, [R0]; silk_LSFCosTab_FIX_Q12
D307A:  LDRSH.W         R6, [R0]
D307E:  MOV             R0, R4
D3080:  MOV             R1, R6
D3082:  BL              sub_D3468
D3086:  MOV             R9, R0
D3088:  MOVS            R1, #0
D308A:  CMP.W           R9, #0xFFFFFFFF
D308E:  BLE             loc_D3096
D3090:  MOVS            R2, #0
D3092:  STR             R4, [SP,#0xD8+var_94]
D3094:  B               loc_D30AA
D3096:  LDR             R0, [SP,#0xD8+var_B4]
D3098:  MOV             R2, R10
D309A:  STRH            R1, [R0]
D309C:  ADD             R0, SP, #0xD8+var_88
D309E:  MOV             R1, R6
D30A0:  STR             R0, [SP,#0xD8+var_94]
D30A2:  BL              sub_D3468
D30A6:  MOV             R9, R0
D30A8:  MOVS            R2, #1
D30AA:  LDR             R0, [SP,#0xD8+var_C0]
D30AC:  STR.W           R10, [SP,#0xD8+var_98]
D30B0:  ADD.W           R0, R0, R10,LSL#2
D30B4:  STR             R0, [SP,#0xD8+var_C8]
D30B6:  MOV             R0, #0xFFFFFFF8
D30BA:  STR             R6, [SP,#0xD8+var_C4]
D30BC:  ADD.W           R0, R0, R10,LSL#2
D30C0:  ADD.W           R1, R8, R0
D30C4:  ADD             R0, R4
D30C6:  STR             R0, [SP,#0xD8+var_D4]
D30C8:  SUB.W           R0, R10, #1
D30CC:  STR             R0, [SP,#0xD8+var_D0]
D30CE:  LDR             R0, =(silk_LSFCosTab_FIX_Q12_ptr - 0xD30D6)
D30D0:  STR             R1, [SP,#0xD8+var_CC]
D30D2:  ADD             R0, PC; silk_LSFCosTab_FIX_Q12_ptr
D30D4:  LDR             R0, [R0]; silk_LSFCosTab_FIX_Q12
D30D6:  STR             R0, [SP,#0xD8+var_9C]
D30D8:  LDR             R0, =(silk_LSFCosTab_FIX_Q12_ptr - 0xD30DE)
D30DA:  ADD             R0, PC; silk_LSFCosTab_FIX_Q12_ptr
D30DC:  LDR             R0, [R0]; silk_LSFCosTab_FIX_Q12
D30DE:  STR             R0, [SP,#0xD8+var_B8]
D30E0:  MOVS            R0, #0
D30E2:  STR             R0, [SP,#0xD8+var_BC]
D30E4:  B               loc_D3114
D30E6:  LDR             R6, [SP,#0xD8+var_C4]
D30E8:  ADD             R0, SP, #0xD8+var_54
D30EA:  MOV             R2, R10
D30EC:  STR             R0, [SP,#0xD8+var_94]
D30EE:  MOV             R1, R6
D30F0:  BL              sub_D3468
D30F4:  MOV             R9, R0
D30F6:  MOVS            R2, #0
D30F8:  CMP.W           R9, #0xFFFFFFFF
D30FC:  BGT             loc_D3114
D30FE:  LDR             R0, [SP,#0xD8+var_B4]
D3100:  MOVS            R1, #0
D3102:  MOV             R2, R10
D3104:  STRH            R1, [R0]
D3106:  ADD             R0, SP, #0xD8+var_88
D3108:  MOV             R1, R6
D310A:  STR             R0, [SP,#0xD8+var_94]
D310C:  BL              sub_D3468
D3110:  MOV             R9, R0
D3112:  MOVS            R2, #1
D3114:  MOVS            R4, #1
D3116:  MOVS            R5, #0
D3118:  STR             R2, [SP,#0xD8+var_A8]
D311A:  B               loc_D32B2
D311C:  ADD.W           R0, R6, R10
D3120:  LDR             R2, [SP,#0xD8+var_98]
D3122:  AND.W           R1, R0, #1
D3126:  ADD.W           R5, R1, R0,ASR#1
D312A:  LDR             R0, [SP,#0xD8+var_94]
D312C:  MOV             R1, R5
D312E:  BL              sub_D3468
D3132:  MOV             R2, R0
D3134:  CMP.W           R9, #0
D3138:  BGT             loc_D314E
D313A:  CMP.W           R2, #0xFFFFFFFF
D313E:  BLE             loc_D314E
D3140:  MOV             R0, #0xFFFFFF00
D3144:  MOV             R10, R5
D3146:  STRD.W          R2, R0, [SP,#0xD8+var_A4]
D314A:  MOV             R5, R9
D314C:  B               loc_D3184
D314E:  CMP             R2, #1
D3150:  MOV.W           R0, #0
D3154:  IT LT
D3156:  MOVLT           R0, #1
D3158:  CMP.W           R9, #0xFFFFFFFF
D315C:  MOV.W           R1, #0
D3160:  IT GT
D3162:  MOVGT           R1, #1
D3164:  ANDS            R0, R1
D3166:  MOV             R0, R8
D3168:  IT NE
D316A:  MOVNE           R0, R2
D316C:  STR             R0, [SP,#0xD8+var_A4]
D316E:  ITTE NE
D3170:  MOVNE           R2, R9
D3172:  MOVNE           R10, R5
D3174:  MOVEQ           R6, R5
D3176:  MOV             R0, #0xFFFFFF80
D317A:  IT NE
D317C:  MOVNE           R0, #0xFFFFFF00
D3180:  MOV             R5, R2
D3182:  STR             R0, [SP,#0xD8+var_A0]
D3184:  ADD.W           R0, R10, R6
D3188:  LDR             R2, [SP,#0xD8+var_98]
D318A:  AND.W           R1, R0, #1
D318E:  ADD.W           R1, R1, R0,ASR#1
D3192:  LDR             R0, [SP,#0xD8+var_94]
D3194:  STR             R1, [SP,#0xD8+var_AC]
D3196:  BL              sub_D3468
D319A:  MOV             R9, R0
D319C:  CMP             R5, #0
D319E:  BGT             loc_D31B2
D31A0:  CMP.W           R9, #0xFFFFFFFF
D31A4:  BLE             loc_D31B2
D31A6:  STR.W           R9, [SP,#0xD8+var_A4]
D31AA:  MOV             R9, R5
D31AC:  LDR.W           R10, [SP,#0xD8+var_AC]
D31B0:  B               loc_D31EC
D31B2:  CMP.W           R9, #1
D31B6:  MOV.W           R0, #0
D31BA:  IT LT
D31BC:  MOVLT           R0, #1
D31BE:  CMP.W           R5, #0xFFFFFFFF
D31C2:  MOV.W           R1, #0
D31C6:  IT GT
D31C8:  MOVGT           R1, #1
D31CA:  ANDS            R0, R1
D31CC:  LDR             R1, [SP,#0xD8+var_A4]
D31CE:  IT NE
D31D0:  MOVNE           R1, R9
D31D2:  STR             R1, [SP,#0xD8+var_A4]
D31D4:  IT NE
D31D6:  MOVNE           R9, R5
D31D8:  LDR             R1, [SP,#0xD8+var_AC]
D31DA:  ITE NE
D31DC:  MOVNE           R10, R1
D31DE:  MOVEQ           R6, R1
D31E0:  CMP             R0, #0
D31E2:  LDR             R0, [SP,#0xD8+var_A0]
D31E4:  IT EQ
D31E6:  ORREQ.W         R0, R0, #0x40 ; '@'
D31EA:  STR             R0, [SP,#0xD8+var_A0]
D31EC:  ADD.W           R0, R10, R6
D31F0:  AND.W           R1, R0, #1
D31F4:  ADD.W           R1, R1, R0,ASR#1
D31F8:  LDRD.W          R2, R0, [SP,#0xD8+var_98]
D31FC:  BL              sub_D3468
D3200:  CMP.W           R9, #0
D3204:  BGT             loc_D3212
D3206:  CMP.W           R0, #0xFFFFFFFF
D320A:  BLE             loc_D3212
D320C:  MOV             R1, R0
D320E:  LDR             R6, [SP,#0xD8+var_A0]
D3210:  B               loc_D3238
D3212:  CMP             R0, #1
D3214:  MOV.W           R1, #0
D3218:  IT LT
D321A:  MOVLT           R1, #1
D321C:  CMP.W           R9, #0xFFFFFFFF
D3220:  MOV.W           R2, #0
D3224:  IT GT
D3226:  MOVGT           R2, #1
D3228:  ANDS            R1, R2
D322A:  LDR             R1, [SP,#0xD8+var_A4]
D322C:  ITE NE
D322E:  MOVNE           R1, R0
D3230:  MOVEQ           R9, R0
D3232:  LDR             R6, [SP,#0xD8+var_A0]
D3234:  IT EQ
D3236:  ADDEQ           R6, #0x20 ; ' '
D3238:  CMP.W           R8, #0
D323C:  MOV.W           R5, #0
D3240:  IT EQ
D3242:  MOVEQ           R5, #1
D3244:  CMP.W           R9, #0
D3248:  MOV             R0, R9
D324A:  SUB.W           R1, R9, R1
D324E:  IT MI
D3250:  RSBMI.W         R0, R9, #0
D3254:  CMP.W           R0, #0x10000
D3258:  BGE             loc_D3264
D325A:  CBZ             R1, loc_D326E
D325C:  ASRS            R0, R1, #1
D325E:  ADD.W           R0, R0, R9,LSL#5
D3262:  B               loc_D3268
D3264:  ASRS            R1, R1, #5
D3266:  MOV             R0, R9
D3268:  BLX             sub_108848
D326C:  ADD             R6, R0
D326E:  ADD.W           R0, R6, R11
D3272:  MOVW            R1, #0x7FFF
D3276:  CMP             R0, R1
D3278:  IT GE
D327A:  MOVGE           R0, R1
D327C:  LDR             R1, [SP,#0xD8+var_B4]
D327E:  LDR             R2, [SP,#0xD8+var_A8]
D3280:  STRH.W          R0, [R1,R2,LSL#1]
D3284:  ADDS            R2, #1
D3286:  LDR             R0, [SP,#0xD8+var_B0]
D3288:  CMP             R2, R0
D328A:  BGE.W           loc_D343A
D328E:  AND.W           R0, R2, #1
D3292:  ADD             R1, SP, #0xD8+var_90
D3294:  STR             R2, [SP,#0xD8+var_A8]
D3296:  LDR.W           R0, [R1,R0,LSL#2]
D329A:  AND.W           R1, R2, #2
D329E:  STR             R0, [SP,#0xD8+var_94]
D32A0:  LDR             R0, [SP,#0xD8+var_B8]
D32A2:  RSB.W           R1, R1, #1
D32A6:  ADD.W           R0, R0, R4,LSL#1
D32AA:  MOV.W           R9, R1,LSL#12
D32AE:  LDRSH.W         R6, [R0,#-2]
D32B2:  MOV.W           R11, R4,LSL#8
D32B6:  LDR             R0, [SP,#0xD8+var_9C]
D32B8:  LDR             R2, [SP,#0xD8+var_98]
D32BA:  LDRSH.W         R10, [R0,R4,LSL#1]
D32BE:  LDR             R0, [SP,#0xD8+var_94]
D32C0:  MOV             R1, R10
D32C2:  BL              sub_D3468
D32C6:  MOV             R8, R0
D32C8:  CMP.W           R9, #0
D32CC:  BGT             loc_D32D4
D32CE:  CMP             R8, R5
D32D0:  BGE.W           loc_D311C
D32D4:  CMP.W           R9, #0
D32D8:  BLT             loc_D32E2
D32DA:  NEGS            R0, R5
D32DC:  CMP             R8, R0
D32DE:  BLE.W           loc_D311C
D32E2:  ADDS            R0, R4, #1
D32E4:  ADD.W           R11, R11, #0x100
D32E8:  CMP             R4, #0x80
D32EA:  MOV.W           R5, #0
D32EE:  MOV             R6, R10
D32F0:  MOV             R9, R8
D32F2:  MOV             R4, R0
D32F4:  BLT             loc_D32B6
D32F6:  LDR             R1, [SP,#0xD8+var_BC]
D32F8:  CMP             R1, #0x10
D32FA:  BGE.W           loc_D33FE
D32FE:  ADDS            R1, #1
D3300:  MOVS            R0, #1
D3302:  STR             R1, [SP,#0xD8+var_BC]
D3304:  LSLS            R0, R1
D3306:  RSB.W           R2, R0, #0x10000
D330A:  LDR             R0, [SP,#0xD8+var_C0]
D330C:  LDR             R1, [SP,#0xD8+var_B0]
D330E:  BLX             j_silk_bwexpander_32
D3312:  LDR.W           R10, [SP,#0xD8+var_98]
D3316:  ADD             R4, SP, #0xD8+var_54
D3318:  ADD             R5, SP, #0xD8+var_88
D331A:  MOV.W           R0, #0x10000
D331E:  MOV             R12, R4
D3320:  CMP.W           R10, #1
D3324:  STR.W           R0, [R12,R10,LSL#2]
D3328:  STR.W           R0, [R5,R10,LSL#2]
D332C:  LDRD.W          LR, R4, [SP,#0xD8+var_CC]
D3330:  BLT.W           loc_D30E6
D3334:  MOVS            R0, #0
D3336:  MOV.W           R1, #0xFFFFFFFF
D333A:  LDR.W           R3, [R4,R1,LSL#2]
D333E:  SUBS            R1, #1
D3340:  LDR.W           R2, [R4,R0,LSL#2]
D3344:  ADDS            R6, R3, R2
D3346:  SUBS            R2, R2, R3
D3348:  NEGS            R6, R6
D334A:  STR.W           R6, [R12,R0,LSL#2]
D334E:  STR.W           R2, [R5,R0,LSL#2]
D3352:  ADDS            R0, #1
D3354:  CMP             R10, R0
D3356:  BNE             loc_D333A
D3358:  LDR.W           R0, [R5,R10,LSL#2]
D335C:  LDR.W           R1, [R12,R10,LSL#2]
D3360:  LDR             R2, [SP,#0xD8+var_D0]
D3362:  LDR.W           R3, [R12,R2,LSL#2]
D3366:  SUBS            R1, R3, R1
D3368:  LDR.W           R3, [R5,R2,LSL#2]
D336C:  STR.W           R1, [R12,R2,LSL#2]
D3370:  ADD             R0, R3
D3372:  ADDS            R3, R2, #1
D3374:  STR.W           R0, [R5,R2,LSL#2]
D3378:  SUBS            R2, #1
D337A:  CMP             R3, #1
D337C:  BGT             loc_D3362
D337E:  CMP.W           R10, #2
D3382:  BLT.W           loc_D30E6
D3386:  LDR             R4, [SP,#0xD8+var_D4]
D3388:  MOVS            R0, #2
D338A:  CMP             R0, R10
D338C:  BGE             loc_D33A4
D338E:  MOV             R1, R4
D3390:  MOV             R2, R10
D3392:  LDR             R3, [R1]
D3394:  SUBS            R2, #1
D3396:  LDR             R6, [R1,#8]
D3398:  CMP             R2, R0
D339A:  SUB.W           R3, R3, R6
D339E:  STR.W           R3, [R1],#-4
D33A2:  BGT             loc_D3392
D33A4:  ADD.W           R2, R12, R0,LSL#2
D33A8:  LDR.W           R1, [R12,R0,LSL#2]
D33AC:  CMP             R0, R10
D33AE:  LDR.W           R3, [R2,#-8]
D33B2:  SUB.W           R1, R3, R1,LSL#1
D33B6:  STR.W           R1, [R2,#-8]
D33BA:  ADD.W           R1, R0, #1
D33BE:  MOV             R0, R1
D33C0:  BNE             loc_D338A
D33C2:  MOVS            R0, #2
D33C4:  CMP             R0, R10
D33C6:  BGE             loc_D33DE
D33C8:  MOV             R1, LR
D33CA:  MOV             R2, R10
D33CC:  LDR             R3, [R1]
D33CE:  SUBS            R2, #1
D33D0:  LDR             R6, [R1,#8]
D33D2:  CMP             R2, R0
D33D4:  SUB.W           R3, R3, R6
D33D8:  STR.W           R3, [R1],#-4
D33DC:  BGT             loc_D33CC
D33DE:  ADD.W           R2, R5, R0,LSL#2
D33E2:  LDR.W           R1, [R5,R0,LSL#2]
D33E6:  CMP             R0, R10
D33E8:  LDR.W           R3, [R2,#-8]
D33EC:  SUB.W           R1, R3, R1,LSL#1
D33F0:  STR.W           R1, [R2,#-8]
D33F4:  ADD.W           R1, R0, #1
D33F8:  MOV             R0, R1
D33FA:  BNE             loc_D33C4
D33FC:  B               loc_D30E6
D33FE:  LDR             R0, [SP,#0xD8+var_B0]
D3400:  MOV             R4, R0
D3402:  ADDS            R1, R4, #1
D3404:  MOV.W           R0, #0x8000
D3408:  BLX             sub_108848
D340C:  LDR             R1, [SP,#0xD8+var_B4]
D340E:  CMP             R4, #2
D3410:  STRH            R0, [R1]
D3412:  BLT             loc_D343A
D3414:  UXTH            R1, R0
D3416:  UXTAH.W         R0, R1, R0
D341A:  LDR             R1, [SP,#0xD8+var_B4]
D341C:  STRH            R0, [R1,#2]
D341E:  LDR             R1, [SP,#0xD8+var_B0]
D3420:  CMP             R1, #2
D3422:  BEQ             loc_D343A
D3424:  LDR             R3, [SP,#0xD8+var_B4]
D3426:  MOVS            R1, #2
D3428:  LDRH            R2, [R3]
D342A:  UXTAH.W         R0, R2, R0
D342E:  STRH.W          R0, [R3,R1,LSL#1]
D3432:  ADDS            R1, #1
D3434:  LDR             R2, [SP,#0xD8+var_B0]
D3436:  CMP             R2, R1
D3438:  BNE             loc_D3428
D343A:  LDR             R0, =(__stack_chk_guard_ptr - 0xD3442)
D343C:  LDR             R1, [SP,#0xD8+var_20]
D343E:  ADD             R0, PC; __stack_chk_guard_ptr
D3440:  LDR             R0, [R0]; __stack_chk_guard
D3442:  LDR             R0, [R0]
D3444:  SUBS            R0, R0, R1
D3446:  ITTT EQ
D3448:  ADDEQ           SP, SP, #0xBC
D344A:  POPEQ.W         {R8-R11}
D344E:  POPEQ           {R4-R7,PC}
D3450:  BLX             __stack_chk_fail
