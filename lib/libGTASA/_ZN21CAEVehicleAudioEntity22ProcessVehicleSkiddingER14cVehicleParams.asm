; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity22ProcessVehicleSkiddingER14cVehicleParams
; Address            : 0x3AF8C4 - 0x3AFC1E
; =========================================================

3AF8C4:  PUSH            {R4-R7,LR}
3AF8C6:  ADD             R7, SP, #0xC
3AF8C8:  PUSH.W          {R8-R10}
3AF8CC:  VPUSH           {D8-D11}
3AF8D0:  MOV             R10, R1
3AF8D2:  MOV             R9, R0
3AF8D4:  LDR.W           R0, [R10,#4]
3AF8D8:  CMP             R0, #9
3AF8DA:  BEQ             loc_3AF90A
3AF8DC:  CBNZ            R0, loc_3AF934
3AF8DE:  LDR.W           R12, [R10,#0x10]
3AF8E2:  ADDW            R2, R12, #0x978
3AF8E6:  ADDW            R1, R12, #0x808
3AF8EA:  LDR.W           R3, [R12,#0x980]
3AF8EE:  LDRB.W          R0, [R12,#0x974]
3AF8F2:  CMP             R3, #2
3AF8F4:  VLDR            S0, [R2]
3AF8F8:  ADDW            R2, R12, #0x97C
3AF8FC:  ITT NE
3AF8FE:  LDRNE.W         R3, [R12,#0x988]
3AF902:  CMPNE           R3, #2
3AF904:  BNE             loc_3AF93E
3AF906:  MOVS            R3, #0
3AF908:  B               loc_3AF940
3AF90A:  LDR.W           R12, [R10,#0x10]
3AF90E:  MOVS            R3, #0
3AF910:  MOV.W           R8, #2
3AF914:  ADDW            R1, R12, #0x81C
3AF918:  LDR.W           R2, [R12,#0x824]
3AF91C:  LDRB.W          R0, [R12,#0x818]
3AF920:  VLDR            S0, [R1]
3AF924:  CMP             R2, #2
3AF926:  ADDW            R1, R12, #0x744
3AF92A:  ADD.W           R2, R12, #0x820
3AF92E:  IT NE
3AF930:  MOVNE           R3, #1
3AF932:  B               loc_3AF944
3AF934:  VPOP            {D8-D11}
3AF938:  POP.W           {R8-R10}
3AF93C:  POP             {R4-R7,PC}
3AF93E:  MOVS            R3, #1
3AF940:  MOV.W           R8, #4
3AF944:  VMOV.F32        S18, #1.0
3AF948:  VLDR            S16, =0.0
3AF94C:  MOVW            R4, #0xFFFF
3AF950:  CMP             R0, #0
3AF952:  BEQ.W           loc_3AFAD0
3AF956:  LDR             R0, =(_ZN6CTimer13ms_fTimeScaleE_ptr - 0x3AF964)
3AF958:  VMOV.F32        S20, S16
3AF95C:  MOVW            R4, #0xFFFF
3AF960:  ADD             R0, PC; _ZN6CTimer13ms_fTimeScaleE_ptr
3AF962:  LDR             R0, [R0]; CTimer::ms_fTimeScale ...
3AF964:  VLDR            S2, [R0]
3AF968:  VCMP.F32        S2, #0.0
3AF96C:  VMRS            APSR_nzcv, FPSCR
3AF970:  BEQ.W           loc_3AFB38
3AF974:  VLDR            S4, [R10,#0x1C]
3AF978:  VMOV.F32        S18, #1.0
3AF97C:  VLDR            S2, =-0.4
3AF980:  VMOV.F32        S10, #5.0
3AF984:  VABS.F32        S4, S4
3AF988:  VLDR            S8, =0.6
3AF98C:  VADD.F32        S6, S0, S2
3AF990:  VLDR            S1, =0.0
3AF994:  VMOV.F32        S2, #0.75
3AF998:  VLDR            S20, =1.2
3AF99C:  VLDR            S22, =0.2
3AF9A0:  VMOV.F32        S16, S1
3AF9A4:  VMOV.F32        S7, S1
3AF9A8:  VLDR            S3, =0.04
3AF9AC:  VLDR            S5, =0.4
3AF9B0:  UXTB.W          R6, R8
3AF9B4:  MOVS            R5, #0
3AF9B6:  VCMPE.F32       S4, S18
3AF9BA:  VMRS            APSR_nzcv, FPSCR
3AF9BE:  VMUL.F32        S10, S4, S10
3AF9C2:  VDIV.F32        S14, S6, S8
3AF9C6:  VMUL.F32        S6, S4, S2
3AF9CA:  VMIN.F32        D5, D5, D9
3AF9CE:  VMUL.F32        S14, S14, S2
3AF9D2:  VMUL.F32        S10, S10, S20
3AF9D6:  VMOV.F32        S8, S6
3AF9DA:  IT GT
3AF9DC:  VMOVGT.F32      S8, S2
3AF9E0:  LDR.W           LR, [R10,#0x14]
3AF9E4:  VMUL.F32        S12, S8, S22
3AF9E8:  LDR.W           R0, [R2,R5,LSL#2]
3AF9EC:  CMP             R0, #0
3AF9EE:  BEQ             loc_3AFA9E
3AF9F0:  VLDR            S9, [R1]
3AF9F4:  VCMPE.F32       S9, #0.0
3AF9F8:  VMRS            APSR_nzcv, FPSCR
3AF9FC:  BLE             loc_3AFA9E
3AF9FE:  CBZ             R3, loc_3AFA0E
3AFA00:  ORR.W           R4, R5, #2
3AFA04:  UXTB            R4, R4
3AFA06:  CMP             R4, #2
3AFA08:  IT EQ
3AFA0A:  CMPEQ           R0, #2
3AFA0C:  BEQ             loc_3AFA9E
3AFA0E:  LDRB.W          R4, [LR,#0x48]
3AFA12:  CMP             R4, #0x34 ; '4'
3AFA14:  BEQ             loc_3AFA28
3AFA16:  CMP             R4, #0x46 ; 'F'
3AFA18:  BEQ             loc_3AFA4C
3AFA1A:  CMP             R4, #0x52 ; 'R'
3AFA1C:  BNE             loc_3AFA9A
3AFA1E:  ORR.W           R4, R5, #2
3AFA22:  UXTB            R4, R4
3AFA24:  CMP             R4, #3
3AFA26:  BNE             loc_3AFA56
3AFA28:  CMP             R0, #3
3AFA2A:  BEQ             loc_3AFA74
3AFA2C:  CMP             R0, #2
3AFA2E:  BEQ             loc_3AFA88
3AFA30:  VMOV.F32        S7, S1
3AFA34:  CMP             R0, #1
3AFA36:  BNE             loc_3AFA9A
3AFA38:  VCMPE.F32       S0, S5
3AFA3C:  VMRS            APSR_nzcv, FPSCR
3AFA40:  VMOV.F32        S7, S1
3AFA44:  IT GT
3AFA46:  VMOVGT.F32      S7, S14
3AFA4A:  B               loc_3AFA9A
3AFA4C:  ORR.W           R4, R5, #2
3AFA50:  UXTB            R4, R4
3AFA52:  CMP             R4, #2
3AFA54:  BEQ             loc_3AFA28
3AFA56:  CMP             R0, #3
3AFA58:  BEQ             loc_3AFA74
3AFA5A:  VMOV.F32        S7, S1
3AFA5E:  CMP             R0, #2
3AFA60:  BNE             loc_3AFA9A
3AFA62:  LDRB.W          R0, [R9,#0x80]
3AFA66:  VMOV.F32        S7, S8
3AFA6A:  CMP             R0, #2
3AFA6C:  IT EQ
3AFA6E:  VMOVEQ.F32      S7, S12
3AFA72:  B               loc_3AFA9A
3AFA74:  VCMPE.F32       S4, S3
3AFA78:  VMRS            APSR_nzcv, FPSCR
3AFA7C:  VMOV.F32        S7, S1
3AFA80:  IT GT
3AFA82:  VMOVGT.F32      S7, S10
3AFA86:  B               loc_3AFA9A
3AFA88:  VCMPE.F32       S4, S18
3AFA8C:  VMRS            APSR_nzcv, FPSCR
3AFA90:  VMOV.F32        S7, S2
3AFA94:  IT LE
3AFA96:  VMOVLE.F32      S7, S6
3AFA9A:  VADD.F32        S16, S16, S7
3AFA9E:  ADDS            R5, #1
3AFAA0:  ADDS            R1, #4
3AFAA2:  CMP             R5, R6
3AFAA4:  BCC             loc_3AF9E8
3AFAA6:  VCMPE.F32       S16, #0.0
3AFAAA:  VMRS            APSR_nzcv, FPSCR
3AFAAE:  BLE             loc_3AFAD6
3AFAB0:  LDRB.W          R0, [R9,#0x80]
3AFAB4:  CMP             R0, #2
3AFAB6:  BNE             loc_3AFAE0
3AFAB8:  VMOV.F32        S0, #0.25
3AFABC:  VLDR            S2, =0.9
3AFAC0:  VMOV.F32        S20, #-12.0
3AFAC4:  MOVS            R4, #0
3AFAC6:  VMUL.F32        S0, S16, S0
3AFACA:  VADD.F32        S18, S0, S2
3AFACE:  B               loc_3AFB38
3AFAD0:  VMOV.F32        S20, S16
3AFAD4:  B               loc_3AFB38
3AFAD6:  VLDR            S20, =0.0
3AFADA:  MOVW            R4, #0xFFFF
3AFADE:  B               loc_3AFB38
3AFAE0:  LDR             R0, =(g_surfaceInfos_ptr - 0x3AFAEA)
3AFAE2:  LDRB.W          R1, [R12,#0xBE]; unsigned int
3AFAE6:  ADD             R0, PC; g_surfaceInfos_ptr
3AFAE8:  LDR             R0, [R0]; g_surfaceInfos ; this
3AFAEA:  BLX             j__ZN14SurfaceInfos_c12IsAudioGrassEj; SurfaceInfos_c::IsAudioGrass(uint)
3AFAEE:  CBNZ            R0, loc_3AFB06
3AFAF0:  LDR             R0, =(g_surfaceInfos_ptr - 0x3AFAFA)
3AFAF2:  LDR.W           R1, [R10,#0x10]
3AFAF6:  ADD             R0, PC; g_surfaceInfos_ptr
3AFAF8:  LDRB.W          R1, [R1,#0xBE]; unsigned int
3AFAFC:  LDR             R0, [R0]; g_surfaceInfos ; this
3AFAFE:  BLX             j__ZN14SurfaceInfos_c16IsAudioLongGrassEj; SurfaceInfos_c::IsAudioLongGrass(uint)
3AFB02:  CMP             R0, #0
3AFB04:  BEQ             loc_3AFBAA
3AFB06:  VMUL.F32        S2, S16, S22
3AFB0A:  VLDR            S4, =0.9
3AFB0E:  VMOV.F32        S0, #-12.0
3AFB12:  MOVS            R4, #6
3AFB14:  VADD.F32        S18, S2, S4
3AFB18:  VMOV.F32        S2, #12.0
3AFB1C:  LDRB.W          R0, [R9,#0x80]
3AFB20:  AND.W           R0, R0, #0xFE
3AFB24:  CMP             R0, #4
3AFB26:  VADD.F32        S2, S0, S2
3AFB2A:  IT EQ
3AFB2C:  VMOVEQ.F32      S0, S2
3AFB30:  VLDR            S2, =0.0
3AFB34:  VADD.F32        S20, S0, S2
3AFB38:  UXTB.W          R0, R8
3AFB3C:  VLDR            S2, =0.00001
3AFB40:  VMOV            S0, R0
3AFB44:  VCVT.F32.U32    S0, S0
3AFB48:  VDIV.F32        S0, S16, S0
3AFB4C:  VCMPE.F32       S0, S2
3AFB50:  VMRS            APSR_nzcv, FPSCR
3AFB54:  BLE             loc_3AFB86
3AFB56:  VMOV            R0, S0; this
3AFB5A:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3AFB5E:  VMOV.F32        S0, #20.0
3AFB62:  VMOV            S2, R0
3AFB66:  VMUL.F32        S0, S2, S0
3AFB6A:  VLDR            S2, =-100.0
3AFB6E:  VADD.F32        S0, S20, S0
3AFB72:  VCMPE.F32       S0, S2
3AFB76:  VMRS            APSR_nzcv, FPSCR
3AFB7A:  ITT LT
3AFB7C:  MOVWLT          R4, #0xFFFF
3AFB80:  VMOVLT.F32      S0, S2
3AFB84:  B               loc_3AFB8E
3AFB86:  VLDR            S0, =-100.0
3AFB8A:  MOVW            R4, #0xFFFF
3AFB8E:  VMOV            R2, S18; float
3AFB92:  SXTH            R1, R4; __int16
3AFB94:  VMOV            R3, S0; float
3AFB98:  MOV             R0, R9; this
3AFB9A:  VPOP            {D8-D11}
3AFB9E:  POP.W           {R8-R10}
3AFBA2:  POP.W           {R4-R7,LR}
3AFBA6:  B.W             _ZN21CAEVehicleAudioEntity13PlaySkidSoundEsff; CAEVehicleAudioEntity::PlaySkidSound(short,float,float)
3AFBAA:  LDR             R0, =(g_surfaceInfos_ptr - 0x3AFBB4)
3AFBAC:  LDR.W           R1, [R10,#0x10]
3AFBB0:  ADD             R0, PC; g_surfaceInfos_ptr
3AFBB2:  LDRB.W          R1, [R1,#0xBE]; unsigned int
3AFBB6:  LDR             R0, [R0]; g_surfaceInfos ; this
3AFBB8:  BLX             j__ZN14SurfaceInfos_c13IsAudioGravelEj; SurfaceInfos_c::IsAudioGravel(uint)
3AFBBC:  CBNZ            R0, loc_3AFBE6
3AFBBE:  LDR             R0, =(g_surfaceInfos_ptr - 0x3AFBC8)
3AFBC0:  LDR.W           R1, [R10,#0x10]
3AFBC4:  ADD             R0, PC; g_surfaceInfos_ptr
3AFBC6:  LDRB.W          R1, [R1,#0xBE]; unsigned int
3AFBCA:  LDR             R0, [R0]; g_surfaceInfos ; this
3AFBCC:  BLX             j__ZN14SurfaceInfos_c11IsAudioSandEj; SurfaceInfos_c::IsAudioSand(uint)
3AFBD0:  CBNZ            R0, loc_3AFBE6
3AFBD2:  LDR             R0, =(g_surfaceInfos_ptr - 0x3AFBDC)
3AFBD4:  LDR.W           R1, [R10,#0x10]
3AFBD8:  ADD             R0, PC; g_surfaceInfos_ptr
3AFBDA:  LDRB.W          R1, [R1,#0xBE]; unsigned int
3AFBDE:  LDR             R0, [R0]; g_surfaceInfos ; this
3AFBE0:  BLX             j__ZN14SurfaceInfos_c12IsAudioWaterEj; SurfaceInfos_c::IsAudioWater(uint)
3AFBE4:  CBZ             R0, loc_3AFBF6
3AFBE6:  VMUL.F32        S2, S16, S22
3AFBEA:  VLDR            S4, =0.9
3AFBEE:  VMOV.F32        S0, #-9.0
3AFBF2:  MOVS            R4, #8
3AFBF4:  B               loc_3AFB14
3AFBF6:  VMOV.F32        S0, #0.125
3AFBFA:  VLDR            S2, =0.8
3AFBFE:  LDRB.W          R0, [R9,#0x80]
3AFC02:  MOVS            R4, #0x18
3AFC04:  CMP             R0, #1
3AFC06:  VMUL.F32        S0, S16, S0
3AFC0A:  VADD.F32        S18, S0, S2
3AFC0E:  VMUL.F32        S0, S18, S20
3AFC12:  IT EQ
3AFC14:  VMOVEQ.F32      S18, S0
3AFC18:  VLDR            S0, =0.0
3AFC1C:  B               loc_3AFB18
