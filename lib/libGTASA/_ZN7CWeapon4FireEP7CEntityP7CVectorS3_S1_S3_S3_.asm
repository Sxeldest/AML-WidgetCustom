; =========================================================
; Game Engine Function: _ZN7CWeapon4FireEP7CEntityP7CVectorS3_S1_S3_S3_
; Address            : 0x5DB9A0 - 0x5DC0F2
; =========================================================

5DB9A0:  PUSH            {R4-R7,LR}
5DB9A2:  ADD             R7, SP, #0xC
5DB9A4:  PUSH.W          {R8-R11}
5DB9A8:  SUB             SP, SP, #4
5DB9AA:  VPUSH           {D8-D9}
5DB9AE:  SUB             SP, SP, #0x38
5DB9B0:  MOV             R9, R0
5DB9B2:  MOVW            R0, #0x999A
5DB9B6:  MOV.W           R11, #0
5DB9BA:  MOVT            R0, #0x3F19
5DB9BE:  STRD.W          R11, R11, [SP,#0x68+var_40]
5DB9C2:  MOV             R8, R1
5DB9C4:  STR             R0, [SP,#0x68+var_38]
5DB9C6:  MOVS            R1, #1
5DB9C8:  LDR.W           R0, [R9]
5DB9CC:  MOV             R10, R3
5DB9CE:  MOV             R5, R2
5DB9D0:  BLX.W           j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5DB9D4:  MOV             R4, R0
5DB9D6:  CMP.W           R8, #0
5DB9DA:  BEQ             loc_5DBA00
5DB9DC:  LDRB.W          R0, [R8,#0x3A]
5DB9E0:  AND.W           R0, R0, #7
5DB9E4:  CMP             R0, #3
5DB9E6:  BNE             loc_5DBA04
5DB9E8:  LDR.W           R6, [R9]
5DB9EC:  MOV             R0, R8
5DB9EE:  MOV             R1, R6
5DB9F0:  BLX.W           j__ZN4CPed14GetWeaponSkillE11eWeaponType; CPed::GetWeaponSkill(eWeaponType)
5DB9F4:  MOV             R1, R0
5DB9F6:  MOV             R0, R6
5DB9F8:  BLX.W           j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5DB9FC:  MOV             R4, R0
5DB9FE:  MOV             R11, R8
5DBA00:  CBNZ            R5, loc_5DBA40
5DBA02:  B               loc_5DBA0A
5DBA04:  MOV.W           R11, #0
5DBA08:  CBNZ            R5, loc_5DBA40
5DBA0A:  LDR.W           R1, [R8,#0x14]
5DBA0E:  CBNZ            R1, loc_5DBA26
5DBA10:  MOV             R0, R8; this
5DBA12:  BLX.W           j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5DBA16:  LDR.W           R1, [R8,#0x14]; CMatrix *
5DBA1A:  ADD.W           R0, R8, #4; this
5DBA1E:  BLX.W           j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5DBA22:  LDR.W           R1, [R8,#0x14]
5DBA26:  ADD.W           R10, SP, #0x68+var_40
5DBA2A:  ADD             R0, SP, #0x68+var_50
5DBA2C:  MOV             R2, R10
5DBA2E:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5DBA32:  VLDR            D16, [SP,#0x68+var_50]
5DBA36:  MOV             R5, R10
5DBA38:  LDR             R0, [SP,#0x68+var_48]
5DBA3A:  STR             R0, [SP,#0x68+var_38]
5DBA3C:  VSTR            D16, [SP,#0x68+var_40]
5DBA40:  LDRB.W          R0, [R9,#0x14]
5DBA44:  CBZ             R0, loc_5DBAB6
5DBA46:  LDR.W           R0, [R8,#0x14]
5DBA4A:  CBZ             R0, loc_5DBA5E
5DBA4C:  LDRD.W          R2, R1, [R0,#0x10]; x
5DBA50:  EOR.W           R0, R2, #0x80000000; y
5DBA54:  BLX.W           atan2f
5DBA58:  VMOV            S0, R0
5DBA5C:  B               loc_5DBA62
5DBA5E:  VLDR            S0, [R8,#0x10]
5DBA62:  VLDR            S2, =180.0
5DBA66:  VMUL.F32        S0, S0, S2
5DBA6A:  VLDR            S2, =3.1416
5DBA6E:  VDIV.F32        S0, S0, S2
5DBA72:  VLDR            S2, =0.017453
5DBA76:  VMUL.F32        S0, S0, S2
5DBA7A:  VMOV            R6, S0
5DBA7E:  MOV             R0, R6; x
5DBA80:  BLX.W           sinf
5DBA84:  VMOV            S18, R0
5DBA88:  MOV             R0, R6; x
5DBA8A:  VLDR            S16, =0.15
5DBA8E:  BLX.W           cosf
5DBA92:  VMOV            S0, R0
5DBA96:  VLDR            S4, [R5]
5DBA9A:  VMUL.F32        S2, S18, S16
5DBA9E:  VLDR            S6, [R5,#4]
5DBAA2:  VMUL.F32        S0, S0, S16
5DBAA6:  VSUB.F32        S2, S4, S2
5DBAAA:  VADD.F32        S0, S6, S0
5DBAAE:  VSTR            S2, [R5]
5DBAB2:  VSTR            S0, [R5,#4]
5DBAB6:  LDR.W           R0, [R9,#4]
5DBABA:  CMP             R0, #1
5DBABC:  BHI.W           loc_5DBBA4
5DBAC0:  LDR.W           R0, [R9,#8]
5DBAC4:  CMP             R0, #0
5DBAC6:  BGT             loc_5DBAEE
5DBAC8:  LDR.W           R0, [R9,#0xC]
5DBACC:  CMP             R0, #1
5DBACE:  BLT.W           loc_5DBBA4
5DBAD2:  LDR.W           R0, [R9]
5DBAD6:  MOVS            R1, #1
5DBAD8:  BLX.W           j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5DBADC:  LDRSH.W         R0, [R0,#0x20]
5DBAE0:  LDR.W           R1, [R9,#0xC]
5DBAE4:  CMP             R1, R0
5DBAE6:  IT CC
5DBAE8:  MOVCC           R0, R1
5DBAEA:  STR.W           R0, [R9,#8]
5DBAEE:  LDR.W           R0, [R9]
5DBAF2:  LDR             R3, [R7,#arg_0]; CVector *
5DBAF4:  SUB.W           R1, R0, #0x10; switch 28 cases
5DBAF8:  MOVS            R0, #1
5DBAFA:  CMP             R1, #0x1B
5DBAFC:  BHI.W           def_5DBB08; jumptable 005DBB08 default case
5DBB00:  STR             R0, [SP,#0x68+var_54]
5DBB02:  MOV             R6, R4
5DBB04:  LDRD.W          R4, R0, [R7,#arg_4]; this
5DBB08:  TBH.W           [PC,R1,LSL#1]; switch jump
5DBB0C:  DCW 0x5E; jump table for switch statement
5DBB0E:  DCW 0x5E
5DBB10:  DCW 0x5E
5DBB12:  DCW 0x165
5DBB14:  DCW 0x165
5DBB16:  DCW 0x165
5DBB18:  DCW 0x1C
5DBB1A:  DCW 0x1C
5DBB1C:  DCW 0x1C
5DBB1E:  DCW 0x4E
5DBB20:  DCW 0x4E
5DBB22:  DCW 0x4E
5DBB24:  DCW 0x1C
5DBB26:  DCW 0x1C
5DBB28:  DCW 0x1C
5DBB2A:  DCW 0x1C
5DBB2C:  DCW 0x1C
5DBB2E:  DCW 0x1C
5DBB30:  DCW 0x11E
5DBB32:  DCW 0xB7
5DBB34:  DCW 0xB7
5DBB36:  DCW 0x9B
5DBB38:  DCW 0x1C
5DBB3A:  DCW 0x5E
5DBB3C:  DCW 0x113
5DBB3E:  DCW 0x9B
5DBB40:  DCW 0x9B
5DBB42:  DCW 0x132
5DBB44:  CMP.W           R11, #0; jumptable 005DBB08 cases 22-24,28-33,38
5DBB48:  BEQ             loc_5DBBA8; jumptable 005DBB08 cases 25-27
5DBB4A:  LDR.W           R1, [R11,#0x59C]
5DBB4E:  CMP             R1, #0
5DBB50:  BEQ.W           loc_5DBC54
5DBB54:  MOVS            R1, #1
5DBB56:  MOVS            R2, #0
5DBB58:  STRD.W          R3, R4, [SP,#0x68+var_68]; CEntity *
5DBB5C:  MOV             R3, R10; CVector *
5DBB5E:  STRD.W          R0, R2, [SP,#0x68+var_60]; CVector *
5DBB62:  MOV             R0, R9; this
5DBB64:  STR             R1, [SP,#0x68+var_58]; bool
5DBB66:  MOV             R1, R8; CEntity *
5DBB68:  MOV             R2, R5; CVector *
5DBB6A:  BLX.W           j__ZN7CWeapon14FireInstantHitEP7CEntityP7CVectorS3_S1_S3_S3_bb; CWeapon::FireInstantHit(CEntity *,CVector *,CVector *,CEntity *,CVector *,CVector *,bool,bool)
5DBB6E:  LDRB.W          R0, [R11,#0x485]
5DBB72:  LSLS            R0, R0, #0x1F
5DBB74:  BEQ             loc_5DBBA0
5DBB76:  LDR.W           R0, [R11,#0x440]
5DBB7A:  ADDS            R0, #4; this
5DBB7C:  BLX.W           j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
5DBB80:  CMP             R0, #0
5DBB82:  BEQ.W           loc_5DBDD2
5DBB86:  LDR.W           R0, [R11,#0x440]
5DBB8A:  ADDS            R0, #4; this
5DBB8C:  BLX.W           j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
5DBB90:  LDR             R1, [R0]
5DBB92:  LDR             R1, [R1,#0x14]
5DBB94:  BLX             R1
5DBB96:  MOVW            R1, #0x3FE
5DBB9A:  CMP             R0, R1
5DBB9C:  BNE.W           loc_5DBDD2
5DBBA0:  MOVS            R0, #0
5DBBA2:  B               loc_5DBDD4
5DBBA4:  MOVS            R4, #0
5DBBA6:  B               loc_5DC0C4
5DBBA8:  MOVS            R1, #0; jumptable 005DBB08 cases 25-27
5DBBAA:  STRD.W          R3, R4, [SP,#0x68+var_68]; CEntity *
5DBBAE:  STRD.W          R0, R1, [SP,#0x68+var_60]; CVector *
5DBBB2:  MOVS            R2, #1
5DBBB4:  MOVS            R0, #1
5DBBB6:  STRD.W          R2, R0, [SP,#0x68+var_58]; bool
5DBBBA:  MOV             R0, R9; this
5DBBBC:  MOV             R1, R8; CEntity *
5DBBBE:  MOV             R2, R5; CVector *
5DBBC0:  MOV             R3, R10; CVector *
5DBBC2:  BLX.W           j__ZN7CWeapon14FireInstantHitEP7CEntityP7CVectorS3_S1_S3_S3_bb; CWeapon::FireInstantHit(CEntity *,CVector *,CVector *,CEntity *,CVector *,CVector *,bool,bool)
5DBBC6:  B               loc_5DBDD6; jumptable 005DBB08 cases 19-21
5DBBC8:  CMP             R4, #0; jumptable 005DBB08 cases 16-18,39
5DBBCA:  BEQ.W           loc_5DBD0C
5DBBCE:  LDR.W           R0, [R8,#0x14]
5DBBD2:  VMOV.F32        S4, #1.0
5DBBD6:  VLDR            S0, [R4]
5DBBDA:  MOV             R2, R10; CVector *
5DBBDC:  ADD.W           R1, R0, #0x30 ; '0'
5DBBE0:  CMP             R0, #0
5DBBE2:  IT EQ
5DBBE4:  ADDEQ.W         R1, R8, #4
5DBBE8:  VLDR            D16, [R4,#4]
5DBBEC:  VLDR            S2, [R1]
5DBBF0:  MOV             R0, R9; this
5DBBF2:  VLDR            D17, [R1,#4]
5DBBF6:  MOV             R1, R8; CEntity *
5DBBF8:  VSUB.F32        S0, S0, S2
5DBBFC:  VLDR            S6, =0.2
5DBC00:  VSUB.F32        D16, D16, D17
5DBC04:  STR             R4, [SP,#0x68+var_68]; CVector *
5DBC06:  VMUL.F32        D1, D16, D16
5DBC0A:  VMUL.F32        S0, S0, S0
5DBC0E:  VADD.F32        S0, S0, S2
5DBC12:  VADD.F32        S0, S0, S3
5DBC16:  VMOV.F32        S2, #-10.0
5DBC1A:  VSQRT.F32       S0, S0
5DBC1E:  VADD.F32        S0, S0, S2
5DBC22:  VLDR            S2, =0.1
5DBC26:  VMUL.F32        S0, S0, S2
5DBC2A:  VMAX.F32        D16, D0, D3
5DBC2E:  VMIN.F32        D0, D16, D2
5DBC32:  VSTR            S0, [SP,#0x68+var_64]
5DBC36:  BLX.W           j__ZN7CWeapon14FireProjectileEP7CEntityP7CVectorS1_S3_f; CWeapon::FireProjectile(CEntity *,CVector *,CEntity *,CVector *,float)
5DBC3A:  CMP             R0, #0
5DBC3C:  BEQ.W           loc_5DBD78
5DBC40:  B               loc_5DBDD2
5DBC42:  LDR             R3, [R7,#arg_0]; jumptable 005DBB08 cases 37,41,42
5DBC44:  MOV             R0, R9; this
5DBC46:  MOV             R1, R8; CEntity *
5DBC48:  MOV             R2, R10; CVector *
5DBC4A:  STR             R4, [SP,#0x68+var_68]; CVector *
5DBC4C:  BLX.W           j__ZN7CWeapon14FireAreaEffectEP7CEntityP7CVectorS1_S3_; CWeapon::FireAreaEffect(CEntity *,CVector *,CEntity *,CVector *)
5DBC50:  MOVS            R0, #0
5DBC52:  B               loc_5DBDD4
5DBC54:  LDR.W           R1, =(TheCamera_ptr - 0x5DBC5C)
5DBC58:  ADD             R1, PC; TheCamera_ptr
5DBC5A:  LDR             R1, [R1]; TheCamera
5DBC5C:  LDRH.W          R1, [R1,#(word_95275C - 0x951FA8)]
5DBC60:  CMP             R1, #0x2D ; '-'
5DBC62:  IT NE
5DBC64:  CMPNE           R1, #0x22 ; '"'
5DBC66:  BNE.W           loc_5DBB54
5DBC6A:  MOV             R0, R9; this
5DBC6C:  MOV             R1, R8; CPed *
5DBC6E:  BLX.W           j__ZN7CWeapon17FireM16_1stPersonEP4CPed; CWeapon::FireM16_1stPerson(CPed *)
5DBC72:  CMP             R0, #0
5DBC74:  BEQ.W           loc_5DBD78
5DBC78:  B               loc_5DBDD2
5DBC7A:  LDRB.W          R0, [R8,#0x3A]; jumptable 005DBB08 cases 35,36
5DBC7E:  AND.W           R0, R0, #7
5DBC82:  CMP             R0, #3
5DBC84:  BNE             loc_5DBD28
5DBC86:  CMP             R3, #0
5DBC88:  IT EQ
5DBC8A:  CMPEQ           R4, #0
5DBC8C:  BEQ             loc_5DBD28
5DBC8E:  CMP             R3, #0
5DBC90:  MOV             R0, R4
5DBC92:  BEQ             loc_5DBCA0
5DBC94:  LDR             R1, [R3,#0x14]
5DBC96:  ADD.W           R0, R1, #0x30 ; '0'
5DBC9A:  CMP             R1, #0
5DBC9C:  IT EQ
5DBC9E:  ADDEQ           R0, R3, #4
5DBCA0:  LDR.W           R1, [R8,#0x14]
5DBCA4:  VLDR            S0, [R0]
5DBCA8:  ADD.W           R2, R1, #0x30 ; '0'
5DBCAC:  CMP             R1, #0
5DBCAE:  IT EQ
5DBCB0:  ADDEQ.W         R2, R8, #4
5DBCB4:  VLDR            D16, [R0,#4]
5DBCB8:  VLDR            S2, [R2]
5DBCBC:  VLDR            D17, [R2,#4]
5DBCC0:  VSUB.F32        S0, S0, S2
5DBCC4:  VSUB.F32        D16, D16, D17
5DBCC8:  VMUL.F32        D1, D16, D16
5DBCCC:  VMUL.F32        S0, S0, S0
5DBCD0:  VADD.F32        S0, S0, S2
5DBCD4:  VADD.F32        S0, S0, S3
5DBCD8:  VMOV.F32        S2, #8.0
5DBCDC:  VSQRT.F32       S0, S0
5DBCE0:  VCMPE.F32       S0, S2
5DBCE4:  VMRS            APSR_nzcv, FPSCR
5DBCE8:  BGT             loc_5DBCF6
5DBCEA:  MOV             R0, R8; this
5DBCEC:  BLX.W           j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5DBCF0:  LDR             R3, [R7,#arg_0]; CEntity *
5DBCF2:  CMP             R0, #0
5DBCF4:  BEQ             loc_5DBD78
5DBCF6:  MOVS            R5, #0
5DBCF8:  MOV             R0, R9; this
5DBCFA:  MOV             R1, R8; CEntity *
5DBCFC:  MOV             R2, R10; CVector *
5DBCFE:  STRD.W          R4, R5, [SP,#0x68+var_68]; CVector *
5DBD02:  BLX.W           j__ZN7CWeapon14FireProjectileEP7CEntityP7CVectorS1_S3_f; CWeapon::FireProjectile(CEntity *,CVector *,CEntity *,CVector *,float)
5DBD06:  CMP             R0, #1
5DBD08:  BEQ             loc_5DBDD2
5DBD0A:  B               loc_5DC086
5DBD0C:  MOV.W           R0, #0xFFFFFFFF; int
5DBD10:  BLX.W           j__Z13FindPlayerPedi; FindPlayerPed(int)
5DBD14:  CMP             R0, R8
5DBD16:  BEQ             loc_5DBDA8
5DBD18:  MOVW            R0, #0x999A
5DBD1C:  MOVS            R5, #0
5DBD1E:  MOVT            R0, #0x3E99
5DBD22:  STRD.W          R5, R0, [SP,#0x68+var_68]
5DBD26:  B               loc_5DBDC0
5DBD28:  MOVS            R5, #0
5DBD2A:  MOV             R0, R9
5DBD2C:  STRD.W          R4, R5, [SP,#0x68+var_68]
5DBD30:  B               loc_5DBDC4
5DBD32:  MOV             R0, R8; jumptable 005DBB08 case 40
5DBD34:  BLX.W           j__ZN6CWorld12UseDetonatorEP7CEntity; CWorld::UseDetonator(CEntity *)
5DBD38:  MOVS            R1, #1
5DBD3A:  MOVS            R0, #1
5DBD3C:  STR.W           R1, [R9,#8]
5DBD40:  STR             R0, [SP,#0x68+var_54]
5DBD42:  STR.W           R1, [R9,#0xC]
5DBD46:  B               loc_5DBDD6; jumptable 005DBB08 cases 19-21
5DBD48:  CMP.W           R11, #0; jumptable 005DBB08 case 34
5DBD4C:  BEQ             loc_5DBD7C
5DBD4E:  LDR.W           R0, [R11,#0x59C]
5DBD52:  CBNZ            R0, loc_5DBD7C
5DBD54:  LDR.W           R0, =(TheCamera_ptr - 0x5DBD5C)
5DBD58:  ADD             R0, PC; TheCamera_ptr
5DBD5A:  LDR             R0, [R0]; TheCamera
5DBD5C:  LDRH.W          R0, [R0,#(word_95275C - 0x951FA8)]
5DBD60:  CMP             R0, #7
5DBD62:  BNE             loc_5DBD7C
5DBD64:  MOV             R0, R9; this
5DBD66:  MOV             R1, R8; CPed *
5DBD68:  BLX.W           j__ZN7CWeapon10FireSniperEP4CPedP7CEntityP7CVector; CWeapon::FireSniper(CPed *,CEntity *,CVector *)
5DBD6C:  CBNZ            R0, loc_5DBDD2
5DBD6E:  B               loc_5DBD78
5DBD70:  MOV             R2, R10; jumptable 005DBB08 case 43
5DBD72:  BLX.W           j__ZN7CWeapon14TakePhotographEP7CEntityP7CVector; CWeapon::TakePhotograph(CEntity *,CVector *)
5DBD76:  CBNZ            R0, loc_5DBDD2
5DBD78:  MOVS            R5, #0
5DBD7A:  B               loc_5DC086
5DBD7C:  MOVS            R0, #0
5DBD7E:  STRD.W          R3, R4, [SP,#0x68+var_68]
5DBD82:  STRD.W          R0, R0, [SP,#0x68+var_60]
5DBD86:  MOVS            R1, #1
5DBD88:  MOVS            R0, #1
5DBD8A:  STRD.W          R1, R0, [SP,#0x68+var_58]
5DBD8E:  B               loc_5DBBBA
5DBD90:  DCFS 180.0
5DBD94:  DCFS 3.1416
5DBD98:  DCFS 0.017453
5DBD9C:  DCFS 0.15
5DBDA0:  DCFS 0.2
5DBDA4:  DCFS 0.1
5DBDA8:  LDR.W           R0, [R8,#0x444]
5DBDAC:  MOVS            R5, #0
5DBDAE:  VLDR            S0, =26.667
5DBDB2:  VLDR            S2, [R0,#0x2C]
5DBDB6:  STR             R5, [SP,#0x68+var_68]; CVector *
5DBDB8:  VDIV.F32        S0, S2, S0
5DBDBC:  VSTR            S0, [SP,#0x68+var_64]
5DBDC0:  LDR             R3, [R7,#arg_0]; CEntity *
5DBDC2:  MOV             R0, R9; this
5DBDC4:  MOV             R1, R8; CEntity *
5DBDC6:  MOV             R2, R10; CVector *
5DBDC8:  BLX.W           j__ZN7CWeapon14FireProjectileEP7CEntityP7CVectorS1_S3_f; CWeapon::FireProjectile(CEntity *,CVector *,CEntity *,CVector *,float)
5DBDCC:  CMP             R0, #0
5DBDCE:  BEQ.W           loc_5DC086
5DBDD2:  MOVS            R0, #1
5DBDD4:  STR             R0, [SP,#0x68+var_54]
5DBDD6:  LDRB.W          R0, [R8,#0x3A]; jumptable 005DBB08 cases 19-21
5DBDDA:  AND.W           R0, R0, #7
5DBDDE:  CMP             R0, #3
5DBDE0:  BNE             loc_5DBE3E
5DBDE2:  LDR.W           R0, [R9]
5DBDE6:  MOV             R4, R6
5DBDE8:  CMP             R0, #0x2B ; '+'
5DBDEA:  BEQ             loc_5DBE44
5DBDEC:  LDR.W           R0, [R8,#0x484]
5DBDF0:  ORR.W           R0, R0, #0x10000
5DBDF4:  STR.W           R0, [R8,#0x484]
5DBDF8:  MOV             R0, R8; this
5DBDFA:  BLX.W           j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5DBDFE:  CMP             R0, #1
5DBE00:  BNE             loc_5DBE44
5DBE02:  LDR.W           R0, [R9]
5DBE06:  MOVS            R5, #1
5DBE08:  SUBS            R0, #0x16; switch 17 cases
5DBE0A:  CMP             R0, #0x10
5DBE0C:  BHI             def_5DBE0E; jumptable 005DBE0E default case, case 36
5DBE0E:  TBH.W           [PC,R0,LSL#1]; switch jump
5DBE12:  DCW 0x11; jump table for switch statement
5DBE14:  DCW 0x11
5DBE16:  DCW 0x11
5DBE18:  DCW 0x1E
5DBE1A:  DCW 0x1E
5DBE1C:  DCW 0x1E
5DBE1E:  DCW 0x23
5DBE20:  DCW 0x32
5DBE22:  DCW 0x28
5DBE24:  DCW 0x28
5DBE26:  DCW 0x23
5DBE28:  DCW 0x2D
5DBE2A:  DCW 0x2D
5DBE2C:  DCW 0x37
5DBE2E:  DCW 0x41
5DBE30:  DCW 0x161
5DBE32:  DCW 0x166
5DBE34:  BLX.W           j__ZN10TouchSense8instanceEv; jumptable 005DBE0E cases 22-24
5DBE38:  MOVS            R1, #0x14
5DBE3A:  MOVS            R2, #0x56 ; 'V'
5DBE3C:  B               loc_5DBE88
5DBE3E:  MOVS            R5, #0
5DBE40:  MOV             R4, R6
5DBE42:  B               loc_5DBED2
5DBE44:  MOVS            R5, #0
5DBE46:  B               def_5DBE0E; jumptable 005DBE0E default case, case 36
5DBE48:  STR             R0, [SP,#0x68+var_54]; jumptable 005DBB08 default case
5DBE4A:  MOV             R6, R4
5DBE4C:  B               loc_5DBDD6; jumptable 005DBB08 cases 19-21
5DBE4E:  BLX.W           j__ZN10TouchSense8instanceEv; jumptable 005DBE0E cases 25-27
5DBE52:  MOVS            R1, #0x14
5DBE54:  MOVS            R2, #0x4D ; 'M'
5DBE56:  B               loc_5DBE88
5DBE58:  BLX.W           j__ZN10TouchSense8instanceEv; jumptable 005DBE0E cases 28,32
5DBE5C:  MOVS            R1, #0x14
5DBE5E:  MOVS            R2, #4
5DBE60:  B               loc_5DBE88
5DBE62:  BLX.W           j__ZN10TouchSense8instanceEv; jumptable 005DBE0E cases 30,31
5DBE66:  MOVS            R1, #0x14
5DBE68:  MOVS            R2, #0x16
5DBE6A:  B               loc_5DBE88
5DBE6C:  BLX.W           j__ZN10TouchSense8instanceEv; jumptable 005DBE0E cases 33,34
5DBE70:  MOVS            R1, #0x14
5DBE72:  MOVS            R2, #0x58 ; 'X'
5DBE74:  B               loc_5DBE88
5DBE76:  BLX.W           j__ZN10TouchSense8instanceEv; jumptable 005DBE0E case 29
5DBE7A:  MOVS            R1, #0x14
5DBE7C:  MOVS            R2, #0x57 ; 'W'
5DBE7E:  B               loc_5DBE88
5DBE80:  BLX.W           j__ZN10TouchSense8instanceEv; jumptable 005DBE0E case 35
5DBE84:  MOVS            R1, #0x14
5DBE86:  MOVS            R2, #0x2B ; '+'; int
5DBE88:  STR             R1, [SP,#0x68+var_68]; int
5DBE8A:  MOVS            R1, #2; int
5DBE8C:  MOVS            R3, #0x73 ; 's'; int
5DBE8E:  BLX.W           j__ZN10TouchSense17playBuiltinEffectEiiii; TouchSense::playBuiltinEffect(int,int,int,int)
5DBE92:  MOVS            R5, #1
5DBE94:  ADD.W           R0, R8, #0x398; jumptable 005DBE0E default case, case 36
5DBE98:  MOVS            R1, #0x91; int
5DBE9A:  BLX.W           j__ZN23CAEPedWeaponAudioEntity13AddAudioEventEi; CAEPedWeaponAudioEntity::AddAudioEvent(int)
5DBE9E:  LDR             R0, [R7,#arg_0]
5DBEA0:  CBZ             R0, loc_5DBED2
5DBEA2:  CMP             R5, #1
5DBEA4:  BNE             loc_5DBED2
5DBEA6:  LDRB.W          R0, [R0,#0x3A]
5DBEAA:  AND.W           R0, R0, #7
5DBEAE:  CMP             R0, #3
5DBEB0:  BNE             loc_5DBED0
5DBEB2:  LDR.W           R0, [R9]
5DBEB6:  CMP             R0, #0x17
5DBEB8:  BEQ             loc_5DBF40
5DBEBA:  MOVS            R0, #0
5DBEBC:  MOVS            R1, #0xB6; unsigned __int16
5DBEBE:  STRD.W          R0, R0, [SP,#0x68+var_68]; unsigned __int8
5DBEC2:  MOVS            R2, #0xC8; unsigned int
5DBEC4:  STR             R0, [SP,#0x68+var_60]; unsigned __int8
5DBEC6:  MOV             R0, R8; this
5DBEC8:  MOV.W           R3, #0x3F800000; float
5DBECC:  BLX.W           j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
5DBED0:  MOVS            R5, #1
5DBED2:  LDR.W           R0, [R9]
5DBED6:  CMP             R0, #0x27 ; '''
5DBED8:  BNE             loc_5DBF20
5DBEDA:  MOV             R0, R8
5DBEDC:  MOVS            R1, #0x28 ; '('
5DBEDE:  MOVS            R2, #1
5DBEE0:  MOVS            R3, #1
5DBEE2:  BLX.W           j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
5DBEE6:  MOV             R0, R8
5DBEE8:  MOVS            R1, #0x27 ; '''
5DBEEA:  BLX.W           j__ZN4CPed13GetWeaponSlotE11eWeaponType; CPed::GetWeaponSlot(eWeaponType)
5DBEEE:  RSB.W           R0, R0, R0,LSL#3
5DBEF2:  ADDW            R6, R8, #0x5A4
5DBEF6:  ADD.W           R0, R6, R0,LSL#2
5DBEFA:  LDR             R0, [R0,#0xC]
5DBEFC:  CMP             R0, #1
5DBEFE:  BGT             loc_5DBF20
5DBF00:  MOV             R0, R8
5DBF02:  MOVS            R1, #0x28 ; '('
5DBF04:  BLX.W           j__ZN4CPed13GetWeaponSlotE11eWeaponType; CPed::GetWeaponSlot(eWeaponType)
5DBF08:  RSB.W           R0, R0, R0,LSL#3
5DBF0C:  MOVS            R1, #0x28 ; '('
5DBF0E:  ADD.W           R0, R6, R0,LSL#2
5DBF12:  MOVS            R6, #0
5DBF14:  STR             R6, [R0,#4]
5DBF16:  MOV             R0, R8
5DBF18:  BLX.W           j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
5DBF1C:  CBNZ            R5, loc_5DBF24
5DBF1E:  B               loc_5DBF64
5DBF20:  CMP             R5, #1
5DBF22:  BNE             loc_5DBF44
5DBF24:  LDR.W           R0, [R9]
5DBF28:  MOVS            R6, #1
5DBF2A:  SUBS            R0, #0x10
5DBF2C:  CMP             R0, #0x18
5DBF2E:  BHI             loc_5DBF64
5DBF30:  MOVW            R2, #:lower16:loc_47FFC0
5DBF34:  LSL.W           R1, R6, R0
5DBF38:  MOVT            R2, #:upper16:loc_47FFC0; float
5DBF3C:  TST             R1, R2
5DBF3E:  BEQ             loc_5DBF48
5DBF40:  MOVS            R0, #0x7E ; '~'
5DBF42:  B               loc_5DBF5A
5DBF44:  MOVS            R6, #0
5DBF46:  B               loc_5DBF64
5DBF48:  MOVS            R1, #1
5DBF4A:  LSL.W           R0, R1, R0
5DBF4E:  MOVS            R1, #0x198000D
5DBF54:  TST             R0, R1
5DBF56:  BEQ             loc_5DBF64
5DBF58:  MOVS            R0, #(off_7C+3); this
5DBF5A:  MOV.W           R1, #0x3F800000; unsigned __int16
5DBF5E:  BLX.W           j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
5DBF62:  MOVS            R6, #1
5DBF64:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x5DBF6A)
5DBF66:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
5DBF68:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
5DBF6A:  LDRB.W          R0, [R0,#(byte_796844 - 0x7967F4)]
5DBF6E:  CBNZ            R0, loc_5DBFC4
5DBF70:  LDR.W           R0, [R9,#8]
5DBF74:  MOVW            R2, #0x61A8
5DBF78:  CMP             R0, #1
5DBF7A:  ITT GE
5DBF7C:  SUBGE           R0, #1
5DBF7E:  STRGE.W         R0, [R9,#8]
5DBF82:  LDR.W           R1, [R9,#0xC]
5DBF86:  MOVS            R0, #0
5DBF88:  CMP             R1, R2
5DBF8A:  IT LT
5DBF8C:  MOVLT           R0, #1
5DBF8E:  CMP             R1, #1
5DBF90:  BLT             loc_5DBFC4
5DBF92:  ORRS            R0, R6; this
5DBF94:  CMP             R0, #1
5DBF96:  BNE             loc_5DBFC4
5DBF98:  CMP             R6, #1
5DBF9A:  BNE             loc_5DBFBA
5DBF9C:  BLX.W           j__ZN6CStats21GetPercentageProgressEv; CStats::GetPercentageProgress(void)
5DBFA0:  VLDR            S0, =100.0
5DBFA4:  VMOV            S2, R0
5DBFA8:  VCMPE.F32       S2, S0
5DBFAC:  VMRS            APSR_nzcv, FPSCR
5DBFB0:  BLT             loc_5DBFBA
5DBFB2:  LDR.W           R0, [R9]
5DBFB6:  CMP             R0, #0x28 ; '('
5DBFB8:  BNE             loc_5DBFC4
5DBFBA:  LDR.W           R0, [R9,#0xC]
5DBFBE:  SUBS            R0, #1
5DBFC0:  STR.W           R0, [R9,#0xC]
5DBFC4:  LDR.W           R0, [R9,#8]
5DBFC8:  MOVS            R1, #1
5DBFCA:  STR.W           R1, [R9,#4]
5DBFCE:  CBZ             R0, loc_5DBFEC
5DBFD0:  LDR             R0, [SP,#0x68+var_54]
5DBFD2:  CMP             R0, #1
5DBFD4:  BNE             loc_5DC058
5DBFD6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5DBFE0)
5DBFD8:  LDR.W           R1, [R9]
5DBFDC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5DBFDE:  CMP             R1, #0x2B ; '+'
5DBFE0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5DBFE2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5DBFE4:  BNE             loc_5DC062
5DBFE6:  MOVW            R1, #0x44C
5DBFEA:  B               loc_5DC07E
5DBFEC:  LDR.W           R0, [R9,#0xC]
5DBFF0:  CMP             R0, #0
5DBFF2:  BEQ             loc_5DC096
5DBFF4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5DC000)
5DBFF6:  MOVS            R1, #2
5DBFF8:  STR.W           R1, [R9,#4]
5DBFFC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5DBFFE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5DC000:  LDR             R5, [R0]; CTimer::m_snTimeInMilliseconds
5DC002:  MOV             R0, R4; this
5DC004:  BLX.W           j__ZN11CWeaponInfo19GetWeaponReloadTimeEv; CWeaponInfo::GetWeaponReloadTime(void)
5DC008:  ADD             R0, R5
5DC00A:  STR.W           R0, [R9,#0x10]
5DC00E:  MOV.W           R0, #0xFFFFFFFF; int
5DC012:  BLX.W           j__Z13FindPlayerPedi; FindPlayerPed(int)
5DC016:  CMP             R0, R8
5DC018:  BNE             loc_5DC0C2
5DC01A:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x5DC026)
5DC01C:  MOV.W           R2, #0x194
5DC020:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x5DC028)
5DC022:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
5DC024:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
5DC026:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
5DC028:  LDR             R1, [R1]; CWorld::Players ...
5DC02A:  LDR             R0, [R0]; CWorld::PlayerInFocus
5DC02C:  SMLABB.W        R0, R0, R2, R1
5DC030:  LDRB.W          R0, [R0,#0x14D]
5DC034:  CMP             R0, #0
5DC036:  BEQ             loc_5DC0C2
5DC038:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5DC03E)
5DC03A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5DC03C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5DC03E:  LDR             R5, [R0]; CTimer::m_snTimeInMilliseconds
5DC040:  MOV             R0, R4; this
5DC042:  BLX.W           j__ZN11CWeaponInfo19GetWeaponReloadTimeEv; CWeaponInfo::GetWeaponReloadTime(void)
5DC046:  ASRS            R1, R0, #0x1F
5DC048:  MOVS            R4, #1
5DC04A:  ADD.W           R0, R0, R1,LSR#30
5DC04E:  ADD.W           R0, R5, R0,ASR#2
5DC052:  STR.W           R0, [R9,#0x10]
5DC056:  B               loc_5DC0C4
5DC058:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5DC05E)
5DC05A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5DC05C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5DC05E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5DC060:  B               loc_5DC080
5DC062:  VLDR            S0, [R4,#0x40]
5DC066:  VLDR            S2, [R4,#0x44]
5DC06A:  VSUB.F32        S0, S2, S0
5DC06E:  VLDR            S2, =900.0
5DC072:  VMUL.F32        S0, S0, S2
5DC076:  VCVT.S32.F32    S0, S0
5DC07A:  VMOV            R1, S0
5DC07E:  ADD             R0, R1
5DC080:  MOVS            R5, #1
5DC082:  STR.W           R0, [R9,#0x10]
5DC086:  LDR.W           R0, [R9]
5DC08A:  MOVS            R4, #1
5DC08C:  CBZ             R0, loc_5DC0C4
5DC08E:  CMP             R0, #5
5DC090:  IT NE
5DC092:  MOVNE           R4, R5
5DC094:  B               loc_5DC0C4
5DC096:  LDR             R0, =(TheCamera_ptr - 0x5DC09C)
5DC098:  ADD             R0, PC; TheCamera_ptr
5DC09A:  LDR             R0, [R0]; TheCamera
5DC09C:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
5DC0A0:  ADD.W           R1, R1, R1,LSL#5; int
5DC0A4:  ADD.W           R0, R0, R1,LSL#4
5DC0A8:  LDRH.W          R0, [R0,#0x17E]
5DC0AC:  CMP             R0, #0x2E ; '.'
5DC0AE:  BNE             loc_5DC0C2
5DC0B0:  MOVS            R0, #0; this
5DC0B2:  BLX.W           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5DC0B6:  MOVS            R1, #0; bool
5DC0B8:  MOVS            R2, #1; bool
5DC0BA:  MOVS            R4, #1
5DC0BC:  BLX.W           j__ZN4CPad5ClearEbb; CPad::Clear(bool,bool)
5DC0C0:  B               loc_5DC0C4
5DC0C2:  MOVS            R4, #1
5DC0C4:  MOV             R0, R4
5DC0C6:  ADD             SP, SP, #0x38 ; '8'
5DC0C8:  VPOP            {D8-D9}
5DC0CC:  ADD             SP, SP, #4
5DC0CE:  POP.W           {R8-R11}
5DC0D2:  POP             {R4-R7,PC}
5DC0D4:  BLX.W           j__ZN10TouchSense8instanceEv; jumptable 005DBE0E case 37
5DC0D8:  MOVS            R1, #0x14
5DC0DA:  MOVS            R2, #0x6F ; 'o'
5DC0DC:  B               loc_5DC0E6
5DC0DE:  BLX.W           j__ZN10TouchSense8instanceEv; jumptable 005DBE0E case 38
5DC0E2:  MOVS            R1, #0x14
5DC0E4:  MOVS            R2, #0x79 ; 'y'; int
5DC0E6:  STR             R1, [SP,#0x68+var_68]; int
5DC0E8:  MOVS            R1, #2; int
5DC0EA:  MOVS            R3, #0x73 ; 's'; int
5DC0EC:  BLX.W           j__ZN10TouchSense28startContinuousBuiltinEffectEiiii; TouchSense::startContinuousBuiltinEffect(int,int,int,int)
5DC0F0:  B               loc_5DBE92
