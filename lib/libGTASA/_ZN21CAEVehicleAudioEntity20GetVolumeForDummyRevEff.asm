; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity20GetVolumeForDummyRevEff
; Address            : 0x3B4500 - 0x3B4600
; =========================================================

3B4500:  PUSH            {R4,R6,R7,LR}
3B4502:  ADD             R7, SP, #8
3B4504:  VPUSH           {D8-D9}
3B4508:  VLDR            S0, =-0.15
3B450C:  VMOV            S2, R1; float
3B4510:  VMOV.F32        S8, #-4.5
3B4514:  MOV             R4, R0
3B4516:  VADD.F32        S0, S2, S0
3B451A:  VLDR            S2, =0.85
3B451E:  VMOV.F32        S6, #4.5
3B4522:  VDIV.F32        S4, S0, S2
3B4526:  VCMPE.F32       S4, #0.0
3B452A:  VLDR            S0, =0.0
3B452E:  VMRS            APSR_nzcv, FPSCR
3B4532:  VMOV.F32        S2, #1.0
3B4536:  VMOV.F32        S10, S0
3B453A:  VMUL.F32        S6, S4, S6
3B453E:  VMOV.F32        S12, S0
3B4542:  VCMPE.F32       S4, S2
3B4546:  VADD.F32        S6, S6, S8
3B454A:  IT LT
3B454C:  VMOVLT.F32      S10, S8
3B4550:  VMRS            APSR_nzcv, FPSCR
3B4554:  VCMPE.F32       S4, #0.0
3B4558:  VMOV            S4, R2
3B455C:  IT LT
3B455E:  VMOVLT.F32      S12, S10
3B4562:  VMOV.F32        S16, S12
3B4566:  IT LT
3B4568:  VMOVLT.F32      S16, S6
3B456C:  VMRS            APSR_nzcv, FPSCR
3B4570:  IT LT
3B4572:  VMOVLT.F32      S16, S12
3B4576:  LDRB.W          R0, [R4,#0xA9]
3B457A:  CMP             R0, #2
3B457C:  BNE             loc_3B45A8
3B457E:  VLDR            D16, =0.99
3B4582:  VCVT.F64.F32    D17, S4
3B4586:  VCMPE.F64       D17, D16
3B458A:  VMRS            APSR_nzcv, FPSCR
3B458E:  BGT             loc_3B45C0
3B4590:  LDR             R3, =(unk_6A9C70 - 0x3B459A)
3B4592:  MOV             R0, R2; this
3B4594:  MOVS            R1, #5; float
3B4596:  ADD             R3, PC; unk_6A9C70 ; float (*)[2]
3B4598:  MOV             R2, R3; __int16
3B459A:  BLX             j__ZN15CAEAudioUtility18GetPiecewiseLinearEfsPA2_f; CAEAudioUtility::GetPiecewiseLinear(float,short,float (*)[2])
3B459E:  VMOV.F32        S18, #20.0
3B45A2:  VMOV            S0, R0
3B45A6:  B               loc_3B45B0
3B45A8:  VMOV.F32        S18, #10.0
3B45AC:  VSUB.F32        S0, S2, S4
3B45B0:  VMOV            R0, S0; this
3B45B4:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3B45B8:  VMOV            S0, R0
3B45BC:  VMUL.F32        S0, S18, S0
3B45C0:  VMOV.F32        S2, #-6.0
3B45C4:  LDR             R0, [R4,#4]
3B45C6:  VMOV.F32        S4, #6.0
3B45CA:  LDRB.W          R1, [R0,#0x42F]
3B45CE:  LSLS            R1, R1, #0x19
3B45D0:  VADD.F32        S2, S16, S2
3B45D4:  IT PL
3B45D6:  VMOVPL.F32      S2, S16
3B45DA:  LDR.W           R0, [R0,#0x4D4]
3B45DE:  VADD.F32        S4, S2, S4
3B45E2:  CMP             R0, #0
3B45E4:  IT EQ
3B45E6:  VMOVEQ.F32      S4, S2
3B45EA:  VLDR            S2, [R4,#0xA0]
3B45EE:  VADD.F32        S0, S0, S4
3B45F2:  VADD.F32        S0, S2, S0
3B45F6:  VMOV            R0, S0
3B45FA:  VPOP            {D8-D9}
3B45FE:  POP             {R4,R6,R7,PC}
