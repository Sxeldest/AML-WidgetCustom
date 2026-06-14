; =========================================================
; Game Engine Function: _ZN10BoneNode_c13BlendKeyframeEf
; Address            : 0x4D2438 - 0x4D25A6
; =========================================================

4D2438:  PUSH            {R4-R7,LR}
4D243A:  ADD             R7, SP, #0xC
4D243C:  PUSH.W          {R11}
4D2440:  VPUSH           {D8-D9}
4D2444:  SUB             SP, SP, #0x48
4D2446:  VMOV.F32        S18, #1.0
4D244A:  MOV             R4, R0
4D244C:  VMOV            S16, R1
4D2450:  VCMPE.F32       S16, S18
4D2454:  VMRS            APSR_nzcv, FPSCR
4D2458:  BGE.W           loc_4D2584
4D245C:  VCMPE.F32       S16, #0.0
4D2460:  VMRS            APSR_nzcv, FPSCR
4D2464:  BLE.W           loc_4D2592
4D2468:  LDR             R0, [R4,#0xC]
4D246A:  ADD             R6, SP, #0x68+var_30
4D246C:  MOV             R5, SP
4D246E:  ADD             R1, SP, #0x68+var_40
4D2470:  VLD1.32         {D16-D17}, [R0]
4D2474:  ADD.W           R0, R4, #0x10
4D2478:  MOV             R2, R5
4D247A:  VST1.64         {D16-D17}, [R6]
4D247E:  VLD1.32         {D16-D17}, [R0]
4D2482:  MOV             R0, R6
4D2484:  VST1.64         {D16-D17}, [R1]
4D2488:  BLX             j__Z21RtQuatSetupSlerpCacheP6RtQuatS0_P16RtQuatSlerpCache; RtQuatSetupSlerpCache(RtQuat *,RtQuat *,RtQuatSlerpCache *)
4D248C:  VCMPE.F32       S16, #0.0
4D2490:  VMRS            APSR_nzcv, FPSCR
4D2494:  BLE.W           loc_4D259E
4D2498:  VSUB.F32        S17, S18, S16
4D249C:  LDR             R0, [SP,#0x68+var_44]
4D249E:  CBNZ            R0, loc_4D24FC
4D24A0:  ADD.W           R0, R5, #0x20 ; ' '
4D24A4:  VLDR            D18, =2.02860739e-81
4D24A8:  VLDR            D19, =-8.80596082e-64
4D24AC:  VLD1.32         {D16[]}, [R0@32]
4D24B0:  VMUL.F32        D16, D8, D16
4D24B4:  VMUL.F32        D17, D16, D16
4D24B8:  VMUL.F32        D18, D17, D18
4D24BC:  VADD.F32        D18, D18, D19
4D24C0:  VLDR            D19, =1.70605412e-47
4D24C4:  VMUL.F32        D18, D17, D18
4D24C8:  VADD.F32        D18, D18, D19
4D24CC:  VLDR            D19, =-1.23650924e-32
4D24D0:  VMUL.F32        D18, D17, D18
4D24D4:  VADD.F32        D18, D18, D19
4D24D8:  VLDR            D19, =1.66244406e-19
4D24DC:  VMUL.F32        D18, D17, D18
4D24E0:  VADD.F32        D18, D18, D19
4D24E4:  VLDR            D19, =-3.10441049e-9
4D24E8:  VMUL.F32        D18, D17, D18
4D24EC:  VMUL.F32        D17, D16, D17
4D24F0:  VADD.F32        D18, D18, D19
4D24F4:  VMUL.F32        D17, D17, D18
4D24F8:  VADD.F32        D8, D16, D17
4D24FC:  VLDR            S0, [SP,#0x68+var_68]
4D2500:  LDR             R0, [R4,#0xC]
4D2502:  VMUL.F32        S0, S17, S0
4D2506:  VSTR            S0, [R0]
4D250A:  VLDR            S0, [SP,#0x68+var_64]
4D250E:  LDR             R0, [R4,#0xC]
4D2510:  VMUL.F32        S0, S17, S0
4D2514:  VSTR            S0, [R0,#4]
4D2518:  VLDR            S0, [SP,#0x68+var_60]
4D251C:  LDR             R0, [R4,#0xC]
4D251E:  VMUL.F32        S0, S17, S0
4D2522:  VSTR            S0, [R0,#8]
4D2526:  VLDR            S0, [SP,#0x68+var_58]
4D252A:  LDR             R0, [R4,#0xC]
4D252C:  VMUL.F32        S0, S16, S0
4D2530:  VLDR            S2, [R0]
4D2534:  VADD.F32        S0, S0, S2
4D2538:  VSTR            S0, [R0]
4D253C:  VLDR            S0, [SP,#0x68+var_54]
4D2540:  LDR             R0, [R4,#0xC]
4D2542:  VMUL.F32        S0, S16, S0
4D2546:  VLDR            S2, [R0,#4]
4D254A:  VADD.F32        S0, S0, S2
4D254E:  VSTR            S0, [R0,#4]
4D2552:  VLDR            S0, [SP,#0x68+var_50]
4D2556:  LDR             R0, [R4,#0xC]
4D2558:  VMUL.F32        S0, S16, S0
4D255C:  VLDR            S2, [R0,#8]
4D2560:  VADD.F32        S0, S0, S2
4D2564:  VSTR            S0, [R0,#8]
4D2568:  VLDR            S0, [SP,#0x68+var_5C]
4D256C:  VLDR            S2, [SP,#0x68+var_4C]
4D2570:  VMUL.F32        S0, S17, S0
4D2574:  LDR             R0, [R4,#0xC]
4D2576:  VMUL.F32        S2, S16, S2
4D257A:  VADD.F32        S0, S0, S2
4D257E:  VSTR            S0, [R0,#0xC]
4D2582:  B               loc_4D2592
4D2584:  ADD.W           R1, R4, #0x10
4D2588:  LDR             R0, [R4,#0xC]
4D258A:  VLD1.32         {D16-D17}, [R1]
4D258E:  VST1.32         {D16-D17}, [R0]
4D2592:  ADD             SP, SP, #0x48 ; 'H'
4D2594:  VPOP            {D8-D9}
4D2598:  POP.W           {R11}
4D259C:  POP             {R4-R7,PC}
4D259E:  LDR             R0, [R4,#0xC]
4D25A0:  VLD1.64         {D16-D17}, [R6]
4D25A4:  B               loc_4D258E
