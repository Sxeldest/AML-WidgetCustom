; =========================================================
; Game Engine Function: _ZN7CObject7ExplodeEv
; Address            : 0x45573C - 0x455904
; =========================================================

45573C:  PUSH            {R4-R7,LR}
45573E:  ADD             R7, SP, #0xC
455740:  PUSH.W          {R8,R9,R11}
455744:  VPUSH           {D8-D9}
455748:  SUB             SP, SP, #0xA0
45574A:  MOV             R4, R0
45574C:  ADD.W           R8, R4, #4
455750:  LDR             R0, [R4,#0x14]
455752:  VMOV.F32        S16, #0.5
455756:  MOV             R1, R8
455758:  CMP             R0, #0
45575A:  IT NE
45575C:  ADDNE.W         R1, R0, #0x30 ; '0'
455760:  LDR             R0, [R1,#8]
455762:  STR             R0, [SP,#0xC8+var_30]
455764:  MOV.W           R0, #0xFFFFFFFF; int
455768:  VLDR            S0, [SP,#0xC8+var_30]
45576C:  VLDR            D16, [R1]
455770:  VADD.F32        S18, S0, S16
455774:  VSTR            D16, [SP,#0xC8+var_38]
455778:  VSTR            S18, [SP,#0xC8+var_30]
45577C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
455780:  MOVS            R2, #0
455782:  MOV             R1, R0; int
455784:  LDRD.W          R3, R0, [SP,#0xC8+var_38]; int
455788:  MOV.W           R9, #0
45578C:  MOVT            R2, #0xBF80
455790:  MOVS            R6, #1
455792:  MOVS            R5, #0x64 ; 'd'
455794:  STRD.W          R5, R6, [SP,#0xC8+var_C0]; int
455798:  STRD.W          R2, R9, [SP,#0xC8+var_B8]; float
45579C:  MOVS            R2, #9; int
45579E:  VSTR            S18, [SP,#0xC8+var_C4]
4557A2:  STR             R0, [SP,#0xC8+var_C8]; int
4557A4:  MOV             R0, R4; int
4557A6:  BLX             j__ZN10CExplosion12AddExplosionEP7CEntityS1_14eExplosionType7CVectorjhfh; CExplosion::AddExplosion(CEntity *,CEntity *,eExplosionType,CVector,uint,uchar,float,uchar)
4557AA:  LDRB.W          R0, [R4,#0x148]
4557AE:  ORR.W           R0, R0, #2
4557B2:  CMP             R0, #0xCA
4557B4:  BNE             loc_45588C
4557B6:  VMOV.F32        S0, #-1.0
4557BA:  MOV.W           R0, #0x3F800000
4557BE:  MOVW            R1, #0x4000
4557C2:  ADD             R2, SP, #0xC8+var_38
4557C4:  ADD             R3, SP, #0xC8+var_90
4557C6:  MOVT            R1, #0x461C
4557CA:  VADD.F32        S0, S18, S0
4557CE:  VSTR            S0, [SP,#0xC8+var_30]
4557D2:  STRD.W          R9, R9, [SP,#0xC8+var_90]
4557D6:  STR             R0, [SP,#0xC8+var_88]
4557D8:  MOVS            R0, #0x33 ; '3'
4557DA:  STRD.W          R4, R0, [SP,#0xC8+var_C8]
4557DE:  MOV             R0, R4
4557E0:  BLX             j__ZN7CObject12ObjectDamageEfP7CVectorS1_P7CEntity11eWeaponType; CObject::ObjectDamage(float,CVector *,CVector *,CEntity *,eWeaponType)
4557E4:  LDR.W           R0, [R4,#0x164]
4557E8:  LDRB.W          R0, [R0,#0x20]
4557EC:  CMP             R0, #2
4557EE:  BNE             loc_455880
4557F0:  ADD             R5, SP, #0xC8+var_90
4557F2:  LDR             R1, [R4,#0x14]; CMatrix *
4557F4:  MOV             R0, R5; this
4557F6:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
4557FA:  LDR.W           R0, [R4,#0x164]
4557FE:  ADD             R2, SP, #0xC8+var_B0
455800:  MOV             R1, R5; CVector *
455802:  VLDR            D16, [R0,#0x24]
455806:  LDR             R0, [R0,#0x2C]
455808:  STR             R0, [SP,#0xC8+var_A8]
45580A:  ADD             R0, SP, #0xC8+var_A0; CMatrix *
45580C:  VSTR            D16, [SP,#0xC8+var_B0]
455810:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
455814:  VLDR            D16, [SP,#0xC8+var_A0]
455818:  MOVS            R2, #0
45581A:  LDR             R0, [SP,#0xC8+var_98]
45581C:  MOVS            R3, #0
45581E:  STR             R0, [SP,#0xC8+var_40]
455820:  VSTR            D16, [SP,#0xC8+var_48]
455824:  LDR             R0, [R4,#0x14]
455826:  VLDR            S0, [SP,#0xC8+var_48]
45582A:  CMP             R0, #0
45582C:  VLDR            S2, [SP,#0xC8+var_48+4]
455830:  VLDR            S4, [SP,#0xC8+var_40]
455834:  IT NE
455836:  ADDNE.W         R8, R0, #0x30 ; '0'
45583A:  VLDR            S6, [R8]
45583E:  VLDR            S8, [R8,#4]
455842:  VADD.F32        S0, S6, S0
455846:  VLDR            S10, [R8,#8]
45584A:  LDR             R0, =(g_fxMan_ptr - 0x455850)
45584C:  ADD             R0, PC; g_fxMan_ptr
45584E:  LDR             R0, [R0]; g_fxMan
455850:  VSTR            S0, [SP,#0xC8+var_48]
455854:  VADD.F32        S0, S8, S2
455858:  VSTR            S0, [SP,#0xC8+var_48+4]
45585C:  VADD.F32        S0, S10, S4
455860:  VSTR            S0, [SP,#0xC8+var_40]
455864:  LDR.W           R1, [R4,#0x164]
455868:  LDR             R1, [R1,#0x30]
45586A:  STR             R2, [SP,#0xC8+var_C8]
45586C:  ADD             R2, SP, #0xC8+var_48
45586E:  BLX             j__ZN11FxManager_c14CreateFxSystemEP12FxSystemBP_cP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(FxSystemBP_c *,RwV3d *,RwMatrixTag *,uchar)
455872:  CMP             R0, #0
455874:  IT NE
455876:  BLXNE           j__ZN10FxSystem_c11PlayAndKillEv; FxSystem_c::PlayAndKill(void)
45587A:  ADD             R0, SP, #0xC8+var_90; this
45587C:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
455880:  ADD             SP, SP, #0xA0
455882:  VPOP            {D8-D9}
455886:  POP.W           {R8,R9,R11}
45588A:  POP             {R4-R7,PC}
45588C:  LDRB.W          R0, [R4,#0x44]
455890:  LSLS            R0, R0, #0x1D
455892:  BMI             loc_4557E4
455894:  VLDR            S0, [R4,#0x50]
455898:  VADD.F32        S0, S0, S16
45589C:  VSTR            S0, [R4,#0x50]
4558A0:  BLX             rand
4558A4:  MOV             R5, #0xFFFFFF80
4558A8:  UXTAB.W         R0, R5, R0
4558AC:  VLDR            S16, =0.0002
4558B0:  VMOV            S0, R0
4558B4:  VCVT.F32.S32    S0, S0
4558B8:  VLDR            S2, [R4,#0x48]
4558BC:  VMUL.F32        S0, S0, S16
4558C0:  VADD.F32        S0, S2, S0
4558C4:  VSTR            S0, [R4,#0x48]
4558C8:  BLX             rand
4558CC:  UXTAB.W         R0, R5, R0
4558D0:  VMOV            S0, R0
4558D4:  VCVT.F32.S32    S0, S0
4558D8:  VLDR            S2, [R4,#0x4C]
4558DC:  LDR             R0, [R4,#0x1C]
4558DE:  TST.W           R0, #0x40004
4558E2:  VMUL.F32        S0, S0, S16
4558E6:  VADD.F32        S0, S2, S0
4558EA:  VSTR            S0, [R4,#0x4C]
4558EE:  BEQ.W           loc_4557E4
4558F2:  LDR             R0, [R4]
4558F4:  MOVS            R1, #0
4558F6:  LDR             R2, [R0,#0x14]
4558F8:  MOV             R0, R4
4558FA:  BLX             R2
4558FC:  MOV             R0, R4; this
4558FE:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
455902:  B               loc_4557E4
