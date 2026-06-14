; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity12ProcessNitroER14cVehicleParams
; Address            : 0x3B26E0 - 0x3B2852
; =========================================================

3B26E0:  PUSH            {R4,R5,R7,LR}
3B26E2:  ADD             R7, SP, #8
3B26E4:  VPUSH           {D8}
3B26E8:  SUB             SP, SP, #0x10
3B26EA:  MOV             R5, R1
3B26EC:  MOV             R4, R0
3B26EE:  LDR             R0, [R5,#0x10]
3B26F0:  LDRB.W          R1, [R0,#0x392]
3B26F4:  LSLS            R1, R1, #0x1C
3B26F6:  BPL             loc_3B276E
3B26F8:  ADDW            R1, R0, #0x8B8
3B26FC:  VLDR            S0, [R1]
3B2700:  VCMPE.F32       S0, #0.0
3B2704:  VMRS            APSR_nzcv, FPSCR
3B2708:  BGE             loc_3B276E
3B270A:  LDR.W           R0, [R0,#0x42C]
3B270E:  MOVS            R1, #0x40000010
3B2714:  ANDS            R0, R1
3B2716:  TEQ.W           R0, #0x10
3B271A:  BNE             loc_3B276E
3B271C:  LDRB.W          R0, [R4,#0x244]
3B2720:  CBNZ            R0, loc_3B272C
3B2722:  MOV             R0, R4; this
3B2724:  MOVS            R1, #0x66 ; 'f'; int
3B2726:  MOVS            R2, #0; float
3B2728:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
3B272C:  LDRSH.W         R0, [R5,#0x20]
3B2730:  VLDR            S2, =255.0
3B2734:  VMOV            S0, R0
3B2738:  VCVT.F32.S32    S0, S0
3B273C:  VDIV.F32        S0, S0, S2
3B2740:  VLDR            S2, [R4,#0x248]
3B2744:  VCMPE.F32       S2, #0.0
3B2748:  VMRS            APSR_nzcv, FPSCR
3B274C:  ITT LT
3B274E:  VSTRLT          S0, [R4,#0x248]
3B2752:  VMOVLT.F32      S2, S0
3B2756:  VCMPE.F32       S0, S2
3B275A:  VMRS            APSR_nzcv, FPSCR
3B275E:  BGE             loc_3B27C4
3B2760:  VLDR            S4, =-0.085
3B2764:  VADD.F32        S2, S2, S4
3B2768:  VMAX.F32        D8, D0, D1
3B276C:  B               loc_3B27D0
3B276E:  LDRB.W          R0, [R4,#0x244]
3B2772:  CBZ             R0, loc_3B27AC
3B2774:  LDR.W           R0, [R4,#0x120]; this
3B2778:  CBZ             R0, loc_3B2790
3B277A:  MOVS            R1, #4; unsigned __int16
3B277C:  MOVS            R2, #0; unsigned __int16
3B277E:  MOVS            R5, #0
3B2780:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3B2784:  LDR.W           R0, [R4,#0x120]; this
3B2788:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3B278C:  STR.W           R5, [R4,#0x120]
3B2790:  LDR.W           R0, [R4,#0x128]; this
3B2794:  CBZ             R0, loc_3B27AC
3B2796:  MOVS            R1, #4; unsigned __int16
3B2798:  MOVS            R2, #0; unsigned __int16
3B279A:  MOVS            R5, #0
3B279C:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3B27A0:  LDR.W           R0, [R4,#0x128]; this
3B27A4:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3B27A8:  STR.W           R5, [R4,#0x128]
3B27AC:  MOVS            R0, #0xBF800000
3B27B2:  STR.W           R0, [R4,#0x248]
3B27B6:  MOVS            R0, #0
3B27B8:  STRB.W          R0, [R4,#0x244]
3B27BC:  ADD             SP, SP, #0x10
3B27BE:  VPOP            {D8}
3B27C2:  POP             {R4,R5,R7,PC}
3B27C4:  VLDR            S4, =0.075
3B27C8:  VADD.F32        S2, S2, S4
3B27CC:  VMIN.F32        D8, D0, D1
3B27D0:  VMOV.F32        S0, #8.0
3B27D4:  VLDR            S2, =0.09
3B27D8:  VMOV.F32        S4, #0.75
3B27DC:  MOVS            R5, #0
3B27DE:  VMUL.F32        S2, S16, S2
3B27E2:  MOVT            R5, #0x4040
3B27E6:  VMOV.F32        S6, #-6.0
3B27EA:  MOVS            R0, #0xA
3B27EC:  VSTR            S16, [R4,#0x248]
3B27F0:  MOVS            R1, #7; __int16
3B27F2:  STR             R5, [SP,#0x20+var_14]; float
3B27F4:  MOVS            R2, #5; __int16
3B27F6:  STR             R0, [SP,#0x20+var_20]; __int16
3B27F8:  MOV             R0, R4; this
3B27FA:  VMUL.F32        S0, S16, S0
3B27FE:  MOVS            R3, #0x8F; __int16
3B2800:  VADD.F32        S2, S2, S4
3B2804:  VADD.F32        S0, S0, S6
3B2808:  VSTR            S2, [SP,#0x20+var_1C]
3B280C:  VSTR            S0, [SP,#0x20+var_18]
3B2810:  BLX             j__ZN21CAEVehicleAudioEntity25UpdateGenericVehicleSoundEssssfff; CAEVehicleAudioEntity::UpdateGenericVehicleSound(short,short,short,short,float,float,float)
3B2814:  VMOV.F32        S0, #27.0
3B2818:  VLDR            S2, =0.2
3B281C:  VLDR            S4, =-36.0
3B2820:  MOVS            R0, #0x1A
3B2822:  VMUL.F32        S2, S16, S2
3B2826:  VLDR            S6, =0.8
3B282A:  STR             R5, [SP,#0x20+var_14]; float
3B282C:  MOVS            R1, #8; __int16
3B282E:  MOVS            R2, #0x13; __int16
3B2830:  MOVS            R3, #0x8A; __int16
3B2832:  VMUL.F32        S0, S16, S0
3B2836:  VADD.F32        S2, S2, S6
3B283A:  VADD.F32        S0, S0, S4
3B283E:  VSTR            S2, [SP,#0x20+var_1C]
3B2842:  VSTR            S0, [SP,#0x20+var_18]
3B2846:  STR             R0, [SP,#0x20+var_20]; __int16
3B2848:  MOV             R0, R4; this
3B284A:  BLX             j__ZN21CAEVehicleAudioEntity25UpdateGenericVehicleSoundEssssfff; CAEVehicleAudioEntity::UpdateGenericVehicleSound(short,short,short,short,float,float,float)
3B284E:  MOVS            R0, #1
3B2850:  B               loc_3B27B8
