; =========================================================
; Game Engine Function: _ZN8CCarCtrl37SteerAICarWithPhysicsHeadingForTargetEP8CVehicleP9CPhysicalffPfS4_S4_Pb
; Address            : 0x2F33C0 - 0x2F36D0
; =========================================================

2F33C0:  PUSH            {R4-R7,LR}
2F33C2:  ADD             R7, SP, #0xC
2F33C4:  PUSH.W          {R8,R9,R11}
2F33C8:  VPUSH           {D8-D15}
2F33CC:  SUB             SP, SP, #8
2F33CE:  LDR.W           R8, [R7,#arg_C]
2F33D2:  MOV             R4, R0
2F33D4:  MOVS            R0, #0
2F33D6:  VMOV            S16, R3
2F33DA:  VMOV            S18, R2; float
2F33DE:  MOV             R9, R1
2F33E0:  STRB.W          R0, [R8]
2F33E4:  LDR             R0, [R4,#0x14]
2F33E6:  VLDR            S0, [R0,#0x10]
2F33EA:  VLDR            S20, [R0,#0x14]
2F33EE:  VMUL.F32        S4, S0, S0
2F33F2:  VMUL.F32        S2, S20, S20
2F33F6:  VADD.F32        S2, S4, S2
2F33FA:  VSQRT.F32       S2, S2
2F33FE:  VCMP.F32        S2, #0.0
2F3402:  VMRS            APSR_nzcv, FPSCR
2F3406:  BEQ             loc_2F3412
2F3408:  VDIV.F32        S20, S20, S2
2F340C:  VDIV.F32        S22, S0, S2
2F3410:  B               loc_2F3416
2F3412:  VMOV.F32        S22, #1.0
2F3416:  ADDS            R5, R4, #4
2F3418:  CMP             R0, #0
2F341A:  MOV             R1, R5
2F341C:  IT NE
2F341E:  ADDNE.W         R1, R0, #0x30 ; '0'
2F3422:  VLDR            S0, [R1]
2F3426:  VLDR            S2, [R1,#4]
2F342A:  VSUB.F32        S0, S18, S0
2F342E:  VSUB.F32        S2, S16, S2
2F3432:  VMOV            R0, S0; this
2F3436:  VMOV            R1, S2; float
2F343A:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F343E:  MOV             R6, R0
2F3440:  VMOV            R0, S22; this
2F3444:  VMOV            R1, S20; float
2F3448:  VMOV            S22, R6
2F344C:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F3450:  MOV             R3, R0
2F3452:  LDRB.W          R0, [R4,#0x3BD]
2F3456:  VMOV            S20, R3; float
2F345A:  CMP             R0, #6
2F345C:  BHI             loc_2F347E
2F345E:  MOVS            R1, #1
2F3460:  LSL.W           R0, R1, R0
2F3464:  TST.W           R0, #0x64
2F3468:  BEQ             loc_2F347E
2F346A:  MOV.W           R0, #0x3F800000
2F346E:  MOV             R1, R9; CVehicle *
2F3470:  STR             R0, [SP,#0x60+var_60]; float
2F3472:  MOV             R0, R4; this
2F3474:  MOV             R2, R6; CPhysical *
2F3476:  BLX             j__ZN8CCarCtrl30FindAngleToWeaveThroughTrafficEP8CVehicleP9CPhysicalfff; CCarCtrl::FindAngleToWeaveThroughTraffic(CVehicle *,CPhysical *,float,float,float)
2F347A:  VMOV            S22, R0
2F347E:  VSUB.F32        S26, S22, S20
2F3482:  VLDR            S24, =-3.1416
2F3486:  VCMPE.F32       S26, S24
2F348A:  VMRS            APSR_nzcv, FPSCR
2F348E:  BGE             loc_2F34A2
2F3490:  VLDR            S0, =6.2832
2F3494:  VADD.F32        S26, S26, S0
2F3498:  VCMPE.F32       S26, S24
2F349C:  VMRS            APSR_nzcv, FPSCR
2F34A0:  BLT             loc_2F3494
2F34A2:  VLDR            S22, =3.1416
2F34A6:  VCMPE.F32       S26, S22
2F34AA:  VMRS            APSR_nzcv, FPSCR
2F34AE:  BLE             loc_2F34C2
2F34B0:  VLDR            S0, =-6.2832
2F34B4:  VADD.F32        S26, S26, S0
2F34B8:  VCMPE.F32       S26, S22
2F34BC:  VMRS            APSR_nzcv, FPSCR
2F34C0:  BGT             loc_2F34B4
2F34C2:  VLDR            S28, [R4,#0x48]
2F34C6:  VLDR            S17, [R4,#0x4C]
2F34CA:  VMUL.F32        S2, S28, S28
2F34CE:  VLDR            S30, [R4,#0x50]
2F34D2:  VMUL.F32        S0, S17, S17
2F34D6:  VMUL.F32        S4, S30, S30
2F34DA:  VADD.F32        S0, S2, S0
2F34DE:  VLDR            S2, =0.3
2F34E2:  VADD.F32        S0, S0, S4
2F34E6:  VSQRT.F32       S0, S0
2F34EA:  VCMPE.F32       S0, S2
2F34EE:  VMRS            APSR_nzcv, FPSCR
2F34F2:  BLE             loc_2F3518
2F34F4:  VABS.F32        S0, S26
2F34F8:  VLDR            S2, =0.7
2F34FC:  VCMPE.F32       S0, S2
2F3500:  VMRS            APSR_nzcv, FPSCR
2F3504:  BLE             loc_2F3518
2F3506:  MOVS            R0, #1
2F3508:  STRB.W          R0, [R8]
2F350C:  VLDR            S28, [R4,#0x48]
2F3510:  VLDR            S17, [R4,#0x4C]
2F3514:  VLDR            S30, [R4,#0x50]
2F3518:  LDR             R0, [R4,#0x14]
2F351A:  CMP             R0, #0
2F351C:  IT NE
2F351E:  ADDNE.W         R5, R0, #0x30 ; '0'
2F3522:  VLDR            S0, [R5]
2F3526:  VLDR            S2, [R5,#4]
2F352A:  VSUB.F32        S0, S18, S0
2F352E:  VSUB.F32        S2, S16, S2
2F3532:  VMOV            R0, S0; this
2F3536:  VMOV            R1, S2; float
2F353A:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F353E:  VMUL.F32        S0, S17, S17
2F3542:  VLDR            S6, =0.7
2F3546:  VMUL.F32        S2, S28, S28
2F354A:  VMUL.F32        S4, S30, S30
2F354E:  VMOV            S8, R0
2F3552:  VADD.F32        S0, S2, S0
2F3556:  VLDR            S2, =0.9
2F355A:  VADD.F32        S0, S0, S4
2F355E:  VSQRT.F32       S0, S0
2F3562:  VCMPE.F32       S0, S6
2F3566:  VMRS            APSR_nzcv, FPSCR
2F356A:  VSUB.F32        S4, S2, S0
2F356E:  VLDR            S2, =0.2
2F3572:  IT GT
2F3574:  VMOVGT.F32      S4, S2
2F3578:  VSUB.F32        S2, S8, S20
2F357C:  VMIN.F32        D0, D2, D3
2F3580:  VNEG.F32        S4, S0
2F3584:  VCMPE.F32       S2, S24
2F3588:  VMRS            APSR_nzcv, FPSCR
2F358C:  VMAX.F32        D16, D13, D2
2F3590:  VMIN.F32        D0, D16, D0
2F3594:  BGE             loc_2F35A8
2F3596:  VLDR            S4, =6.2832
2F359A:  VADD.F32        S2, S2, S4
2F359E:  VCMPE.F32       S2, S24
2F35A2:  VMRS            APSR_nzcv, FPSCR
2F35A6:  BLT             loc_2F359A
2F35A8:  LDR             R1, [R7,#arg_8]
2F35AA:  VCMPE.F32       S2, S22
2F35AE:  VMRS            APSR_nzcv, FPSCR
2F35B2:  BLE             loc_2F35C6
2F35B4:  VLDR            S4, =-6.2832
2F35B8:  VADD.F32        S2, S2, S4
2F35BC:  VCMPE.F32       S2, S22
2F35C0:  VMRS            APSR_nzcv, FPSCR
2F35C4:  BGT             loc_2F35B8
2F35C6:  VABS.F32        S2, S2
2F35CA:  VLDR            S4, =-0.4
2F35CE:  LDRD.W          R0, R2, [R7,#arg_0]
2F35D2:  VLDR            S8, [R4,#0x48]
2F35D6:  VLDR            S6, =0.0
2F35DA:  VLDR            S10, [R4,#0x4C]
2F35DE:  VMUL.F32        S8, S8, S8
2F35E2:  VLDR            S12, [R4,#0x50]
2F35E6:  LDRB.W          R3, [R4,#0x3D4]
2F35EA:  VADD.F32        S2, S2, S4
2F35EE:  VMUL.F32        S12, S12, S12
2F35F2:  VMOV            S14, R3
2F35F6:  MOVS            R3, #0
2F35F8:  VCVT.F32.U32    S14, S14
2F35FC:  VMAX.F32        D2, D1, D3
2F3600:  VLDR            S6, =0.8
2F3604:  VMUL.F32        S2, S10, S10
2F3608:  VDIV.F32        S10, S4, S6
2F360C:  VADD.F32        S2, S8, S2
2F3610:  VCMPE.F32       S4, S6
2F3614:  VLDR            S4, =60.0
2F3618:  VMRS            APSR_nzcv, FPSCR
2F361C:  VADD.F32        S8, S2, S12
2F3620:  VLDR            S12, =-0.6
2F3624:  VMOV.F32        S2, #1.0
2F3628:  VMUL.F32        S10, S10, S12
2F362C:  VLDR            S12, =0.4
2F3630:  VSQRT.F32       S8, S8
2F3634:  VADD.F32        S10, S10, S2
2F3638:  IT GT
2F363A:  VMOVGT.F32      S10, S12
2F363E:  VMUL.F32        S6, S8, S4
2F3642:  VMUL.F32        S4, S10, S14
2F3646:  STR             R3, [R1]
2F3648:  VSUB.F32        S4, S4, S6
2F364C:  VCMPE.F32       S4, #0.0
2F3650:  VMRS            APSR_nzcv, FPSCR
2F3654:  BLE             loc_2F36AA
2F3656:  VMOV.F32        S8, #25.0
2F365A:  VCMPE.F32       S6, S8
2F365E:  VMRS            APSR_nzcv, FPSCR
2F3662:  BGE             loc_2F3674
2F3664:  VMOV.F32        S2, #10.0
2F3668:  VMOV.F32        S6, #1.0
2F366C:  VDIV.F32        S2, S4, S2
2F3670:  VMIN.F32        D1, D1, D3
2F3674:  VMOV.F32        S6, #3.0
2F3678:  VSTR            S2, [R2]
2F367C:  VCMPE.F32       S4, S6
2F3680:  VMRS            APSR_nzcv, FPSCR
2F3684:  BLE             loc_2F36C0
2F3686:  LDR.W           R1, [R4,#0x5A4]
2F368A:  CMP             R1, #0xA
2F368C:  BNE             loc_2F36C0
2F368E:  ADDW            R1, R4, #0x82C
2F3692:  VLDR            S2, [R1]
2F3696:  VCMPE.F32       S2, #0.0
2F369A:  VMRS            APSR_nzcv, FPSCR
2F369E:  ITTT LE
2F36A0:  MOVLE           R2, #0
2F36A2:  MOVTLE          R2, #0x4120
2F36A6:  STRLE           R2, [R1]
2F36A8:  B               loc_2F36C0
2F36AA:  VMOV.F32        S2, #-20.0
2F36AE:  STR             R3, [R2]
2F36B0:  VDIV.F32        S2, S4, S2
2F36B4:  VMOV.F32        S4, #0.5
2F36B8:  VMIN.F32        D1, D1, D2
2F36BC:  VSTR            S2, [R1]
2F36C0:  VSTR            S0, [R0]
2F36C4:  ADD             SP, SP, #8
2F36C6:  VPOP            {D8-D15}
2F36CA:  POP.W           {R8,R9,R11}
2F36CE:  POP             {R4-R7,PC}
