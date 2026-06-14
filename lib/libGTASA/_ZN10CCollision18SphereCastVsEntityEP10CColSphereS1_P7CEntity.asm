; =========================================================
; Game Engine Function: _ZN10CCollision18SphereCastVsEntityEP10CColSphereS1_P7CEntity
; Address            : 0x2DEAE0 - 0x2DF130
; =========================================================

2DEAE0:  PUSH            {R4-R7,LR}
2DEAE2:  ADD             R7, SP, #0xC
2DEAE4:  PUSH.W          {R8-R11}
2DEAE8:  SUB             SP, SP, #4
2DEAEA:  VPUSH           {D8}
2DEAEE:  SUB             SP, SP, #0x100
2DEAF0:  MOV             R4, R2
2DEAF2:  MOV             R11, R0
2DEAF4:  LDRB            R0, [R4,#0x1C]
2DEAF6:  MOV             R6, R1
2DEAF8:  LSLS            R0, R0, #0x1F
2DEAFA:  BEQ             loc_2DEB0C
2DEAFC:  LDR.W           R0, =(TheCamera_ptr - 0x2DEB06)
2DEB00:  MOV             R1, R4; CEntity *
2DEB02:  ADD             R0, PC; TheCamera_ptr
2DEB04:  LDR             R0, [R0]; TheCamera ; this
2DEB06:  BLX             j__ZN7CCamera21IsExtraEntityToIgnoreEP7CEntity; CCamera::IsExtraEntityToIgnore(CEntity *)
2DEB0A:  CBZ             R0, loc_2DEB22
2DEB0C:  MOV.W           R10, #0
2DEB10:  AND.W           R0, R10, #1
2DEB14:  ADD             SP, SP, #0x100
2DEB16:  VPOP            {D8}
2DEB1A:  ADD             SP, SP, #4
2DEB1C:  POP.W           {R8-R11}
2DEB20:  POP             {R4-R7,PC}
2DEB22:  LDR             R0, [R4,#0x14]
2DEB24:  CBNZ            R0, loc_2DEB36
2DEB26:  MOV             R0, R4; this
2DEB28:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
2DEB2C:  LDR             R1, [R4,#0x14]; CMatrix *
2DEB2E:  ADDS            R0, R4, #4; this
2DEB30:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
2DEB34:  LDR             R0, [R4,#0x14]; CMatrix *
2DEB36:  ADD.W           R9, SP, #0x128+var_98
2DEB3A:  MOV.W           R10, #0
2DEB3E:  STRD.W          R10, R10, [SP,#0x128+var_58]
2DEB42:  MOV             R1, R9; CMatrix *
2DEB44:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
2DEB48:  ADD             R5, SP, #0x128+var_B8
2DEB4A:  MOV             R1, R11; CVector *
2DEB4C:  MOV             R2, R6; CVector *
2DEB4E:  MOV             R0, R5; this
2DEB50:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
2DEB54:  ADD.W           R8, SP, #0x128+var_3C
2DEB58:  MOV             R1, R9
2DEB5A:  MOV             R2, R5
2DEB5C:  MOV             R0, R8
2DEB5E:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DEB62:  ADD             R6, SP, #0x128+var_50
2DEB64:  ADD.W           R2, R5, #0x10
2DEB68:  MOV             R1, R9
2DEB6A:  MOV             R0, R6
2DEB6C:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DEB70:  ADD             R0, SP, #0x128+var_D8; this
2DEB72:  MOV             R1, R8; CVector *
2DEB74:  MOV             R2, R6; CVector *
2DEB76:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
2DEB7A:  VLDR            D16, [SP,#0x128+var_D8]
2DEB7E:  ADD             R6, SP, #0x128+var_E8
2DEB80:  LDR             R0, [SP,#0x128+var_D0]
2DEB82:  MOV.W           R8, #0xFF
2DEB86:  STR             R0, [SP,#0x128+var_E0]
2DEB88:  ADD             R0, SP, #0x128+var_3C; this
2DEB8A:  VSTR            D16, [SP,#0x128+var_E8]
2DEB8E:  MOV             R2, R6; CVector *
2DEB90:  LDR.W           R1, [R11,#0xC]; float
2DEB94:  MOVS            R3, #0; unsigned __int8
2DEB96:  STRD.W          R10, R8, [SP,#0x128+var_128]; unsigned __int8
2DEB9A:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
2DEB9E:  VLDR            D16, [SP,#0x128+var_C8]
2DEBA2:  MOV             R2, R6; CVector *
2DEBA4:  LDR             R0, [SP,#0x128+var_C0]
2DEBA6:  MOVS            R3, #0; unsigned __int8
2DEBA8:  STR             R0, [SP,#0x128+var_E0]
2DEBAA:  ADD             R0, SP, #0x128+var_50; this
2DEBAC:  VSTR            D16, [SP,#0x128+var_E8]
2DEBB0:  LDR.W           R1, [R11,#0xC]; float
2DEBB4:  STRD.W          R10, R8, [SP,#0x128+var_128]; unsigned __int8
2DEBB8:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
2DEBBC:  MOV             R0, R9; this
2DEBBE:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
2DEBC2:  MOV             R0, R4; this
2DEBC4:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
2DEBC8:  MOV             R9, R0
2DEBCA:  LDR.W           R5, [R9,#0x2C]
2DEBCE:  CMP             R5, #0
2DEBD0:  BEQ             loc_2DEB10
2DEBD2:  ADD             R6, SP, #0x128+var_D8
2DEBD4:  ADD.W           R2, R9, #0xC; CVector *
2DEBD8:  MOV             R1, R9; CVector *
2DEBDA:  MOVS            R3, #0; unsigned __int8
2DEBDC:  MOV             R0, R6; this
2DEBDE:  STRD.W          R10, R8, [SP,#0x128+var_128]; unsigned __int8
2DEBE2:  BLX             j__ZN7CColBox3SetERK7CVectorS2_hhh; CColBox::Set(CVector const&,CVector const&,uchar,uchar,uchar)
2DEBE6:  ADD.W           R11, SP, #0x128+var_B8
2DEBEA:  VLD1.64         {D16-D17}, [R6]
2DEBEE:  ADDS            R6, #0xC
2DEBF0:  ADD.W           R8, R11, #0xC
2DEBF4:  MOV             R0, R11
2DEBF6:  VLD1.32         {D18-D19}, [R6]
2DEBFA:  ADD             R1, SP, #0x128+var_3C; CVector *
2DEBFC:  ADD             R2, SP, #0x128+var_50; CVector *
2DEBFE:  VST1.64         {D16-D17}, [R0]!
2DEC02:  VLDR            S0, [SP,#0x128+var_B8]
2DEC06:  VLDR            S2, [SP,#0x128+var_B4]
2DEC0A:  VLDR            S4, [SP,#0x128+var_B0]
2DEC0E:  VST1.32         {D18-D19}, [R8]
2DEC12:  VLDR            S6, [SP,#0x128+var_30]
2DEC16:  VLDR            S8, [R0]
2DEC1A:  VLDR            S10, [SP,#0x128+var_AC]
2DEC1E:  VSUB.F32        S2, S2, S6
2DEC22:  VLDR            S12, [SP,#0x128+var_A4]
2DEC26:  VADD.F32        S8, S6, S8
2DEC2A:  VSUB.F32        S0, S0, S6
2DEC2E:  VSUB.F32        S4, S4, S6
2DEC32:  VADD.F32        S10, S6, S10
2DEC36:  VADD.F32        S6, S6, S12
2DEC3A:  VSTR            S2, [SP,#0x128+var_B4]
2DEC3E:  VSTR            S8, [R0]
2DEC42:  ADD             R0, SP, #0x128+var_98; this
2DEC44:  VSTR            S0, [SP,#0x128+var_B8]
2DEC48:  VSTR            S4, [SP,#0x128+var_B0]
2DEC4C:  VSTR            S10, [SP,#0x128+var_AC]
2DEC50:  VSTR            S6, [SP,#0x128+var_A4]
2DEC54:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
2DEC58:  MOV             R1, R11; CColLine *
2DEC5A:  BLX             j__ZN10CCollision14TestLineBox_DWERK8CColLineRK4CBox; CCollision::TestLineBox_DW(CColLine const&,CBox const&)
2DEC5E:  CMP             R0, #1
2DEC60:  BNE.W           loc_2DEB10
2DEC64:  LDR.W           R0, =(gpColCache_ptr - 0x2DEC74)
2DEC68:  MOV.W           R11, #0
2DEC6C:  STR             R6, [SP,#0x128+var_10C]
2DEC6E:  ADD             R6, SP, #0x128+var_50
2DEC70:  ADD             R0, PC; gpColCache_ptr
2DEC72:  STR             R4, [SP,#0x128+var_F8]
2DEC74:  STR             R5, [SP,#0x128+var_EC]
2DEC76:  ADD             R4, SP, #0x128+var_3C
2DEC78:  LDR             R0, [R0]; gpColCache
2DEC7A:  LDRSH.W         R5, [R5]
2DEC7E:  LDR             R0, [R0]
2DEC80:  STR             R0, [SP,#0x128+var_FC]
2DEC82:  LDR.W           R0, =(gNumColCacheEntries_ptr - 0x2DEC8A)
2DEC86:  ADD             R0, PC; gNumColCacheEntries_ptr
2DEC88:  LDR             R0, [R0]; gNumColCacheEntries
2DEC8A:  STR             R0, [SP,#0x128+var_F0]
2DEC8C:  LDR.W           R0, =(gNumColCacheEntries_ptr - 0x2DEC94)
2DEC90:  ADD             R0, PC; gNumColCacheEntries_ptr
2DEC92:  LDR             R0, [R0]; gNumColCacheEntries
2DEC94:  STR             R0, [SP,#0x128+var_F4]
2DEC96:  B               loc_2DECD2
2DEC98:  LDR             R0, [SP,#0x128+var_F0]
2DEC9A:  LDR             R0, [R0]
2DEC9C:  CMP             R0, #0x62 ; 'b'
2DEC9E:  BGT.W           loc_2DF12A
2DECA2:  LDR             R2, [SP,#0x128+var_FC]
2DECA4:  LSLS            R1, R0, #4
2DECA6:  MOVS            R3, #0
2DECA8:  ADD.W           R0, R2, R0,LSL#4
2DECAC:  STRB            R3, [R2,R1]
2DECAE:  MOVS.W          R1, R11,LSL#31
2DECB2:  MOV.W           R11, #1
2DECB6:  LDR             R1, [SP,#0x128+var_F8]
2DECB8:  IT NE
2DECBA:  MOVNE           R1, #0
2DECBC:  STR             R1, [R0,#4]
2DECBE:  LDR             R3, [SP,#0x128+var_F4]
2DECC0:  LDR             R0, [R3]
2DECC2:  ADDS            R1, R0, #1
2DECC4:  STR             R1, [R3]
2DECC6:  LSLS            R1, R0, #4
2DECC8:  ADD.W           R0, R2, R0,LSL#4
2DECCC:  MOVS            R3, #(stderr+2); CColSphere *
2DECCE:  STRB            R3, [R2,R1]
2DECD0:  STRH            R5, [R0,#0xA]
2DECD2:  ADD.W           R0, R5, R5,LSL#2
2DECD6:  MOV             R1, #0xFFFFFFEC
2DECDA:  ADD.W           R10, R1, R0,LSL#2
2DECDE:  CMP             R5, #1
2DECE0:  BLT             loc_2DECFE
2DECE2:  LDR             R0, [SP,#0x128+var_EC]
2DECE4:  MOV             R1, R6; CColSphere *
2DECE6:  SUBS            R5, #1
2DECE8:  LDR             R0, [R0,#8]
2DECEA:  ADD.W           R2, R0, R10; CColSphere *
2DECEE:  MOV             R0, R4; this
2DECF0:  BLX             j__ZN10CCollision18SphereCastVsSphereEP10CColSphereS1_S1_; CCollision::SphereCastVsSphere(CColSphere *,CColSphere *,CColSphere *)
2DECF4:  SUB.W           R10, R10, #0x14
2DECF8:  CMP             R0, #1
2DECFA:  BNE             loc_2DECDE
2DECFC:  B               loc_2DEC98
2DECFE:  LDR.W           R1, =(byte_7960F8 - 0x2DED0A)
2DED02:  LDR.W           R0, [R9,#0x2C]; this
2DED06:  ADD             R1, PC; byte_7960F8
2DED08:  CMP             R0, #0
2DED0A:  LDRB            R1, [R1]; CCollisionData *
2DED0C:  STR             R1, [SP,#0x128+var_F4]
2DED0E:  IT NE
2DED10:  BLXNE           j__ZN10CCollision23CalculateTrianglePlanesEP14CCollisionData; CCollision::CalculateTrianglePlanes(CCollisionData *)
2DED14:  LDR             R2, [SP,#0x128+var_EC]
2DED16:  MOV             R10, R11
2DED18:  LDRSH.W         R1, [R2,#4]
2DED1C:  CMP             R1, #0
2DED1E:  BEQ.W           loc_2DF030
2DED22:  LDR             R0, [R2,#0x14]
2DED24:  STR             R0, [SP,#0x128+var_F0]
2DED26:  LDR             R0, [R2,#0x18]
2DED28:  STR             R0, [SP,#0x128+var_11C]
2DED2A:  LDR             R0, [R2,#0x1C]
2DED2C:  STR             R0, [SP,#0x128+var_118]
2DED2E:  LDRB            R0, [R2,#7]
2DED30:  TST.W           R0, #2
2DED34:  BNE.W           loc_2DEE5E
2DED38:  CMP             R1, #1
2DED3A:  BLT.W           loc_2DF030
2DED3E:  SUBS            R0, R1, #1
2DED40:  LDR             R2, [SP,#0x128+var_11C]
2DED42:  ADD.W           R9, R1, #1
2DED46:  RSB.W           R11, R1, #0
2DED4A:  ADD.W           R6, R2, R0,LSL#4
2DED4E:  ADD.W           R0, R0, R0,LSL#2
2DED52:  LDR             R2, [SP,#0x128+var_118]
2DED54:  ADD             R4, SP, #0x128+var_3C
2DED56:  VLDR            S16, =0.05
2DED5A:  ADD.W           R5, R2, R0,LSL#2
2DED5E:  LDR.W           R0, =(gNumColCacheEntries_ptr - 0x2DED66)
2DED62:  ADD             R0, PC; gNumColCacheEntries_ptr
2DED64:  LDR             R0, [R0]; gNumColCacheEntries
2DED66:  STR             R0, [SP,#0x128+var_100]
2DED68:  LDR.W           R0, =(gNumColCacheEntries_ptr - 0x2DED70)
2DED6C:  ADD             R0, PC; gNumColCacheEntries_ptr
2DED6E:  LDR             R0, [R0]; gNumColCacheEntries
2DED70:  STR             R0, [SP,#0x128+var_104]
2DED72:  LDR.W           R0, =(gNumColCacheEntries_ptr - 0x2DED7A)
2DED76:  ADD             R0, PC; gNumColCacheEntries_ptr
2DED78:  LDR             R0, [R0]; gNumColCacheEntries
2DED7A:  STR             R0, [SP,#0x128+var_108]
2DED7C:  LDR.W           R0, =(gNumColCacheEntries_ptr - 0x2DED84)
2DED80:  ADD             R0, PC; gNumColCacheEntries_ptr
2DED82:  LDR             R0, [R0]; gNumColCacheEntries
2DED84:  STR             R0, [SP,#0x128+var_10C]
2DED86:  LDR             R0, [SP,#0x128+var_F0]
2DED88:  ADD             R1, SP, #0x128+var_50
2DED8A:  STR             R0, [SP,#0x128+var_128]
2DED8C:  MOV             R0, R4
2DED8E:  MOV             R2, R6
2DED90:  MOV             R3, R5
2DED92:  BLX             j__ZN10CCollision22SphereCastVersusVsPolyEP10CColSphereS1_P12CColTriangleP17CColTrianglePlaneP7CVector; CCollision::SphereCastVersusVsPoly(CColSphere *,CColSphere *,CColTriangle *,CColTrianglePlane *,CVector *)
2DED96:  CMP             R0, #1
2DED98:  BNE             loc_2DEDDC
2DED9A:  LDR             R0, [SP,#0x128+var_100]
2DED9C:  MOV             R1, R10
2DED9E:  MOV.W           R10, #1
2DEDA2:  LDR             R0, [R0]
2DEDA4:  CMP             R0, #0x62 ; 'b'
2DEDA6:  BGT.W           loc_2DEB10
2DEDAA:  LDR             R3, [SP,#0x128+var_FC]
2DEDAC:  LSLS            R2, R0, #4
2DEDAE:  MOVS            R4, #0
2DEDB0:  SUB.W           R12, R9, #2
2DEDB4:  ADD.W           R0, R3, R0,LSL#4
2DEDB8:  STRB            R4, [R3,R2]
2DEDBA:  LSLS            R2, R1, #0x1F
2DEDBC:  ADD             R4, SP, #0x128+var_3C
2DEDBE:  LDR             R2, [SP,#0x128+var_F8]
2DEDC0:  IT NE
2DEDC2:  MOVNE           R2, #0
2DEDC4:  STR             R2, [R0,#4]
2DEDC6:  LDR             R1, [SP,#0x128+var_104]
2DEDC8:  LDR             R0, [R1]
2DEDCA:  ADDS            R2, R0, #1
2DEDCC:  STR             R2, [R1]
2DEDCE:  LSLS            R2, R0, #4
2DEDD0:  ADD.W           R0, R3, R0,LSL#4
2DEDD4:  STRB.W          R10, [R3,R2]
2DEDD8:  STRH.W          R12, [R0,#8]
2DEDDC:  LDR             R0, [SP,#0x128+var_F4]
2DEDDE:  CMP             R0, #1
2DEDE0:  BNE             loc_2DEE4A
2DEDE2:  VLDR            S0, [R5,#8]
2DEDE6:  VABS.F32        S0, S0
2DEDEA:  VCMPE.F32       S0, S16
2DEDEE:  VMRS            APSR_nzcv, FPSCR
2DEDF2:  BGE             loc_2DEE4A
2DEDF4:  LDR             R0, [SP,#0x128+var_F0]
2DEDF6:  MOV             R1, R4
2DEDF8:  STR             R0, [SP,#0x128+var_128]
2DEDFA:  ADD             R0, SP, #0x128+var_50
2DEDFC:  MOV             R2, R6
2DEDFE:  MOV             R3, R5
2DEE00:  BLX             j__ZN10CCollision22SphereCastVersusVsPolyEP10CColSphereS1_P12CColTriangleP17CColTrianglePlaneP7CVector; CCollision::SphereCastVersusVsPoly(CColSphere *,CColSphere *,CColTriangle *,CColTrianglePlane *,CVector *)
2DEE04:  CMP             R0, #1
2DEE06:  BNE             loc_2DEE4A
2DEE08:  LDR             R0, [SP,#0x128+var_108]
2DEE0A:  MOV.W           R12, #1
2DEE0E:  LDR             R0, [R0]
2DEE10:  CMP             R0, #0x62 ; 'b'
2DEE12:  BGT.W           loc_2DF12A
2DEE16:  LDR             R2, [SP,#0x128+var_FC]
2DEE18:  LSLS            R1, R0, #4
2DEE1A:  MOVS            R4, #0
2DEE1C:  ADD.W           R0, R2, R0,LSL#4
2DEE20:  STRB            R4, [R2,R1]
2DEE22:  MOVS.W          R1, R10,LSL#31
2DEE26:  ADD             R4, SP, #0x128+var_3C
2DEE28:  LDR             R1, [SP,#0x128+var_F8]
2DEE2A:  MOV.W           R10, #1
2DEE2E:  IT NE
2DEE30:  MOVNE           R1, #0
2DEE32:  STR             R1, [R0,#4]
2DEE34:  LDR             R3, [SP,#0x128+var_10C]
2DEE36:  LDR             R0, [R3]
2DEE38:  ADDS            R1, R0, #1
2DEE3A:  STR             R1, [R3]
2DEE3C:  LSLS            R1, R0, #4
2DEE3E:  ADD.W           R0, R2, R0,LSL#4
2DEE42:  STRB.W          R12, [R2,R1]
2DEE46:  STRH.W          R11, [R0,#8]
2DEE4A:  SUB.W           R9, R9, #1
2DEE4E:  SUBS            R6, #0x10
2DEE50:  SUBS            R5, #0x14
2DEE52:  ADD.W           R11, R11, #1
2DEE56:  CMP.W           R9, #1
2DEE5A:  BGT             loc_2DED86
2DEE5C:  B               loc_2DF030
2DEE5E:  LDR             R1, =(gNumColCacheEntries_ptr - 0x2DEE6A)
2DEE60:  MOVS            R5, #0
2DEE62:  VLDR            S16, =0.05
2DEE66:  ADD             R1, PC; gNumColCacheEntries_ptr
2DEE68:  LDR             R1, [R1]; gNumColCacheEntries
2DEE6A:  STR             R1, [SP,#0x128+var_100]
2DEE6C:  LDR             R1, =(gNumColCacheEntries_ptr - 0x2DEE72)
2DEE6E:  ADD             R1, PC; gNumColCacheEntries_ptr
2DEE70:  LDR             R1, [R1]; gNumColCacheEntries
2DEE72:  STR             R1, [SP,#0x128+var_104]
2DEE74:  LDR             R1, =(gNumColCacheEntries_ptr - 0x2DEE7A)
2DEE76:  ADD             R1, PC; gNumColCacheEntries_ptr
2DEE78:  LDR             R1, [R1]; gNumColCacheEntries
2DEE7A:  STR             R1, [SP,#0x128+var_110]
2DEE7C:  LDR             R1, =(gNumColCacheEntries_ptr - 0x2DEE82)
2DEE7E:  ADD             R1, PC; gNumColCacheEntries_ptr
2DEE80:  LDR             R1, [R1]; gNumColCacheEntries
2DEE82:  STR             R1, [SP,#0x128+var_114]
2DEE84:  B               loc_2DEE90
2DEE86:  LDR             R2, [SP,#0x128+var_EC]
2DEE88:  MOV             R10, R11
2DEE8A:  LDR             R5, [SP,#0x128+var_108]
2DEE8C:  LDRB            R0, [R2,#7]
2DEE8E:  ADDS            R5, #1
2DEE90:  LSLS            R0, R0, #0x1E
2DEE92:  ADD             R4, SP, #0x128+var_D8
2DEE94:  ITTE MI
2DEE96:  LDRMI           R0, [R2,#0x30]
2DEE98:  LDRMI           R0, [R0]
2DEE9A:  MOVPL           R0, #0
2DEE9C:  CMP             R5, R0
2DEE9E:  BGE.W           loc_2DF030
2DEEA2:  MOVS            R1, #0
2DEEA4:  LDR             R0, [R2,#0x30]
2DEEA6:  STR             R1, [SP,#0x128+var_128]; unsigned __int8
2DEEA8:  MOVS            R1, #0xFF
2DEEAA:  STR             R1, [SP,#0x128+var_124]; unsigned __int8
2DEEAC:  MVNS            R1, R5
2DEEAE:  RSB.W           R1, R1, R1,LSL#3
2DEEB2:  MOVS            R3, #0; unsigned __int8
2DEEB4:  ADD.W           R6, R0, R1,LSL#2
2DEEB8:  MOV             R0, R4; this
2DEEBA:  ADD.W           R2, R6, #0xC; CVector *
2DEEBE:  MOV             R1, R6; CVector *
2DEEC0:  BLX             j__ZN7CColBox3SetERK7CVectorS2_hhh; CColBox::Set(CVector const&,CVector const&,uchar,uchar,uchar)
2DEEC4:  VLD1.64         {D16-D17}, [R4]
2DEEC8:  ADD             R4, SP, #0x128+var_B8
2DEECA:  ADD             R1, SP, #0x128+var_3C; CVector *
2DEECC:  ADD             R2, SP, #0x128+var_50; CVector *
2DEECE:  LDR             R0, [SP,#0x128+var_10C]
2DEED0:  VLDR            S6, [SP,#0x128+var_30]
2DEED4:  VLD1.32         {D18-D19}, [R0]
2DEED8:  MOV             R0, R4
2DEEDA:  VST1.64         {D16-D17}, [R0]!
2DEEDE:  VLDR            S0, [SP,#0x128+var_B8]
2DEEE2:  VLDR            S2, [SP,#0x128+var_B4]
2DEEE6:  VLDR            S4, [SP,#0x128+var_B0]
2DEEEA:  VSUB.F32        S0, S0, S6
2DEEEE:  VST1.32         {D18-D19}, [R8]
2DEEF2:  VSUB.F32        S2, S2, S6
2DEEF6:  VSUB.F32        S4, S4, S6
2DEEFA:  VLDR            S8, [R0]
2DEEFE:  VLDR            S10, [SP,#0x128+var_AC]
2DEF02:  VLDR            S12, [SP,#0x128+var_A4]
2DEF06:  VADD.F32        S8, S6, S8
2DEF0A:  VADD.F32        S10, S6, S10
2DEF0E:  VADD.F32        S6, S6, S12
2DEF12:  VSTR            S2, [SP,#0x128+var_B4]
2DEF16:  VSTR            S8, [R0]
2DEF1A:  ADD             R0, SP, #0x128+var_98; this
2DEF1C:  VSTR            S0, [SP,#0x128+var_B8]
2DEF20:  VSTR            S4, [SP,#0x128+var_B0]
2DEF24:  VSTR            S10, [SP,#0x128+var_AC]
2DEF28:  VSTR            S6, [SP,#0x128+var_A4]
2DEF2C:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
2DEF30:  MOV             R1, R4; CColLine *
2DEF32:  BLX             j__ZN10CCollision14TestLineBox_DWERK8CColLineRK4CBox; CCollision::TestLineBox_DW(CColLine const&,CBox const&)
2DEF36:  CMP             R0, #1
2DEF38:  MOV             R11, R10
2DEF3A:  STR             R5, [SP,#0x128+var_108]
2DEF3C:  BNE             loc_2DEE86
2DEF3E:  LDRSH.W         R1, [R6,#0x1A]!
2DEF42:  LDRSH.W         R0, [R6,#-2]
2DEF46:  CMP             R0, R1
2DEF48:  BGT             loc_2DEE86
2DEF4A:  MOVW            R1, #0xFFFF
2DEF4E:  SUBS            R4, R1, R0
2DEF50:  LDR             R1, [SP,#0x128+var_11C]
2DEF52:  SUB.W           R10, R0, #1
2DEF56:  LDR             R2, [SP,#0x128+var_118]
2DEF58:  ADD.W           R5, R1, R0,LSL#4
2DEF5C:  ADD.W           R1, R0, R0,LSL#2
2DEF60:  ADD.W           R9, R2, R1,LSL#2
2DEF64:  LDR             R0, [SP,#0x128+var_F0]
2DEF66:  ADD             R1, SP, #0x128+var_50
2DEF68:  STR             R0, [SP,#0x128+var_128]
2DEF6A:  ADD             R0, SP, #0x128+var_3C
2DEF6C:  MOV             R2, R5
2DEF6E:  MOV             R3, R9
2DEF70:  BLX             j__ZN10CCollision22SphereCastVersusVsPolyEP10CColSphereS1_P12CColTriangleP17CColTrianglePlaneP7CVector; CCollision::SphereCastVersusVsPoly(CColSphere *,CColSphere *,CColTriangle *,CColTrianglePlane *,CVector *)
2DEF74:  ADD.W           R10, R10, #1
2DEF78:  CMP             R0, #1
2DEF7A:  BNE             loc_2DEFB8
2DEF7C:  LDR             R0, [SP,#0x128+var_100]
2DEF7E:  LDR             R0, [R0]
2DEF80:  CMP             R0, #0x62 ; 'b'
2DEF82:  BGT.W           loc_2DF12A
2DEF86:  LDR             R2, [SP,#0x128+var_FC]
2DEF88:  LSLS            R1, R0, #4
2DEF8A:  MOVS            R3, #0
2DEF8C:  ADD.W           R0, R2, R0,LSL#4
2DEF90:  STRB            R3, [R2,R1]
2DEF92:  MOVS.W          R1, R11,LSL#31
2DEF96:  MOV.W           R11, #1
2DEF9A:  LDR             R1, [SP,#0x128+var_F8]
2DEF9C:  IT NE
2DEF9E:  MOVNE           R1, #0
2DEFA0:  STR             R1, [R0,#4]
2DEFA2:  LDR             R3, [SP,#0x128+var_104]
2DEFA4:  LDR             R0, [R3]
2DEFA6:  ADDS            R1, R0, #1
2DEFA8:  STR             R1, [R3]
2DEFAA:  LSLS            R1, R0, #4
2DEFAC:  ADD.W           R0, R2, R0,LSL#4
2DEFB0:  MOVS            R3, #1
2DEFB2:  STRB            R3, [R2,R1]
2DEFB4:  STRH.W          R10, [R0,#8]
2DEFB8:  LDR             R0, [SP,#0x128+var_F4]
2DEFBA:  CMP             R0, #1
2DEFBC:  BNE             loc_2DF01E
2DEFBE:  VLDR            S0, [R9,#8]
2DEFC2:  VABS.F32        S0, S0
2DEFC6:  VCMPE.F32       S0, S16
2DEFCA:  VMRS            APSR_nzcv, FPSCR
2DEFCE:  BGE             loc_2DF01E
2DEFD0:  LDR             R0, [SP,#0x128+var_F0]
2DEFD2:  ADD             R1, SP, #0x128+var_3C
2DEFD4:  STR             R0, [SP,#0x128+var_128]
2DEFD6:  ADD             R0, SP, #0x128+var_50
2DEFD8:  MOV             R2, R5
2DEFDA:  MOV             R3, R9
2DEFDC:  BLX             j__ZN10CCollision22SphereCastVersusVsPolyEP10CColSphereS1_P12CColTriangleP17CColTrianglePlaneP7CVector; CCollision::SphereCastVersusVsPoly(CColSphere *,CColSphere *,CColTriangle *,CColTrianglePlane *,CVector *)
2DEFE0:  CMP             R0, #1
2DEFE2:  BNE             loc_2DF01E
2DEFE4:  LDR             R0, [SP,#0x128+var_110]
2DEFE6:  LDR             R0, [R0]
2DEFE8:  CMP             R0, #0x62 ; 'b'
2DEFEA:  BGT.W           loc_2DF12A
2DEFEE:  LDR             R2, [SP,#0x128+var_FC]
2DEFF0:  LSLS            R1, R0, #4
2DEFF2:  MOVS            R3, #0
2DEFF4:  ADD.W           R0, R2, R0,LSL#4
2DEFF8:  STRB            R3, [R2,R1]
2DEFFA:  MOVS.W          R1, R11,LSL#31
2DEFFE:  MOV.W           R11, #1
2DF002:  LDR             R1, [SP,#0x128+var_F8]
2DF004:  IT NE
2DF006:  MOVNE           R1, #0
2DF008:  STR             R1, [R0,#4]
2DF00A:  LDR             R3, [SP,#0x128+var_114]
2DF00C:  LDR             R0, [R3]
2DF00E:  ADDS            R1, R0, #1
2DF010:  STR             R1, [R3]
2DF012:  LSLS            R1, R0, #4
2DF014:  ADD.W           R0, R2, R0,LSL#4
2DF018:  MOVS            R3, #1
2DF01A:  STRB            R3, [R2,R1]
2DF01C:  STRH            R4, [R0,#8]
2DF01E:  LDRSH.W         R0, [R6]
2DF022:  SUBS            R4, #1
2DF024:  ADD.W           R9, R9, #0x14
2DF028:  ADDS            R5, #0x10
2DF02A:  CMP             R10, R0
2DF02C:  BLT             loc_2DEF64
2DF02E:  B               loc_2DEE86
2DF030:  LDR             R0, [SP,#0x128+var_EC]
2DF032:  ADD             R5, SP, #0x128+var_98
2DF034:  ADD             R4, SP, #0x128+var_50
2DF036:  MOV             R11, R10
2DF038:  LDRSH.W         R6, [R0,#2]
2DF03C:  LDR             R0, =(gNumColCacheEntries_ptr - 0x2DF042)
2DF03E:  ADD             R0, PC; gNumColCacheEntries_ptr
2DF040:  LDR             R0, [R0]; gNumColCacheEntries
2DF042:  STR             R0, [SP,#0x128+var_F0]
2DF044:  LDR             R0, =(gNumColCacheEntries_ptr - 0x2DF04A)
2DF046:  ADD             R0, PC; gNumColCacheEntries_ptr
2DF048:  LDR             R0, [R0]; gNumColCacheEntries
2DF04A:  STR             R0, [SP,#0x128+var_F4]
2DF04C:  B               loc_2DF08C
2DF04E:  ALIGN 0x10
2DF050:  DCFS 0.05
2DF054:  LDR             R0, [SP,#0x128+var_F0]
2DF056:  LDR             R0, [R0]
2DF058:  CMP             R0, #0x62 ; 'b'
2DF05A:  BGT             loc_2DF12A
2DF05C:  LDR             R2, [SP,#0x128+var_FC]
2DF05E:  LSLS            R1, R0, #4
2DF060:  MOVS            R3, #0
2DF062:  ADD.W           R0, R2, R0,LSL#4
2DF066:  STRB            R3, [R2,R1]
2DF068:  MOVS.W          R1, R11,LSL#31
2DF06C:  MOV.W           R11, #1
2DF070:  LDR             R1, [SP,#0x128+var_F8]
2DF072:  IT NE
2DF074:  MOVNE           R1, #0
2DF076:  STR             R1, [R0,#4]
2DF078:  LDR             R3, [SP,#0x128+var_F4]
2DF07A:  LDR             R0, [R3]
2DF07C:  ADDS            R1, R0, #1
2DF07E:  STR             R1, [R3]
2DF080:  LSLS            R1, R0, #4
2DF082:  ADD.W           R0, R2, R0,LSL#4
2DF086:  MOVS            R3, #3
2DF088:  STRB            R3, [R2,R1]
2DF08A:  STRH            R6, [R0,#0xC]
2DF08C:  RSB.W           R0, R6, R6,LSL#3
2DF090:  MOV             R1, #0xFFFFFFE4
2DF094:  ADD.W           R10, R1, R0,LSL#2
2DF098:  CMP             R6, #1
2DF09A:  BLT             loc_2DF126
2DF09C:  LDR             R0, [SP,#0x128+var_EC]
2DF09E:  MOV             R9, R8
2DF0A0:  VLDR            S2, [SP,#0x128+var_30]
2DF0A4:  ADD             R1, SP, #0x128+var_3C; CVector *
2DF0A6:  MOV             R2, R4; CVector *
2DF0A8:  SUBS            R6, #1
2DF0AA:  LDR             R0, [R0,#0xC]
2DF0AC:  ADD             R0, R10
2DF0AE:  VLD1.32         {D16-D17}, [R0]
2DF0B2:  ADDS            R0, #0xC
2DF0B4:  VLD1.32         {D18-D19}, [R0]
2DF0B8:  VST1.32         {D18-D19}, [R8]
2DF0BC:  ADD.W           R8, SP, #0x128+var_B8
2DF0C0:  MOV             R0, R8
2DF0C2:  VST1.64         {D16-D17}, [R0]!
2DF0C6:  VLDR            S0, [R0]
2DF0CA:  VLDR            S4, [SP,#0x128+var_B8]
2DF0CE:  VLDR            S6, [SP,#0x128+var_B4]
2DF0D2:  VADD.F32        S0, S2, S0
2DF0D6:  VLDR            S8, [SP,#0x128+var_B0]
2DF0DA:  VSUB.F32        S4, S4, S2
2DF0DE:  VLDR            S10, [SP,#0x128+var_AC]
2DF0E2:  VSUB.F32        S6, S6, S2
2DF0E6:  VLDR            S12, [SP,#0x128+var_A4]
2DF0EA:  VSUB.F32        S8, S8, S2
2DF0EE:  VADD.F32        S10, S2, S10
2DF0F2:  VADD.F32        S2, S2, S12
2DF0F6:  VSTR            S0, [R0]
2DF0FA:  MOV             R0, R5; this
2DF0FC:  VSTR            S6, [SP,#0x128+var_B4]
2DF100:  VSTR            S4, [SP,#0x128+var_B8]
2DF104:  VSTR            S8, [SP,#0x128+var_B0]
2DF108:  VSTR            S10, [SP,#0x128+var_AC]
2DF10C:  VSTR            S2, [SP,#0x128+var_A4]
2DF110:  BLX             j__ZN8CColLineC2ERK7CVectorS2_; CColLine::CColLine(CVector const&,CVector const&)
2DF114:  MOV             R1, R8; CColLine *
2DF116:  MOV             R8, R9
2DF118:  BLX             j__ZN10CCollision14TestLineBox_DWERK8CColLineRK4CBox; CCollision::TestLineBox_DW(CColLine const&,CBox const&)
2DF11C:  SUB.W           R10, R10, #0x1C
2DF120:  CMP             R0, #1
2DF122:  BNE             loc_2DF098
2DF124:  B               loc_2DF054
2DF126:  MOV             R10, R11
2DF128:  B               loc_2DEB10
2DF12A:  MOV.W           R10, #1
2DF12E:  B               loc_2DEB10
