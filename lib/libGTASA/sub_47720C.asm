; =========================================================
; Game Engine Function: sub_47720C
; Address            : 0x47720C - 0x477340
; =========================================================

47720C:  PUSH            {R4-R7,LR}
47720E:  ADD             R7, SP, #0xC
477210:  PUSH.W          {R8-R11}
477214:  SUB             SP, SP, #4
477216:  VPUSH           {D8}
47721A:  SUB             SP, SP, #0x100
47721C:  MOV             R10, R3
47721E:  LDR             R3, [R7,#arg_8]
477220:  CMP             R3, #0
477222:  BEQ.W           loc_477332
477226:  LDR             R1, [R1,#0x10]
477228:  MOV.W           R8, #0
47722C:  LDR.W           R0, [R0,#0x158]
477230:  MOV             R11, SP
477232:  LDRD.W          R3, R6, [R7,#arg_0]
477236:  ADD.W           R1, R0, R1,LSL#2
47723A:  VLDR            S16, =16384.0
47723E:  LDR.W           R9, [R0,#0x1C]
477242:  LDR             R4, [R1,#0x20]
477244:  ADD.W           R5, R2, R3,LSL#2
477248:  MOVS            R0, #0
47724A:  MOV             R1, SP
47724C:  LDR.W           R2, [R5,R0,LSL#2]
477250:  ADDS            R0, #1
477252:  CMP             R0, #8
477254:  LDRB            R3, [R2,R6]
477256:  ADD             R2, R6
477258:  SUB.W           R3, R3, #0x80
47725C:  VMOV            S0, R3
477260:  VCVT.F32.S32    S0, S0
477264:  VSTR            S0, [R1]
477268:  LDRB            R3, [R2,#1]
47726A:  SUB.W           R3, R3, #0x80
47726E:  VMOV            S0, R3
477272:  VCVT.F32.S32    S0, S0
477276:  VSTR            S0, [R1,#4]
47727A:  LDRB            R3, [R2,#2]
47727C:  SUB.W           R3, R3, #0x80
477280:  VMOV            S0, R3
477284:  VCVT.F32.S32    S0, S0
477288:  VSTR            S0, [R1,#8]
47728C:  LDRB            R3, [R2,#3]
47728E:  SUB.W           R3, R3, #0x80
477292:  VMOV            S0, R3
477296:  VCVT.F32.S32    S0, S0
47729A:  VSTR            S0, [R1,#0xC]
47729E:  LDRB            R3, [R2,#4]
4772A0:  SUB.W           R3, R3, #0x80
4772A4:  VMOV            S0, R3
4772A8:  VCVT.F32.S32    S0, S0
4772AC:  VSTR            S0, [R1,#0x10]
4772B0:  LDRB            R3, [R2,#5]
4772B2:  SUB.W           R3, R3, #0x80
4772B6:  VMOV            S0, R3
4772BA:  VCVT.F32.S32    S0, S0
4772BE:  VSTR            S0, [R1,#0x14]
4772C2:  LDRB            R3, [R2,#6]
4772C4:  SUB.W           R3, R3, #0x80
4772C8:  VMOV            S0, R3
4772CC:  VCVT.F32.S32    S0, S0
4772D0:  VSTR            S0, [R1,#0x18]
4772D4:  LDRB            R2, [R2,#7]
4772D6:  SUB.W           R2, R2, #0x80
4772DA:  VMOV            S0, R2
4772DE:  VCVT.F32.S32    S0, S0
4772E2:  VSTR            S0, [R1,#0x1C]
4772E6:  ADD.W           R1, R1, #0x20 ; ' '
4772EA:  BNE             loc_47724C
4772EC:  MOV             R0, R11
4772EE:  BLX             R9
4772F0:  MOVS            R0, #0
4772F2:  MOV             R1, R10
4772F4:  ADDS            R2, R4, R0
4772F6:  VLDR            S0, [R2]
4772FA:  ADD.W           R2, R11, R0
4772FE:  ADDS            R0, #4
477300:  VLDR            S2, [R2]
477304:  CMP.W           R0, #0x100
477308:  VMUL.F32        S0, S2, S0
47730C:  VADD.F32        S0, S0, S16
477310:  VCVT.S32.F32    S0, S0
477314:  VMOV            R2, S0
477318:  ADD.W           R2, R2, #0xC000
47731C:  STRH.W          R2, [R1],#2
477320:  BNE             loc_4772F4
477322:  LDR             R0, [R7,#arg_8]
477324:  ADD.W           R8, R8, #1
477328:  ADD.W           R10, R10, #0x80
47732C:  ADDS            R6, #8
47732E:  CMP             R8, R0
477330:  BNE             loc_477248
477332:  ADD             SP, SP, #0x100
477334:  VPOP            {D8}
477338:  ADD             SP, SP, #4
47733A:  POP.W           {R8-R11}
47733E:  POP             {R4-R7,PC}
