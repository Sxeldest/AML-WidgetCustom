; =========================================================
; Game Engine Function: sub_C30F0
; Address            : 0xC30F0 - 0xC32E6
; =========================================================

C30F0:  PUSH            {R4-R7,LR}
C30F2:  ADD             R7, SP, #0xC
C30F4:  PUSH.W          {R8-R11}
C30F8:  SUB             SP, SP, #0x38
C30FA:  LDRH            R5, [R1,#4]
C30FC:  ADD.W           R11, R1, #6
C3100:  LDRH.W          R9, [R1,#2]
C3104:  CMP             R3, #4
C3106:  LDRH.W          R12, [R1]
C310A:  BLT             loc_C3204
C310C:  STR             R1, [SP,#0x54+var_50]
C310E:  SUBS            R1, R3, #3
C3110:  STR             R1, [SP,#0x54+var_40]
C3112:  LDRD.W          R4, R1, [R2]
C3116:  STR             R1, [SP,#0x54+var_28]
C3118:  LDR             R6, [R2,#8]
C311A:  STR             R2, [SP,#0x54+var_44]
C311C:  LDR             R1, [R2,#0xC]
C311E:  STR             R3, [SP,#0x54+var_48]
C3120:  SUBS            R3, #4
C3122:  BIC.W           R3, R3, #3
C3126:  STR             R1, [SP,#0x54+var_24]
C3128:  ADDS            R2, R3, #4
C312A:  ADDS            R1, R3, #7
C312C:  STR             R2, [SP,#0x54+var_4C]
C312E:  MOVS            R3, #0
C3130:  MOV             R2, R12
C3132:  STR             R1, [SP,#0x54+var_54]
C3134:  STRD.W          R0, R11, [SP,#0x54+var_3C]
C3138:  STR             R2, [SP,#0x54+var_20]
C313A:  ADD.W           R2, R0, R3,LSL#1
C313E:  STR             R4, [SP,#0x54+var_2C]
C3140:  SXTH.W          R10, R5
C3144:  LDRSH.W         R1, [R0,R3,LSL#1]
C3148:  SXTH.W          R9, R9
C314C:  LDRSH.W         R8, [R11,R3,LSL#1]
C3150:  LDRSH.W         R0, [R2,#2]
C3154:  LDRSH.W         R4, [R2,#4]
C3158:  SMLABB.W        R6, R1, R10, R6
C315C:  LDRSH.W         R2, [R2,#6]
C3160:  SMLABB.W        R5, R0, R8, R6
C3164:  ADD.W           R6, R11, R3,LSL#1
C3168:  ADDS            R3, #4
C316A:  LDRSH.W         R12, [R6,#2]
C316E:  LDRSH.W         LR, [R6,#4]
C3172:  LDRSH.W         R11, [R6,#6]
C3176:  SMLABB.W        R6, R4, R12, R5
C317A:  STR.W           R11, [SP,#0x54+var_34]
C317E:  SMLABB.W        R5, R2, LR, R6
C3182:  STR             R5, [SP,#0x54+var_30]
C3184:  LDR             R5, [SP,#0x54+var_24]
C3186:  SMLABB.W        R6, R8, R1, R5
C318A:  SMLABB.W        R6, R12, R0, R6
C318E:  SMLABB.W        R6, LR, R4, R6
C3192:  SMLABB.W        R5, R11, R2, R6
C3196:  LDR             R6, [SP,#0x54+var_2C]
C3198:  STR             R5, [SP,#0x54+var_24]
C319A:  LDR             R5, [SP,#0x54+var_28]
C319C:  SMLABB.W        R11, R1, R9, R5
C31A0:  SMLABB.W        R5, R0, R10, R11
C31A4:  LDR.W           R11, [SP,#0x54+var_38]
C31A8:  SMLABB.W        R5, R4, R8, R5
C31AC:  SMLABB.W        R5, R2, R12, R5
C31B0:  STR             R5, [SP,#0x54+var_28]
C31B2:  LDR             R5, [SP,#0x54+var_20]
C31B4:  SXTH            R5, R5
C31B6:  SMLABB.W        R1, R1, R5, R6
C31BA:  LDR             R6, [SP,#0x54+var_30]
C31BC:  SMLABB.W        R0, R0, R9, R1
C31C0:  UXTH.W          R9, LR
C31C4:  SMLABB.W        R1, R4, R10, R0
C31C8:  LDR             R0, [SP,#0x54+var_3C]
C31CA:  SMLABB.W        R4, R2, R8, R1
C31CE:  LDR             R1, [SP,#0x54+var_34]
C31D0:  UXTH.W          R2, R12
C31D4:  UXTH            R5, R1
C31D6:  LDR             R1, [SP,#0x54+var_40]
C31D8:  CMP             R3, R1
C31DA:  BLT             loc_C3138
C31DC:  STR             R2, [SP,#0x54+var_20]
C31DE:  UXTH.W          R1, R8
C31E2:  LDR             R2, [SP,#0x54+var_44]
C31E4:  STR             R1, [SP,#0x54+var_2C]
C31E6:  STR             R4, [R2]
C31E8:  LDR             R1, [SP,#0x54+var_28]
C31EA:  STRD.W          R1, R6, [R2,#4]
C31EE:  LDR             R1, [SP,#0x54+var_24]
C31F0:  STR             R1, [R2,#0xC]
C31F2:  LDRD.W          R3, R1, [SP,#0x54+var_54]
C31F6:  LDR             R6, [SP,#0x54+var_4C]
C31F8:  ADD.W           R11, R1, R3,LSL#1
C31FC:  LDR             R3, [SP,#0x54+var_48]
C31FE:  ADD.W           R0, R0, R6,LSL#1
C3202:  B               loc_C320E
C3204:  MOV             R1, R12
C3206:  MOVS            R6, #0
C3208:  STR             R1, [SP,#0x54+var_20]
C320A:  MOVS            R1, #0
C320C:  STR             R1, [SP,#0x54+var_2C]
C320E:  ORR.W           LR, R6, #1
C3212:  CMP             R6, R3
C3214:  STR.W           R9, [SP,#0x54+var_24]
C3218:  BGE             loc_C3258
C321A:  LDR             R6, [R2]
C321C:  LDRSH.W         R4, [R0],#2
C3220:  LDRSH.W         R10, [R11],#2
C3224:  STR             R6, [SP,#0x54+var_28]
C3226:  LDRD.W          R8, R12, [R2,#4]
C322A:  LDR             R6, [R2,#0xC]
C322C:  SMLABB.W        R1, R10, R4, R6
C3230:  SXTH            R6, R5
C3232:  SMLABB.W        R12, R4, R6, R12
C3236:  SXTH.W          R6, R9
C323A:  SMLABB.W        R8, R4, R6, R8
C323E:  LDR             R6, [SP,#0x54+var_20]
C3240:  STR             R1, [SP,#0x54+var_2C]
C3242:  LDR             R1, [SP,#0x54+var_28]
C3244:  SXTH            R6, R6
C3246:  SMLABB.W        R6, R4, R6, R1
C324A:  STM.W           R2, {R6,R8,R12}
C324E:  UXTH.W          R6, R10
C3252:  LDR             R1, [SP,#0x54+var_2C]
C3254:  STR             R1, [R2,#0xC]
C3256:  STR             R6, [SP,#0x54+var_2C]
C3258:  ADD.W           R9, LR, #1
C325C:  CMP             LR, R3
C325E:  BGE             loc_C329C
C3260:  LDRSH.W         R1, [R0],#2
C3264:  LDRSH.W         R8, [R11],#2
C3268:  STR.W           R11, [SP,#0x54+var_38]
C326C:  LDRD.W          R12, R10, [R2]
C3270:  LDRD.W          R4, R6, [R2,#8]
C3274:  SMLABB.W        LR, R8, R1, R6
C3278:  LDR             R6, [SP,#0x54+var_2C]
C327A:  UXTH.W          R8, R8
C327E:  SXTH            R6, R6
C3280:  SMLABB.W        R11, R1, R6, R4
C3284:  SXTH            R6, R5
C3286:  SMLABB.W        R4, R1, R6, R10
C328A:  LDR             R6, [SP,#0x54+var_24]
C328C:  SXTH            R6, R6
C328E:  SMLABB.W        R1, R1, R6, R12
C3292:  STM.W           R2, {R1,R4,R11,LR}
C3296:  CMP             R9, R3
C3298:  BLT             loc_C32A8
C329A:  B               loc_C32DE
C329C:  STR.W           R11, [SP,#0x54+var_38]
C32A0:  LDR.W           R8, [SP,#0x54+var_20]
C32A4:  CMP             R9, R3
C32A6:  BGE             loc_C32DE
C32A8:  LDR             R1, [SP,#0x54+var_38]
C32AA:  LDRSH.W         R3, [R0]
C32AE:  LDRSH.W         R12, [R1]
C32B2:  LDR             R1, [SP,#0x54+var_2C]
C32B4:  LDRD.W          R6, R0, [R2]
C32B8:  SXTH.W          LR, R1
C32BC:  LDRD.W          R4, R1, [R2,#8]
C32C0:  SMLABB.W        LR, R3, LR, R0
C32C4:  SXTH            R0, R5
C32C6:  SMLABB.W        R1, R12, R3, R1
C32CA:  SMLABB.W        R0, R3, R0, R6
C32CE:  SXTH.W          R6, R8
C32D2:  SMLABB.W        R6, R3, R6, R4
C32D6:  STRD.W          R0, LR, [R2]
C32DA:  STRD.W          R6, R1, [R2,#8]
C32DE:  ADD             SP, SP, #0x38 ; '8'
C32E0:  POP.W           {R8-R11}
C32E4:  POP             {R4-R7,PC}
