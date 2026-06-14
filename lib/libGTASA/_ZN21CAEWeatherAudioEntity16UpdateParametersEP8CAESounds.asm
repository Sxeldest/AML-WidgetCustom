; =========================================================
; Game Engine Function: _ZN21CAEWeatherAudioEntity16UpdateParametersEP8CAESounds
; Address            : 0x3BBBB8 - 0x3BC5CE
; =========================================================

3BBBB8:  PUSH            {R4-R7,LR}
3BBBBA:  ADD             R7, SP, #0xC
3BBBBC:  PUSH.W          {R8,R9,R11}
3BBBC0:  VPUSH           {D8-D15}
3BBBC4:  SUB             SP, SP, #0x80
3BBBC6:  MOV             R5, R2
3BBBC8:  MOV             R9, R1
3BBBCA:  CMP             R5, #1
3BBBCC:  BLT.W           loc_3BC552
3BBBD0:  LDR.W           R0, [R9,#0xC]
3BBBD4:  SUBS            R1, R0, #4
3BBBD6:  CMP             R1, #2
3BBBD8:  BCC             loc_3BBCC2
3BBBDA:  CMP             R0, #3
3BBBDC:  BEQ.W           loc_3BBDEC
3BBBE0:  CMP             R0, #1
3BBBE2:  BNE.W           loc_3BC552
3BBBE6:  LDR.W           R0, =(_ZN8CWeather17LightningDurationE_ptr - 0x3BBBFA)
3BBBEA:  VMOV.F32        S0, #0.75
3BBBEE:  VMOV.F32        S16, #20.0
3BBBF2:  LDR.W           R1, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3BBBFC)
3BBBF6:  ADD             R0, PC; _ZN8CWeather17LightningDurationE_ptr
3BBBF8:  ADD             R1, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3BBBFA:  LDR             R0, [R0]; CWeather::LightningDuration ...
3BBBFC:  LDR             R1, [R1]; CAEAudioEntity::m_pAudioEventVolumes ...
3BBBFE:  LDR             R6, [R0]; CWeather::LightningDuration
3BBC00:  VMOV            S2, R6
3BBC04:  VCVT.F32.U32    S2, S2
3BBC08:  LDR             R1, [R1]; CAEAudioEntity::m_pAudioEventVolumes
3BBC0A:  LDRSB.W         R4, [R1,#0x8D]
3BBC0E:  VMUL.F32        S0, S2, S0
3BBC12:  VMOV.F32        S2, #0.25
3BBC16:  VDIV.F32        S0, S0, S16
3BBC1A:  VADD.F32        S0, S0, S2
3BBC1E:  VMOV            R0, S0; x
3BBC22:  BLX             log10f
3BBC26:  MOVW            R1, #0xCCCD
3BBC2A:  VMOV            S0, R0
3BBC2E:  MOVT            R1, #0xCCCC
3BBC32:  VMOV            S2, R4
3BBC36:  UMULL.W         R1, R2, R6, R1
3BBC3A:  VMUL.F32        S0, S0, S16
3BBC3E:  VCVT.F32.S32    S2, S2
3BBC42:  MOVS            R0, #1
3BBC44:  MOV.W           R1, #0x1F4
3BBC48:  SUB.W           R0, R0, R2,LSR#4
3BBC4C:  MULS            R0, R1
3BBC4E:  VADD.F32        S18, S0, S2
3BBC52:  ADD.W           R6, R0, #0x64 ; 'd'
3BBC56:  CMP             R6, R5
3BBC58:  BCS.W           loc_3BBE2E
3BBC5C:  VCMPE.F32       S18, #0.0
3BBC60:  VMRS            APSR_nzcv, FPSCR
3BBC64:  BLE.W           loc_3BBF2A
3BBC68:  ADD.W           R0, R0, #0x12C
3BBC6C:  CMP             R0, R5
3BBC6E:  BCC.W           loc_3BBF2A
3BBC72:  VDIV.F32        S0, S18, S16
3BBC76:  MOVS            R0, #0x41200000; x
3BBC7C:  VMOV            R1, S0; y
3BBC80:  BLX             powf
3BBC84:  VMOV.F32        S0, #1.0
3BBC88:  VMOV            S2, R0
3BBC8C:  SUBS            R0, R5, R6
3BBC8E:  VMOV            S4, R0
3BBC92:  VCVT.F32.U32    S4, S4
3BBC96:  VSUB.F32        S0, S0, S2
3BBC9A:  VMUL.F32        S0, S0, S4
3BBC9E:  VLDR            S4, =200.0
3BBCA2:  VDIV.F32        S0, S0, S4
3BBCA6:  VADD.F32        S0, S2, S0
3BBCAA:  VMOV            R0, S0; x
3BBCAE:  BLX             log10f
3BBCB2:  VMOV            S0, R0
3BBCB6:  VMUL.F32        S0, S0, S16
3BBCBA:  VSTR            S0, [R9,#0x14]
3BBCBE:  B.W             loc_3BC552
3BBCC2:  LDR.W           R0, =(TheCamera_ptr - 0x3BBCD2)
3BBCC6:  VMOV.F32        S18, #1.0
3BBCCA:  VLDR            S0, =500.0
3BBCCE:  ADD             R0, PC; TheCamera_ptr
3BBCD0:  VLDR            S16, =0.0
3BBCD4:  LDR             R0, [R0]; TheCamera
3BBCD6:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
3BBCD8:  ADD.W           R2, R1, #0x30 ; '0'
3BBCDC:  CMP             R1, #0
3BBCDE:  IT EQ
3BBCE0:  ADDEQ           R2, R0, #4
3BBCE2:  VLDR            S2, [R2,#8]
3BBCE6:  VDIV.F32        S0, S2, S0
3BBCEA:  VCMPE.F32       S0, S18
3BBCEE:  VMRS            APSR_nzcv, FPSCR
3BBCF2:  BGT             loc_3BBD02
3BBCF4:  VMOV.F32        S2, S16
3BBCF8:  VCMPE.F32       S0, #0.0
3BBCFC:  VMRS            APSR_nzcv, FPSCR
3BBD00:  BLT             loc_3BBD14
3BBD02:  VCMPE.F32       S0, S18
3BBD06:  VMRS            APSR_nzcv, FPSCR
3BBD0A:  VMOV.F32        S2, S18
3BBD0E:  IT LE
3BBD10:  VMOVLE.F32      S2, S0
3BBD14:  VMOV            R5, S2
3BBD18:  LDR.W           R2, =(unk_6A9DD8 - 0x3BBD22)
3BBD1C:  MOVS            R1, #3; float
3BBD1E:  ADD             R2, PC; unk_6A9DD8 ; __int16
3BBD20:  MOV             R0, R5; this
3BBD22:  BLX             j__ZN15CAEAudioUtility18GetPiecewiseLinearEfsPA2_f; CAEAudioUtility::GetPiecewiseLinear(float,short,float (*)[2])
3BBD26:  LDR.W           R2, =(unk_6A9DF0 - 0x3BBD38)
3BBD2A:  VMOV            S20, R0
3BBD2E:  LDR.W           R4, =(_ZN8CWeather11WindClippedE_ptr - 0x3BBD3C)
3BBD32:  MOV             R0, R5; this
3BBD34:  ADD             R2, PC; unk_6A9DF0 ; __int16
3BBD36:  MOVS            R1, #3; float
3BBD38:  ADD             R4, PC; _ZN8CWeather11WindClippedE_ptr
3BBD3A:  BLX             j__ZN15CAEAudioUtility18GetPiecewiseLinearEfsPA2_f; CAEAudioUtility::GetPiecewiseLinear(float,short,float (*)[2])
3BBD3E:  VMOV            S0, R0
3BBD42:  LDR             R0, [R4]; CWeather::WindClipped ...
3BBD44:  LDR.W           R4, =(byte_6A9E08 - 0x3BBD5C)
3BBD48:  VSUB.F32        S0, S0, S20
3BBD4C:  VLDR            S2, [R0]
3BBD50:  MOV             R0, #0x3D8F5C29; this
3BBD58:  ADD             R4, PC; byte_6A9E08
3BBD5A:  VMIN.F32        D16, D1, D9
3BBD5E:  VMAX.F32        D1, D16, D8
3BBD62:  VMUL.F32        S0, S0, S2
3BBD66:  VADD.F32        S16, S20, S0
3BBD6A:  BLX             j__ZN15CAEAudioUtility18ResolveProbabilityEf; CAEAudioUtility::ResolveProbability(float)
3BBD6E:  LDRB            R1, [R4]
3BBD70:  CBZ             R0, loc_3BBD7E
3BBD72:  LDR.W           R0, =(byte_6A9E08 - 0x3BBD7E)
3BBD76:  EOR.W           R1, R1, #1
3BBD7A:  ADD             R0, PC; byte_6A9E08
3BBD7C:  STRB            R1, [R0]
3BBD7E:  VMOV.F32        S2, #21.0
3BBD82:  VLDR            S6, =1.2
3BBD86:  VMOV.F32        S0, #1.0
3BBD8A:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x3BBD9C)
3BBD8E:  VMUL.F32        S6, S16, S6
3BBD92:  CMP             R1, #0
3BBD94:  VLDR            S4, =0.0
3BBD98:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
3BBD9A:  LDR.W           R1, =(unk_94EC98 - 0x3BBDA8)
3BBD9E:  LDR             R0, [R0]; CGame::currArea ...
3BBDA0:  LDR.W           R2, =(unk_94EC94 - 0x3BBDBA)
3BBDA4:  ADD             R1, PC; unk_94EC98
3BBDA6:  VMUL.F32        S8, S16, S2
3BBDAA:  IT NE
3BBDAC:  VMOVNE.F32      S4, S0
3BBDB0:  LDR             R0, [R0]; CGame::currArea
3BBDB2:  VMUL.F32        S2, S6, S4
3BBDB6:  ADD             R2, PC; unk_94EC94
3BBDB8:  CMP             R0, #0
3BBDBA:  VMUL.F32        S4, S8, S4
3BBDBE:  VSTR            S2, [R1]
3BBDC2:  VSTR            S4, [R2]
3BBDC6:  BNE             loc_3BBDFA
3BBDC8:  VLDR            S6, =-33.0
3BBDCC:  VADD.F32        S4, S4, S6
3BBDD0:  VLDR            S6, [R9,#0x14]
3BBDD4:  VCMPE.F32       S6, S4
3BBDD8:  VMRS            APSR_nzcv, FPSCR
3BBDDC:  BGE             loc_3BBE5C
3BBDDE:  VLDR            S8, =0.6
3BBDE2:  VADD.F32        S6, S6, S8
3BBDE6:  VMIN.F32        D2, D3, D2
3BBDEA:  B               loc_3BBE6A
3BBDEC:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x3BBDF4)
3BBDF0:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
3BBDF2:  LDR             R0, [R0]; CGame::currArea ...
3BBDF4:  LDR             R0, [R0]; CGame::currArea
3BBDF6:  CMP             R0, #0
3BBDF8:  BEQ             loc_3BBE90
3BBDFA:  VLDR            S0, =-50.0
3BBDFE:  VLDR            S2, [R9,#0x14]
3BBE02:  VCMPE.F32       S2, S0
3BBE06:  VMRS            APSR_nzcv, FPSCR
3BBE0A:  BLE             loc_3BBE1A
3BBE0C:  VLDR            S4, =-0.6
3BBE10:  VADD.F32        S2, S2, S4
3BBE14:  VMAX.F32        D0, D1, D0
3BBE18:  B               loc_3BBF32
3BBE1A:  MOV             R0, R9; this
3BBE1C:  ADD             SP, SP, #0x80
3BBE1E:  VPOP            {D8-D15}
3BBE22:  POP.W           {R8,R9,R11}
3BBE26:  POP.W           {R4-R7,LR}
3BBE2A:  B.W             j_j__ZN8CAESound18StopSoundAndForgetEv; j_CAESound::StopSoundAndForget(void)
3BBE2E:  VMOV            S0, R6
3BBE32:  VMOV            S2, R5
3BBE36:  VCVT.F32.U32    S0, S0
3BBE3A:  VCVT.F32.S32    S2, S2
3BBE3E:  VDIV.F32        S0, S2, S0
3BBE42:  VMOV            R0, S0; x
3BBE46:  BLX             log10f
3BBE4A:  VMOV            S0, R0
3BBE4E:  VMUL.F32        S0, S0, S16
3BBE52:  VADD.F32        S0, S18, S0
3BBE56:  VSTR            S0, [R9,#0x14]
3BBE5A:  B               loc_3BC552
3BBE5C:  BLE             loc_3BBE6E
3BBE5E:  VLDR            S8, =-0.6
3BBE62:  VADD.F32        S6, S6, S8
3BBE66:  VMAX.F32        D2, D3, D2
3BBE6A:  VSTR            S4, [R9,#0x14]
3BBE6E:  LDR.W           R0, =(unk_6A9E0C - 0x3BBE76)
3BBE72:  ADD             R0, PC; unk_6A9E0C
3BBE74:  VLDR            S4, [R0]
3BBE78:  VCMPE.F32       S4, S2
3BBE7C:  VMRS            APSR_nzcv, FPSCR
3BBE80:  BGE             loc_3BBF02
3BBE82:  VLDR            S0, =0.1
3BBE86:  VADD.F32        S0, S4, S0
3BBE8A:  VMIN.F32        D0, D0, D1
3BBE8E:  B               loc_3BBF1A
3BBE90:  LDR.W           R1, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3BBE9C)
3BBE94:  LDR.W           R0, =(TheCamera_ptr - 0x3BBE9E)
3BBE98:  ADD             R1, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3BBE9A:  ADD             R0, PC; TheCamera_ptr
3BBE9C:  LDR             R1, [R1]; CAEAudioEntity::m_pAudioEventVolumes ...
3BBE9E:  LDR             R0, [R0]; TheCamera
3BBEA0:  LDR             R1, [R1]; CAEAudioEntity::m_pAudioEventVolumes
3BBEA2:  LDR             R2, [R0,#(dword_951FBC - 0x951FA8)]
3BBEA4:  LDRSB.W         R1, [R1,#0x90]
3BBEA8:  ADD.W           R3, R2, #0x30 ; '0'
3BBEAC:  CMP             R2, #0
3BBEAE:  IT EQ
3BBEB0:  ADDEQ           R3, R0, #4
3BBEB2:  MOV.W           R0, #0xFFFFFFFF; int
3BBEB6:  VMOV            S0, R1
3BBEBA:  VLDR            S18, [R3]
3BBEBE:  VLDR            S20, [R3,#4]
3BBEC2:  VCVT.F32.S32    S16, S0
3BBEC6:  LDR             R5, [R3,#(dword_951FB4 - 0x951FAC)]
3BBEC8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3BBECC:  MOV             R8, R0
3BBECE:  CMP.W           R8, #0
3BBED2:  BEQ             loc_3BBEE6
3BBED4:  LDR.W           R0, [R8,#0x14]
3BBED8:  ADD.W           R1, R0, #0x30 ; '0'
3BBEDC:  CMP             R0, #0
3BBEDE:  IT EQ
3BBEE0:  ADDEQ.W         R1, R8, #4
3BBEE4:  LDR             R5, [R1,#8]
3BBEE6:  LDR.W           R0, =(TheCamera_ptr - 0x3BBEEE)
3BBEEA:  ADD             R0, PC; TheCamera_ptr
3BBEEC:  LDR             R0, [R0]; TheCamera
3BBEEE:  LDR             R0, [R0,#(dword_951FBC - 0x951FA8)]
3BBEF0:  CMP             R0, #0
3BBEF2:  BEQ             loc_3BBF74
3BBEF4:  VLDR            D16, [R0]
3BBEF8:  LDR             R0, [R0,#8]
3BBEFA:  STR             R0, [SP,#0xD8+var_60]
3BBEFC:  VSTR            D16, [SP,#0xD8+var_68]
3BBF00:  B               loc_3BBF92
3BBF02:  BLE             loc_3BBF38
3BBF04:  VLDR            S2, =-0.1
3BBF08:  VADD.F32        S2, S4, S2
3BBF0C:  VCMPE.F32       S2, S0
3BBF10:  VMRS            APSR_nzcv, FPSCR
3BBF14:  IT GT
3BBF16:  VMOVGT          D0, D1
3BBF1A:  LDR.W           R0, =(unk_6A9E0C - 0x3BBF22)
3BBF1E:  ADD             R0, PC; unk_6A9E0C
3BBF20:  VSTR            S0, [R0]
3BBF24:  VSTR            S0, [R9,#0x1C]
3BBF28:  B               loc_3BC552
3BBF2A:  VLDR            S0, =0.0
3BBF2E:  VMIN.F32        D0, D9, D0
3BBF32:  VSTR            S0, [R9,#0x14]
3BBF36:  B               loc_3BC552
3BBF38:  VMOV            D0, D2
3BBF3C:  VSTR            S0, [R9,#0x1C]
3BBF40:  B               loc_3BC552
3BBF42:  ALIGN 4
3BBF44:  DCFS 200.0
3BBF48:  DCFS 500.0
3BBF4C:  DCFS 0.0
3BBF50:  DCFS 1.2
3BBF54:  DCFS -33.0
3BBF58:  DCFS 0.6
3BBF5C:  DCFS -50.0
3BBF60:  DCFS -0.6
3BBF64:  DCFS 0.1
3BBF68:  DCFS -0.1
3BBF6C:  DCFS -0.906
3BBF70:  DCFS 0.423
3BBF74:  LDR.W           R0, =(TheCamera_ptr - 0x3BBF80)
3BBF78:  MOVS            R1, #0
3BBF7A:  STR             R1, [SP,#0xD8+var_60]
3BBF7C:  ADD             R0, PC; TheCamera_ptr
3BBF7E:  LDR             R0, [R0]; TheCamera
3BBF80:  LDR             R6, [R0,#(dword_951FB8 - 0x951FA8)]
3BBF82:  MOV             R0, R6; x
3BBF84:  BLX             sinf
3BBF88:  STR             R0, [SP,#0xD8+var_68+4]
3BBF8A:  MOV             R0, R6; x
3BBF8C:  BLX             cosf
3BBF90:  STR             R0, [SP,#0xD8+var_68]
3BBF92:  ADD             R0, SP, #0xD8+var_68; this
3BBF94:  VMOV            S22, R5
3BBF98:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3BBF9C:  VMOV.F32        S4, #4.0
3BBFA0:  VLDR            S10, [SP,#0xD8+var_68+4]
3BBFA4:  VLDR            S6, [SP,#0xD8+var_60]
3BBFA8:  MOVS            R0, #0
3BBFAA:  VLDR            S2, [SP,#0xD8+var_68]
3BBFAE:  STR             R0, [SP,#0xD8+var_6C]
3BBFB0:  VLDR            S12, =-0.906
3BBFB4:  VLDR            S14, [R9,#0x24]
3BBFB8:  VMUL.F32        S0, S6, S4
3BBFBC:  VMUL.F32        S8, S10, S4
3BBFC0:  VMUL.F32        S4, S2, S4
3BBFC4:  VCMP.F32        S14, S12
3BBFC8:  VMRS            APSR_nzcv, FPSCR
3BBFCC:  BNE.W           loc_3BC112
3BBFD0:  VLDR            S12, =0.423
3BBFD4:  VLDR            S14, [R9,#0x28]
3BBFD8:  VCMP.F32        S14, S12
3BBFDC:  VMRS            APSR_nzcv, FPSCR
3BBFE0:  ITTT EQ
3BBFE2:  VLDREQ          S12, [R9,#0x2C]
3BBFE6:  VCMPEQ.F32      S12, #0.0
3BBFEA:  VMRSEQ          APSR_nzcv, FPSCR
3BBFEE:  BNE.W           loc_3BC112
3BBFF2:  VADD.F32        S10, S20, S10
3BBFF6:  MOVS            R0, #0
3BBFF8:  VADD.F32        S8, S20, S8
3BBFFC:  MOVS            R1, #1
3BBFFE:  VADD.F32        S2, S18, S2
3BC002:  ADD             R2, SP, #0xD8+var_98
3BC004:  VADD.F32        S6, S6, S22
3BC008:  ADD             R3, SP, #0xD8+var_6C
3BC00A:  VADD.F32        S4, S18, S4
3BC00E:  VADD.F32        S0, S0, S22
3BC012:  VSTR            S10, [SP,#0xD8+var_A8+4]
3BC016:  VSTR            S8, [SP,#0xD8+var_B0]
3BC01A:  VSTR            S2, [SP,#0xD8+var_A8]
3BC01E:  VSTR            S6, [SP,#0xD8+var_A0]
3BC022:  VSTR            S4, [SP,#0xD8+var_B4]
3BC026:  VSTR            S0, [SP,#0xD8+var_AC]
3BC02A:  STRD.W          R1, R1, [SP,#0xD8+var_D8]
3BC02E:  STRD.W          R0, R1, [SP,#0xD8+var_D0]
3BC032:  STRD.W          R1, R0, [SP,#0xD8+var_C8]
3BC036:  ADD             R1, SP, #0xD8+var_B4
3BC038:  STRD.W          R0, R0, [SP,#0xD8+var_C0]
3BC03C:  ADD             R0, SP, #0xD8+var_A8
3BC03E:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
3BC042:  VMOV.F32        S0, #1.0
3BC046:  LDR             R1, [SP,#0xD8+var_6C]
3BC048:  VLDR            S2, =0.0
3BC04C:  CMP             R1, #0
3BC04E:  BEQ.W           loc_3BC518
3BC052:  LDR.W           R0, =(dword_94EC8C - 0x3BC05A)
3BC056:  ADD             R0, PC; dword_94EC8C
3BC058:  LDR             R0, [R0]
3BC05A:  CMP             R1, R0
3BC05C:  BEQ.W           loc_3BC518
3BC060:  LDR.W           R0, =(TheCamera_ptr - 0x3BC06C)
3BC064:  VMOV.F32        S6, #6.0
3BC068:  ADD             R0, PC; TheCamera_ptr
3BC06A:  LDR             R2, [R0]; TheCamera
3BC06C:  LDR             R0, [R2,#(dword_951FBC - 0x951FA8)]
3BC06E:  ADD.W           R3, R0, #0x30 ; '0'
3BC072:  CMP             R0, #0
3BC074:  IT EQ
3BC076:  ADDEQ           R3, R2, #4
3BC078:  VLDR            S4, [R3,#8]
3BC07C:  VSUB.F32        S4, S4, S22
3BC080:  VABS.F32        S4, S4
3BC084:  VCMPE.F32       S4, S6
3BC088:  VMRS            APSR_nzcv, FPSCR
3BC08C:  BGE.W           loc_3BC518
3BC090:  VLDR            S24, =0.0
3BC094:  CMP.W           R8, #0
3BC098:  VMOV.F32        S26, S24
3BC09C:  VMOV.F32        S28, S24
3BC0A0:  VMOV.F32        S30, S24
3BC0A4:  BEQ             loc_3BC0DA
3BC0A6:  VMOV.F32        S26, S24
3BC0AA:  LDRB.W          R2, [R8,#0x485]
3BC0AE:  VMOV.F32        S28, S24
3BC0B2:  VMOV.F32        S30, S24
3BC0B6:  LSLS            R2, R2, #0x1F
3BC0B8:  BEQ             loc_3BC0DA
3BC0BA:  LDR.W           R2, [R8,#0x590]
3BC0BE:  VMOV.F32        S26, S24
3BC0C2:  VMOV.F32        S28, S24
3BC0C6:  CMP             R2, #0
3BC0C8:  VMOV.F32        S30, S24
3BC0CC:  ITTT NE
3BC0CE:  VLDRNE          S26, [R2,#0x48]
3BC0D2:  VLDRNE          S28, [R2,#0x4C]
3BC0D6:  VLDRNE          S30, [R2,#0x50]
3BC0DA:  LDRB.W          R2, [R1,#0x3A]
3BC0DE:  VMOV.F32        S21, S24
3BC0E2:  VMOV.F32        S19, S24
3BC0E6:  AND.W           R2, R2, #7
3BC0EA:  SUBS            R2, #2
3BC0EC:  UXTB            R2, R2
3BC0EE:  CMP             R2, #2
3BC0F0:  ITTT LS
3BC0F2:  VLDRLS          S24, [R1,#0x48]
3BC0F6:  VLDRLS          S21, [R1,#0x4C]
3BC0FA:  VLDRLS          S19, [R1,#0x50]
3BC0FE:  CMP             R0, #0
3BC100:  BEQ.W           loc_3BC3D6
3BC104:  VLDR            D16, [R0,#0x10]
3BC108:  LDR             R0, [R0,#0x18]
3BC10A:  STR             R0, [SP,#0xD8+var_A0]
3BC10C:  VSTR            D16, [SP,#0xD8+var_A8]
3BC110:  B               loc_3BC3F6
3BC112:  VSUB.F32        S10, S20, S10
3BC116:  MOVS            R1, #1
3BC118:  VSUB.F32        S8, S20, S8
3BC11C:  ADD             R2, SP, #0xD8+var_98
3BC11E:  VSUB.F32        S2, S18, S2
3BC122:  ADD             R3, SP, #0xD8+var_6C
3BC124:  VSUB.F32        S6, S22, S6
3BC128:  VSUB.F32        S4, S18, S4
3BC12C:  VSUB.F32        S0, S22, S0
3BC130:  VSTR            S10, [SP,#0xD8+var_A8+4]
3BC134:  VSTR            S8, [SP,#0xD8+var_B0]
3BC138:  VSTR            S2, [SP,#0xD8+var_A8]
3BC13C:  VSTR            S6, [SP,#0xD8+var_A0]
3BC140:  VSTR            S4, [SP,#0xD8+var_B4]
3BC144:  VSTR            S0, [SP,#0xD8+var_AC]
3BC148:  STRD.W          R1, R1, [SP,#0xD8+var_D8]
3BC14C:  STRD.W          R0, R1, [SP,#0xD8+var_D0]
3BC150:  STRD.W          R1, R0, [SP,#0xD8+var_C8]
3BC154:  ADD             R1, SP, #0xD8+var_B4
3BC156:  STRD.W          R0, R0, [SP,#0xD8+var_C0]
3BC15A:  ADD             R0, SP, #0xD8+var_A8
3BC15C:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
3BC160:  VMOV.F32        S0, #1.0
3BC164:  LDR             R1, [SP,#0xD8+var_6C]
3BC166:  VLDR            S2, =0.0
3BC16A:  CMP             R1, #0
3BC16C:  BEQ.W           loc_3BC370
3BC170:  LDR.W           R0, =(dword_94EC90 - 0x3BC178)
3BC174:  ADD             R0, PC; dword_94EC90
3BC176:  LDR             R0, [R0]
3BC178:  CMP             R1, R0
3BC17A:  BEQ.W           loc_3BC370
3BC17E:  LDR.W           R0, =(TheCamera_ptr - 0x3BC18A)
3BC182:  VMOV.F32        S6, #6.0
3BC186:  ADD             R0, PC; TheCamera_ptr
3BC188:  LDR             R2, [R0]; TheCamera
3BC18A:  LDR             R0, [R2,#(dword_951FBC - 0x951FA8)]
3BC18C:  ADD.W           R3, R0, #0x30 ; '0'
3BC190:  CMP             R0, #0
3BC192:  IT EQ
3BC194:  ADDEQ           R3, R2, #4
3BC196:  VLDR            S4, [R3,#8]
3BC19A:  VSUB.F32        S4, S4, S22
3BC19E:  VABS.F32        S4, S4
3BC1A2:  VCMPE.F32       S4, S6
3BC1A6:  VMRS            APSR_nzcv, FPSCR
3BC1AA:  BGE.W           loc_3BC370
3BC1AE:  VLDR            S24, =0.0
3BC1B2:  CMP.W           R8, #0
3BC1B6:  VMOV.F32        S26, S24
3BC1BA:  VMOV.F32        S28, S24
3BC1BE:  VMOV.F32        S30, S24
3BC1C2:  BEQ             loc_3BC1F8
3BC1C4:  VMOV.F32        S26, S24
3BC1C8:  LDRB.W          R2, [R8,#0x485]
3BC1CC:  VMOV.F32        S28, S24
3BC1D0:  VMOV.F32        S30, S24
3BC1D4:  LSLS            R2, R2, #0x1F
3BC1D6:  BEQ             loc_3BC1F8
3BC1D8:  LDR.W           R2, [R8,#0x590]
3BC1DC:  VMOV.F32        S26, S24
3BC1E0:  VMOV.F32        S28, S24
3BC1E4:  CMP             R2, #0
3BC1E6:  VMOV.F32        S30, S24
3BC1EA:  ITTT NE
3BC1EC:  VLDRNE          S26, [R2,#0x48]
3BC1F0:  VLDRNE          S28, [R2,#0x4C]
3BC1F4:  VLDRNE          S30, [R2,#0x50]
3BC1F8:  LDRB.W          R2, [R1,#0x3A]
3BC1FC:  VMOV.F32        S21, S24
3BC200:  VMOV.F32        S19, S24
3BC204:  AND.W           R2, R2, #7
3BC208:  SUBS            R2, #2
3BC20A:  UXTB            R2, R2
3BC20C:  CMP             R2, #2
3BC20E:  ITTT LS
3BC210:  VLDRLS          S24, [R1,#0x48]
3BC214:  VLDRLS          S21, [R1,#0x4C]
3BC218:  VLDRLS          S19, [R1,#0x50]
3BC21C:  CBZ             R0, loc_3BC22C
3BC21E:  VLDR            D16, [R0,#0x10]
3BC222:  LDR             R0, [R0,#0x18]
3BC224:  STR             R0, [SP,#0xD8+var_A0]
3BC226:  VSTR            D16, [SP,#0xD8+var_A8]
3BC22A:  B               loc_3BC24E
3BC22C:  LDR.W           R0, =(TheCamera_ptr - 0x3BC238)
3BC230:  MOVS            R1, #0
3BC232:  STR             R1, [SP,#0xD8+var_A0]
3BC234:  ADD             R0, PC; TheCamera_ptr
3BC236:  LDR             R0, [R0]; TheCamera
3BC238:  LDR             R5, [R0,#(dword_951FB8 - 0x951FA8)]
3BC23A:  MOV             R0, R5; x
3BC23C:  BLX             cosf
3BC240:  STR             R0, [SP,#0xD8+var_A8+4]
3BC242:  MOV             R0, R5; x
3BC244:  BLX             sinf
3BC248:  EOR.W           R0, R0, #0x80000000
3BC24C:  STR             R0, [SP,#0xD8+var_A8]
3BC24E:  ADD             R0, SP, #0xD8+var_A8; this
3BC250:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3BC254:  VLDR            S0, [SP,#0xD8+var_A8]
3BC258:  VLDR            S2, [SP,#0xD8+var_A8+4]
3BC25C:  VMUL.F32        S8, S24, S0
3BC260:  VLDR            S4, [SP,#0xD8+var_A0]
3BC264:  VMUL.F32        S6, S21, S2
3BC268:  VMUL.F32        S10, S28, S2
3BC26C:  VMUL.F32        S12, S26, S0
3BC270:  VMUL.F32        S14, S19, S4
3BC274:  VADD.F32        S6, S8, S6
3BC278:  VMUL.F32        S8, S30, S4
3BC27C:  VADD.F32        S10, S12, S10
3BC280:  VADD.F32        S6, S6, S14
3BC284:  VADD.F32        S8, S10, S8
3BC288:  VMUL.F32        S10, S2, S6
3BC28C:  VMUL.F32        S12, S0, S6
3BC290:  VMUL.F32        S2, S2, S8
3BC294:  VMUL.F32        S0, S0, S8
3BC298:  VMUL.F32        S6, S4, S6
3BC29C:  VMUL.F32        S4, S4, S8
3BC2A0:  VSUB.F32        S2, S2, S10
3BC2A4:  VSUB.F32        S0, S0, S12
3BC2A8:  VSUB.F32        S4, S4, S6
3BC2AC:  VMUL.F32        S2, S2, S2
3BC2B0:  VMUL.F32        S0, S0, S0
3BC2B4:  VMUL.F32        S4, S4, S4
3BC2B8:  VADD.F32        S0, S0, S2
3BC2BC:  VLDR            S2, =0.35
3BC2C0:  VADD.F32        S0, S4, S0
3BC2C4:  VSQRT.F32       S0, S0
3BC2C8:  VCMPE.F32       S0, S2
3BC2CC:  VMRS            APSR_nzcv, FPSCR
3BC2D0:  BLE             loc_3BC368
3BC2D2:  VLDR            S2, [SP,#0xD8+var_68]
3BC2D6:  VLDR            S4, [SP,#0xD8+var_68+4]
3BC2DA:  VADD.F32        S2, S18, S2
3BC2DE:  VLDR            S6, [SP,#0xD8+var_60]
3BC2E2:  VADD.F32        S4, S20, S4
3BC2E6:  VLDR            S8, [SP,#0xD8+var_98]
3BC2EA:  VLDR            S10, [SP,#0xD8+var_94]
3BC2EE:  VADD.F32        S6, S6, S22
3BC2F2:  VLDR            S12, [SP,#0xD8+var_90]
3BC2F6:  VSUB.F32        S2, S2, S8
3BC2FA:  VSUB.F32        S4, S4, S10
3BC2FE:  VSUB.F32        S6, S6, S12
3BC302:  VMUL.F32        S2, S2, S2
3BC306:  VMUL.F32        S4, S4, S4
3BC30A:  VMUL.F32        S6, S6, S6
3BC30E:  VADD.F32        S2, S2, S4
3BC312:  VMOV.F32        S4, #-6.0
3BC316:  VADD.F32        S2, S2, S6
3BC31A:  VLDR            S6, =-0.35
3BC31E:  VADD.F32        S0, S0, S6
3BC322:  VLDR            S6, =0.95
3BC326:  VSQRT.F32       S2, S2
3BC32A:  VDIV.F32        S2, S2, S4
3BC32E:  VDIV.F32        S18, S0, S6
3BC332:  VMOV.F32        S0, #1.0
3BC336:  VADD.F32        S0, S2, S0
3BC33A:  VMUL.F32        S0, S18, S0
3BC33E:  VMOV            R0, S0; x
3BC342:  BLX             log10f
3BC346:  VMOV.F32        S0, #1.75
3BC34A:  VMOV.F32        S2, #20.0
3BC34E:  VMOV            S4, R0
3BC352:  VMOV.F32        S8, #30.0
3BC356:  VMUL.F32        S6, S18, S0
3BC35A:  VMUL.F32        S2, S4, S2
3BC35E:  VADD.F32        S0, S6, S0
3BC362:  VADD.F32        S2, S2, S8
3BC366:  B               loc_3BC370
3BC368:  VMOV.F32        S0, #1.0
3BC36C:  VLDR            S2, =0.0
3BC370:  VADD.F32        S4, S2, S16
3BC374:  VLDR            S6, [R9,#0x14]
3BC378:  VCMPE.F32       S6, S4
3BC37C:  VMRS            APSR_nzcv, FPSCR
3BC380:  BGE             loc_3BC394
3BC382:  VLDR            S8, =0.3
3BC386:  LDR             R1, =(unk_94EC88 - 0x3BC392)
3BC388:  VADD.F32        S6, S6, S8
3BC38C:  LDR             R0, =(dword_94EC90 - 0x3BC394)
3BC38E:  ADD             R1, PC; unk_94EC88
3BC390:  ADD             R0, PC; dword_94EC90
3BC392:  B               loc_3BC53A
3BC394:  VCMPE.F32       S6, S4
3BC398:  VMRS            APSR_nzcv, FPSCR
3BC39C:  BLE             loc_3BC3CA
3BC39E:  VLDR            S2, =-0.3
3BC3A2:  LDR             R0, =(unk_94EC88 - 0x3BC3AC)
3BC3A4:  VADD.F32        S2, S6, S2
3BC3A8:  ADD             R0, PC; unk_94EC88
3BC3AA:  VLDR            S4, [R0]
3BC3AE:  VCMPE.F32       S4, #0.0
3BC3B2:  VMRS            APSR_nzcv, FPSCR
3BC3B6:  BLE             loc_3BC3D0
3BC3B8:  VLDR            S6, =1.3
3BC3BC:  LDR             R1, =(unk_94EC88 - 0x3BC3C8)
3BC3BE:  VMIN.F32        D3, D2, D3
3BC3C2:  LDR             R0, =(dword_94EC90 - 0x3BC3CA)
3BC3C4:  ADD             R1, PC; unk_94EC88
3BC3C6:  ADD             R0, PC; dword_94EC90
3BC3C8:  B               loc_3BC592
3BC3CA:  LDR             R0, =(dword_94EC90 - 0x3BC3D0)
3BC3CC:  ADD             R0, PC; dword_94EC90
3BC3CE:  B               loc_3BC54A
3BC3D0:  LDR             R0, =(dword_94EC90 - 0x3BC3D6)
3BC3D2:  ADD             R0, PC; dword_94EC90
3BC3D4:  B               loc_3BC5C4
3BC3D6:  LDR             R0, =(TheCamera_ptr - 0x3BC3E0)
3BC3D8:  MOVS            R1, #0
3BC3DA:  STR             R1, [SP,#0xD8+var_A0]
3BC3DC:  ADD             R0, PC; TheCamera_ptr
3BC3DE:  LDR             R0, [R0]; TheCamera
3BC3E0:  LDR             R5, [R0,#(dword_951FB8 - 0x951FA8)]
3BC3E2:  MOV             R0, R5; x
3BC3E4:  BLX             cosf
3BC3E8:  STR             R0, [SP,#0xD8+var_A8+4]
3BC3EA:  MOV             R0, R5; x
3BC3EC:  BLX             sinf
3BC3F0:  EOR.W           R0, R0, #0x80000000
3BC3F4:  STR             R0, [SP,#0xD8+var_A8]
3BC3F6:  ADD             R0, SP, #0xD8+var_A8; this
3BC3F8:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3BC3FC:  VLDR            S0, [SP,#0xD8+var_A8]
3BC400:  VLDR            S2, [SP,#0xD8+var_A8+4]
3BC404:  VMUL.F32        S8, S24, S0
3BC408:  VLDR            S4, [SP,#0xD8+var_A0]
3BC40C:  VMUL.F32        S6, S21, S2
3BC410:  VMUL.F32        S10, S28, S2
3BC414:  VMUL.F32        S12, S26, S0
3BC418:  VMUL.F32        S14, S19, S4
3BC41C:  VADD.F32        S6, S8, S6
3BC420:  VMUL.F32        S8, S30, S4
3BC424:  VADD.F32        S10, S12, S10
3BC428:  VADD.F32        S6, S6, S14
3BC42C:  VADD.F32        S8, S10, S8
3BC430:  VMUL.F32        S10, S2, S6
3BC434:  VMUL.F32        S12, S0, S6
3BC438:  VMUL.F32        S2, S2, S8
3BC43C:  VMUL.F32        S0, S0, S8
3BC440:  VMUL.F32        S6, S4, S6
3BC444:  VMUL.F32        S4, S4, S8
3BC448:  VSUB.F32        S2, S2, S10
3BC44C:  VSUB.F32        S0, S0, S12
3BC450:  VSUB.F32        S4, S4, S6
3BC454:  VMUL.F32        S2, S2, S2
3BC458:  VMUL.F32        S0, S0, S0
3BC45C:  VMUL.F32        S4, S4, S4
3BC460:  VADD.F32        S0, S0, S2
3BC464:  VLDR            S2, =0.35
3BC468:  VADD.F32        S0, S4, S0
3BC46C:  VSQRT.F32       S0, S0
3BC470:  VCMPE.F32       S0, S2
3BC474:  VMRS            APSR_nzcv, FPSCR
3BC478:  BLE             loc_3BC510
3BC47A:  VLDR            S2, [SP,#0xD8+var_68]
3BC47E:  VLDR            S4, [SP,#0xD8+var_68+4]
3BC482:  VADD.F32        S2, S18, S2
3BC486:  VLDR            S6, [SP,#0xD8+var_60]
3BC48A:  VADD.F32        S4, S20, S4
3BC48E:  VLDR            S8, [SP,#0xD8+var_98]
3BC492:  VLDR            S10, [SP,#0xD8+var_94]
3BC496:  VADD.F32        S6, S6, S22
3BC49A:  VLDR            S12, [SP,#0xD8+var_90]
3BC49E:  VSUB.F32        S2, S2, S8
3BC4A2:  VSUB.F32        S4, S4, S10
3BC4A6:  VSUB.F32        S6, S6, S12
3BC4AA:  VMUL.F32        S2, S2, S2
3BC4AE:  VMUL.F32        S4, S4, S4
3BC4B2:  VMUL.F32        S6, S6, S6
3BC4B6:  VADD.F32        S2, S2, S4
3BC4BA:  VMOV.F32        S4, #-6.0
3BC4BE:  VADD.F32        S2, S2, S6
3BC4C2:  VLDR            S6, =-0.35
3BC4C6:  VADD.F32        S0, S0, S6
3BC4CA:  VLDR            S6, =0.95
3BC4CE:  VSQRT.F32       S2, S2
3BC4D2:  VDIV.F32        S2, S2, S4
3BC4D6:  VDIV.F32        S18, S0, S6
3BC4DA:  VMOV.F32        S0, #1.0
3BC4DE:  VADD.F32        S0, S2, S0
3BC4E2:  VMUL.F32        S0, S18, S0
3BC4E6:  VMOV            R0, S0; x
3BC4EA:  BLX             log10f
3BC4EE:  VMOV.F32        S0, #1.75
3BC4F2:  VMOV.F32        S2, #20.0
3BC4F6:  VMOV            S4, R0
3BC4FA:  VMOV.F32        S8, #30.0
3BC4FE:  VMUL.F32        S6, S18, S0
3BC502:  VMUL.F32        S2, S4, S2
3BC506:  VADD.F32        S0, S6, S0
3BC50A:  VADD.F32        S2, S2, S8
3BC50E:  B               loc_3BC518
3BC510:  VMOV.F32        S0, #1.0
3BC514:  VLDR            S2, =0.0
3BC518:  VADD.F32        S4, S2, S16
3BC51C:  VLDR            S6, [R9,#0x14]
3BC520:  VCMPE.F32       S6, S4
3BC524:  VMRS            APSR_nzcv, FPSCR
3BC528:  BGE             loc_3BC55E
3BC52A:  VLDR            S8, =0.3
3BC52E:  LDR             R1, =(unk_94EC84 - 0x3BC53A)
3BC530:  VADD.F32        S6, S6, S8
3BC534:  LDR             R0, =(dword_94EC8C - 0x3BC53C)
3BC536:  ADD             R1, PC; unk_94EC84
3BC538:  ADD             R0, PC; dword_94EC8C
3BC53A:  VADD.F32        S6, S2, S6
3BC53E:  VMIN.F32        D2, D3, D2
3BC542:  VSTR            S4, [R9,#0x14]
3BC546:  VSTR            S2, [R1]
3BC54A:  LDR             R1, [SP,#0xD8+var_6C]
3BC54C:  STR             R1, [R0]
3BC54E:  VSTR            S0, [R9,#0x1C]
3BC552:  ADD             SP, SP, #0x80
3BC554:  VPOP            {D8-D15}
3BC558:  POP.W           {R8,R9,R11}
3BC55C:  POP             {R4-R7,PC}
3BC55E:  VCMPE.F32       S6, S4
3BC562:  VMRS            APSR_nzcv, FPSCR
3BC566:  BLE             loc_3BC5BA
3BC568:  VLDR            S2, =-0.3
3BC56C:  LDR             R0, =(unk_94EC84 - 0x3BC576)
3BC56E:  VADD.F32        S2, S6, S2
3BC572:  ADD             R0, PC; unk_94EC84
3BC574:  VLDR            S4, [R0]
3BC578:  VCMPE.F32       S4, #0.0
3BC57C:  VMRS            APSR_nzcv, FPSCR
3BC580:  BLE             loc_3BC5C0
3BC582:  VLDR            S6, =1.3
3BC586:  LDR             R1, =(unk_94EC84 - 0x3BC592)
3BC588:  VMIN.F32        D3, D2, D3
3BC58C:  LDR             R0, =(dword_94EC8C - 0x3BC594)
3BC58E:  ADD             R1, PC; unk_94EC84
3BC590:  ADD             R0, PC; dword_94EC8C
3BC592:  VSUB.F32        S8, S16, S6
3BC596:  VSUB.F32        S10, S2, S6
3BC59A:  VSUB.F32        S4, S4, S6
3BC59E:  VCMPE.F32       S10, S8
3BC5A2:  VMRS            APSR_nzcv, FPSCR
3BC5A6:  IT GT
3BC5A8:  VMOVGT.F32      S16, S2
3BC5AC:  VSUB.F32        S2, S16, S6
3BC5B0:  VSTR            S2, [R9,#0x14]
3BC5B4:  VSTR            S4, [R1]
3BC5B8:  B               loc_3BC54A
3BC5BA:  LDR             R0, =(dword_94EC8C - 0x3BC5C0)
3BC5BC:  ADD             R0, PC; dword_94EC8C
3BC5BE:  B               loc_3BC54A
3BC5C0:  LDR             R0, =(dword_94EC8C - 0x3BC5C6)
3BC5C2:  ADD             R0, PC; dword_94EC8C
3BC5C4:  VMAX.F32        D1, D1, D8
3BC5C8:  VSTR            S2, [R9,#0x14]
3BC5CC:  B               loc_3BC54A
