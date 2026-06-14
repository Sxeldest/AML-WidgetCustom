; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity26ProcessBoatMovingOverWaterER14cVehicleParams
; Address            : 0x3AEF38 - 0x3AF006
; =========================================================

3AEF38:  PUSH            {R4,R5,R7,LR}
3AEF3A:  ADD             R7, SP, #8
3AEF3C:  VPUSH           {D8}
3AEF40:  SUB             SP, SP, #8; float
3AEF42:  VLDR            S2, [R1,#0x1C]
3AEF46:  VMOV.F32        S0, #0.75
3AEF4A:  MOV             R4, R0
3AEF4C:  LDR             R0, [R1,#0x10]
3AEF4E:  VABS.F32        S2, S2
3AEF52:  LDRB.W          R0, [R0,#0x5C0]
3AEF56:  LSLS            R0, R0, #0x1F
3AEF58:  VMIN.F32        D1, D1, D0
3AEF5C:  VDIV.F32        S16, S2, S0
3AEF60:  VLDR            S2, =0.0
3AEF64:  VMOV.F32        S0, S16
3AEF68:  IT EQ
3AEF6A:  VMOVEQ.F32      S0, S2
3AEF6E:  VLDR            S2, =0.00001
3AEF72:  VCMPE.F32       S0, S2
3AEF76:  VMRS            APSR_nzcv, FPSCR
3AEF7A:  BGE             loc_3AEF82
3AEF7C:  VLDR            S0, =-100.0
3AEF80:  B               loc_3AEFAA
3AEF82:  VMOV            R0, S0; this
3AEF86:  LDRB.W          R5, [R4,#0x80]
3AEF8A:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3AEF8E:  VMOV.F32        S0, #20.0
3AEF92:  CMP             R5, #6
3AEF94:  VMOV            S2, R0
3AEF98:  VMUL.F32        S0, S2, S0
3AEF9C:  ITE NE
3AEF9E:  VMOVNE.F32      S2, #3.0
3AEFA2:  VMOVEQ.F32      S2, #12.0
3AEFA6:  VADD.F32        S0, S0, S2
3AEFAA:  LDR             R0, =(_ZN8CWeather14UnderWaternessE_ptr - 0x3AEFBC)
3AEFAC:  VMOV.F32        S8, #0.5
3AEFB0:  VLDR            S2, =0.2
3AEFB4:  VMOV.F32        S6, #6.0
3AEFB8:  ADD             R0, PC; _ZN8CWeather14UnderWaternessE_ptr
3AEFBA:  VLDR            S4, =0.8
3AEFBE:  VMUL.F32        S2, S16, S2
3AEFC2:  MOVS            R1, #6; __int16
3AEFC4:  LDR             R0, [R0]; CWeather::UnderWaterness ...
3AEFC6:  MOVS            R2, #2; __int16
3AEFC8:  MOVS            R3, #3; __int16
3AEFCA:  VLDR            S10, [R0]
3AEFCE:  MOV             R0, R4; this
3AEFD0:  VADD.F32        S6, S0, S6
3AEFD4:  VCMPE.F32       S10, S8
3AEFD8:  VMRS            APSR_nzcv, FPSCR
3AEFDC:  VADD.F32        S2, S2, S4
3AEFE0:  VLDR            S4, =0.185
3AEFE4:  VMUL.F32        S4, S2, S4
3AEFE8:  ITT LT
3AEFEA:  VMOVLT.F32      S6, S0
3AEFEE:  VMOVLT.F32      S4, S2
3AEFF2:  VSTR            S4, [SP,#0x18+var_18]
3AEFF6:  VSTR            S6, [SP,#0x18+var_14]
3AEFFA:  BLX             j__ZN21CAEVehicleAudioEntity15UpdateBoatSoundEsssff; CAEVehicleAudioEntity::UpdateBoatSound(short,short,short,float,float)
3AEFFE:  ADD             SP, SP, #8
3AF000:  VPOP            {D8}
3AF004:  POP             {R4,R5,R7,PC}
