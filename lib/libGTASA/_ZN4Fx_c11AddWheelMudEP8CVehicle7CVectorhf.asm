; =========================================================
; Game Engine Function: _ZN4Fx_c11AddWheelMudEP8CVehicle7CVectorhf
; Address            : 0x36578C - 0x3659E2
; =========================================================

36578C:  PUSH            {R4-R7,LR}
36578E:  ADD             R7, SP, #0xC
365790:  PUSH.W          {R8-R11}
365794:  SUB             SP, SP, #4
365796:  VPUSH           {D8-D15}
36579A:  SUB             SP, SP, #0x48
36579C:  MOV             R6, R1
36579E:  MOVS            R0, #0; int
3657A0:  MOV             R9, R3
3657A2:  MOV             R5, R2
3657A4:  LDR.W           R4, [R6,#0x464]
3657A8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3657AC:  CMP             R4, R0
3657AE:  BEQ             loc_3657C0
3657B0:  MOVS            R0, #1; int
3657B2:  LDR.W           R4, [R6,#0x464]
3657B6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3657BA:  CMP             R4, R0
3657BC:  BNE.W           loc_3659D4
3657C0:  MOV.W           R0, #0xFFFFFFFF; int
3657C4:  MOVS            R1, #0; bool
3657C6:  LDR             R4, [R7,#arg_0]
3657C8:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3657CC:  LDR             R1, =(TheCamera_ptr - 0x3657DA)
3657CE:  VMOV            S0, R9
3657D2:  VMOV            S8, R5
3657D6:  ADD             R1, PC; TheCamera_ptr
3657D8:  LDR             R1, [R1]; TheCamera
3657DA:  LDR             R2, [R1,#(dword_951FBC - 0x951FA8)]
3657DC:  ADD.W           R3, R2, #0x30 ; '0'
3657E0:  CMP             R2, #0
3657E2:  IT EQ
3657E4:  ADDEQ           R3, R1, #4
3657E6:  VLDR            S2, [R3]
3657EA:  VLDR            S4, [R3,#4]
3657EE:  VSUB.F32        S2, S2, S8
3657F2:  VLDR            S6, [R3,#8]
3657F6:  VSUB.F32        S0, S4, S0
3657FA:  VMOV            S4, R4
3657FE:  VSUB.F32        S4, S6, S4
365802:  VMUL.F32        S2, S2, S2
365806:  VMUL.F32        S0, S0, S0
36580A:  VMUL.F32        S4, S4, S4
36580E:  VADD.F32        S0, S2, S0
365812:  VLDR            S2, =625.0
365816:  VADD.F32        S0, S0, S4
36581A:  VCMPE.F32       S0, S2
36581E:  VMRS            APSR_nzcv, FPSCR
365822:  BGT.W           loc_3659D4
365826:  VLDR            S2, =400.0
36582A:  VCMPE.F32       S0, S2
36582E:  VMRS            APSR_nzcv, FPSCR
365832:  BLE             loc_365848
365834:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x36583C)
365836:  LDRH            R1, [R6,#0x26]
365838:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
36583A:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
36583C:  LDR             R0, [R0]; CTimer::m_FrameCounter
36583E:  ADD             R0, R1
365840:  LSLS            R0, R0, #0x1E
365842:  BNE.W           loc_3659D4
365846:  B               loc_36586A
365848:  CBZ             R0, loc_365858
36584A:  VLDR            S2, =64.0
36584E:  VCMPE.F32       S0, S2
365852:  VMRS            APSR_nzcv, FPSCR
365856:  BLE             loc_36586A
365858:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x365860)
36585A:  LDRH            R1, [R6,#0x26]
36585C:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
36585E:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
365860:  LDR             R0, [R0]; CTimer::m_FrameCounter
365862:  ADD             R0, R1
365864:  LSLS            R0, R0, #0x1F
365866:  BNE.W           loc_3659D4
36586A:  MOVW            R0, #0xCCCD
36586E:  MOVS            R2, #0
365870:  MOV.W           R1, #0x3F800000
365874:  MOVT            R0, #0x3D4C
365878:  STRD.W          R1, R2, [SP,#0xA8+var_A8]; float
36587C:  MOVW            R3, #0xC28F
365880:  STRD.W          R2, R0, [SP,#0xA8+var_A0]; float
365884:  MOVW            R2, #0xC28F
365888:  ADD             R0, SP, #0xA8+var_7C; this
36588A:  MOVT            R2, #0x3DF5; float
36588E:  MOVT            R3, #0x3D75; float
365892:  MOV.W           R1, #0x3E800000; float
365896:  VLDR            S16, [R7,#arg_8]
36589A:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
36589E:  LDR             R0, =(g_fx_ptr - 0x3658B4)
3658A0:  VMOV.F32        S22, #-1.5
3658A4:  VMOV.F32        S26, #1.5
3658A8:  VLDR            S18, =4.6566e-10
3658AC:  VMOV.F32        S28, #2.0
3658B0:  ADD             R0, PC; g_fx_ptr
3658B2:  VLDR            S20, =0.03
3658B6:  ADD             R4, SP, #0xA8+var_94
3658B8:  LDR.W           R8, [R0]; g_fx
3658BC:  ADD.W           R10, SP, #0xA8+var_88
3658C0:  VLDR            S24, =0.0
3658C4:  MOV.W           R11, #3
3658C8:  VLDR            S30, =0.4
3658CC:  VLDR            S17, =-0.2
3658D0:  BLX             rand
3658D4:  VMOV            S0, R0
3658D8:  VCVT.F32.S32    S0, S0
3658DC:  VMUL.F32        S0, S0, S18
3658E0:  VMUL.F32        S0, S0, S20
3658E4:  VADD.F32        S0, S0, S20
3658E8:  VSTR            S0, [SP,#0xA8+var_6C]
3658EC:  VLDR            S19, [R6,#0x48]
3658F0:  BLX             rand
3658F4:  VMOV            S0, R0
3658F8:  VMUL.F32        S2, S19, S22
3658FC:  VCVT.F32.S32    S0, S0
365900:  VMUL.F32        S0, S0, S18
365904:  VMUL.F32        S0, S2, S0
365908:  VADD.F32        S0, S0, S24
36590C:  VSTR            S0, [SP,#0xA8+var_88]
365910:  VLDR            S19, [R6,#0x4C]
365914:  BLX             rand
365918:  VMOV            S0, R0
36591C:  VMUL.F32        S2, S19, S22
365920:  VCVT.F32.S32    S0, S0
365924:  VMUL.F32        S0, S0, S18
365928:  VMUL.F32        S0, S2, S0
36592C:  VADD.F32        S0, S0, S24
365930:  VSTR            S0, [SP,#0xA8+var_84]
365934:  BLX             rand
365938:  VMOV            S0, R0
36593C:  LDR             R0, [R7,#arg_0]
36593E:  VCVT.F32.S32    S0, S0
365942:  VMUL.F32        S0, S0, S18
365946:  VMUL.F32        S0, S0, S26
36594A:  VADD.F32        S0, S0, S28
36594E:  VSTR            S0, [SP,#0xA8+var_80]
365952:  STRD.W          R5, R9, [SP,#0xA8+var_94]
365956:  STR             R0, [SP,#0xA8+var_8C]
365958:  BLX             rand
36595C:  VMOV            S0, R0
365960:  VCVT.F32.S32    S0, S0
365964:  VLDR            S2, [SP,#0xA8+var_94]
365968:  VMUL.F32        S0, S0, S18
36596C:  VMUL.F32        S0, S0, S30
365970:  VADD.F32        S0, S0, S17
365974:  VADD.F32        S0, S2, S0
365978:  VSTR            S0, [SP,#0xA8+var_94]
36597C:  BLX             rand
365980:  VMOV            S0, R0
365984:  MOV             R1, #0x3F19999A
36598C:  MOV             R2, R10; int
36598E:  VCVT.F32.S32    S0, S0
365992:  VLDR            S2, [SP,#0xA8+var_90]
365996:  STR             R1, [SP,#0xA8+var_9C]; float
365998:  MOVS            R1, #0
36599A:  STR             R1, [SP,#0xA8+var_98]; int
36599C:  ADD             R1, SP, #0xA8+var_7C
36599E:  VSTR            S16, [SP,#0xA8+var_A0]
3659A2:  MOVS            R3, #0; int
3659A4:  STR             R1, [SP,#0xA8+var_A8]; int
3659A6:  MOVS            R1, #0
3659A8:  LDR.W           R0, [R8,#(dword_82055C - 0x820520)]; int
3659AC:  MOVT            R1, #0xBF80
3659B0:  STR             R1, [SP,#0xA8+var_A4]; float
3659B2:  MOV             R1, R4; int
3659B4:  VMUL.F32        S0, S0, S18
3659B8:  VMUL.F32        S0, S0, S30
3659BC:  VADD.F32        S0, S0, S17
3659C0:  VADD.F32        S0, S2, S0
3659C4:  VSTR            S0, [SP,#0xA8+var_90]
3659C8:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
3659CC:  SUBS.W          R11, R11, #1
3659D0:  BNE.W           loc_3658D0
3659D4:  ADD             SP, SP, #0x48 ; 'H'
3659D6:  VPOP            {D8-D15}
3659DA:  ADD             SP, SP, #4
3659DC:  POP.W           {R8-R11}
3659E0:  POP             {R4-R7,PC}
