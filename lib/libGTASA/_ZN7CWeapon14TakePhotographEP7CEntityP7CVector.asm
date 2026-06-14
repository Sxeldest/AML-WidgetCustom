; =========================================================
; Game Engine Function: _ZN7CWeapon14TakePhotographEP7CEntityP7CVector
; Address            : 0x5DE9C8 - 0x5DEEFA
; =========================================================

5DE9C8:  PUSH            {R4-R7,LR}
5DE9CA:  ADD             R7, SP, #0xC
5DE9CC:  PUSH.W          {R8-R11}
5DE9D0:  SUB             SP, SP, #4
5DE9D2:  VPUSH           {D8-D11}
5DE9D6:  SUB             SP, SP, #0xA8
5DE9D8:  CBZ             R2, loc_5DE9F8
5DE9DA:  LDR.W           R0, =(g_fxMan_ptr - 0x5DE9EA)
5DE9DE:  MOVS            R1, #0
5DE9E0:  STR             R1, [SP,#0xE8+var_E8]; int
5DE9E2:  ADR.W           R1, aCamflash; "camflash"
5DE9E6:  ADD             R0, PC; g_fxMan_ptr
5DE9E8:  MOVS            R3, #0; int
5DE9EA:  LDR             R0, [R0]; g_fxMan ; int
5DE9EC:  BLX.W           j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
5DE9F0:  CMP             R0, #0
5DE9F2:  IT NE
5DE9F4:  BLXNE.W         j__ZN10FxSystem_c11PlayAndKillEv; FxSystem_c::PlayAndKill(void)
5DE9F8:  LDR.W           R0, =(TheCamera_ptr - 0x5DEA00)
5DE9FC:  ADD             R0, PC; TheCamera_ptr
5DE9FE:  LDR             R0, [R0]; TheCamera
5DEA00:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
5DEA04:  ADD.W           R1, R1, R1,LSL#5
5DEA08:  ADD.W           R0, R0, R1,LSL#4
5DEA0C:  LDRH.W          R0, [R0,#0x17E]; this
5DEA10:  CMP             R0, #0x2E ; '.'
5DEA12:  BNE.W           loc_5DEEEA
5DEA16:  BLX.W           j__ZN8CPickups12PictureTakenEv; CPickups::PictureTaken(void)
5DEA1A:  LDR.W           R0, =(_ZN7CWeapon13ms_bTakePhotoE_ptr - 0x5DEA2C)
5DEA1E:  MOVS            R3, #1
5DEA20:  LDR.W           R1, =(_ZN7CWeapon26ms_bPhotographHasBeenTakenE_ptr - 0x5DEA2E)
5DEA24:  LDR.W           R2, =(_ZN7CWeapon18m_nTakePhotoFramesE_ptr - 0x5DEA30)
5DEA28:  ADD             R0, PC; _ZN7CWeapon13ms_bTakePhotoE_ptr
5DEA2A:  ADD             R1, PC; _ZN7CWeapon26ms_bPhotographHasBeenTakenE_ptr
5DEA2C:  ADD             R2, PC; _ZN7CWeapon18m_nTakePhotoFramesE_ptr
5DEA2E:  LDR             R0, [R0]; CWeapon::ms_bTakePhoto ...
5DEA30:  LDR             R1, [R1]; CWeapon::ms_bPhotographHasBeenTaken ...
5DEA32:  LDR             R2, [R2]; float
5DEA34:  STRB            R3, [R0]; CWeapon::ms_bTakePhoto
5DEA36:  MOVS            R0, #2
5DEA38:  STRB            R3, [R1]; CWeapon::ms_bPhotographHasBeenTaken
5DEA3A:  MOV.W           R1, #0x3F800000; unsigned __int16
5DEA3E:  STR             R0, [R2]; CWeapon::m_nTakePhotoFrames
5DEA40:  MOVS            R0, #(dword_A4+2); this
5DEA42:  BLX.W           j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
5DEA46:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x5DEA4E)
5DEA4A:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
5DEA4C:  LDR             R0, [R0]; CPools::ms_pPedPool ...
5DEA4E:  LDR.W           R8, [R0]; CPools::ms_pPedPool
5DEA52:  LDR.W           R0, [R8,#8]
5DEA56:  CMP             R0, #0
5DEA58:  BEQ.W           loc_5DECF2
5DEA5C:  MOVW            R1, #0x7CC
5DEA60:  SUBS            R5, R0, #1
5DEA62:  MULS            R1, R0
5DEA64:  LDR.W           R0, =(TheCamera_ptr - 0x5DEA70)
5DEA68:  VMOV.F32        S22, #1.5
5DEA6C:  ADD             R0, PC; TheCamera_ptr
5DEA6E:  VLDR            S16, =125.0
5DEA72:  VLDR            S18, =0.1
5DEA76:  MOVW            R3, #0x484
5DEA7A:  LDR.W           R9, [R0]; TheCamera
5DEA7E:  LDR.W           R0, =(RsGlobal_ptr - 0x5DEA8E)
5DEA82:  SUB.W           R6, R1, #0x348
5DEA86:  VLDR            S20, =0.9
5DEA8A:  ADD             R0, PC; RsGlobal_ptr
5DEA8C:  LDR             R0, [R0]; RsGlobal
5DEA8E:  STR             R0, [SP,#0xE8+var_BC]
5DEA90:  LDR.W           R0, =(RsGlobal_ptr - 0x5DEA98)
5DEA94:  ADD             R0, PC; RsGlobal_ptr
5DEA96:  LDR             R0, [R0]; RsGlobal
5DEA98:  STR             R0, [SP,#0xE8+var_C0]
5DEA9A:  LDR.W           R0, =(TheCamera_ptr - 0x5DEAA2)
5DEA9E:  ADD             R0, PC; TheCamera_ptr
5DEAA0:  LDR             R0, [R0]; TheCamera
5DEAA2:  STR             R0, [SP,#0xE8+var_C4]
5DEAA4:  B               loc_5DEAB4
5DEAA6:  ALIGN 4
5DEAA8:  DCFS 125.0
5DEAAC:  DCFS 0.1
5DEAB0:  DCFS 0.9
5DEAB4:  LDR.W           R0, [R8,#4]
5DEAB8:  LDRSB           R0, [R0,R5]
5DEABA:  CMP             R0, #0
5DEABC:  BLT.W           loc_5DECE6
5DEAC0:  LDR.W           R0, [R8]
5DEAC4:  ADD.W           R10, R0, R6
5DEAC8:  CMP             R10, R3
5DEACA:  BEQ.W           loc_5DECE6
5DEACE:  MOVW            R0, #0xFEC0
5DEAD2:  LDR.W           R1, [R9,#(dword_951FBC - 0x951FA8)]
5DEAD6:  MOVT            R0, #0xFFFF
5DEADA:  ADD.W           R0, R10, R0,LSL#2
5DEADE:  LDR.W           R0, [R0,#0x90]
5DEAE2:  ADD.W           R2, R0, #0x30 ; '0'
5DEAE6:  CMP             R0, #0
5DEAE8:  IT EQ
5DEAEA:  SUBEQ.W         R2, R10, #0x480
5DEAEE:  ADD.W           R0, R1, #0x30 ; '0'
5DEAF2:  CMP             R1, #0
5DEAF4:  VLDR            S0, [R2]
5DEAF8:  IT EQ
5DEAFA:  ADDEQ.W         R0, R9, #4
5DEAFE:  VLDR            D16, [R2,#4]
5DEB02:  VLDR            S2, [R0]
5DEB06:  VLDR            D17, [R0,#4]
5DEB0A:  VSUB.F32        S0, S0, S2
5DEB0E:  VSUB.F32        D16, D16, D17
5DEB12:  VMUL.F32        D1, D16, D16
5DEB16:  VMUL.F32        S0, S0, S0
5DEB1A:  VADD.F32        S0, S0, S2
5DEB1E:  VADD.F32        S0, S0, S3
5DEB22:  VSQRT.F32       S0, S0
5DEB26:  VCMPE.F32       S0, S16
5DEB2A:  VMRS            APSR_nzcv, FPSCR
5DEB2E:  BGE.W           loc_5DECE6
5DEB32:  SUBW            R11, R10, #0x484
5DEB36:  ADD             R4, SP, #0xE8+var_60
5DEB38:  MOVS            R2, #5
5DEB3A:  MOVS            R3, #0
5DEB3C:  MOV             R0, R11; this
5DEB3E:  MOV             R1, R4
5DEB40:  BLX.W           j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
5DEB44:  MOVS            R0, #0
5DEB46:  ADD             R1, SP, #0xE8+var_54
5DEB48:  STR             R0, [SP,#0xE8+var_E8]
5DEB4A:  MOVS            R0, #1
5DEB4C:  ADD             R2, SP, #0xE8+var_44
5DEB4E:  ADD             R3, SP, #0xE8+var_48
5DEB50:  STR             R0, [SP,#0xE8+var_E4]
5DEB52:  MOV             R0, R4
5DEB54:  BLX.W           j__ZN7CSprite15CalcScreenCoorsERK5RwV3dPS0_PfS4_bb; CSprite::CalcScreenCoors(RwV3d const&,RwV3d*,float *,float *,bool,bool)
5DEB58:  MOVW            R3, #0x484
5DEB5C:  CMP             R0, #1
5DEB5E:  BNE.W           loc_5DECE6
5DEB62:  LDR             R0, [SP,#0xE8+var_BC]
5DEB64:  VLDR            S0, [R0,#4]
5DEB68:  VCVT.F32.S32    S0, S0
5DEB6C:  VLDR            S2, [SP,#0xE8+var_54]
5DEB70:  VMUL.F32        S4, S0, S18
5DEB74:  VCMPE.F32       S2, S4
5DEB78:  VMRS            APSR_nzcv, FPSCR
5DEB7C:  BLE.W           loc_5DECE6
5DEB80:  VMUL.F32        S0, S0, S20
5DEB84:  VCMPE.F32       S2, S0
5DEB88:  VMRS            APSR_nzcv, FPSCR
5DEB8C:  BGE.W           loc_5DECE6
5DEB90:  LDR             R0, [SP,#0xE8+var_C0]
5DEB92:  VLDR            S0, [R0,#8]
5DEB96:  VCVT.F32.S32    S0, S0
5DEB9A:  VLDR            S2, [SP,#0xE8+var_50]
5DEB9E:  VMUL.F32        S4, S0, S18
5DEBA2:  VCMPE.F32       S2, S4
5DEBA6:  VMRS            APSR_nzcv, FPSCR
5DEBAA:  BLE.W           loc_5DECE6
5DEBAE:  VMUL.F32        S0, S0, S20
5DEBB2:  VCMPE.F32       S2, S0
5DEBB6:  VMRS            APSR_nzcv, FPSCR
5DEBBA:  BGE.W           loc_5DECE6
5DEBBE:  LDR             R4, [SP,#0xE8+var_C4]
5DEBC0:  VLDR            S0, [SP,#0xE8+var_60]
5DEBC4:  ADDS            R1, R4, #4
5DEBC6:  VLDR            S2, [SP,#0xE8+var_60+4]
5DEBCA:  LDR             R0, [R4,#0x14]
5DEBCC:  VLDR            S4, [SP,#0xE8+var_58]
5DEBD0:  CMP             R0, #0
5DEBD2:  STR             R1, [SP,#0xE8+var_C8]
5DEBD4:  IT NE
5DEBD6:  ADDNE.W         R1, R0, #0x30 ; '0'
5DEBDA:  ADD             R0, SP, #0xE8+var_70; this
5DEBDC:  VLDR            S6, [R1]
5DEBE0:  VLDR            S8, [R1,#4]
5DEBE4:  VLDR            S10, [R1,#8]
5DEBE8:  VSUB.F32        S0, S6, S0
5DEBEC:  VSUB.F32        S2, S8, S2
5DEBF0:  VSUB.F32        S4, S10, S4
5DEBF4:  VSTR            S0, [SP,#0xE8+var_70]
5DEBF8:  VSTR            S2, [SP,#0xE8+var_70+4]
5DEBFC:  VSTR            S4, [SP,#0xE8+var_68]
5DEC00:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5DEC04:  VLDR            S0, [SP,#0xE8+var_70]
5DEC08:  ADDW            R0, R4, #0x914
5DEC0C:  VLDR            S2, [SP,#0xE8+var_70+4]
5DEC10:  ADD.W           R1, R4, #0x910
5DEC14:  VLDR            S4, [SP,#0xE8+var_68]
5DEC18:  VMUL.F32        S0, S0, S22
5DEC1C:  VMUL.F32        S2, S2, S22
5DEC20:  VLDR            S6, [SP,#0xE8+var_60]
5DEC24:  VMUL.F32        S4, S4, S22
5DEC28:  VLDR            S8, [SP,#0xE8+var_60+4]
5DEC2C:  VLDR            S10, [SP,#0xE8+var_58]
5DEC30:  ADD             R2, SP, #0xE8+var_9C
5DEC32:  ADD             R3, SP, #0xE8+var_A0
5DEC34:  VSTR            S0, [SP,#0xE8+var_70]
5DEC38:  VADD.F32        S0, S0, S6
5DEC3C:  VSTR            S2, [SP,#0xE8+var_70+4]
5DEC40:  VADD.F32        S2, S2, S8
5DEC44:  VSTR            S4, [SP,#0xE8+var_68]
5DEC48:  VADD.F32        S4, S4, S10
5DEC4C:  VSTR            S0, [SP,#0xE8+var_60]
5DEC50:  VSTR            S2, [SP,#0xE8+var_60+4]
5DEC54:  VLDR            S2, [R0]
5DEC58:  ADDW            R0, R4, #0x90C
5DEC5C:  VLDR            S0, [R1]
5DEC60:  VSTR            S4, [SP,#0xE8+var_58]
5DEC64:  VADD.F32        S2, S2, S2
5DEC68:  VLDR            S4, [R0]
5DEC6C:  VADD.F32        S0, S0, S0
5DEC70:  LDR             R0, [R4,#0x14]
5DEC72:  VADD.F32        S4, S4, S4
5DEC76:  LDR             R1, [SP,#0xE8+var_C8]
5DEC78:  CMP             R0, #0
5DEC7A:  IT NE
5DEC7C:  ADDNE.W         R1, R0, #0x30 ; '0'
5DEC80:  VLDR            D16, [SP,#0xE8+var_60]
5DEC84:  VLDR            S6, [R1]
5DEC88:  VLDR            S8, [R1,#4]
5DEC8C:  VLDR            S10, [R1,#8]
5DEC90:  MOVS            R1, #1
5DEC92:  VADD.F32        S0, S0, S8
5DEC96:  LDR             R0, [SP,#0xE8+var_58]
5DEC98:  VADD.F32        S4, S4, S6
5DEC9C:  STR             R0, [SP,#0xE8+var_B0]
5DEC9E:  VADD.F32        S2, S2, S10
5DECA2:  MOVS            R0, #0
5DECA4:  VSTR            D16, [SP,#0xE8+var_B8]
5DECA8:  VSTR            S4, [SP,#0xE8+var_AC]
5DECAC:  VSTR            S0, [SP,#0xE8+var_A8]
5DECB0:  VSTR            S2, [SP,#0xE8+var_A4]
5DECB4:  STRD.W          R1, R1, [SP,#0xE8+var_E8]
5DECB8:  STRD.W          R1, R1, [SP,#0xE8+var_E0]
5DECBC:  STRD.W          R1, R1, [SP,#0xE8+var_D8]
5DECC0:  ADD             R1, SP, #0xE8+var_B8
5DECC2:  STRD.W          R0, R0, [SP,#0xE8+var_D0]
5DECC6:  ADD             R0, SP, #0xE8+var_AC
5DECC8:  BLX.W           j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
5DECCC:  CMP             R0, #1
5DECCE:  BNE             loc_5DECD6
5DECD0:  LDR             R0, [SP,#0xE8+var_A0]
5DECD2:  CMP             R11, R0
5DECD4:  BNE             loc_5DECE2
5DECD6:  LDR.W           R0, [R10,#4]
5DECDA:  ORR.W           R0, R0, #0x40000
5DECDE:  STR.W           R0, [R10,#4]
5DECE2:  MOVW            R3, #0x484
5DECE6:  SUBS            R5, #1
5DECE8:  SUBW            R6, R6, #0x7CC
5DECEC:  ADDS            R0, R5, #1
5DECEE:  BNE.W           loc_5DEAB4
5DECF2:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x5DECF8)
5DECF4:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
5DECF6:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
5DECF8:  LDR.W           R11, [R0]; CPools::ms_pObjectPool
5DECFC:  LDR.W           R0, [R11,#8]
5DED00:  CMP             R0, #0
5DED02:  BEQ.W           loc_5DEEE6
5DED06:  MOV.W           R1, #0x1A4
5DED0A:  SUB.W           R8, R0, #1
5DED0E:  MULS            R1, R0
5DED10:  ADD             R0, SP, #0xE8+var_70
5DED12:  ORR.W           R6, R0, #4
5DED16:  LDR             R0, =(TheCamera_ptr - 0x5DED20)
5DED18:  VLDR            S16, =125.0
5DED1C:  ADD             R0, PC; TheCamera_ptr
5DED1E:  VLDR            S18, =0.1
5DED22:  SUB.W           R9, R1, #0x60 ; '`'
5DED26:  VLDR            S20, =0.9
5DED2A:  LDR             R4, [R0]; TheCamera
5DED2C:  LDR             R0, =(RsGlobal_ptr - 0x5DED32)
5DED2E:  ADD             R0, PC; RsGlobal_ptr
5DED30:  LDR             R0, [R0]; RsGlobal
5DED32:  STR             R0, [SP,#0xE8+var_BC]
5DED34:  LDR             R0, =(RsGlobal_ptr - 0x5DED3A)
5DED36:  ADD             R0, PC; RsGlobal_ptr
5DED38:  LDR             R0, [R0]; RsGlobal
5DED3A:  STR             R0, [SP,#0xE8+var_C0]
5DED3C:  LDR             R0, =(TheCamera_ptr - 0x5DED42)
5DED3E:  ADD             R0, PC; TheCamera_ptr
5DED40:  LDR             R0, [R0]; TheCamera
5DED42:  STR             R0, [SP,#0xE8+var_C4]
5DED44:  LDR.W           R0, [R11,#4]
5DED48:  LDRSB.W         R0, [R0,R8]
5DED4C:  CMP             R0, #0
5DED4E:  BLT.W           loc_5DEED6
5DED52:  LDR.W           R10, [R11]
5DED56:  ADD.W           R5, R10, R9
5DED5A:  CMP.W           R5, #0x144
5DED5E:  BEQ.W           loc_5DEED6
5DED62:  MOVW            R0, #0xFED0
5DED66:  LDR             R2, [R4,#(dword_951FBC - 0x951FA8)]
5DED68:  MOVT            R0, #0xFFFF
5DED6C:  LDR             R0, [R5,R0]
5DED6E:  ADD.W           R1, R0, #0x30 ; '0'
5DED72:  CMP             R0, #0
5DED74:  MOV             R0, #0xFFFFFEC0
5DED7C:  IT EQ
5DED7E:  ADDEQ           R1, R5, R0
5DED80:  VLDR            D16, [R1]
5DED84:  CMP             R2, #0
5DED86:  LDR             R0, [R1,#8]
5DED88:  STR             R0, [SP,#0xE8+var_68]
5DED8A:  ADD.W           R0, R2, #0x30 ; '0'
5DED8E:  VSTR            D16, [SP,#0xE8+var_70]
5DED92:  VLDR            S0, [SP,#0xE8+var_70]
5DED96:  IT EQ
5DED98:  ADDEQ           R0, R4, #4
5DED9A:  VLDR            S2, [R0]
5DED9E:  VLDR            D16, [R6]
5DEDA2:  VSUB.F32        S0, S0, S2
5DEDA6:  VLDR            D17, [R0,#4]
5DEDAA:  VSUB.F32        D16, D16, D17
5DEDAE:  VMUL.F32        D1, D16, D16
5DEDB2:  VMUL.F32        S0, S0, S0
5DEDB6:  VADD.F32        S0, S0, S2
5DEDBA:  VADD.F32        S0, S0, S3
5DEDBE:  VSQRT.F32       S0, S0
5DEDC2:  VCMPE.F32       S0, S16
5DEDC6:  VMRS            APSR_nzcv, FPSCR
5DEDCA:  BGE.W           loc_5DEED6
5DEDCE:  MOVS            R0, #0
5DEDD0:  ADD             R1, SP, #0xE8+var_54
5DEDD2:  STR             R0, [SP,#0xE8+var_E8]
5DEDD4:  MOVS            R0, #1
5DEDD6:  STR             R0, [SP,#0xE8+var_E4]
5DEDD8:  ADD             R0, SP, #0xE8+var_70
5DEDDA:  ADD             R2, SP, #0xE8+var_44
5DEDDC:  ADD             R3, SP, #0xE8+var_48
5DEDDE:  BLX.W           j__ZN7CSprite15CalcScreenCoorsERK5RwV3dPS0_PfS4_bb; CSprite::CalcScreenCoors(RwV3d const&,RwV3d*,float *,float *,bool,bool)
5DEDE2:  CMP             R0, #1
5DEDE4:  BNE             loc_5DEED6
5DEDE6:  LDR             R0, [SP,#0xE8+var_BC]
5DEDE8:  VLDR            S0, [R0,#4]
5DEDEC:  VCVT.F32.S32    S0, S0
5DEDF0:  VLDR            S2, [SP,#0xE8+var_54]
5DEDF4:  VMUL.F32        S4, S0, S18
5DEDF8:  VCMPE.F32       S2, S4
5DEDFC:  VMRS            APSR_nzcv, FPSCR
5DEE00:  BLE             loc_5DEED6
5DEE02:  VMUL.F32        S0, S0, S20
5DEE06:  VCMPE.F32       S2, S0
5DEE0A:  VMRS            APSR_nzcv, FPSCR
5DEE0E:  BGE             loc_5DEED6
5DEE10:  LDR             R0, [SP,#0xE8+var_C0]
5DEE12:  VLDR            S0, [R0,#8]
5DEE16:  VCVT.F32.S32    S0, S0
5DEE1A:  VLDR            S2, [SP,#0xE8+var_50]
5DEE1E:  VMUL.F32        S4, S0, S18
5DEE22:  VCMPE.F32       S2, S4
5DEE26:  VMRS            APSR_nzcv, FPSCR
5DEE2A:  BLE             loc_5DEED6
5DEE2C:  VMUL.F32        S0, S0, S20
5DEE30:  VCMPE.F32       S2, S0
5DEE34:  VMRS            APSR_nzcv, FPSCR
5DEE38:  BGE             loc_5DEED6
5DEE3A:  LDR             R3, [SP,#0xE8+var_C4]
5DEE3C:  ADDW            R1, R3, #0x90C
5DEE40:  ADDW            R0, R3, #0x914
5DEE44:  LDR             R2, [R3,#0x14]
5DEE46:  VLDR            S0, [R1]
5DEE4A:  ADD.W           R1, R3, #0x910
5DEE4E:  VLDR            S4, [R0]
5DEE52:  ADD.W           R0, R2, #0x30 ; '0'
5DEE56:  VLDR            S2, [R1]
5DEE5A:  VADD.F32        S0, S0, S0
5DEE5E:  VADD.F32        S4, S4, S4
5DEE62:  CMP             R2, #0
5DEE64:  VADD.F32        S2, S2, S2
5DEE68:  IT EQ
5DEE6A:  ADDEQ           R0, R3, #4
5DEE6C:  VLDR            S6, [R0]
5DEE70:  ADD             R1, SP, #0xE8+var_B8
5DEE72:  VLDR            S8, [R0,#4]
5DEE76:  ADD             R2, SP, #0xE8+var_9C
5DEE78:  VLDR            S10, [R0,#8]
5DEE7C:  ADD             R3, SP, #0xE8+var_A0
5DEE7E:  LDR             R0, [SP,#0xE8+var_68]
5DEE80:  VADD.F32        S0, S0, S6
5DEE84:  VLDR            D16, [SP,#0xE8+var_70]
5DEE88:  VADD.F32        S4, S4, S10
5DEE8C:  STR             R0, [SP,#0xE8+var_B0]
5DEE8E:  VADD.F32        S2, S2, S8
5DEE92:  MOVS            R0, #1
5DEE94:  VSTR            D16, [SP,#0xE8+var_B8]
5DEE98:  VSTR            S0, [SP,#0xE8+var_AC]
5DEE9C:  VSTR            S2, [SP,#0xE8+var_A8]
5DEEA0:  VSTR            S4, [SP,#0xE8+var_A4]
5DEEA4:  STRD.W          R0, R0, [SP,#0xE8+var_E8]
5DEEA8:  STRD.W          R0, R0, [SP,#0xE8+var_E0]
5DEEAC:  STRD.W          R0, R0, [SP,#0xE8+var_D8]
5DEEB0:  MOVS            R0, #0
5DEEB2:  STRD.W          R0, R0, [SP,#0xE8+var_D0]
5DEEB6:  ADD             R0, SP, #0xE8+var_AC
5DEEB8:  BLX.W           j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
5DEEBC:  CMP             R0, #1
5DEEBE:  BNE             loc_5DEECA
5DEEC0:  LDR             R0, [SP,#0xE8+var_A0]
5DEEC2:  SUB.W           R1, R5, #0x144
5DEEC6:  CMP             R1, R0
5DEEC8:  BNE             loc_5DEED6
5DEECA:  LDR.W           R0, [R10,R9]
5DEECE:  ORR.W           R0, R0, #0x1000
5DEED2:  STR.W           R0, [R10,R9]
5DEED6:  SUB.W           R8, R8, #1
5DEEDA:  SUB.W           R9, R9, #0x1A4
5DEEDE:  ADDS.W          R0, R8, #1
5DEEE2:  BNE.W           loc_5DED44
5DEEE6:  MOVS            R0, #1
5DEEE8:  B               loc_5DEEEC
5DEEEA:  MOVS            R0, #0
5DEEEC:  ADD             SP, SP, #0xA8
5DEEEE:  VPOP            {D8-D11}
5DEEF2:  ADD             SP, SP, #4
5DEEF4:  POP.W           {R8-R11}
5DEEF8:  POP             {R4-R7,PC}
