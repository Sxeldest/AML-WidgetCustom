; =========================================================
; Game Engine Function: _ZN8CGarages6AddOneEffffffffhjPcj
; Address            : 0x31142C - 0x31158A
; =========================================================

31142C:  PUSH            {R4-R7,LR}
31142E:  ADD             R7, SP, #0xC
311430:  PUSH.W          {R8}
311434:  VPUSH           {D8-D10}
311438:  VLDR            S12, [R7,#arg_0]
31143C:  VMOV            S14, R1
311440:  VLDR            S16, [R7,#arg_8]
311444:  VMOV            S10, R0
311448:  VMOV            S20, R3
31144C:  VLDR            S18, [R7,#arg_4]
311450:  VSUB.F32        S6, S12, S14
311454:  LDR             R6, =(_ZN8CGarages10NumGaragesE_ptr - 0x311466)
311456:  VSUB.F32        S4, S20, S10
31145A:  LDR.W           R12, =(_ZN8CGarages8aGaragesE_ptr - 0x31146C)
31145E:  VSUB.F32        S1, S16, S14
311462:  ADD             R6, PC; _ZN8CGarages10NumGaragesE_ptr
311464:  VSUB.F32        S8, S18, S10
311468:  ADD             R12, PC; _ZN8CGarages8aGaragesE_ptr
31146A:  VMAX.F32        D16, D7, D6
31146E:  LDR             R4, [R6]; CGarages::NumGarages ...
311470:  VMIN.F32        D17, D7, D6
311474:  MOV.W           R8, #0xD8
311478:  VMAX.F32        D18, D5, D10
31147C:  LDR.W           R6, [R12]; CGarages::aGarages ...
311480:  VMUL.F32        S0, S6, S6
311484:  LDR             R3, [R4]; CGarages::NumGarages
311486:  VMUL.F32        S2, S4, S4
31148A:  LDR.W           R12, [R7,#arg_18]
31148E:  VMUL.F32        S3, S1, S1
311492:  LDR.W           LR, [R7,#arg_10]
311496:  VMUL.F32        S5, S8, S8
31149A:  MUL.W           R5, R3, R8
31149E:  VMIN.F32        D19, D5, D10
3114A2:  VMAX.F32        D18, D18, D9
3114A6:  MLA.W           R3, R3, R8, R6
3114AA:  VMIN.F32        D17, D17, D8
3114AE:  VMAX.F32        D16, D16, D8
3114B2:  VADD.F32        S0, S2, S0
3114B6:  VMIN.F32        D19, D19, D9
3114BA:  STR             R0, [R6,R5]
3114BC:  VADD.F32        S2, S5, S3
3114C0:  VADD.F32        S3, S12, S16
3114C4:  ADD.W           R0, R3, #0x44 ; 'D'; char *
3114C8:  VSQRT.F32       S0, S0
3114CC:  VSQRT.F32       S2, S2
3114D0:  VDIV.F32        S12, S1, S2
3114D4:  VDIV.F32        S4, S4, S0
3114D8:  VDIV.F32        S6, S6, S0
3114DC:  VDIV.F32        S8, S8, S2
3114E0:  VADD.F32        S1, S20, S18
3114E4:  VSUB.F32        S14, S3, S14
3114E8:  VSUB.F32        S10, S1, S10
3114EC:  VLDR            S1, [R7,#arg_C]
3114F0:  VMAX.F32        D8, D16, D7
3114F4:  VMIN.F32        D7, D17, D7
3114F8:  VMIN.F32        D9, D19, D5
3114FC:  VMAX.F32        D5, D18, D5
311500:  VSTR            S10, [R3,#0x2C]
311504:  VSTR            S14, [R3,#0x30]
311508:  VSTR            S16, [R3,#0x34]
31150C:  STRD.W          R1, R2, [R3,#4]
311510:  MOV             R1, R12; char *
311512:  MOVS            R2, #7; size_t
311514:  STRB.W          LR, [R3,#0x4C]
311518:  STRB.W          LR, [R3,#0x4F]
31151C:  VSTR            S4, [R3,#0xC]
311520:  VSTR            S6, [R3,#0x10]
311524:  VSTR            S8, [R3,#0x14]
311528:  VSTR            S12, [R3,#0x18]
31152C:  VSTR            S1, [R3,#0x1C]
311530:  VSTR            S0, [R3,#0x20]
311534:  VSTR            S2, [R3,#0x24]
311538:  VSTR            S18, [R3,#0x28]
31153C:  BLX             strncpy
311540:  LDR             R0, [R4]; CGarages::NumGarages
311542:  LDR             R3, [R7,#arg_1C]
311544:  MLA.W           R1, R0, R8, R6
311548:  TST.W           R3, #1
31154C:  LDRB.W          R2, [R1,#0x4E]
311550:  BIC.W           R6, R2, #8
311554:  IT NE
311556:  ORRNE.W         R6, R2, #8
31155A:  TST.W           R3, #2
31155E:  BIC.W           R2, R6, #0x10
311562:  IT NE
311564:  ORRNE.W         R2, R6, #0x10
311568:  TST.W           R3, #4
31156C:  AND.W           R6, R2, #0xDF
311570:  IT NE
311572:  ORRNE.W         R6, R2, #0x20 ; ' '
311576:  STRB.W          R6, [R1,#0x4E]
31157A:  ADDS            R1, R0, #1
31157C:  STR             R1, [R4]; CGarages::NumGarages
31157E:  SXTH            R0, R0
311580:  VPOP            {D8-D10}
311584:  POP.W           {R8}
311588:  POP             {R4-R7,PC}
