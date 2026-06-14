; =========================================================
; Game Engine Function: _ZN8CWeather7AddRainEv
; Address            : 0x5CD69C - 0x5CDC90
; =========================================================

5CD69C:  PUSH            {R4-R7,LR}
5CD69E:  ADD             R7, SP, #0xC
5CD6A0:  PUSH.W          {R8-R11}
5CD6A4:  SUB             SP, SP, #4
5CD6A6:  VPUSH           {D8-D15}
5CD6AA:  SUB             SP, SP, #0xC0
5CD6AC:  BLX.W           j__ZN10CCullZones9CamNoRainEv; CCullZones::CamNoRain(void)
5CD6B0:  CMP             R0, #0
5CD6B2:  BNE.W           loc_5CDC76
5CD6B6:  BLX.W           j__ZN10CCullZones12PlayerNoRainEv; CCullZones::PlayerNoRain(void)
5CD6BA:  CMP             R0, #0
5CD6BC:  BNE.W           loc_5CDC76
5CD6C0:  LDR.W           R0, =(_ZN8CWeather14UnderWaternessE_ptr - 0x5CD6C8)
5CD6C4:  ADD             R0, PC; _ZN8CWeather14UnderWaternessE_ptr
5CD6C6:  LDR             R0, [R0]; CWeather::UnderWaterness ...
5CD6C8:  VLDR            S0, [R0]
5CD6CC:  VCMPE.F32       S0, #0.0
5CD6D0:  VMRS            APSR_nzcv, FPSCR
5CD6D4:  BGT.W           loc_5CDC76
5CD6D8:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x5CD6E0)
5CD6DC:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
5CD6DE:  LDR             R0, [R0]; CGame::currArea ...
5CD6E0:  LDR             R0, [R0]; CGame::currArea
5CD6E2:  CMP             R0, #0
5CD6E4:  BNE.W           loc_5CDC76
5CD6E8:  MOV.W           R0, #0xFFFFFFFF; int
5CD6EC:  BLX.W           j__Z13FindPlayerPedi; FindPlayerPed(int)
5CD6F0:  CBZ             R0, loc_5CD704
5CD6F2:  MOV.W           R0, #0xFFFFFFFF; int
5CD6F6:  BLX.W           j__Z13FindPlayerPedi; FindPlayerPed(int)
5CD6FA:  LDRB.W          R0, [R0,#0x33]
5CD6FE:  CMP             R0, #0
5CD700:  BNE.W           loc_5CDC76
5CD704:  LDR.W           R0, =(TheCamera_ptr - 0x5CD710)
5CD708:  VLDR            S0, =900.0
5CD70C:  ADD             R0, PC; TheCamera_ptr
5CD70E:  LDR             R0, [R0]; TheCamera
5CD710:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
5CD712:  ADD.W           R2, R1, #0x30 ; '0'
5CD716:  CMP             R1, #0
5CD718:  IT EQ
5CD71A:  ADDEQ           R2, R0, #4
5CD71C:  VLDR            S2, [R2,#8]
5CD720:  VCMPE.F32       S2, S0
5CD724:  VMRS            APSR_nzcv, FPSCR
5CD728:  BGT.W           loc_5CDC76
5CD72C:  LDR.W           R0, =(TheCamera_ptr - 0x5CD734)
5CD730:  ADD             R0, PC; TheCamera_ptr
5CD732:  LDR             R0, [R0]; TheCamera ; this
5CD734:  BLX.W           j__ZN7CCamera24GetLookingLRBFirstPersonEv; CCamera::GetLookingLRBFirstPerson(void)
5CD738:  CMP             R0, #1
5CD73A:  BNE             loc_5CD752
5CD73C:  MOV.W           R0, #0xFFFFFFFF; int
5CD740:  MOVS            R1, #0; bool
5CD742:  BLX.W           j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5CD746:  CBZ             R0, loc_5CD752
5CD748:  BLX.W           j__ZNK8CVehicle10CarHasRoofEv; CVehicle::CarHasRoof(void)
5CD74C:  CMP             R0, #0
5CD74E:  BNE.W           loc_5CDC76
5CD752:  LDR.W           R0, =(_ZN8CWeather4RainE_ptr - 0x5CD75A)
5CD756:  ADD             R0, PC; _ZN8CWeather4RainE_ptr
5CD758:  LDR             R0, [R0]; CWeather::Rain ...
5CD75A:  VLDR            S0, [R0]
5CD75E:  VCMPE.F32       S0, #0.0
5CD762:  VMRS            APSR_nzcv, FPSCR
5CD766:  BLE             loc_5CD782
5CD768:  LDR.W           R0, =(_ZN8CWeather20StreamAfterRainTimerE_ptr - 0x5CD776)
5CD76C:  MOVS            R2, #1
5CD76E:  LDR.W           R1, =(byte_A7D200 - 0x5CD778)
5CD772:  ADD             R0, PC; _ZN8CWeather20StreamAfterRainTimerE_ptr
5CD774:  ADD             R1, PC; byte_A7D200
5CD776:  LDR             R0, [R0]; CWeather::StreamAfterRainTimer ...
5CD778:  STRB            R2, [R1]
5CD77A:  MOV.W           R1, #0x320
5CD77E:  STR             R1, [R0]; CWeather::StreamAfterRainTimer
5CD780:  B               loc_5CD7AA
5CD782:  LDR.W           R0, =(byte_A7D200 - 0x5CD78A)
5CD786:  ADD             R0, PC; byte_A7D200
5CD788:  LDRB            R0, [R0]
5CD78A:  CMP             R0, #1
5CD78C:  BNE             loc_5CD7AA
5CD78E:  LDR.W           R0, =(_ZN8CWeather20StreamAfterRainTimerE_ptr - 0x5CD796)
5CD792:  ADD             R0, PC; _ZN8CWeather20StreamAfterRainTimerE_ptr
5CD794:  LDR             R0, [R0]; CWeather::StreamAfterRainTimer ...
5CD796:  LDR             R0, [R0]; CWeather::StreamAfterRainTimer
5CD798:  CMP             R0, #1
5CD79A:  BLT.W           loc_5CDC84
5CD79E:  LDR.W           R1, =(_ZN8CWeather20StreamAfterRainTimerE_ptr - 0x5CD7A8)
5CD7A2:  SUBS            R0, #1
5CD7A4:  ADD             R1, PC; _ZN8CWeather20StreamAfterRainTimerE_ptr
5CD7A6:  LDR             R1, [R1]; CWeather::StreamAfterRainTimer ...
5CD7A8:  STR             R0, [R1]; CWeather::StreamAfterRainTimer
5CD7AA:  LDR.W           R0, =(_ZN8CWeather4WindE_ptr - 0x5CD7B6)
5CD7AE:  VLDR            S0, =1.01
5CD7B2:  ADD             R0, PC; _ZN8CWeather4WindE_ptr
5CD7B4:  LDR             R0, [R0]; this
5CD7B6:  VLDR            S2, [R0]
5CD7BA:  VCMPE.F32       S2, S0
5CD7BE:  VMRS            APSR_nzcv, FPSCR
5CD7C2:  BLE             loc_5CD7EC
5CD7C4:  BLX.W           j__ZN10CCullZones9CamNoRainEv; CCullZones::CamNoRain(void)
5CD7C8:  CBNZ            R0, loc_5CD7EC
5CD7CA:  LDR.W           R0, =(_ZN8CWeather14UnderWaternessE_ptr - 0x5CD7D2)
5CD7CE:  ADD             R0, PC; _ZN8CWeather14UnderWaternessE_ptr ; this
5CD7D0:  LDR             R4, [R0]; CWeather::UnderWaterness ...
5CD7D2:  BLX.W           j__ZN10CCullZones12PlayerNoRainEv; CCullZones::PlayerNoRain(void)
5CD7D6:  VLDR            S0, [R4]
5CD7DA:  VCMPE.F32       S0, #0.0
5CD7DE:  VMRS            APSR_nzcv, FPSCR
5CD7E2:  BGT             loc_5CD7EC
5CD7E4:  CMP             R0, #0
5CD7E6:  IT EQ
5CD7E8:  BLXEQ.W         j__ZN8CWeather21AddSandStormParticlesEv; CWeather::AddSandStormParticles(void)
5CD7EC:  LDR.W           R0, =(_ZN8CWeather4RainE_ptr - 0x5CD7F8)
5CD7F0:  VLDR            S18, =0.1
5CD7F4:  ADD             R0, PC; _ZN8CWeather4RainE_ptr
5CD7F6:  LDR             R0, [R0]; CWeather::Rain ...
5CD7F8:  VLDR            S0, [R0]
5CD7FC:  VCMPE.F32       S0, S18
5CD800:  VMRS            APSR_nzcv, FPSCR
5CD804:  BGT             loc_5CD81C
5CD806:  LDR.W           R0, =(unk_A7D204 - 0x5CD80E)
5CD80A:  ADD             R0, PC; unk_A7D204
5CD80C:  VLDR            S0, [R0]
5CD810:  VCMP.F32        S0, #0.0
5CD814:  VMRS            APSR_nzcv, FPSCR
5CD818:  BEQ.W           loc_5CDC76
5CD81C:  ADD             R0, SP, #0x120+var_64; this
5CD81E:  MOV.W           R8, #0
5CD822:  MOVS            R1, #0; unsigned __int8
5CD824:  MOVS            R2, #0; unsigned __int8
5CD826:  MOVS            R3, #0; unsigned __int8
5CD828:  STR.W           R8, [SP,#0x120+var_120]; unsigned __int8
5CD82C:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5CD830:  LDR.W           R0, =(_ZN8CWeather4RainE_ptr - 0x5CD840)
5CD834:  VMOV.F32        S2, #5.0
5CD838:  VMOV.F32        S16, #10.0
5CD83C:  ADD             R0, PC; _ZN8CWeather4RainE_ptr
5CD83E:  LDR             R0, [R0]; CWeather::Rain ...
5CD840:  VLDR            S0, [R0]
5CD844:  VMUL.F32        S2, S0, S2
5CD848:  VADD.F32        S4, S0, S0
5CD84C:  VCVT.S32.F32    S6, S2
5CD850:  VCVT.S32.F32    S2, S4
5CD854:  VMOV            R0, S6
5CD858:  CMP             R0, #1
5CD85A:  MOV             R1, R0
5CD85C:  STR             R1, [SP,#0x120+var_EC]
5CD85E:  BLT.W           loc_5CDABE
5CD862:  VMOV            R0, S2
5CD866:  VLDR            S4, =40.0
5CD86A:  VMUL.F32        S0, S0, S16
5CD86E:  ADD             R5, SP, #0x120+var_CC
5CD870:  VMOV.F32        S2, #0.5
5CD874:  VLDR            S22, =4.6566e-10
5CD878:  VMOV.F32        S28, #30.0
5CD87C:  VLDR            S24, =0.0
5CD880:  VMOV.F32        S30, #-15.0
5CD884:  VLDR            S26, =0.00625
5CD888:  VLDR            S17, =0.024531
5CD88C:  MOVS            R4, #0
5CD88E:  VMAX.F32        D0, D0, D2
5CD892:  VMUL.F32        S20, S0, S2
5CD896:  STR             R0, [SP,#0x120+var_FC]
5CD898:  ADDS            R0, #0xE
5CD89A:  STR             R0, [SP,#0x120+var_F4]
5CD89C:  LDR.W           R0, =(TheCamera_ptr - 0x5CD8A8)
5CD8A0:  LDR.W           R9, [SP,#0x120+var_F4]
5CD8A4:  ADD             R0, PC; TheCamera_ptr
5CD8A6:  LDR             R0, [R0]; TheCamera
5CD8A8:  STR             R0, [SP,#0x120+var_100]
5CD8AA:  LDR.W           R0, =(TheCamera_ptr - 0x5CD8B2)
5CD8AE:  ADD             R0, PC; TheCamera_ptr
5CD8B0:  LDR             R0, [R0]; TheCamera
5CD8B2:  STR             R0, [SP,#0x120+var_F0]
5CD8B4:  LDR.W           R0, =(g_fx_ptr - 0x5CD8BC)
5CD8B8:  ADD             R0, PC; g_fx_ptr
5CD8BA:  LDR             R0, [R0]; g_fx
5CD8BC:  STR             R0, [SP,#0x120+var_F8]
5CD8BE:  MOV.W           R0, #0x3E800000
5CD8C2:  MOV.W           R1, #0x3F800000; float
5CD8C6:  STR             R0, [SP,#0x120+var_120]; float
5CD8C8:  MOV             R0, #0x3CA3D70A
5CD8D0:  MOV.W           R2, #0x3F800000; float
5CD8D4:  STRD.W          R0, R8, [SP,#0x120+var_11C]; int
5CD8D8:  MOV             R0, #0x3CF5C28F
5CD8E0:  MOV.W           R3, #0x3F800000; float
5CD8E4:  STR             R0, [SP,#0x120+var_114]; int
5CD8E6:  MOV             R0, R5; this
5CD8E8:  BLX.W           j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
5CD8EC:  STRD.W          R8, R8, [SP,#0x120+var_D8]
5CD8F0:  STR.W           R8, [SP,#0x120+var_D0]
5CD8F4:  BLX.W           rand
5CD8F8:  VMOV            S0, R0
5CD8FC:  VCVT.F32.S32    S0, S0
5CD900:  VMUL.F32        S0, S0, S22
5CD904:  VMUL.F32        S0, S20, S0
5CD908:  VADD.F32        S19, S0, S24
5CD90C:  BLX.W           rand
5CD910:  SXTH            R0, R0
5CD912:  TST.W           R0, #1
5CD916:  STR             R4, [SP,#0x120+var_E8]
5CD918:  BNE             loc_5CD95C
5CD91A:  MOV             R1, #0xFFFFFF80
5CD91E:  UXTAB.W         R0, R1, R0
5CD922:  VMOV            S0, R0
5CD926:  VCVT.F32.S32    S0, S0
5CD92A:  LDR             R0, [SP,#0x120+var_100]
5CD92C:  VLDR            S2, [R0,#0x14C]
5CD930:  VMUL.F32        S0, S0, S26
5CD934:  VADD.F32        S0, S0, S2
5CD938:  B               loc_5CD96E
5CD93A:  ALIGN 4
5CD93C:  DCFS 900.0
5CD940:  DCFS 1.01
5CD944:  DCFS 0.1
5CD948:  DCFS 40.0
5CD94C:  DCFS 4.6566e-10
5CD950:  DCFS 0.0
5CD954:  DCFS 0.00625
5CD958:  DCFS 0.024531
5CD95C:  BLX.W           rand
5CD960:  UXTB            R0, R0
5CD962:  VMOV            S0, R0
5CD966:  VCVT.F32.S32    S0, S0
5CD96A:  VMUL.F32        S0, S0, S17
5CD96E:  VMOV            R8, S0
5CD972:  MOV             R0, R8; x
5CD974:  BLX.W           sinf
5CD978:  VMOV            S0, R0
5CD97C:  LDR             R1, [SP,#0x120+var_F0]
5CD97E:  VMUL.F32        S0, S19, S0
5CD982:  LDR             R0, [R1,#0x14]
5CD984:  ADD.W           R6, R0, #0x30 ; '0'
5CD988:  CMP             R0, #0
5CD98A:  IT EQ
5CD98C:  ADDEQ           R6, R1, #4
5CD98E:  MOV             R0, R8; x
5CD990:  VLDR            S2, [R6]
5CD994:  VADD.F32        S21, S2, S0
5CD998:  BLX.W           cosf
5CD99C:  VMOV            S0, R0
5CD9A0:  VSTR            S21, [SP,#0x120+var_70]
5CD9A4:  VLDR            S2, [R6,#4]
5CD9A8:  MOVS            R0, #0
5CD9AA:  VMUL.F32        S0, S19, S0
5CD9AE:  MOVT            R0, #0x4220
5CD9B2:  MOV.W           R8, #0
5CD9B6:  MOVS            R1, #0
5CD9B8:  STR.W           R8, [SP,#0x120+var_68]
5CD9BC:  ADD             R2, SP, #0x120+var_AC; int
5CD9BE:  ADD             R3, SP, #0x120+var_B0; int
5CD9C0:  MOVT            R1, #0xC220; int
5CD9C4:  VADD.F32        S0, S2, S0
5CD9C8:  VADD.F32        S2, S21, S24
5CD9CC:  VADD.F32        S4, S0, S24
5CD9D0:  VSTR            S0, [SP,#0x120+var_70+4]
5CD9D4:  VSTR            S2, [SP,#0x120+var_E4]
5CD9D8:  STR             R0, [SP,#0x120+var_DC]
5CD9DA:  MOVS            R0, #1
5CD9DC:  VSTR            S4, [SP,#0x120+var_E0]
5CD9E0:  STRD.W          R0, R8, [SP,#0x120+var_120]; int
5CD9E4:  STRD.W          R8, R8, [SP,#0x120+var_118]; int
5CD9E8:  STRD.W          R0, R8, [SP,#0x120+var_110]; int
5CD9EC:  ADD             R0, SP, #0x120+var_E4; CVector *
5CD9EE:  STR.W           R8, [SP,#0x120+var_108]; int
5CD9F2:  BLX.W           j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
5CD9F6:  LDR             R4, [SP,#0x120+var_F8]
5CD9F8:  ADD             R5, SP, #0x120+var_CC
5CD9FA:  ADD.W           R11, SP, #0x120+var_80
5CD9FE:  ADD.W           R10, SP, #0x120+var_D8
5CDA02:  CMP             R0, #1
5CDA04:  BNE             loc_5CDAA8
5CDA06:  VLDR            S0, [SP,#0x120+var_A4]
5CDA0A:  LDR             R0, [SP,#0x120+var_FC]
5CDA0C:  VADD.F32        S0, S0, S18
5CDA10:  CMN.W           R0, #0xE
5CDA14:  VSTR            S0, [SP,#0x120+var_68]
5CDA18:  BLT             loc_5CDAA8
5CDA1A:  MOV.W           R6, #0xFFFFFFFF
5CDA1E:  VLDR            D16, [SP,#0x120+var_70]
5CDA22:  LDR             R0, [SP,#0x120+var_68]
5CDA24:  STR             R0, [SP,#0x120+var_78]
5CDA26:  VSTR            D16, [SP,#0x120+var_80]
5CDA2A:  BLX.W           rand
5CDA2E:  VMOV            S0, R0
5CDA32:  VCVT.F32.S32    S0, S0
5CDA36:  VLDR            S2, [SP,#0x120+var_80]
5CDA3A:  VMUL.F32        S0, S0, S22
5CDA3E:  VMUL.F32        S0, S0, S28
5CDA42:  VADD.F32        S0, S0, S30
5CDA46:  VADD.F32        S0, S2, S0
5CDA4A:  VSTR            S0, [SP,#0x120+var_80]
5CDA4E:  BLX.W           rand
5CDA52:  VMOV            S0, R0
5CDA56:  VCVT.F32.S32    S0, S0
5CDA5A:  VLDR            S2, [SP,#0x120+var_80+4]
5CDA5E:  VMUL.F32        S0, S0, S22
5CDA62:  VMUL.F32        S0, S0, S28
5CDA66:  VADD.F32        S0, S0, S30
5CDA6A:  VADD.F32        S0, S2, S0
5CDA6E:  VSTR            S0, [SP,#0x120+var_80+4]
5CDA72:  BLX.W           rand
5CDA76:  MOVS            R1, #0
5CDA78:  STR             R5, [SP,#0x120+var_120]; float
5CDA7A:  MOVT            R1, #0xBF80
5CDA7E:  LDR             R0, [R4,#0x30]; int
5CDA80:  STR             R1, [SP,#0x120+var_11C]; float
5CDA82:  MOV             R1, #0x3F99999A
5CDA8A:  MOV             R2, R10; int
5CDA8C:  STR             R1, [SP,#0x120+var_118]; float
5CDA8E:  MOV             R1, #0x3F19999A
5CDA96:  MOVS            R3, #0; int
5CDA98:  STRD.W          R1, R8, [SP,#0x120+var_114]; float
5CDA9C:  MOV             R1, R11; int
5CDA9E:  BLX.W           j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
5CDAA2:  ADDS            R6, #1
5CDAA4:  CMP             R6, R9
5CDAA6:  BLT             loc_5CDA1E
5CDAA8:  LDR             R4, [SP,#0x120+var_E8]
5CDAAA:  LDR             R0, [SP,#0x120+var_EC]
5CDAAC:  ADDS            R4, #1
5CDAAE:  CMP             R4, R0
5CDAB0:  BNE.W           loc_5CD8BE
5CDAB4:  LDR             R0, =(_ZN8CWeather4RainE_ptr - 0x5CDABA)
5CDAB6:  ADD             R0, PC; _ZN8CWeather4RainE_ptr
5CDAB8:  LDR             R0, [R0]; CWeather::Rain ...
5CDABA:  VLDR            S0, [R0]
5CDABE:  VLDR            S2, =0.2
5CDAC2:  LDR             R0, =(unk_A7D204 - 0x5CDACC)
5CDAC4:  VMUL.F32        S2, S0, S2
5CDAC8:  ADD             R0, PC; unk_A7D204
5CDACA:  VLDR            S0, [R0]
5CDACE:  VCMPE.F32       S0, S2
5CDAD2:  VMRS            APSR_nzcv, FPSCR
5CDAD6:  BGE             loc_5CDAE8
5CDAD8:  VLDR            S4, =0.0025
5CDADC:  LDR             R0, =(unk_A7D204 - 0x5CDAE6)
5CDADE:  VADD.F32        S0, S0, S4
5CDAE2:  ADD             R0, PC; unk_A7D204
5CDAE4:  VSTR            S0, [R0]
5CDAE8:  VCMPE.F32       S0, S2
5CDAEC:  VMRS            APSR_nzcv, FPSCR
5CDAF0:  BLE             loc_5CDB02
5CDAF2:  VLDR            S2, =-0.0025
5CDAF6:  LDR             R0, =(unk_A7D204 - 0x5CDB00)
5CDAF8:  VADD.F32        S0, S0, S2
5CDAFC:  ADD             R0, PC; unk_A7D204
5CDAFE:  VSTR            S0, [R0]
5CDB02:  VLDR            S2, =0.0
5CDB06:  VMOV.F32        S4, #1.0
5CDB0A:  LDR             R0, =(unk_A7D204 - 0x5CDB1A)
5CDB0C:  MOVS            R5, #0
5CDB0E:  VMAX.F32        D16, D0, D1
5CDB12:  MOV.W           R1, #0x3F800000
5CDB16:  ADD             R0, PC; unk_A7D204
5CDB18:  ADD             R4, SP, #0x120+var_CC
5CDB1A:  MOV.W           R3, #0x3F800000; float
5CDB1E:  VMIN.F32        D0, D16, D2
5CDB22:  VSTR            S0, [R0]
5CDB26:  MOVW            R0, #0xCCCD
5CDB2A:  STRD.W          R1, R5, [SP,#0x120+var_11C]; float
5CDB2E:  MOVW            R1, #0x6666
5CDB32:  MOVT            R0, #0x3E4C
5CDB36:  MOVT            R1, #0x3F66; float
5CDB3A:  STR             R0, [SP,#0x120+var_114]; float
5CDB3C:  MOV             R0, R4; this
5CDB3E:  MOV             R2, R1; float
5CDB40:  VSTR            S0, [SP,#0x120+var_120]
5CDB44:  BLX.W           j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
5CDB48:  LDR             R0, =(TheCamera_ptr - 0x5CDB4E)
5CDB4A:  ADD             R0, PC; TheCamera_ptr
5CDB4C:  LDR             R0, [R0]; TheCamera
5CDB4E:  ADDW            R1, R0, #0x90C
5CDB52:  ADD.W           R3, R0, #0x910
5CDB56:  LDR             R2, [R0,#(dword_951FBC - 0x951FA8)]
5CDB58:  VLDR            S24, [R1]
5CDB5C:  ADD.W           R1, R2, #0x30 ; '0'
5CDB60:  CMP             R2, #0
5CDB62:  VLDR            S20, [R3]
5CDB66:  IT EQ
5CDB68:  ADDEQ           R1, R0, #4
5CDB6A:  VLDR            S26, [R1]
5CDB6E:  VLDR            S22, [R1,#4]
5CDB72:  VLDR            S18, [R1,#8]
5CDB76:  BLX.W           rand
5CDB7A:  MOV             R1, #0x55555556
5CDB82:  SMMUL.W         R1, R0, R1
5CDB86:  ADD.W           R1, R1, R1,LSR#31
5CDB8A:  ADD.W           R1, R1, R1,LSL#1
5CDB8E:  SUBS            R0, R0, R1
5CDB90:  BNE             loc_5CDC76
5CDB92:  BLX.W           rand
5CDB96:  VMOV            S0, R0
5CDB9A:  VLDR            S28, =4.6566e-10
5CDB9E:  VLDR            S30, =40.0
5CDBA2:  VMUL.F32        S2, S24, S16
5CDBA6:  VCVT.F32.S32    S0, S0
5CDBAA:  VMOV.F32        S24, #-20.0
5CDBAE:  VADD.F32        S2, S26, S2
5CDBB2:  VMUL.F32        S0, S0, S28
5CDBB6:  VMUL.F32        S0, S0, S30
5CDBBA:  VADD.F32        S0, S0, S24
5CDBBE:  VADD.F32        S0, S2, S0
5CDBC2:  VSTR            S0, [SP,#0x120+var_70]
5CDBC6:  BLX.W           rand
5CDBCA:  VMOV            S0, R0
5CDBCE:  VMUL.F32        S2, S20, S16
5CDBD2:  VCVT.F32.S32    S0, S0
5CDBD6:  VADD.F32        S2, S22, S2
5CDBDA:  VMUL.F32        S0, S0, S28
5CDBDE:  VMUL.F32        S0, S0, S30
5CDBE2:  VADD.F32        S0, S0, S24
5CDBE6:  VADD.F32        S0, S2, S0
5CDBEA:  VSTR            S0, [SP,#0x120+var_70+4]
5CDBEE:  BLX.W           rand
5CDBF2:  VMOV            S0, R0
5CDBF6:  LDR             R0, =(_ZN8CWeather7WindDirE_ptr - 0x5CDC08)
5CDBF8:  VMOV.F32        S2, #7.0
5CDBFC:  MOVW            R1, #0x999A
5CDC00:  VCVT.F32.S32    S0, S0
5CDC04:  ADD             R0, PC; _ZN8CWeather7WindDirE_ptr
5CDC06:  VMOV.F32        S4, #-2.0
5CDC0A:  MOVW            R2, #0x999A
5CDC0E:  LDR             R0, [R0]; CWeather::WindDir ...
5CDC10:  MOVS            R3, #0
5CDC12:  MOVT            R1, #0x3F19
5CDC16:  MOVT            R2, #0x3F99
5CDC1A:  MOVT            R3, #0xBF80
5CDC1E:  VLDR            S6, [R0,#8]
5CDC22:  VMUL.F32        S0, S0, S28
5CDC26:  VMUL.F32        S0, S0, S2
5CDC2A:  VMOV.F32        S2, #15.0
5CDC2E:  VADD.F32        S0, S0, S4
5CDC32:  VLDR            S4, [R0,#4]
5CDC36:  VMUL.F32        S4, S4, S2
5CDC3A:  VADD.F32        S0, S0, S18
5CDC3E:  VSTR            S0, [SP,#0x120+var_68]
5CDC42:  VLDR            S0, [R0]
5CDC46:  LDR             R0, =(g_fx_ptr - 0x5CDC54)
5CDC48:  VMUL.F32        S0, S0, S2
5CDC4C:  VMUL.F32        S2, S6, S2
5CDC50:  ADD             R0, PC; g_fx_ptr
5CDC52:  LDR             R0, [R0]; g_fx
5CDC54:  LDR             R0, [R0,#(dword_82053C - 0x820520)]; int
5CDC56:  VSTR            S0, [SP,#0x120+var_D8]
5CDC5A:  VSTR            S4, [SP,#0x120+var_D4]
5CDC5E:  VSTR            S2, [SP,#0x120+var_D0]
5CDC62:  STRD.W          R4, R3, [SP,#0x120+var_120]; int
5CDC66:  MOVS            R3, #0; int
5CDC68:  STRD.W          R2, R1, [SP,#0x120+var_118]; float
5CDC6C:  ADD             R1, SP, #0x120+var_70; int
5CDC6E:  ADD             R2, SP, #0x120+var_D8; int
5CDC70:  STR             R5, [SP,#0x120+var_110]; int
5CDC72:  BLX.W           j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
5CDC76:  ADD             SP, SP, #0xC0
5CDC78:  VPOP            {D8-D15}
5CDC7C:  ADD             SP, SP, #4
5CDC7E:  POP.W           {R8-R11}
5CDC82:  POP             {R4-R7,PC}
5CDC84:  LDR             R0, =(_ZN8CWeather20StreamAfterRainTimerE_ptr - 0x5CDC8E)
5CDC86:  MOVS            R2, #0
5CDC88:  LDR             R1, =(byte_A7D200 - 0x5CDC90)
5CDC8A:  ADD             R0, PC; _ZN8CWeather20StreamAfterRainTimerE_ptr
5CDC8C:  ADD             R1, PC; byte_A7D200
5CDC8E:  B               loc_5CD776
