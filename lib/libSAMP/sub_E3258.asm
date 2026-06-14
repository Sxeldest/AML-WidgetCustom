; =========================================================
; Game Engine Function: sub_E3258
; Address            : 0xE3258 - 0xE339E
; =========================================================

E3258:  PUSH            {R4-R7,LR}
E325A:  ADD             R7, SP, #0xC
E325C:  PUSH.W          {R8-R11}
E3260:  SUB             SP, SP, #4
E3262:  VPUSH           {D8}
E3266:  SUB.W           SP, SP, #0x220
E326A:  CMP.W           R1, #0x3EC
E326E:  BHI.W           loc_E338E
E3272:  MOV             R8, R3
E3274:  ADD.W           R3, R1, R1,LSL#3
E3278:  MOV             R5, R2
E327A:  MOVS            R2, #0
E327C:  ADD.W           R6, R0, R3,LSL#2
E3280:  STRB.W          R2, [R0,R3,LSL#2]
E3284:  MOV             R10, R6
E3286:  LDRB.W          R4, [R10,#4]!
E328A:  LSLS            R3, R4, #0x1F
E328C:  BNE             loc_E3294
E328E:  STRH.W          R2, [R10]
E3292:  B               loc_E32A2
E3294:  ADD.W           R3, R1, R1,LSL#3
E3298:  ADD.W           R3, R0, R3,LSL#2
E329C:  LDR             R4, [R3,#0xC]
E329E:  STRB            R2, [R4]
E32A0:  STR             R2, [R3,#8]
E32A2:  ADD.W           R1, R1, R1,LSL#3
E32A6:  VMOV.I32        Q8, #0
E32AA:  ADD.W           R11, R0, R1,LSL#2
E32AE:  MOVS            R1, #0
E32B0:  ADD.W           R4, R11, #0x10
E32B4:  MOV             R0, R4
E32B6:  VST1.32         {D16-D17}, [R0]!
E32BA:  STR             R1, [R0]
E32BC:  MOV             R0, R5; s
E32BE:  BLX             strlen
E32C2:  CMP             R0, #0x90
E32C4:  BHI             loc_E338E
E32C6:  ADD.W           R0, R11, #0x1C
E32CA:  STR             R0, [SP,#0x248+var_23C]
E32CC:  ADD.W           R0, R11, #0x18
E32D0:  ADD.W           R9, SP, #0x248+var_228
E32D4:  STR             R0, [SP,#0x248+var_244]
E32D6:  ADD.W           R0, R11, #0x14
E32DA:  STR             R0, [SP,#0x248+var_240]
E32DC:  MOV             R0, R9
E32DE:  MOV             R1, R5
E32E0:  MOV.W           R2, #0x200
E32E4:  VLDR            S16, [R7,#arg_0]
E32E8:  BLX             __strcpy_chk
E32EC:  MOV             R0, R9
E32EE:  MOVS            R1, #0x24 ; '$'
E32F0:  MOVS            R2, #0xC
E32F2:  BL              sub_E33A4
E32F6:  STR.W           R0, [R11,#0x20]
E32FA:  MOV             R0, R9; s
E32FC:  BLX             strlen
E3300:  MOV             R2, R0
E3302:  ADD             R0, SP, #0x248+var_238
E3304:  MOV             R1, R9
E3306:  BL              sub_164D04
E330A:  LDRB.W          R0, [R10]
E330E:  LSLS            R0, R0, #0x1F
E3310:  ITT NE
E3312:  LDRNE.W         R0, [R11,#0xC]; void *
E3316:  BLXNE           j__ZdlPv; operator delete(void *)
E331A:  UBFX.W          R0, R8, #8, #8
E331E:  UBFX.W          R1, R8, #0x10, #8
E3322:  VLDR            S6, =0.0039216
E3326:  VMOV            S0, R0
E332A:  MOV.W           R0, R8,LSR#24
E332E:  VMOV            S4, R0
E3332:  LDR             R0, [SP,#0x248+var_230]
E3334:  VMOV            S2, R1
E3338:  STR.W           R0, [R10,#8]
E333C:  VCVT.F32.S32    S0, S0
E3340:  MOV.W           R0, #0x3F800000
E3344:  VCVT.F32.S32    S2, S2
E3348:  VLDR            D16, [SP,#0x248+var_238]
E334C:  VCVT.F32.S32    S4, S4
E3350:  STR             R0, [SP,#0x248+var_22C]
E3352:  ADD             R0, SP, #0x248+var_238
E3354:  VSTR            D16, [R10]
E3358:  VMUL.F32        S0, S0, S6
E335C:  VMUL.F32        S2, S2, S6
E3360:  VMUL.F32        S4, S4, S6
E3364:  VSTR            S0, [SP,#0x248+var_230]
E3368:  VSTR            S2, [SP,#0x248+var_238+4]
E336C:  VSTR            S4, [SP,#0x248+var_238]
E3370:  BL              sub_165778
E3374:  LDR             R1, [SP,#0x248+var_244]
E3376:  STR             R0, [R1]
E3378:  LDR             R1, [SP,#0x248+var_240]
E337A:  LDR             R0, [R7,#arg_4]
E337C:  STR             R0, [R1]
E337E:  LDR             R0, [SP,#0x248+var_23C]
E3380:  VSTR            S16, [R0]
E3384:  BL              sub_F0B30
E3388:  STR             R0, [R4]
E338A:  MOVS            R0, #1
E338C:  STRB            R0, [R6]
E338E:  ADD.W           SP, SP, #0x220
E3392:  VPOP            {D8}
E3396:  ADD             SP, SP, #4
E3398:  POP.W           {R8-R11}
E339C:  POP             {R4-R7,PC}
