; =========================================================
; Game Engine Function: _ZN13cTransmission26CalculateDriveAccelerationERKfRhRfS1_PfS4_hh
; Address            : 0x5811F0 - 0x58157A
; =========================================================

5811F0:  PUSH            {R4-R7,LR}
5811F2:  ADD             R7, SP, #0xC
5811F4:  PUSH.W          {R8-R10}
5811F8:  LDR             R3, [R7,#arg_0]
5811FA:  LDR             R6, =(unk_A12EC8 - 0x581204)
5811FC:  VLDR            S0, =0.0
581200:  ADD             R6, PC; unk_A12EC8
581202:  VLDR            S2, [R3]
581206:  VSTR            S2, [R6]
58120A:  VLDR            S4, [R0,#0x60]
58120E:  VCMPE.F32       S2, S4
581212:  VMRS            APSR_nzcv, FPSCR
581216:  BLT.W           loc_581570
58121A:  LDR             R4, =(unk_A12EC8 - 0x581224)
58121C:  LDRD.W          R3, R6, [R7,#arg_C]
581220:  ADD             R4, PC; unk_A12EC8
581222:  LDRD.W          LR, R12, [R7,#arg_4]
581226:  VLDR            S4, [R4]
58122A:  VLDR            S6, [R0,#0x58]
58122E:  VCMPE.F32       S2, S6
581232:  VMRS            APSR_nzcv, FPSCR
581236:  BGT.W           loc_581570
58123A:  VSTR            S2, [R0,#0x64]
58123E:  LDRB            R4, [R2]
581240:  ADD.W           R5, R4, R4,LSL#1
581244:  ADD.W           R9, R0, R5,LSL#2
581248:  VLDR            S8, [R9,#4]
58124C:  VCMPE.F32       S2, S8
581250:  VMRS            APSR_nzcv, FPSCR
581254:  BLE             loc_58126A
581256:  MOVS            R5, #1
581258:  CBNZ            R4, loc_58128E
58125A:  VLDR            S10, [R1]
58125E:  VCMPE.F32       S10, #0.0
581262:  VMRS            APSR_nzcv, FPSCR
581266:  BGT             loc_58128E
581268:  B               loc_5812B2
58126A:  CBZ             R4, loc_5812B2
58126C:  VLDR            S10, [R9,#8]
581270:  VCMPE.F32       S2, S10
581274:  VMRS            APSR_nzcv, FPSCR
581278:  BGE             loc_5812B2
58127A:  MOVS            R5, #0xFF
58127C:  CMP             R4, #1
58127E:  BNE             loc_58128E
581280:  VLDR            S10, [R1]
581284:  VCMPE.F32       S10, #0.0
581288:  VMRS            APSR_nzcv, FPSCR
58128C:  BGE             loc_5812B2
58128E:  ADDS            R3, R4, R5
581290:  STRB            R3, [R2]
581292:  VLDR            S2, [R0,#0x60]
581296:  MOVS            R6, #0
581298:  MOVS            R3, #0
58129A:  MOV.W           R12, #0
58129E:  VCMPE.F32       S4, S2
5812A2:  MOV.W           LR, #0
5812A6:  VMOV.F32        S2, S4
5812AA:  VMRS            APSR_nzcv, FPSCR
5812AE:  BGE             loc_58122A
5812B0:  B               loc_581570
5812B2:  LDRB.W          R8, [R0,#0x4A]
5812B6:  CMP.W           R8, #1
5812BA:  BNE             loc_5812C2
5812BC:  VMOV.F32        S0, #1.0
5812C0:  B               loc_58131C
5812C2:  CBZ             R4, loc_581306
5812C4:  VMOV            S4, R8
5812C8:  VMOV            S10, R4
5812CC:  VCVT.F32.U32    S4, S4
5812D0:  VMOV.F32        S0, #-1.0
5812D4:  VCVT.F32.U32    S10, S10
5812D8:  LDR             R5, [R0,#0x4C]
5812DA:  TST.W           R5, #1
5812DE:  VADD.F32        S4, S4, S0
5812E2:  VADD.F32        S0, S10, S0
5812E6:  VDIV.F32        S4, S0, S4
5812EA:  VMOV.F32        S0, #1.0
5812EE:  VSUB.F32        S4, S0, S4
5812F2:  BNE             loc_58130C
5812F4:  VMOV.F32        S12, #3.0
5812F8:  LSLS            R5, R5, #0x1E
5812FA:  VMOV.F32        S10, #4.0
5812FE:  IT PL
581300:  VMOVPL.F32      S10, S12
581304:  B               loc_581310
581306:  VMOV.F32        S0, #4.5
58130A:  B               loc_58131C
58130C:  VMOV.F32        S10, #5.0
581310:  VMUL.F32        S10, S4, S10
581314:  VMUL.F32        S4, S4, S10
581318:  VADD.F32        S0, S4, S0
58131C:  LDR.W           R10, =(dword_A12ECC - 0x58132C)
581320:  UXTB            R6, R6
581322:  CMP             R6, #1
581324:  MOV.W           R5, #0x3F800000
581328:  ADD             R10, PC; dword_A12ECC
58132A:  STR.W           R5, [R10]
58132E:  BNE             loc_58134C
581330:  LDR             R5, =(TRANSMISSION_AI_CHEAT_MULT_ptr - 0x58133E)
581332:  VMOV.F32        S10, #1.0
581336:  LDR.W           R10, =(dword_A12ECC - 0x581340)
58133A:  ADD             R5, PC; TRANSMISSION_AI_CHEAT_MULT_ptr
58133C:  ADD             R10, PC; dword_A12ECC
58133E:  LDR             R5, [R5]; TRANSMISSION_AI_CHEAT_MULT
581340:  LDR             R5, [R5]
581342:  STR.W           R5, [R10]
581346:  VMOV            S4, R5
58134A:  B               loc_581366
58134C:  LDR             R5, =(TRANSMISSION_NITROS_MULT_ptr - 0x581358)
58134E:  VMOV.F32        S4, #1.0
581352:  CMP             R6, #2
581354:  ADD             R5, PC; TRANSMISSION_NITROS_MULT_ptr
581356:  LDR             R5, [R5]; TRANSMISSION_NITROS_MULT
581358:  VLDR            S12, [R5]
58135C:  VMOV.F32        S10, S4
581360:  IT EQ
581362:  VMOVEQ.F32      S10, S12
581366:  VLDR            S12, [R0,#0x50]
58136A:  CMP.W           LR, #0
58136E:  LDR             R5, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x58137C)
581370:  VMUL.F32        S10, S10, S12
581374:  VLDR            S12, [R1]
581378:  ADD             R5, PC; _ZN6CTimer12ms_fTimeStepE_ptr
58137A:  LDR             R1, [R5]; CTimer::ms_fTimeStep ...
58137C:  VMUL.F32        S0, S0, S10
581380:  VMOV.F32        S10, #2.5
581384:  VMUL.F32        S0, S4, S0
581388:  VDIV.F32        S0, S0, S10
58138C:  VMUL.F32        S0, S12, S0
581390:  VLDR            S10, [R1]
581394:  LDR             R1, =(unk_A12EC4 - 0x58139A)
581396:  ADD             R1, PC; unk_A12EC4
581398:  VMUL.F32        S0, S10, S0
58139C:  VSTR            S0, [R1]
5813A0:  IT NE
5813A2:  CMPNE.W         R12, #0
5813A6:  BEQ.W           loc_5814F0
5813AA:  LSLS            R1, R3, #0x18
5813AC:  BEQ             loc_5813D8
5813AE:  CMP             R4, #1
5813B0:  BEQ             loc_581418
5813B2:  CMP             R4, #0
5813B4:  BNE             loc_581436
5813B6:  VMOV            S8, R8
5813BA:  VCVT.F32.U32    S8, S8
5813BE:  VDIV.F32        S6, S6, S8
5813C2:  VLDR            S8, =0.3333
5813C6:  VMUL.F32        S6, S6, S8
5813CA:  VLDR            S8, [R9,#8]
5813CE:  VSUB.F32        S8, S6, S8
5813D2:  VSUB.F32        S2, S6, S2
5813D6:  B               loc_581442
5813D8:  LDR             R1, =(TRANSMISSION_FREE_ACCELERATION_ptr - 0x5813E6)
5813DA:  VABS.F32        S2, S12
5813DE:  VMOV.F32        S8, #1.0
5813E2:  ADD             R1, PC; TRANSMISSION_FREE_ACCELERATION_ptr
5813E4:  LDR             R1, [R1]; TRANSMISSION_FREE_ACCELERATION
5813E6:  VLDR            S6, [R1]
5813EA:  MOV             R1, #0x3DCCCCCD
5813F2:  VMUL.F32        S2, S6, S2
5813F6:  VLDR            S6, [R0,#0x54]
5813FA:  VMUL.F32        S2, S10, S2
5813FE:  VDIV.F32        S2, S2, S6
581402:  VLDR            S6, [LR]
581406:  VADD.F32        S2, S6, S2
58140A:  VMIN.F32        D1, D1, D4
58140E:  VSTR            S2, [LR]
581412:  STR.W           R1, [R12]
581416:  B               loc_5814F0
581418:  VMOV            S10, R8
58141C:  VCVT.F32.U32    S10, S10
581420:  VDIV.F32        S6, S6, S10
581424:  VLDR            S10, =0.3333
581428:  VMUL.F32        S6, S6, S10
58142C:  VADD.F32        S8, S8, S6
581430:  VADD.F32        S2, S2, S6
581434:  B               loc_581442
581436:  VLDR            S6, [R9,#8]
58143A:  VSUB.F32        S8, S8, S6
58143E:  VSUB.F32        S2, S2, S6
581442:  VDIV.F32        S2, S2, S8
581446:  CMP             R6, #1
581448:  VLDR            S6, [LR]
58144C:  VSUB.F32        S6, S2, S6
581450:  BNE             loc_581458
581452:  LDR             R1, =(TRANSMISSION_AI_CHEAT_INERTIA_MULT_ptr - 0x581458)
581454:  ADD             R1, PC; TRANSMISSION_AI_CHEAT_INERTIA_MULT_ptr
581456:  B               loc_581460
581458:  CMP             R6, #2
58145A:  BNE             loc_58146A
58145C:  LDR             R1, =(TRANSMISSION_NITROS_INERTIA_MULT_ptr - 0x581462)
58145E:  ADD             R1, PC; TRANSMISSION_NITROS_INERTIA_MULT_ptr
581460:  LDR             R1, [R1]
581462:  VLDR            S8, [R1]
581466:  VMUL.F32        S6, S6, S8
58146A:  VLDR            S8, [R0,#0x54]
58146E:  VMOV.F32        S10, #1.0
581472:  LDR             R1, =(TRANSMISSION_SMOOTHER_FRAC_ptr - 0x581480)
581474:  VMUL.F32        S6, S6, S8
581478:  VLDR            S8, =0.1
58147C:  ADD             R1, PC; TRANSMISSION_SMOOTHER_FRAC_ptr
58147E:  VMOV.F32        S12, S8
581482:  LDR             R1, [R1]; TRANSMISSION_SMOOTHER_FRAC
581484:  VMOV.F32        S14, S10
581488:  VSUB.F32        S6, S10, S6
58148C:  VCMPE.F32       S6, S10
581490:  VMRS            APSR_nzcv, FPSCR
581494:  VCMPE.F32       S6, S8
581498:  IT GT
58149A:  VMOVGT.F32      S12, S10
58149E:  VMRS            APSR_nzcv, FPSCR
5814A2:  VCMPE.F32       S6, S10
5814A6:  IT LT
5814A8:  VMOVLT.F32      S14, S12
5814AC:  VMRS            APSR_nzcv, FPSCR
5814B0:  VCMPE.F32       S6, S8
5814B4:  VLDR            S12, [R1]
5814B8:  LDR             R1, =(unk_A12EC4 - 0x5814C2)
5814BA:  VSUB.F32        S10, S10, S12
5814BE:  ADD             R1, PC; unk_A12EC4
5814C0:  IT GT
5814C2:  VMOVGT.F32      S6, S14
5814C6:  VMRS            APSR_nzcv, FPSCR
5814CA:  IT LT
5814CC:  VMOVLT.F32      S6, S14
5814D0:  VLDR            S8, [R12]
5814D4:  VMUL.F32        S6, S10, S6
5814D8:  VMUL.F32        S8, S12, S8
5814DC:  VADD.F32        S6, S8, S6
5814E0:  VMUL.F32        S0, S0, S6
5814E4:  VSTR            S0, [R1]
5814E8:  VSTR            S6, [R12]
5814EC:  VSTR            S2, [LR]
5814F0:  LDRB            R1, [R2]
5814F2:  ADD.W           R1, R1, R1,LSL#1
5814F6:  ADD.W           R0, R0, R1,LSL#2
5814FA:  VLDR            S2, [R0]
5814FE:  VCMPE.F32       S2, #0.0
581502:  VMRS            APSR_nzcv, FPSCR
581506:  BGE             loc_58152C
581508:  VMUL.F32        S6, S2, S4
58150C:  LDR             R0, =(unk_A12EC8 - 0x581512)
58150E:  ADD             R0, PC; unk_A12EC8
581510:  VLDR            S8, [R0]
581514:  VCMPE.F32       S8, S6
581518:  VMRS            APSR_nzcv, FPSCR
58151C:  BGE             loc_58152C
58151E:  VSUB.F32        S2, S6, S8
581522:  VLDR            S4, =0.05
581526:  LDR             R0, =(unk_A12EC4 - 0x58152C)
581528:  ADD             R0, PC; unk_A12EC4
58152A:  B               loc_581558
58152C:  VCMPE.F32       S2, #0.0
581530:  VMRS            APSR_nzcv, FPSCR
581534:  BLE             loc_581570
581536:  VMUL.F32        S2, S2, S4
58153A:  LDR             R0, =(unk_A12EC8 - 0x581540)
58153C:  ADD             R0, PC; unk_A12EC8
58153E:  VLDR            S4, [R0]
581542:  VCMPE.F32       S4, S2
581546:  VMRS            APSR_nzcv, FPSCR
58154A:  BLE             loc_581570
58154C:  VSUB.F32        S2, S4, S2
581550:  VLDR            S4, =0.05
581554:  LDR             R0, =(unk_A12EC4 - 0x58155A)
581556:  ADD             R0, PC; unk_A12EC4
581558:  VDIV.F32        S2, S2, S4
58155C:  VMOV.F32        S4, #1.0
581560:  VMIN.F32        D1, D1, D2
581564:  VSUB.F32        S2, S4, S2
581568:  VMUL.F32        S0, S2, S0
58156C:  VSTR            S0, [R0]
581570:  VMOV            R0, S0
581574:  POP.W           {R8-R10}
581578:  POP             {R4-R7,PC}
