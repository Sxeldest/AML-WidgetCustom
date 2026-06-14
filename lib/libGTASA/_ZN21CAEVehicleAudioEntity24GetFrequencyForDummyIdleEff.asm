; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity24GetFrequencyForDummyIdleEff
; Address            : 0x3B442C - 0x3B44E2
; =========================================================

3B442C:  PUSH            {R4,R5,R7,LR}
3B442E:  ADD             R7, SP, #8
3B4430:  VPUSH           {D8}
3B4434:  MOV             R5, R0
3B4436:  MOVW            R4, #0x1C9
3B443A:  LDR             R0, [R5,#4]
3B443C:  LDRH            R3, [R0,#0x26]
3B443E:  CMP             R3, R4
3B4440:  BNE             loc_3B4448
3B4442:  VMOV.F32        S0, #1.0
3B4446:  B               loc_3B44D8
3B4448:  VMOV            S0, R1
3B444C:  VLDR            S2, =0.2
3B4450:  VLDR            S4, =1.2
3B4454:  VDIV.F32        S2, S0, S2
3B4458:  VCMPE.F32       S2, #0.0
3B445C:  VLDR            S6, =0.85
3B4460:  VMRS            APSR_nzcv, FPSCR
3B4464:  VMOV.F32        S0, #1.0
3B4468:  VMOV.F32        S10, S4
3B446C:  VLDR            S8, =0.35
3B4470:  VMUL.F32        S8, S2, S8
3B4474:  VCMPE.F32       S2, S0
3B4478:  IT LT
3B447A:  VMOVLT.F32      S10, S6
3B447E:  VMRS            APSR_nzcv, FPSCR
3B4482:  VADD.F32        S6, S8, S6
3B4486:  VCMPE.F32       S2, #0.0
3B448A:  IT LT
3B448C:  VMOVLT.F32      S4, S10
3B4490:  VMOV.F32        S16, S4
3B4494:  IT LT
3B4496:  VMOVLT.F32      S16, S6
3B449A:  VMRS            APSR_nzcv, FPSCR
3B449E:  IT LT
3B44A0:  VMOVLT.F32      S16, S4
3B44A4:  LDRB.W          R1, [R5,#0xA9]
3B44A8:  CMP             R1, #2
3B44AA:  BNE             loc_3B44C0
3B44AC:  LDR             R3, =(unk_6A9C48 - 0x3B44B6)
3B44AE:  MOV             R0, R2; this
3B44B0:  MOVS            R1, #5; float
3B44B2:  ADD             R3, PC; unk_6A9C48 ; float (*)[2]
3B44B4:  MOV             R2, R3; __int16
3B44B6:  BLX             j__ZN15CAEAudioUtility18GetPiecewiseLinearEfsPA2_f; CAEAudioUtility::GetPiecewiseLinear(float,short,float (*)[2])
3B44BA:  VMOV            S0, R0
3B44BE:  LDR             R0, [R5,#4]
3B44C0:  LDRB.W          R0, [R0,#0x42F]
3B44C4:  VLDR            S2, =0.7
3B44C8:  VMUL.F32        S2, S16, S2
3B44CC:  LSLS            R0, R0, #0x19
3B44CE:  IT PL
3B44D0:  VMOVPL.F32      S2, S16
3B44D4:  VMUL.F32        S0, S0, S2
3B44D8:  VMOV            R0, S0
3B44DC:  VPOP            {D8}
3B44E0:  POP             {R4,R5,R7,PC}
