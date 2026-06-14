; =========================================================
; Game Engine Function: _ZN4CCam38Process_Cam_TwoPlayer_InCarAndShootingEv
; Address            : 0x3CA778 - 0x3CB308
; =========================================================

3CA778:  PUSH            {R4-R7,LR}
3CA77A:  ADD             R7, SP, #0xC
3CA77C:  PUSH.W          {R8-R11}
3CA780:  SUB             SP, SP, #4
3CA782:  VPUSH           {D8-D15}
3CA786:  SUB             SP, SP, #0xA0
3CA788:  MOV             R6, R0
3CA78A:  LDR.W           R0, [R6,#0x1F4]
3CA78E:  LDRB.W          R0, [R0,#0x3A]
3CA792:  AND.W           R0, R0, #7
3CA796:  CMP             R0, #2
3CA798:  BNE.W           loc_3CB2FA
3CA79C:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x3CA7A4)
3CA7A0:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3CA7A2:  LDR             R0, [R0]; CWorld::Players ...
3CA7A4:  LDR.W           R9, [R0]; CWorld::Players
3CA7A8:  LDR.W           R8, [R9,#0x590]
3CA7AC:  LDR.W           R0, [R8,#0x14]
3CA7B0:  ADD.W           R1, R0, #0x30 ; '0'
3CA7B4:  CMP             R0, #0
3CA7B6:  IT EQ
3CA7B8:  ADDEQ.W         R1, R8, #4
3CA7BC:  CMP             R0, #0
3CA7BE:  VLDR            D16, [R1]
3CA7C2:  LDR             R1, [R1,#8]; int
3CA7C4:  STR             R1, [SP,#0x100+var_78]
3CA7C6:  VSTR            D16, [SP,#0x100+var_80]
3CA7CA:  BEQ             loc_3CA7DE
3CA7CC:  LDRD.W          R2, R1, [R0,#0x10]; x
3CA7D0:  EOR.W           R0, R2, #0x80000000; y
3CA7D4:  BLX             atan2f
3CA7D8:  VMOV            S16, R0
3CA7DC:  B               loc_3CA7E2
3CA7DE:  VLDR            S16, [R8,#0x10]
3CA7E2:  LDR.W           R5, [R8,#0x464]
3CA7E6:  MOVS            R4, #0
3CA7E8:  CMP             R5, R9
3CA7EA:  IT EQ
3CA7EC:  MOVEQ           R4, #(stderr+1)
3CA7EE:  MOV             R0, R4; this
3CA7F0:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3CA7F4:  LDR.W           R2, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x3CA808)
3CA7F8:  MOV             R10, R0
3CA7FA:  LDR.W           R0, =(currentPad_ptr - 0x3CA80A)
3CA7FE:  CMP             R5, R9
3CA800:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x3CA80C)
3CA804:  ADD             R2, PC; _ZN4CHID20currentInstanceIndexE_ptr
3CA806:  ADD             R0, PC; currentPad_ptr
3CA808:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3CA80A:  LDR             R2, [R2]; CHID::currentInstanceIndex ...
3CA80C:  LDR             R0, [R0]; currentPad
3CA80E:  LDR             R1, [R1]; CWorld::Players ...
3CA810:  STR             R4, [R2]; CHID::currentInstanceIndex
3CA812:  STR.W           R10, [R0]
3CA816:  LDR.W           R0, [R8,#0x5A4]
3CA81A:  IT EQ
3CA81C:  ADDEQ.W         R1, R1, #0x194
3CA820:  LDR.W           R11, [R1]
3CA824:  CMP             R0, #9
3CA826:  IT NE
3CA828:  CMPNE           R0, #0
3CA82A:  BNE             loc_3CA892
3CA82C:  LDR.W           R0, [R8,#0x14]
3CA830:  VLDR            S0, [R8,#0x48]
3CA834:  VLDR            S2, [R8,#0x4C]
3CA838:  VLDR            S6, [R0,#0x10]
3CA83C:  VLDR            S8, [R0,#0x14]
3CA840:  VMUL.F32        S0, S0, S6
3CA844:  VLDR            S10, [R0,#0x18]
3CA848:  VMUL.F32        S2, S2, S8
3CA84C:  VLDR            S4, [R8,#0x50]
3CA850:  LDR.W           R0, =(CAR_FOV_START_SPEED_ptr - 0x3CA85C)
3CA854:  VMUL.F32        S4, S4, S10
3CA858:  ADD             R0, PC; CAR_FOV_START_SPEED_ptr
3CA85A:  LDR             R0, [R0]; CAR_FOV_START_SPEED
3CA85C:  VADD.F32        S0, S0, S2
3CA860:  VLDR            S2, [R0]
3CA864:  VADD.F32        S0, S0, S4
3CA868:  VCMPE.F32       S0, S2
3CA86C:  VMRS            APSR_nzcv, FPSCR
3CA870:  BLE             loc_3CA892
3CA872:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3CA87E)
3CA876:  VSUB.F32        S0, S0, S2
3CA87A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3CA87C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3CA87E:  VLDR            S2, [R0]
3CA882:  VMUL.F32        S0, S0, S2
3CA886:  VLDR            S2, [R6,#0x8C]
3CA88A:  VADD.F32        S0, S2, S0
3CA88E:  VSTR            S0, [R6,#0x8C]
3CA892:  VLDR            S18, =70.0
3CA896:  VLDR            S0, [R6,#0x8C]
3CA89A:  VCMPE.F32       S0, S18
3CA89E:  VMRS            APSR_nzcv, FPSCR
3CA8A2:  BLE             loc_3CA8D8
3CA8A4:  LDR.W           R0, =(CAR_FOV_FADE_MULT_ptr - 0x3CA8B0)
3CA8A8:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3CA8B6)
3CA8AC:  ADD             R0, PC; CAR_FOV_FADE_MULT_ptr
3CA8AE:  VLDR            S2, =-70.0
3CA8B2:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3CA8B4:  LDR             R0, [R0]; CAR_FOV_FADE_MULT
3CA8B6:  VADD.F32        S20, S0, S2
3CA8BA:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
3CA8BC:  LDR             R0, [R0]; x
3CA8BE:  LDR             R1, [R1]; y
3CA8C0:  BLX             powf
3CA8C4:  VMOV            S0, R0
3CA8C8:  VLDR            S2, =70.0
3CA8CC:  VMUL.F32        S0, S20, S0
3CA8D0:  VADD.F32        S0, S0, S2
3CA8D4:  VSTR            S0, [R6,#0x8C]
3CA8D8:  VLDR            S2, =100.0
3CA8DC:  VCMPE.F32       S0, S2
3CA8E0:  VMRS            APSR_nzcv, FPSCR
3CA8E4:  BLE             loc_3CA8EC
3CA8E6:  VSTR            S2, [R6,#0x8C]
3CA8EA:  B               loc_3CA8FE
3CA8EC:  VCMPE.F32       S0, S18
3CA8F0:  VMRS            APSR_nzcv, FPSCR
3CA8F4:  VMOV.F32        S2, S18
3CA8F8:  IT LT
3CA8FA:  VSTRLT          S2, [R6,#0x8C]
3CA8FE:  MOVS            R0, #0
3CA900:  ADD             R1, SP, #0x100+var_88
3CA902:  STRD.W          R0, R0, [SP,#0x100+var_88]
3CA906:  MOV             R0, R10
3CA908:  STR.W           R10, [SP,#0x100+var_EC]
3CA90C:  BLX             j__ZN4CPad15GetLeftAnalogueEP9CVector2D; CPad::GetLeftAnalogue(CVector2D *)
3CA910:  VLDR            S0, =80.0
3CA914:  ADDW            R9, R11, #0x5A4
3CA918:  VLDR            S2, [R6,#0x8C]
3CA91C:  VLDR            S8, [SP,#0x100+var_84]
3CA920:  VDIV.F32        S0, S2, S0
3CA924:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3CA92C)
3CA928:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3CA92A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3CA92C:  VLDR            S2, [SP,#0x100+var_88]
3CA930:  VABS.F32        S18, S8
3CA934:  VLDR            S10, =0.000036
3CA938:  VABS.F32        S20, S2
3CA93C:  VLDR            S14, =0.071429
3CA940:  VLDR            S4, [R6,#0xE0]
3CA944:  VMUL.F32        S14, S0, S14
3CA948:  VLDR            S6, [R6,#0xE4]
3CA94C:  VMUL.F32        S12, S20, S10
3CA950:  VMUL.F32        S10, S18, S10
3CA954:  VMUL.F32        S2, S2, S12
3CA958:  VLDR            S12, =0.042857
3CA95C:  VMUL.F32        S8, S8, S10
3CA960:  VMUL.F32        S0, S0, S12
3CA964:  VMUL.F32        S2, S2, S14
3CA968:  VMUL.F32        S0, S8, S0
3CA96C:  VLDR            S8, [R0]
3CA970:  VMUL.F32        S2, S8, S2
3CA974:  VMUL.F32        S0, S8, S0
3CA978:  VADD.F32        S2, S4, S2
3CA97C:  VADD.F32        S0, S6, S0
3CA980:  VSTR            S2, [R6,#0xE0]
3CA984:  VSTR            S0, [R6,#0xE4]
3CA988:  LDRSB.W         R0, [R11,#0x71C]
3CA98C:  RSB.W           R0, R0, R0,LSL#3
3CA990:  LDR.W           R4, [R9,R0,LSL#2]
3CA994:  MOV             R0, R11; this
3CA996:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
3CA99A:  MOV             R1, R0
3CA99C:  MOV             R0, R4
3CA99E:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
3CA9A2:  MOV             R3, R0
3CA9A4:  LDR.W           R2, [R11,#0x14]
3CA9A8:  LDRD.W          R0, R1, [R6,#0xE0]
3CA9AC:  ADD.W           R12, SP, #0x100+var_90
3CA9B0:  STR             R3, [SP,#0x100+var_F0]
3CA9B2:  ADD.W           R4, R2, #0x30 ; '0'
3CA9B6:  VLDR            S0, [R3,#8]
3CA9BA:  CMP             R2, #0
3CA9BC:  IT EQ
3CA9BE:  ADDEQ.W         R4, R11, #4
3CA9C2:  ADD.W           LR, SP, #0x100+var_8C
3CA9C6:  VADD.F32        S0, S0, S0
3CA9CA:  LDRD.W          R3, R5, [R4]
3CA9CE:  LDR             R4, [R4,#8]
3CA9D0:  STRD.W          R5, R4, [SP,#0x100+var_100]; float
3CA9D4:  STRD.W          LR, R12, [SP,#0x100+var_F8]
3CA9D8:  VMOV            R2, S0
3CA9DC:  BLX             j__ZN7CWeapon38FindNearestTargetEntityWithScreenCoorsEfff7CVectorPfS1_; CWeapon::FindNearestTargetEntityWithScreenCoors(float,float,float,CVector,float *,float *)
3CA9E0:  VLDR            S0, =0.1
3CA9E4:  MOV             R10, R0
3CA9E6:  LDRSB.W         R0, [R11,#0x71C]
3CA9EA:  VCMPE.F32       S18, S0
3CA9EE:  VMRS            APSR_nzcv, FPSCR
3CA9F2:  VCMPE.F32       S20, S0
3CA9F6:  RSB.W           R0, R0, R0,LSL#3
3CA9FA:  ADD.W           R1, R9, R0,LSL#2
3CA9FE:  IT GT
3CAA00:  MOVGT.W         R10, #0
3CAA04:  VMRS            APSR_nzcv, FPSCR
3CAA08:  LDR             R1, [R1,#0xC]
3CAA0A:  IT GT
3CAA0C:  MOVGT.W         R10, #0
3CAA10:  CBNZ            R1, loc_3CAA26
3CAA12:  ADD.W           R0, R11, R0,LSL#2
3CAA16:  LDR.W           R0, [R0,#0x5A4]
3CAA1A:  CMP             R0, #0
3CAA1C:  ITTT NE
3CAA1E:  MOVNE           R0, R11
3CAA20:  MOVNE           R1, #0
3CAA22:  BLXNE           j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
3CAA26:  VLDR            S0, =120.0
3CAA2A:  VCMPE.F32       S18, S0
3CAA2E:  VMRS            APSR_nzcv, FPSCR
3CAA32:  ITT LT
3CAA34:  VCMPELT.F32     S20, S0
3CAA38:  VMRSLT          APSR_nzcv, FPSCR
3CAA3C:  BGE             loc_3CAAF2
3CAA3E:  CMP.W           R10, #0
3CAA42:  BEQ             loc_3CAAF2
3CAA44:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3CAA4C)
3CAA48:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3CAA4A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3CAA4C:  VLDR            S22, [R0]
3CAA50:  MOV             R0, #0x3F59999A; x
3CAA58:  VMOV            R1, S22; y
3CAA5C:  BLX             powf
3CAA60:  VMOV.F32        S0, #1.0
3CAA64:  VLDR            S4, [SP,#0x100+var_8C]
3CAA68:  VLDR            S2, [R6,#0xE0]
3CAA6C:  VMOV            S6, R0
3CAA70:  VSUB.F32        S8, S4, S2
3CAA74:  VSUB.F32        S4, S0, S6
3CAA78:  VLDR            S0, =0.01
3CAA7C:  VMUL.F32        S0, S22, S0
3CAA80:  VMUL.F32        S6, S8, S4
3CAA84:  VMOV.F32        S8, S0
3CAA88:  VCMPE.F32       S6, S0
3CAA8C:  VMRS            APSR_nzcv, FPSCR
3CAA90:  BGT             loc_3CAAAC
3CAA92:  VLDR            S8, =-0.01
3CAA96:  VMUL.F32        S10, S22, S8
3CAA9A:  VMOV.F32        S8, S6
3CAA9E:  VCMPE.F32       S6, S10
3CAAA2:  VMRS            APSR_nzcv, FPSCR
3CAAA6:  IT LT
3CAAA8:  VMOVLT.F32      S8, S10
3CAAAC:  VADD.F32        S2, S8, S2
3CAAB0:  VLDR            S6, [R6,#0xE4]
3CAAB4:  VSTR            S2, [R6,#0xE0]
3CAAB8:  VLDR            S8, [SP,#0x100+var_90]
3CAABC:  VSUB.F32        S8, S8, S6
3CAAC0:  VMUL.F32        S4, S8, S4
3CAAC4:  VCMPE.F32       S4, S0
3CAAC8:  VMRS            APSR_nzcv, FPSCR
3CAACC:  BGT             loc_3CAAE8
3CAACE:  VLDR            S0, =-0.01
3CAAD2:  VMUL.F32        S8, S22, S0
3CAAD6:  VMOV.F32        S0, S4
3CAADA:  VCMPE.F32       S4, S8
3CAADE:  VMRS            APSR_nzcv, FPSCR
3CAAE2:  IT LT
3CAAE4:  VMOVLT.F32      S0, S8
3CAAE8:  VADD.F32        S0, S0, S6
3CAAEC:  VSTR            S0, [R6,#0xE4]
3CAAF0:  B               loc_3CAAF6
3CAAF2:  VLDR            S2, [R6,#0xE0]
3CAAF6:  VLDR            S0, =0.9
3CAAFA:  VCMPE.F32       S2, S0
3CAAFE:  VMRS            APSR_nzcv, FPSCR
3CAB02:  BLE             loc_3CAB0A
3CAB04:  VLDR            S4, =-0.9
3CAB08:  B               loc_3CAB1C
3CAB0A:  VLDR            S0, =-0.9
3CAB0E:  VCMPE.F32       S2, S0
3CAB12:  VMRS            APSR_nzcv, FPSCR
3CAB16:  BGE             loc_3CAB26
3CAB18:  VLDR            S4, =0.9
3CAB1C:  VADD.F32        S22, S2, S4
3CAB20:  VSTR            S0, [R6,#0xE0]
3CAB24:  B               loc_3CAB2E
3CAB26:  VLDR            S22, =0.0
3CAB2A:  VMOV.F32        S0, S2
3CAB2E:  VLDR            S2, =0.9
3CAB32:  VLDR            S4, [R6,#0xE4]
3CAB36:  VCMPE.F32       S4, S2
3CAB3A:  VMRS            APSR_nzcv, FPSCR
3CAB3E:  BLE             loc_3CAB46
3CAB40:  VLDR            S6, =-0.9
3CAB44:  B               loc_3CAB58
3CAB46:  VLDR            S2, =-0.9
3CAB4A:  VCMPE.F32       S4, S2
3CAB4E:  VMRS            APSR_nzcv, FPSCR
3CAB52:  BGE             loc_3CAB86
3CAB54:  VLDR            S6, =0.9
3CAB58:  VMOV.F32        S8, #-0.5
3CAB5C:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3CAB68)
3CAB60:  VADD.F32        S4, S4, S6
3CAB64:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3CAB66:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3CAB68:  VLDR            S6, [R0]
3CAB6C:  VMUL.F32        S4, S4, S8
3CAB70:  VMUL.F32        S4, S4, S6
3CAB74:  VLDR            S6, [R6,#0x84]
3CAB78:  VSTR            S2, [R6,#0xE4]
3CAB7C:  VADD.F32        S4, S6, S4
3CAB80:  VSTR            S4, [R6,#0x84]
3CAB84:  B               loc_3CAB8A
3CAB86:  VMOV.F32        S2, S4
3CAB8A:  VMOV.F32        S24, #1.0
3CAB8E:  VCMPE.F32       S20, S24
3CAB92:  VMRS            APSR_nzcv, FPSCR
3CAB96:  ITT LT
3CAB98:  VCMPELT.F32     S18, S24
3CAB9C:  VMRSLT          APSR_nzcv, FPSCR
3CABA0:  BGE             loc_3CAC70
3CABA2:  CMP.W           R10, #0
3CABA6:  BNE             loc_3CAC70
3CABA8:  VLDR            S4, =0.4
3CABAC:  VMUL.F32        S6, S0, S0
3CABB0:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3CABBC)
3CABB4:  VADD.F32        S4, S2, S4
3CABB8:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3CABBA:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3CABBC:  VLDR            S10, [R0]
3CABC0:  VMUL.F32        S8, S4, S4
3CABC4:  VADD.F32        S6, S6, S8
3CABC8:  VLDR            S8, =0.002
3CABCC:  VMUL.F32        S8, S10, S8
3CABD0:  VSQRT.F32       S6, S6
3CABD4:  VCMPE.F32       S6, S8
3CABD8:  VMRS            APSR_nzcv, FPSCR
3CABDC:  BGE             loc_3CAC50
3CABDE:  MOVS            R0, #0
3CABE0:  VLDR            S0, =-0.4
3CABE4:  STR.W           R0, [R6,#0xE0]
3CABE8:  B               loc_3CAC6C
3CABEA:  ALIGN 4
3CABEC:  DCFS 70.0
3CABF0:  DCFS -70.0
3CABF4:  DCFS 100.0
3CABF8:  DCFS 80.0
3CABFC:  DCFS 0.000036
3CAC00:  DCFS 0.071429
3CAC04:  DCFS 0.042857
3CAC08:  DCFS 0.1
3CAC0C:  DCFS 120.0
3CAC10:  DCFS 0.01
3CAC14:  DCFS -0.01
3CAC18:  DCFS 0.9
3CAC1C:  DCFS -0.9
3CAC20:  DCFS 0.0
3CAC24:  DCFS 0.4
3CAC28:  DCFS 0.002
3CAC2C:  DCFS -0.4
3CAC30:  DCFS -1.5708
3CAC34:  DCFS 0.3
3CAC38:  DCFS -0.34907
3CAC3C:  ALIGN 0x10
3CAC40:  DCFD 0.002
3CAC48:  DCFS 0.0001
3CAC4C:  DCFS -1.0472
3CAC50:  VMUL.F32        S4, S4, S8
3CAC54:  VMUL.F32        S10, S0, S8
3CAC58:  VDIV.F32        S4, S4, S6
3CAC5C:  VDIV.F32        S8, S10, S6
3CAC60:  VSUB.F32        S6, S0, S8
3CAC64:  VSUB.F32        S0, S2, S4
3CAC68:  VSTR            S6, [R6,#0xE0]
3CAC6C:  VSTR            S0, [R6,#0xE4]
3CAC70:  MOV             R0, R8; this
3CAC72:  VLDR            S26, =-1.5708
3CAC76:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3CAC7A:  VLDR            S18, [R0,#0x14]
3CAC7E:  MOV             R0, R8; this
3CAC80:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
3CAC84:  VLDR            S0, [R0,#4]
3CAC88:  VMOV.F32        S20, #0.5
3CAC8C:  MOV             R0, R8; this
3CAC8E:  VABS.F32        S0, S0
3CAC92:  VADD.F32        S0, S0, S0
3CAC96:  VADD.F32        S28, S0, S20
3CAC9A:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
3CAC9E:  CMP             R0, #3
3CACA0:  BNE             loc_3CACAE
3CACA2:  LDRB.W          R0, [R8,#0x3A]
3CACA6:  AND.W           R0, R0, #0xF8
3CACAA:  CMP             R0, #0x40 ; '@'
3CACAC:  BNE             loc_3CAD02
3CACAE:  LDR.W           R0, =(CARCAM_SET_ptr - 0x3CACB6)
3CACB2:  ADD             R0, PC; CARCAM_SET_ptr
3CACB4:  LDR             R0, [R0]; CARCAM_SET
3CACB6:  VLDR            S0, [R0]
3CACBA:  VLDR            S2, [R0,#8]
3CACBE:  ADD             R0, SP, #0x100+var_80
3CACC0:  VMUL.F32        S0, S18, S0
3CACC4:  ADD.W           R5, R0, #8
3CACC8:  VSUB.F32        S0, S0, S2
3CACCC:  VCMPE.F32       S0, #0.0
3CACD0:  VMRS            APSR_nzcv, FPSCR
3CACD4:  BLE             loc_3CACFC
3CACD6:  VLDR            S2, =0.3
3CACDA:  VADD.F32        S28, S28, S0
3CACDE:  VLDR            S4, [SP,#0x100+var_78]
3CACE2:  VMUL.F32        S2, S0, S2
3CACE6:  VADD.F32        S0, S0, S4
3CACEA:  VLDR            S4, =-0.34907
3CACEE:  VDIV.F32        S2, S2, S28
3CACF2:  VADD.F32        S21, S2, S4
3CACF6:  VSTR            S0, [SP,#0x100+var_78]
3CACFA:  B               loc_3CAD64
3CACFC:  VLDR            S21, =-0.34907
3CAD00:  B               loc_3CAD64
3CAD02:  LDR.W           R0, =(fTestShiftHeliCamTarget_ptr - 0x3CAD0E)
3CAD06:  LDR.W           R1, [R8,#0x14]
3CAD0A:  ADD             R0, PC; fTestShiftHeliCamTarget_ptr
3CAD0C:  VLDR            S8, [SP,#0x100+var_80+4]
3CAD10:  VLDR            S10, [SP,#0x100+var_78]
3CAD14:  LDR             R0, [R0]; fTestShiftHeliCamTarget
3CAD16:  VLDR            S0, [R1,#0x20]
3CAD1A:  VLDR            S2, [R1,#0x24]
3CAD1E:  VLDR            S6, [R0]
3CAD22:  ADD             R0, SP, #0x100+var_80
3CAD24:  VLDR            S4, [R1,#0x28]
3CAD28:  ADD.W           R5, R0, #8
3CAD2C:  VMUL.F32        S0, S6, S0
3CAD30:  VLDR            S21, =-0.34907
3CAD34:  VMUL.F32        S2, S6, S2
3CAD38:  VMUL.F32        S4, S6, S4
3CAD3C:  VLDR            S6, [SP,#0x100+var_80]
3CAD40:  VMUL.F32        S0, S18, S0
3CAD44:  VMUL.F32        S2, S18, S2
3CAD48:  VMUL.F32        S4, S18, S4
3CAD4C:  VADD.F32        S0, S0, S6
3CAD50:  VADD.F32        S2, S2, S8
3CAD54:  VADD.F32        S4, S4, S10
3CAD58:  VSTR            S0, [SP,#0x100+var_80]
3CAD5C:  VSTR            S2, [SP,#0x100+var_80+4]
3CAD60:  VSTR            S4, [SP,#0x100+var_78]
3CAD64:  VMOV.F32        S18, #2.0
3CAD68:  VLDR            S0, =0.9
3CAD6C:  VLDR            S2, [R6,#0x178]
3CAD70:  VMUL.F32        S23, S28, S0
3CAD74:  VLDR            S0, [R6,#0x174]
3CAD78:  VADD.F32        S17, S28, S18
3CAD7C:  VSTR            S23, [R6,#0xA4]
3CAD80:  VSTR            S17, [R6,#0xA8]
3CAD84:  VLDR            S28, [SP,#0x100+var_80]
3CAD88:  VLDR            S30, [SP,#0x100+var_80+4]
3CAD8C:  VSUB.F32        S27, S0, S28
3CAD90:  VSUB.F32        S29, S2, S30
3CAD94:  VSUB.F32        S0, S28, S0
3CAD98:  VSUB.F32        S2, S30, S2
3CAD9C:  VMUL.F32        S6, S27, S27
3CADA0:  VMUL.F32        S4, S29, S29
3CADA4:  VMOV            R0, S0
3CADA8:  VMOV            R1, S2; x
3CADAC:  VADD.F32        S4, S6, S4
3CADB0:  VSQRT.F32       S31, S4
3CADB4:  EOR.W           R0, R0, #0x80000000; y
3CADB8:  VSTR            S31, [R6,#0x4C]
3CADBC:  BLX             atan2f
3CADC0:  VCVT.F64.F32    D16, S31
3CADC4:  VLDR            D17, =0.002
3CADC8:  VMOV            S0, R0
3CADCC:  VLDR            S2, =0.002
3CADD0:  VCMPE.F64       D16, D17
3CADD4:  VMRS            APSR_nzcv, FPSCR
3CADD8:  VADD.F32        S0, S0, S26
3CADDC:  IT LT
3CADDE:  VMOVLT.F32      S31, S2
3CADE2:  VSTR            S0, [R6,#0x94]
3CADE6:  VMOV.F32        S0, S17
3CADEA:  VCMPE.F32       S31, S17
3CADEE:  VMRS            APSR_nzcv, FPSCR
3CADF2:  BGT             loc_3CAE02
3CADF4:  VMOV.F32        S0, S23
3CADF8:  VCMPE.F32       S31, S23
3CADFC:  VMRS            APSR_nzcv, FPSCR
3CAE00:  BGE             loc_3CAE1E
3CAE02:  VDIV.F32        S0, S0, S31
3CAE06:  VMUL.F32        S2, S29, S0
3CAE0A:  VMUL.F32        S0, S27, S0
3CAE0E:  VADD.F32        S2, S30, S2
3CAE12:  VADD.F32        S0, S28, S0
3CAE16:  VSTR            S0, [R6,#0x174]
3CAE1A:  VSTR            S2, [R6,#0x178]
3CAE1E:  VLDR            S2, [R8,#0x48]
3CAE22:  ADD.W           R4, R6, #0x174
3CAE26:  VLDR            S4, [R8,#0x4C]
3CAE2A:  VMUL.F32        S2, S2, S2
3CAE2E:  VLDR            S0, [R8,#0x50]
3CAE32:  VMUL.F32        S4, S4, S4
3CAE36:  VMUL.F32        S6, S0, S0
3CAE3A:  VADD.F32        S2, S2, S4
3CAE3E:  VLDR            S4, =0.0001
3CAE42:  VADD.F32        S23, S2, S6
3CAE46:  VCMPE.F32       S23, S4
3CAE4A:  VMRS            APSR_nzcv, FPSCR
3CAE4E:  BLE             loc_3CAEC8
3CAE50:  VSQRT.F32       S2, S2
3CAE54:  VMOV            R0, S0; y
3CAE58:  VMOV            R1, S2; x
3CAE5C:  BLX             atan2f
3CAE60:  VSQRT.F32       S0, S23
3CAE64:  LDR.W           R1, [R8,#0x5A4]
3CAE68:  CMP             R1, #3
3CAE6A:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3CAE72)
3CAE6E:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3CAE70:  VLDR            S4, =-0.01
3CAE74:  VMOV.F32        S6, #3.0
3CAE78:  VMOV.F32        S2, #5.0
3CAE7C:  VADD.F32        S0, S0, S4
3CAE80:  VMOV            S4, R0
3CAE84:  LDR             R0, [R1]; CTimer::ms_fTimeStep ...
3CAE86:  IT EQ
3CAE88:  VMOVEQ.F32      S2, S6
3CAE8C:  LDR             R1, [R0]; y
3CAE8E:  MOVW            R0, #0xC28F
3CAE92:  VMUL.F32        S0, S0, S2
3CAE96:  MOVT            R0, #0x3F75; x
3CAE9A:  VMIN.F32        D0, D0, D12
3CAE9E:  VMUL.F32        S23, S4, S0
3CAEA2:  BLX             powf
3CAEA6:  VMOV            S0, R0
3CAEAA:  VLDR            S6, [R6,#0x84]
3CAEAE:  VADD.F32        S4, S21, S23
3CAEB2:  VSUB.F32        S2, S24, S0
3CAEB6:  VMUL.F32        S0, S0, S6
3CAEBA:  VMUL.F32        S2, S2, S4
3CAEBE:  VADD.F32        S0, S0, S2
3CAEC2:  VSTR            S0, [R6,#0x84]
3CAEC6:  B               loc_3CAECC
3CAEC8:  VLDR            S0, [R6,#0x84]
3CAECC:  VADD.F32        S16, S16, S26
3CAED0:  VLDR            S2, =-1.0472
3CAED4:  LDR.W           R2, [R8,#0x5A4]
3CAED8:  ADD.W           R0, R6, #0x84
3CAEDC:  ADR.W           R1, dword_3CB348
3CAEE0:  VCMPE.F32       S0, S2
3CAEE4:  CMP             R2, #3
3CAEE6:  IT EQ
3CAEE8:  ADDEQ           R1, #4
3CAEEA:  VMRS            APSR_nzcv, FPSCR
3CAEEE:  BLT             loc_3CAEFE
3CAEF0:  VLDR            S2, [R1]
3CAEF4:  VCMPE.F32       S0, S2
3CAEF8:  VMRS            APSR_nzcv, FPSCR
3CAEFC:  BLE             loc_3CAF06
3CAEFE:  VMOV.F32        S0, S2
3CAF02:  VSTR            S2, [R0]
3CAF06:  VMOV            R0, S0; x
3CAF0A:  BLX             sinf
3CAF0E:  VMOV            R2, S16; float
3CAF12:  VLDR            S16, [R5]
3CAF16:  VMOV            S0, R0
3CAF1A:  ADD             R1, SP, #0x100+var_80; CVector *
3CAF1C:  MOV             R0, R6; this
3CAF1E:  VMUL.F32        S0, S17, S0
3CAF22:  VSUB.F32        S0, S16, S0
3CAF26:  VSTR            S0, [R6,#0x17C]
3CAF2A:  BLX             j__ZN4CCam18RotCamIfInFrontCarERK7CVectorf; CCam::RotCamIfInFrontCar(CVector const&,float)
3CAF2E:  VLDR            D16, [SP,#0x100+var_80]
3CAF32:  ADD.W           R2, R6, #0x120; CVector *
3CAF36:  LDR             R0, [SP,#0x100+var_78]
3CAF38:  MOV             R3, R4; CVector *
3CAF3A:  LDR.W           R1, =(TheCamera_ptr - 0x3CAF4A)
3CAF3E:  STR.W           R0, [R6,#0x128]
3CAF42:  VSTR            D16, [R6,#0x120]
3CAF46:  ADD             R1, PC; TheCamera_ptr
3CAF48:  VLDR            D16, [R4]
3CAF4C:  LDR             R0, [R4,#8]
3CAF4E:  STR             R0, [SP,#0x100+var_98]
3CAF50:  VSTR            D16, [SP,#0x100+var_A0]
3CAF54:  LDR             R0, [R1]; TheCamera ; this
3CAF56:  ADD             R1, SP, #0x100+var_A0; CVector *
3CAF58:  VLDR            S0, [R6,#0x8C]
3CAF5C:  VSTR            S0, [SP,#0x100+var_100]
3CAF60:  BLX             j__ZN7CCamera16AvoidTheGeometryERK7CVectorS2_RS0_f; CCamera::AvoidTheGeometry(CVector const&,CVector const&,CVector&,float)
3CAF64:  VMOV            R4, S22
3CAF68:  VLDR            S0, [R6,#0x174]
3CAF6C:  VLDR            S2, [R6,#0x178]
3CAF70:  VLDR            S22, [R6,#0x17C]
3CAF74:  VSUB.F32        S26, S0, S28
3CAF78:  VSUB.F32        S24, S2, S30
3CAF7C:  MOV             R0, R4; x
3CAF7E:  BLX             cosf
3CAF82:  MOV             R5, R0
3CAF84:  MOV             R0, R4; x
3CAF86:  BLX             sinf
3CAF8A:  VMOV            S0, R0
3CAF8E:  ADD.W           R4, R6, #0x168
3CAF92:  VMOV            S2, R5
3CAF96:  MOVS            R0, #0
3CAF98:  VMUL.F32        S4, S24, S0
3CAF9C:  STRB            R0, [R6,#0xA]
3CAF9E:  VMUL.F32        S6, S26, S2
3CAFA2:  MOV.W           R1, #0x3F800000
3CAFA6:  VMUL.F32        S0, S26, S0
3CAFAA:  VMUL.F32        S2, S24, S2
3CAFAE:  VADD.F32        S4, S6, S4
3CAFB2:  VSUB.F32        S0, S2, S0
3CAFB6:  VADD.F32        S2, S28, S4
3CAFBA:  VSUB.F32        S4, S16, S22
3CAFBE:  VADD.F32        S0, S30, S0
3CAFC2:  VSUB.F32        S6, S28, S2
3CAFC6:  VSUB.F32        S8, S30, S0
3CAFCA:  VSTR            S6, [R6,#0x168]
3CAFCE:  VSTR            S8, [R6,#0x16C]
3CAFD2:  VSTR            S4, [R6,#0x170]
3CAFD6:  VSTR            S2, [R6,#0x174]
3CAFDA:  VSTR            S0, [R6,#0x178]
3CAFDE:  STRD.W          R0, R0, [R6,#0x18C]
3CAFE2:  MOV             R0, R4; this
3CAFE4:  STR.W           R1, [R6,#0x194]
3CAFE8:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CAFEC:  VLDR            S0, [R6,#0x168]
3CAFF0:  ADD.W           R9, R6, #0x18C
3CAFF4:  VCMP.F32        S0, #0.0
3CAFF8:  VMRS            APSR_nzcv, FPSCR
3CAFFC:  BNE             loc_3CB018
3CAFFE:  VLDR            S0, [R6,#0x16C]
3CB002:  VCMP.F32        S0, #0.0
3CB006:  VMRS            APSR_nzcv, FPSCR
3CB00A:  ITTT EQ
3CB00C:  MOVWEQ          R0, #0xB717
3CB010:  MOVTEQ          R0, #0x38D1
3CB014:  STRDEQ.W        R0, R0, [R6,#0x168]
3CB018:  ADD             R0, SP, #0x100+var_70; CVector *
3CB01A:  MOV             R1, R4; CVector *
3CB01C:  MOV             R2, R9
3CB01E:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3CB022:  ADD             R5, SP, #0x100+var_E8
3CB024:  LDR             R0, [SP,#0x100+var_68]
3CB026:  VLDR            D16, [SP,#0x100+var_70]
3CB02A:  STR             R0, [SP,#0x100+var_E0]
3CB02C:  MOV             R0, R5; this
3CB02E:  VSTR            D16, [SP,#0x100+var_E8]
3CB032:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CB036:  ADD             R0, SP, #0x100+var_70; CVector *
3CB038:  MOV             R1, R5; CVector *
3CB03A:  MOV             R2, R4
3CB03C:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3CB040:  VLDR            D16, [SP,#0x100+var_70]
3CB044:  MOV             R1, R11; CPed *
3CB046:  LDR             R0, [SP,#0x100+var_68]
3CB048:  STR.W           R0, [R9,#8]
3CB04C:  MOV             R0, R8; this
3CB04E:  VSTR            D16, [R9]
3CB052:  BLX             j__ZNK8CVehicle13CanPedLeanOutEP4CPed; CVehicle::CanPedLeanOut(CPed *)
3CB056:  CBNZ            R0, loc_3CB06E
3CB058:  LDRSB.W         R0, [R11,#0x71C]
3CB05C:  MOV             R1, R11; CPed *
3CB05E:  RSB.W           R0, R0, R0,LSL#3
3CB062:  ADD.W           R0, R11, R0,LSL#2
3CB066:  ADDW            R0, R0, #0x5A4; this
3CB06A:  BLX             j__ZN7CWeapon6UpdateEP4CPed; CWeapon::Update(CPed *)
3CB06E:  LDR.W           R0, [R8,#0x5A4]
3CB072:  MOVS            R1, #0
3CB074:  MOVS            R5, #0
3CB076:  SUBS            R0, #3
3CB078:  CMP             R0, #2
3CB07A:  IT CC
3CB07C:  MOVCC           R1, #1; bool
3CB07E:  LDR             R0, [SP,#0x100+var_EC]; this
3CB080:  MOV             R2, R1; bool
3CB082:  BLX             j__ZN4CPad14GetCarGunFiredEbb; CPad::GetCarGunFired(bool,bool)
3CB086:  CMP             R0, #0
3CB088:  BEQ.W           loc_3CB2E4
3CB08C:  MOV             R0, R8; this
3CB08E:  MOV             R1, R11; CPed *
3CB090:  BLX             j__ZNK8CVehicle13CanPedLeanOutEP4CPed; CVehicle::CanPedLeanOut(CPed *)
3CB094:  CMP             R0, #0
3CB096:  BNE.W           loc_3CB2E4
3CB09A:  LDRSB.W         R0, [R11,#0x71C]
3CB09E:  RSB.W           R0, R0, R0,LSL#3
3CB0A2:  ADD.W           R0, R11, R0,LSL#2
3CB0A6:  ADDW            R0, R0, #0x5A4; this
3CB0AA:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
3CB0AE:  CMP             R0, #0
3CB0B0:  BNE.W           loc_3CB2E4
3CB0B4:  LDRSB.W         R0, [R11,#0x71C]
3CB0B8:  RSB.W           R0, R0, R0,LSL#3
3CB0BC:  ADD.W           R0, R11, R0,LSL#2
3CB0C0:  LDR.W           R0, [R0,#0x5A8]
3CB0C4:  CMP             R0, #0
3CB0C6:  BNE.W           loc_3CB2E4
3CB0CA:  CMP.W           R10, #0
3CB0CE:  BEQ             loc_3CB0F2
3CB0D0:  LDR.W           R0, [R10,#dword_14]
3CB0D4:  VLDR            S0, [R6,#0x174]
3CB0D8:  ADD.W           R1, R0, #0x30 ; '0'
3CB0DC:  CMP             R0, #0
3CB0DE:  VLDR            S2, [R6,#0x178]
3CB0E2:  IT EQ
3CB0E4:  ADDEQ.W         R1, R10, #4
3CB0E8:  VLDR            S6, [R1]
3CB0EC:  VLDR            S4, [R1,#4]
3CB0F0:  B               loc_3CB198
3CB0F2:  ADD             R0, SP, #0x100+var_E8; CVector *
3CB0F4:  MOV             R1, R4; CVector *
3CB0F6:  MOV             R2, R9
3CB0F8:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3CB0FC:  VLDR            S0, =0.017453
3CB100:  VLDR            S2, [R6,#0x8C]
3CB104:  VLDR            S16, [R6,#0xE0]
3CB108:  VMUL.F32        S0, S2, S0
3CB10C:  VLDR            S22, [SP,#0x100+var_E8+4]
3CB110:  VMUL.F32        S0, S0, S20
3CB114:  VLDR            S20, [SP,#0x100+var_E8]
3CB118:  VMOV            R0, S0; x
3CB11C:  BLX             tanf
3CB120:  LDR             R1, =(_ZN5CDraw15ms_fAspectRatioE_ptr - 0x3CB132)
3CB122:  VMOV            S8, R0
3CB126:  VLDR            S2, [R6,#0xE4]
3CB12A:  VMUL.F32        S12, S16, S20
3CB12E:  ADD             R1, PC; _ZN5CDraw15ms_fAspectRatioE_ptr
3CB130:  VLDR            S4, [R6,#0x168]
3CB134:  VMUL.F32        S2, S8, S2
3CB138:  VLDR            S6, [R6,#0x16C]
3CB13C:  LDR             R0, [R1]; CDraw::ms_fAspectRatio ...
3CB13E:  VMOV.F32        S1, #3.0
3CB142:  VLDR            S14, [R6,#0x190]
3CB146:  VLDR            S0, [R6,#0x174]
3CB14A:  VLDR            S10, [R0]
3CB14E:  LDR             R0, [SP,#0x100+var_F0]
3CB150:  VDIV.F32        S2, S2, S10
3CB154:  VMUL.F32        S10, S16, S22
3CB158:  VMUL.F32        S10, S10, S8
3CB15C:  VMUL.F32        S8, S12, S8
3CB160:  VLDR            S12, [R6,#0x18C]
3CB164:  VADD.F32        S6, S10, S6
3CB168:  VMUL.F32        S10, S2, S14
3CB16C:  VADD.F32        S4, S4, S8
3CB170:  VLDR            S8, [R0,#8]
3CB174:  VMUL.F32        S2, S12, S2
3CB178:  VMUL.F32        S8, S8, S1
3CB17C:  VSUB.F32        S6, S6, S10
3CB180:  VSUB.F32        S2, S4, S2
3CB184:  VMUL.F32        S4, S6, S8
3CB188:  VMUL.F32        S6, S2, S8
3CB18C:  VLDR            S2, [R6,#0x178]
3CB190:  VADD.F32        S4, S2, S4
3CB194:  VADD.F32        S6, S0, S6
3CB198:  VSUB.F32        S0, S6, S0
3CB19C:  LDR.W           R4, [R8,#0x46C]
3CB1A0:  VSUB.F32        S2, S4, S2
3CB1A4:  VMOV            R0, S0
3CB1A8:  VMOV            R1, S2; x
3CB1AC:  EOR.W           R0, R0, #0x80000000; y
3CB1B0:  BLX             atan2f
3CB1B4:  VMOV            S16, R0
3CB1B8:  LDR.W           R0, [R8,#0x14]
3CB1BC:  CBZ             R0, loc_3CB1D0
3CB1BE:  LDRD.W          R2, R1, [R0,#0x10]; x
3CB1C2:  EOR.W           R0, R2, #0x80000000; y
3CB1C6:  BLX             atan2f
3CB1CA:  VMOV            S0, R0
3CB1CE:  B               loc_3CB1D4
3CB1D0:  VLDR            S0, [R8,#0x10]
3CB1D4:  VSUB.F32        S16, S16, S0
3CB1D8:  VLDR            S0, =3.1416
3CB1DC:  VCMPE.F32       S16, S0
3CB1E0:  VMRS            APSR_nzcv, FPSCR
3CB1E4:  BLE             loc_3CB1EC
3CB1E6:  VLDR            S0, =-6.2832
3CB1EA:  B               loc_3CB1FE
3CB1EC:  VLDR            S0, =-3.1416
3CB1F0:  VCMPE.F32       S16, S0
3CB1F4:  VMRS            APSR_nzcv, FPSCR
3CB1F8:  BGE             loc_3CB202
3CB1FA:  VLDR            S0, =6.2832
3CB1FE:  VADD.F32        S16, S16, S0
3CB202:  CMP             R11, R4
3CB204:  MOV.W           R0, #0
3CB208:  ADD             R4, SP, #0x100+var_E8
3CB20A:  MOVW            R3, #0
3CB20E:  IT NE
3CB210:  MOVNE           R0, #1
3CB212:  MOVS            R1, #8
3CB214:  MOVS            R2, #0x64 ; 'd'
3CB216:  MOVT            R3, #0x42C8; float
3CB21A:  STRD.W          R2, R1, [SP,#0x100+var_100]; signed __int8
3CB21E:  MOVS            R1, #0; CEntity *
3CB220:  STR             R0, [SP,#0x100+var_F8]; bool
3CB222:  MOV             R0, R4; this
3CB224:  MOVS            R2, #0; CVector *
3CB226:  BLX             j__ZN22CTaskSimpleGangDriveByC2EP7CEntityPK7CVectorfaab; CTaskSimpleGangDriveBy::CTaskSimpleGangDriveBy(CEntity *,CVector const*,float,signed char,signed char,bool)
3CB22A:  VLDR            S0, =0.7854
3CB22E:  VLDR            S2, =6.2832
3CB232:  VADD.F32        S0, S16, S0
3CB236:  VCMPE.F32       S0, #0.0
3CB23A:  VMRS            APSR_nzcv, FPSCR
3CB23E:  VADD.F32        S2, S0, S2
3CB242:  IT LT
3CB244:  VMOVLT.F32      S0, S2
3CB248:  LDRSB.W         R0, [R11,#0x71C]
3CB24C:  VLDR            S2, =1.5708
3CB250:  RSB.W           R0, R0, R0,LSL#3
3CB254:  VDIV.F32        S16, S0, S2
3CB258:  ADD.W           R0, R11, R0,LSL#2
3CB25C:  LDR.W           R5, [R0,#0x5A4]
3CB260:  MOV             R0, R11; this
3CB262:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
3CB266:  MOV             R1, R0
3CB268:  MOV             R0, R5
3CB26A:  VCVT.S32.F32    S16, S16
3CB26E:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
3CB272:  STR             R0, [SP,#0x100+var_B8]
3CB274:  VMOV            R0, S16
3CB278:  MOV             R1, R11; CPed *
3CB27A:  STRB.W          R0, [SP,#0x100+var_D4]
3CB27E:  MOV             R0, R4; this
3CB280:  BLX             j__ZN22CTaskSimpleGangDriveBy7FireGunEP4CPed; CTaskSimpleGangDriveBy::FireGun(CPed *)
3CB284:  LDR             R0, =(TheCamera_ptr - 0x3CB28C)
3CB286:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3CB292)
3CB288:  ADD             R0, PC; TheCamera_ptr
3CB28A:  VLDR            S2, =-0.001
3CB28E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3CB290:  VLDR            S4, =0.03
3CB294:  LDR             R2, [R0]; TheCamera
3CB296:  LDR             R0, [R1]; CTimer::m_snTimeInMilliseconds ...
3CB298:  LDR             R1, [R2,#(dword_952000 - 0x951FA8)]
3CB29A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3CB29C:  SUBS            R1, R0, R1
3CB29E:  VMOV            S0, R1
3CB2A2:  VCVT.F32.U32    S0, S0
3CB2A6:  VMUL.F32        S0, S0, S2
3CB2AA:  VLDR            S2, [R2,#0x128]
3CB2AE:  VADD.F32        S0, S2, S0
3CB2B2:  VLDR            S2, =0.0
3CB2B6:  VMIN.F32        D16, D0, D9
3CB2BA:  VMAX.F32        D0, D16, D1
3CB2BE:  VCMPE.F32       S0, S4
3CB2C2:  VMRS            APSR_nzcv, FPSCR
3CB2C6:  BGE             loc_3CB2DC
3CB2C8:  LDR             R1, =(TheCamera_ptr - 0x3CB2CE)
3CB2CA:  ADD             R1, PC; TheCamera_ptr
3CB2CC:  LDR             R1, [R1]; TheCamera
3CB2CE:  STR             R0, [R1,#(dword_952000 - 0x951FA8)]
3CB2D0:  MOV             R0, #0x3CF5C28F
3CB2D8:  STR.W           R0, [R1,#(dword_9520D0 - 0x951FA8)]
3CB2DC:  ADD             R0, SP, #0x100+var_E8; this
3CB2DE:  BLX             j__ZN22CTaskSimpleGangDriveByD2Ev; CTaskSimpleGangDriveBy::~CTaskSimpleGangDriveBy()
3CB2E2:  MOVS            R5, #0
3CB2E4:  MOVS            R0, #0; this
3CB2E6:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3CB2EA:  LDR             R1, =(currentPad_ptr - 0x3CB2F2)
3CB2EC:  LDR             R2, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x3CB2F4)
3CB2EE:  ADD             R1, PC; currentPad_ptr
3CB2F0:  ADD             R2, PC; _ZN4CHID20currentInstanceIndexE_ptr
3CB2F2:  LDR             R1, [R1]; currentPad
3CB2F4:  LDR             R2, [R2]; CHID::currentInstanceIndex ...
3CB2F6:  STR             R0, [R1]
3CB2F8:  STR             R5, [R2]; CHID::currentInstanceIndex
3CB2FA:  ADD             SP, SP, #0xA0
3CB2FC:  VPOP            {D8-D15}
3CB300:  ADD             SP, SP, #4
3CB302:  POP.W           {R8-R11}
3CB306:  POP             {R4-R7,PC}
