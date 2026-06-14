; =========================================================
; Game Engine Function: _ZN7CWeapon17FireM16_1stPersonEP4CPed
; Address            : 0x5DDA28 - 0x5DDE1C
; =========================================================

5DDA28:  PUSH            {R4-R7,LR}
5DDA2A:  ADD             R7, SP, #0xC
5DDA2C:  PUSH.W          {R8-R11}
5DDA30:  SUB             SP, SP, #4
5DDA32:  VPUSH           {D8-D10}
5DDA36:  SUB             SP, SP, #0x68
5DDA38:  MOV             R10, R0
5DDA3A:  LDR.W           R0, =(TheCamera_ptr - 0x5DDA44)
5DDA3E:  MOV             R9, R1
5DDA40:  ADD             R0, PC; TheCamera_ptr
5DDA42:  LDR             R0, [R0]; TheCamera
5DDA44:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
5DDA48:  ADD.W           R1, R1, R1,LSL#5
5DDA4C:  ADD.W           R0, R0, R1,LSL#4
5DDA50:  LDRH.W          R0, [R0,#0x17E]
5DDA54:  SUBS            R1, R0, #7; switch 46 cases
5DDA56:  MOVS            R0, #0
5DDA58:  CMP             R1, #0x2D ; '-'
5DDA5A:  BHI.W           def_5DDA5E; jumptable 005DDA5E default case, cases 9-33,35-38,41,43,44,47-50
5DDA5E:  TBH.W           [PC,R1,LSL#1]; switch jump
5DDA62:  DCW 0x2E; jump table for switch statement
5DDA64:  DCW 0x2E
5DDA66:  DCW 0x1D6
5DDA68:  DCW 0x1D6
5DDA6A:  DCW 0x1D6
5DDA6C:  DCW 0x1D6
5DDA6E:  DCW 0x1D6
5DDA70:  DCW 0x1D6
5DDA72:  DCW 0x1D6
5DDA74:  DCW 0x1D6
5DDA76:  DCW 0x1D6
5DDA78:  DCW 0x1D6
5DDA7A:  DCW 0x1D6
5DDA7C:  DCW 0x1D6
5DDA7E:  DCW 0x1D6
5DDA80:  DCW 0x1D6
5DDA82:  DCW 0x1D6
5DDA84:  DCW 0x1D6
5DDA86:  DCW 0x1D6
5DDA88:  DCW 0x1D6
5DDA8A:  DCW 0x1D6
5DDA8C:  DCW 0x1D6
5DDA8E:  DCW 0x1D6
5DDA90:  DCW 0x1D6
5DDA92:  DCW 0x1D6
5DDA94:  DCW 0x1D6
5DDA96:  DCW 0x1D6
5DDA98:  DCW 0x2E
5DDA9A:  DCW 0x1D6
5DDA9C:  DCW 0x1D6
5DDA9E:  DCW 0x1D6
5DDAA0:  DCW 0x1D6
5DDAA2:  DCW 0x2E
5DDAA4:  DCW 0x2E
5DDAA6:  DCW 0x1D6
5DDAA8:  DCW 0x2E
5DDAAA:  DCW 0x1D6
5DDAAC:  DCW 0x1D6
5DDAAE:  DCW 0x2E
5DDAB0:  DCW 0x2E
5DDAB2:  DCW 0x1D6
5DDAB4:  DCW 0x1D6
5DDAB6:  DCW 0x1D6
5DDAB8:  DCW 0x1D6
5DDABA:  DCW 0x2E
5DDABC:  DCW 0x2E
5DDABE:  LDR.W           R0, [R10]; jumptable 005DDA5E cases 7,8,34,39,40,42,45,46,51,52
5DDAC2:  MOVS            R1, #1
5DDAC4:  MOVS            R4, #1
5DDAC6:  BLX.W           j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5DDACA:  MOV             R8, R0
5DDACC:  LDR             R0, =(TheCamera_ptr - 0x5DDAD8)
5DDACE:  VMOV.F32        S16, #3.0
5DDAD2:  LDR             R2, =(_ZN6CWorld16bIncludeCarTyresE_ptr - 0x5DDADC)
5DDAD4:  ADD             R0, PC; TheCamera_ptr
5DDAD6:  LDR             R3, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x5DDAE2)
5DDAD8:  ADD             R2, PC; _ZN6CWorld16bIncludeCarTyresE_ptr
5DDADA:  ADD             R5, SP, #0xA0+var_50
5DDADC:  LDR             R0, [R0]; TheCamera
5DDADE:  ADD             R3, PC; _ZN6CWorld13pIgnoreEntityE_ptr
5DDAE0:  LDR             R2, [R2]; CVector *
5DDAE2:  ADD.W           R11, SP, #0xA0+var_44
5DDAE6:  LDR             R3, [R3]; CWorld::pIgnoreEntity ...
5DDAE8:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
5DDAEC:  ADD.W           R1, R1, R1,LSL#5
5DDAF0:  ADD.W           R0, R0, R1,LSL#4
5DDAF4:  VLDR            S0, [R0,#0x2D8]
5DDAF8:  VLDR            S2, [R0,#0x2DC]
5DDAFC:  VLDR            S4, [R0,#0x2E0]
5DDB00:  VMUL.F32        S0, S0, S16
5DDB04:  VMUL.F32        S2, S2, S16
5DDB08:  VLDR            D16, [R0,#0x2E4]
5DDB0C:  VMUL.F32        S4, S4, S16
5DDB10:  LDR.W           R1, [R0,#0x2EC]
5DDB14:  STR             R1, [SP,#0xA0+var_48]
5DDB16:  VSTR            D16, [SP,#0xA0+var_50]
5DDB1A:  VLDR            S6, [R8,#8]
5DDB1E:  VLDR            S8, [SP,#0xA0+var_50]
5DDB22:  VMUL.F32        S0, S0, S6
5DDB26:  VLDR            S10, [SP,#0xA0+var_50+4]
5DDB2A:  VMUL.F32        S2, S2, S6
5DDB2E:  LDR             R0, =(_ZN6CWorld14bIncludeBikersE_ptr - 0x5DDB3E)
5DDB30:  VMUL.F32        S4, S4, S6
5DDB34:  VLDR            S6, [SP,#0xA0+var_48]
5DDB38:  LDR             R1, =(_ZN6CWorld16bIncludeDeadPedsE_ptr - 0x5DDB42)
5DDB3A:  ADD             R0, PC; _ZN6CWorld14bIncludeBikersE_ptr
5DDB3C:  STRB            R4, [R2]; CWorld::bIncludeCarTyres
5DDB3E:  ADD             R1, PC; _ZN6CWorld16bIncludeDeadPedsE_ptr
5DDB40:  LDR             R0, [R0]; CWorld::bIncludeBikers ...
5DDB42:  STR.W           R9, [R3]; CWorld::pIgnoreEntity
5DDB46:  VADD.F32        S0, S8, S0
5DDB4A:  LDR             R1, [R1]; CWorld::bIncludeDeadPeds ...
5DDB4C:  VADD.F32        S2, S2, S10
5DDB50:  STRB            R4, [R0]; CWorld::bIncludeBikers
5DDB52:  VADD.F32        S4, S4, S6
5DDB56:  MOV             R0, R5; this
5DDB58:  STRB            R4, [R1]; CWorld::bIncludeDeadPeds
5DDB5A:  MOV             R1, R11; CVector *
5DDB5C:  VSTR            S4, [SP,#0xA0+var_3C]
5DDB60:  VSTR            S2, [SP,#0xA0+var_40]
5DDB64:  VSTR            S0, [SP,#0xA0+var_44]
5DDB68:  BLX.W           j__ZN6CBirds13HandleGunShotEPK7CVectorS2_; CBirds::HandleGunShot(CVector const*,CVector const*)
5DDB6C:  MOV             R0, R5; this
5DDB6E:  MOV             R1, R11; CVector *
5DDB70:  BLX.W           j__ZN8CShadows20GunShotSetsOilOnFireEPK7CVectorS2_; CShadows::GunShotSetsOilOnFire(CVector const*,CVector const*)
5DDB74:  MOVS            R6, #0
5DDB76:  STRD.W          R4, R4, [SP,#0xA0+var_A0]
5DDB7A:  STRD.W          R4, R4, [SP,#0xA0+var_98]
5DDB7E:  ADD             R3, SP, #0xA0+var_80
5DDB80:  STRD.W          R4, R6, [SP,#0xA0+var_90]
5DDB84:  MOV             R0, R5
5DDB86:  STRD.W          R6, R4, [SP,#0xA0+var_88]
5DDB8A:  ADD             R4, SP, #0xA0+var_7C
5DDB8C:  MOV             R1, R11
5DDB8E:  MOV             R2, R4
5DDB90:  BLX.W           j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
5DDB94:  CMP             R0, #1
5DDB96:  BNE             loc_5DDBA6
5DDB98:  ADD             R0, SP, #0xA0+var_80
5DDB9A:  ADD             R1, SP, #0xA0+var_7C
5DDB9C:  ADD             R3, SP, #0xA0+var_50
5DDB9E:  STR.W           R11, [SP,#0xA0+var_A0]
5DDBA2:  BLX.W           j__ZN7CWeapon31CheckForShootingVehicleOccupantEPP7CEntityP9CColPoint11eWeaponTypeRK7CVectorS8_; CWeapon::CheckForShootingVehicleOccupant(CEntity **,CColPoint *,eWeaponType,CVector const&,CVector const&)
5DDBA6:  LDR             R0, =(_ZN6CWorld16bIncludeCarTyresE_ptr - 0x5DDBB0)
5DDBA8:  LDR             R1, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x5DDBB4)
5DDBAA:  LDR             R2, =(_ZN6CWorld16bIncludeDeadPedsE_ptr - 0x5DDBB6)
5DDBAC:  ADD             R0, PC; _ZN6CWorld16bIncludeCarTyresE_ptr
5DDBAE:  LDR             R3, =(_ZN6CWorld14bIncludeBikersE_ptr - 0x5DDBBA)
5DDBB0:  ADD             R1, PC; _ZN6CWorld13pIgnoreEntityE_ptr
5DDBB2:  ADD             R2, PC; _ZN6CWorld16bIncludeDeadPedsE_ptr
5DDBB4:  LDR             R5, [R0]; CWorld::bIncludeCarTyres ...
5DDBB6:  ADD             R3, PC; _ZN6CWorld14bIncludeBikersE_ptr
5DDBB8:  LDR             R1, [R1]; CWorld::pIgnoreEntity ...
5DDBBA:  LDR             R0, [SP,#0xA0+var_80]
5DDBBC:  LDR             R2, [R2]; CWorld::bIncludeDeadPeds ...
5DDBBE:  LDR             R3, [R3]; CWorld::bIncludeBikers ...
5DDBC0:  CMP             R0, #0
5DDBC2:  STRB            R6, [R5]; CWorld::bIncludeCarTyres
5DDBC4:  STRB            R6, [R2]; CWorld::bIncludeDeadPeds
5DDBC6:  STRB            R6, [R3]; CWorld::bIncludeBikers
5DDBC8:  STR             R6, [R1]; CWorld::pIgnoreEntity
5DDBCA:  BEQ             loc_5DDCA4
5DDBCC:  VLDR            S0, [SP,#0xA0+var_50]
5DDBD0:  VMOV.F32        S20, #1.0
5DDBD4:  VLDR            S4, [SP,#0xA0+var_7C]
5DDBD8:  CMP.W           R9, #0
5DDBDC:  VLDR            S2, [SP,#0xA0+var_50+4]
5DDBE0:  VLDR            S6, [SP,#0xA0+var_78]
5DDBE4:  VSUB.F32        S0, S4, S0
5DDBE8:  VSUB.F32        S2, S6, S2
5DDBEC:  VMUL.F32        S0, S0, S0
5DDBF0:  VMUL.F32        S2, S2, S2
5DDBF4:  VADD.F32        S0, S0, S2
5DDBF8:  VSQRT.F32       S18, S0
5DDBFC:  BEQ             loc_5DDC88
5DDBFE:  LDRB.W          R1, [R0,#0x3A]
5DDC02:  AND.W           R1, R1, #7
5DDC06:  CMP             R1, #3
5DDC08:  BEQ             loc_5DDC18
5DDC0A:  CMP             R1, #2
5DDC0C:  BNE             loc_5DDC3A
5DDC0E:  LDR.W           R0, [R0,#0x5A0]
5DDC12:  CMP             R0, #9
5DDC14:  BEQ             loc_5DDC3A
5DDC16:  B               loc_5DDC8C
5DDC18:  LDR.W           R1, [R0,#0x590]
5DDC1C:  CMP             R1, #0
5DDC1E:  ITT NE
5DDC20:  LDRNE.W         R1, [R1,#0x5A0]
5DDC24:  CMPNE           R1, #9
5DDC26:  BNE             loc_5DDC8C
5DDC28:  LDR.W           R0, [R0,#0x100]
5DDC2C:  CBZ             R0, loc_5DDC3A
5DDC2E:  LDRB.W          R1, [R0,#0x3A]
5DDC32:  AND.W           R1, R1, #7
5DDC36:  CMP             R1, #2
5DDC38:  BEQ             loc_5DDC0E
5DDC3A:  LDRB.W          R0, [R9,#0x3A]
5DDC3E:  AND.W           R0, R0, #7
5DDC42:  CMP             R0, #3
5DDC44:  BNE             loc_5DDC88
5DDC46:  MOV             R0, R9; this
5DDC48:  BLX.W           j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5DDC4C:  VMOV.F32        S16, S20
5DDC50:  CMP             R0, #1
5DDC52:  BNE             loc_5DDC8C
5DDC54:  LDR             R0, =(TheCamera_ptr - 0x5DDC62)
5DDC56:  VMOV.F32        S0, #3.0
5DDC5A:  VMOV.F32        S16, #1.0
5DDC5E:  ADD             R0, PC; TheCamera_ptr
5DDC60:  LDR             R0, [R0]; TheCamera
5DDC62:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
5DDC66:  ADD.W           R1, R1, R1,LSL#5
5DDC6A:  ADD.W           R0, R0, R1,LSL#4
5DDC6E:  LDRH.W          R0, [R0,#0x17E]
5DDC72:  CMP             R0, #0x2D ; '-'
5DDC74:  IT EQ
5DDC76:  VMOVEQ.F32      S16, S0
5DDC7A:  VMOV.F32        S0, #2.0
5DDC7E:  CMP             R0, #0x31 ; '1'
5DDC80:  IT EQ
5DDC82:  VMOVEQ.F32      S16, S0
5DDC86:  B               loc_5DDC8C
5DDC88:  VMOV.F32        S16, S20
5DDC8C:  VLDR            S0, [R8,#8]
5DDC90:  VMUL.F32        S0, S16, S0
5DDC94:  VCMPE.F32       S18, S0
5DDC98:  VMRS            APSR_nzcv, FPSCR
5DDC9C:  ITTE GT
5DDC9E:  MOVGT           R6, #0
5DDCA0:  STRGT           R6, [SP,#0xA0+var_80]
5DDCA2:  LDRLE           R6, [SP,#0xA0+var_80]
5DDCA4:  MOVS            R0, #0
5DDCA6:  ADD             R3, SP, #0xA0+var_50; int
5DDCA8:  STRD.W          R11, R4, [SP,#0xA0+var_A0]; CVector *
5DDCAC:  MOV             R1, R9; int
5DDCAE:  STR             R0, [SP,#0xA0+var_98]; int
5DDCB0:  MOV             R0, R10; int
5DDCB2:  MOV             R2, R6; int
5DDCB4:  BLX.W           j__ZN7CWeapon14DoBulletImpactEP7CEntityS1_P7CVectorS3_P9CColPointi; CWeapon::DoBulletImpact(CEntity *,CEntity *,CVector *,CVector *,CColPoint *,int)
5DDCB8:  LDR.W           R0, [R9,#0x59C]
5DDCBC:  CMP             R0, #1
5DDCBE:  BHI.W           loc_5DDE0C
5DDCC2:  LDR.W           R0, [R10]
5DDCC6:  ADR             R1, dword_5DDE60
5DDCC8:  VLDR            S0, =0.00015
5DDCCC:  CMP             R0, #0x1F
5DDCCE:  IT EQ
5DDCD0:  ADDEQ           R1, #4
5DDCD2:  CMP             R0, #0x1E
5DDCD4:  VLDR            S16, [R1]
5DDCD8:  MOV.W           R0, #0xFFFFFFFF; int
5DDCDC:  IT EQ
5DDCDE:  VMOVEQ.F32      S16, S0
5DDCE2:  BLX.W           j__Z13FindPlayerPedi; FindPlayerPed(int)
5DDCE6:  LDRB.W          R0, [R0,#0x487]
5DDCEA:  LSLS            R0, R0, #0x1D
5DDCEC:  BMI             loc_5DDCFC
5DDCEE:  MOV.W           R0, #0xFFFFFFFF; int
5DDCF2:  BLX.W           j__Z13FindPlayerPedi; FindPlayerPed(int)
5DDCF6:  LDR.W           R0, [R0,#0x100]
5DDCFA:  CBZ             R0, loc_5DDD04
5DDCFC:  VLDR            S0, =0.3
5DDD00:  VMUL.F32        S16, S16, S0
5DDD04:  BLX.W           rand
5DDD08:  AND.W           R0, R0, #0x7F
5DDD0C:  LDR             R1, =(TheCamera_ptr - 0x5DDD14)
5DDD0E:  SUBS            R0, #0x40 ; '@'
5DDD10:  ADD             R1, PC; TheCamera_ptr
5DDD12:  VMOV            S0, R0
5DDD16:  LDR             R4, [R1]; TheCamera
5DDD18:  VCVT.F32.S32    S0, S0
5DDD1C:  ADD.W           R5, R4, #0x170
5DDD20:  LDRB.W          R0, [R4,#(byte_951FFF - 0x951FA8)]
5DDD24:  ADD.W           R0, R0, R0,LSL#5
5DDD28:  VMUL.F32        S0, S16, S0
5DDD2C:  ADD.W           R0, R5, R0,LSL#4
5DDD30:  VLDR            S2, [R0,#0x94]
5DDD34:  VADD.F32        S0, S2, S0
5DDD38:  VSTR            S0, [R0,#0x94]
5DDD3C:  BLX.W           rand
5DDD40:  AND.W           R0, R0, #0x7F
5DDD44:  VMOV.F64        D17, #20.0
5DDD48:  SUBS            R0, #0x40 ; '@'
5DDD4A:  VMOV            S0, R0
5DDD4E:  VCVT.F32.S32    S0, S0
5DDD52:  LDRB.W          R0, [R4,#(byte_951FFF - 0x951FA8)]
5DDD56:  ADD.W           R0, R0, R0,LSL#5
5DDD5A:  ADD.W           R0, R5, R0,LSL#4
5DDD5E:  VMUL.F32        S0, S16, S0
5DDD62:  VLDR            S2, [R0,#0x84]
5DDD66:  VADD.F32        S0, S2, S0
5DDD6A:  VSTR            S0, [R0,#0x84]
5DDD6E:  VLDR            S0, [R8,#0x40]
5DDD72:  VLDR            S2, [R8,#0x44]
5DDD76:  VSUB.F32        S0, S2, S0
5DDD7A:  VLDR            S2, =900.0
5DDD7E:  VMUL.F32        S0, S0, S2
5DDD82:  VCVT.S32.F32    S0, S0
5DDD86:  VCVT.F64.S32    D16, S0
5DDD8A:  VSUB.F64        D17, D17, D16
5DDD8E:  VLDR            D16, =80.0
5DDD92:  VDIV.F64        D17, D17, D16
5DDD96:  VCMPE.F64       D17, #0.0
5DDD9A:  VMRS            APSR_nzcv, FPSCR
5DDD9E:  BLT             loc_5DDDB2
5DDDA0:  VMOV.F64        D18, #1.0
5DDDA4:  VCMPE.F64       D17, D18
5DDDA8:  VMRS            APSR_nzcv, FPSCR
5DDDAC:  BLE             loc_5DDDB2
5DDDAE:  MOVS            R5, #0xD2
5DDDB0:  B               loc_5DDDD4
5DDDB2:  VCMPE.F64       D17, #0.0
5DDDB6:  VMRS            APSR_nzcv, FPSCR
5DDDBA:  BGE             loc_5DDDC0
5DDDBC:  MOVS            R5, #0x82
5DDDBE:  B               loc_5DDDD4
5DDDC0:  VMUL.F64        D16, D17, D16
5DDDC4:  VLDR            D17, =130.0
5DDDC8:  VADD.F64        D16, D16, D17
5DDDCC:  VCVT.U32.F64    S0, D16
5DDDD0:  VMOV            R5, S0
5DDDD4:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5DDDE2)
5DDDD6:  VMOV            S4, R5
5DDDDA:  VLDR            S0, =20000.0
5DDDDE:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5DDDE0:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5DDDE2:  VLDR            S2, [R0]
5DDDE6:  VCVT.F32.U32    S4, S4
5DDDEA:  LDR.W           R0, [R9,#0x59C]; this
5DDDEE:  VMUL.F32        S0, S2, S0
5DDDF2:  VDIV.F32        S0, S0, S4
5DDDF6:  VCVT.U32.F32    S0, S0
5DDDFA:  VMOV            R4, S0
5DDDFE:  BLX.W           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5DDE02:  SXTH            R1, R4; __int16
5DDE04:  MOV             R2, R5; unsigned __int8
5DDE06:  MOVS            R3, #0; unsigned int
5DDE08:  BLX.W           j__ZN4CPad10StartShakeEshj; CPad::StartShake(short,uchar,uint)
5DDE0C:  MOVS            R0, #1
5DDE0E:  ADD             SP, SP, #0x68 ; 'h'; jumptable 005DDA5E default case, cases 9-33,35-38,41,43,44,47-50
5DDE10:  VPOP            {D8-D10}
5DDE14:  ADD             SP, SP, #4
5DDE16:  POP.W           {R8-R11}
5DDE1A:  POP             {R4-R7,PC}
