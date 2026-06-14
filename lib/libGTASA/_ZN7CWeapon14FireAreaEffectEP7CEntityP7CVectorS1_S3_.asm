; =========================================================
; Game Engine Function: _ZN7CWeapon14FireAreaEffectEP7CEntityP7CVectorS1_S3_
; Address            : 0x5DE658 - 0x5DE9AA
; =========================================================

5DE658:  PUSH            {R4-R7,LR}
5DE65A:  ADD             R7, SP, #0xC
5DE65C:  PUSH.W          {R8-R11}
5DE660:  SUB             SP, SP, #4
5DE662:  VPUSH           {D8}
5DE666:  SUB             SP, SP, #0x38; float
5DE668:  MOV             R9, R0
5DE66A:  MOV             R6, R1
5DE66C:  LDR.W           R0, [R9]
5DE670:  MOVS            R1, #1
5DE672:  MOV             R5, R3
5DE674:  MOV             R4, R2
5DE676:  BLX.W           j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5DE67A:  LDR.W           R10, [R7,#arg_0]
5DE67E:  MOV             R2, R0
5DE680:  LDRD.W          R11, R8, [R4]
5DE684:  CMP             R5, #0
5DE686:  LDR             R0, [R4,#8]
5DE688:  STR             R0, [SP,#0x60+var_50]
5DE68A:  BEQ             loc_5DE69A
5DE68C:  LDR             R0, [R5,#0x14]
5DE68E:  ADD.W           R1, R0, #0x30 ; '0'
5DE692:  CMP             R0, #0
5DE694:  IT EQ
5DE696:  ADDEQ           R1, R5, #4
5DE698:  B               loc_5DE6A4
5DE69A:  CMP.W           R10, #0
5DE69E:  MOV             R1, R10
5DE6A0:  BEQ.W           loc_5DE838
5DE6A4:  LDRD.W          R0, R1, [R1]; float
5DE6A8:  MOV             R2, R11; float
5DE6AA:  MOV             R3, R8; float
5DE6AC:  BLX.W           j__ZN8CGeneral21GetAngleBetweenPointsEffff; CGeneral::GetAngleBetweenPoints(float,float,float,float)
5DE6B0:  MOVS            R0, #0
5DE6B2:  CMP.W           R10, #0
5DE6B6:  STRD.W          R0, R0, [SP,#0x60+var_40]
5DE6BA:  STR             R0, [SP,#0x60+var_38]
5DE6BC:  BEQ             loc_5DE6C8
5DE6BE:  VLDR            D16, [R10]
5DE6C2:  LDR.W           R0, [R10,#8]
5DE6C6:  B               loc_5DE6F4
5DE6C8:  LDRB.W          R0, [R5,#0x3A]
5DE6CC:  AND.W           R0, R0, #7
5DE6D0:  CMP             R0, #3
5DE6D2:  BNE             loc_5DE6E2
5DE6D4:  ADD             R1, SP, #0x60+var_40
5DE6D6:  MOV             R0, R5; this
5DE6D8:  MOVS            R2, #3
5DE6DA:  MOVS            R3, #0
5DE6DC:  BLX.W           j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
5DE6E0:  B               loc_5DE6FA
5DE6E2:  LDR             R0, [R5,#0x14]
5DE6E4:  ADD.W           R1, R0, #0x30 ; '0'
5DE6E8:  CMP             R0, #0
5DE6EA:  IT EQ
5DE6EC:  ADDEQ           R1, R5, #4
5DE6EE:  LDR             R0, [R1,#8]
5DE6F0:  VLDR            D16, [R1]
5DE6F4:  STR             R0, [SP,#0x60+var_38]
5DE6F6:  VSTR            D16, [SP,#0x60+var_40]
5DE6FA:  MOV             R10, R6
5DE6FC:  LDR             R6, [SP,#0x60+var_50]
5DE6FE:  VLDR            S0, [SP,#0x60+var_40]
5DE702:  VMOV            S8, R11
5DE706:  VLDR            S2, [SP,#0x60+var_40+4]
5DE70A:  VMOV            S6, R8
5DE70E:  VLDR            S4, [SP,#0x60+var_38]
5DE712:  VMOV            S10, R6
5DE716:  VSUB.F32        S0, S0, S8
5DE71A:  ADD             R4, SP, #0x60+var_34
5DE71C:  VSUB.F32        S2, S2, S6
5DE720:  VSUB.F32        S4, S4, S10
5DE724:  MOV             R0, R4; this
5DE726:  VSTR            S0, [SP,#0x60+var_34]
5DE72A:  VSTR            S2, [SP,#0x60+var_30]
5DE72E:  VSTR            S4, [SP,#0x60+var_2C]
5DE732:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5DE736:  ADD.W           R5, R4, #8
5DE73A:  LDRD.W          R3, R2, [SP,#0x60+var_40]
5DE73E:  LDR             R0, [SP,#0x60+var_38]
5DE740:  ADDS            R4, #4
5DE742:  LDR.W           R1, [R9]
5DE746:  STRD.W          R6, R3, [SP,#0x60+var_60]
5DE74A:  MOV             R3, R8
5DE74C:  STRD.W          R2, R0, [SP,#0x60+var_58]
5DE750:  MOV             R0, R10
5DE752:  MOV             R2, R11
5DE754:  BLX.W           j__ZN9CShotInfo7AddShotEP7CEntity11eWeaponType7CVectorS3_; CShotInfo::AddShot(CEntity *,eWeaponType,CVector,CVector)
5DE758:  LDR             R0, [R4]
5DE75A:  MOV             R3, R6
5DE75C:  LDR             R1, [R5]
5DE75E:  LDR             R2, [SP,#0x60+var_34]
5DE760:  STRD.W          R2, R0, [SP,#0x60+var_60]
5DE764:  MOV             R0, R9
5DE766:  STR             R1, [SP,#0x60+var_58]
5DE768:  MOV             R1, R11
5DE76A:  MOV             R2, R8
5DE76C:  BLX.W           j__ZN7CWeapon14DoWeaponEffectE7CVectorS0_; CWeapon::DoWeaponEffect(CVector,CVector)
5DE770:  LDR.W           R0, [R9]
5DE774:  CMP             R0, #0x25 ; '%'
5DE776:  BNE             loc_5DE81E
5DE778:  BLX.W           rand
5DE77C:  AND.W           R0, R0, #3
5DE780:  CMP             R0, #2
5DE782:  BNE             loc_5DE81E
5DE784:  BLX.W           rand
5DE788:  VMOV            S0, R0
5DE78C:  VLDR            S2, =4.6566e-10
5DE790:  VMOV.F32        S4, #2.5
5DE794:  MOVW            R3, #0x3333
5DE798:  VCVT.F32.S32    S0, S0
5DE79C:  VLDR            S6, [SP,#0x60+var_2C]
5DE7A0:  VMOV            S10, R6
5DE7A4:  MOVT            R3, #0x4013
5DE7A8:  VMOV            S8, R11
5DE7AC:  MOVS            R6, #0
5DE7AE:  MOVS            R5, #1
5DE7B0:  VMUL.F32        S0, S0, S2
5DE7B4:  VMOV.F32        S2, #3.5
5DE7B8:  VMUL.F32        S0, S0, S4
5DE7BC:  VLDR            S4, [SP,#0x60+var_30]
5DE7C0:  VADD.F32        S0, S0, S2
5DE7C4:  VLDR            S2, [SP,#0x60+var_34]
5DE7C8:  STRD.W          R5, R6, [SP,#0x60+var_60]
5DE7CC:  STR             R3, [SP,#0x60+var_58]
5DE7CE:  MOVS            R3, #0
5DE7D0:  VMUL.F32        S2, S2, S0
5DE7D4:  VMUL.F32        S4, S4, S0
5DE7D8:  VMUL.F32        S0, S6, S0
5DE7DC:  VMOV            S6, R8
5DE7E0:  VADD.F32        S2, S2, S8
5DE7E4:  VLDR            S8, =0.0
5DE7E8:  VADD.F32        S4, S4, S6
5DE7EC:  VMOV.F32        S6, #0.5
5DE7F0:  VADD.F32        S0, S0, S10
5DE7F4:  VADD.F32        S2, S2, S8
5DE7F8:  VADD.F32        S4, S4, S8
5DE7FC:  VADD.F32        S0, S0, S6
5DE800:  VMOV            R0, S2
5DE804:  VMOV            R1, S4
5DE808:  VMOV            R2, S0
5DE80C:  BLX.W           j__ZN13CCreepingFire21TryToStartFireAtCoorsE7CVectorabbf; CCreepingFire::TryToStartFireAtCoors(CVector,signed char,bool,bool,float)
5DE810:  CMP             R0, #1
5DE812:  BNE             loc_5DE81E
5DE814:  MOVS            R0, #dword_D8; this
5DE816:  MOV.W           R1, #0x3F800000; unsigned __int16
5DE81A:  BLX.W           j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
5DE81E:  MOVS            R0, #1
5DE820:  MOVS            R1, #0
5DE822:  MOV             R2, R10
5DE824:  BLX.W           j__ZN6CCrime11ReportCrimeE10eCrimeTypeP7CEntityP4CPed; CCrime::ReportCrime(eCrimeType,CEntity *,CPed *)
5DE828:  MOVS            R0, #1
5DE82A:  ADD             SP, SP, #0x38 ; '8'
5DE82C:  VPOP            {D8}
5DE830:  ADD             SP, SP, #4
5DE832:  POP.W           {R8-R11}
5DE836:  POP             {R4-R7,PC}
5DE838:  MOV             R10, R6
5DE83A:  MOV             R4, R2
5DE83C:  LDR.W           R0, [R10,#0x14]
5DE840:  CBZ             R0, loc_5DE854
5DE842:  LDRD.W          R2, R1, [R0,#0x10]; x
5DE846:  EOR.W           R0, R2, #0x80000000; y
5DE84A:  BLX.W           atan2f
5DE84E:  VMOV            S16, R0
5DE852:  B               loc_5DE858
5DE854:  VLDR            S16, [R10,#0x10]
5DE858:  MOV.W           R0, #0xFFFFFFFF; int
5DE85C:  BLX.W           j__Z13FindPlayerPedi; FindPlayerPed(int)
5DE860:  CMP             R0, R10
5DE862:  BNE             loc_5DE8F4
5DE864:  LDR             R0, =(TheCamera_ptr - 0x5DE86A)
5DE866:  ADD             R0, PC; TheCamera_ptr
5DE868:  LDR             R0, [R0]; TheCamera
5DE86A:  ADD.W           R0, R0, #0x170; this
5DE86E:  BLX.W           j__ZN4CCam22Using3rdPersonMouseCamEv; CCam::Using3rdPersonMouseCam(void)
5DE872:  CMP             R0, #1
5DE874:  BNE             loc_5DE8F4
5DE876:  LDR             R0, =(TheCamera_ptr - 0x5DE882)
5DE878:  ADD             R3, SP, #0x60+var_4C
5DE87A:  LDR             R1, [R4,#8]
5DE87C:  ADD             R2, SP, #0x60+var_40
5DE87E:  ADD             R0, PC; TheCamera_ptr
5DE880:  LDR             R6, [SP,#0x60+var_50]
5DE882:  STRD.W          R6, R3, [SP,#0x60+var_60]
5DE886:  MOV             R3, R8
5DE888:  LDR             R0, [R0]; TheCamera
5DE88A:  STR             R2, [SP,#0x60+var_58]
5DE88C:  MOV             R2, R11
5DE88E:  BLX.W           j__ZN7CCamera28Find3rdPersonCamTargetVectorEf7CVectorRS0_S1_; CCamera::Find3rdPersonCamTargetVector(float,CVector,CVector&,CVector&)
5DE892:  VLDR            S10, [SP,#0x60+var_38]
5DE896:  VMOV.F32        S12, #1.0
5DE89A:  VLDR            S4, [SP,#0x60+var_44]
5DE89E:  ADD             R1, SP, #0x60+var_34
5DE8A0:  VLDR            S6, [SP,#0x60+var_40]
5DE8A4:  VMOV            R0, S10
5DE8A8:  VSUB.F32        S4, S10, S4
5DE8AC:  VLDR            S0, [SP,#0x60+var_4C]
5DE8B0:  VLDR            S8, [SP,#0x60+var_40+4]
5DE8B4:  VMOV            R3, S6
5DE8B8:  VLDR            S2, [SP,#0x60+var_48]
5DE8BC:  VSUB.F32        S0, S6, S0
5DE8C0:  VMOV            R2, S8
5DE8C4:  ADD.W           R5, R1, #8
5DE8C8:  VSUB.F32        S2, S8, S2
5DE8CC:  VSTR            S4, [SP,#0x60+var_2C]
5DE8D0:  VLDR            S14, [R4,#8]
5DE8D4:  ADDS            R4, R1, #4
5DE8D6:  VDIV.F32        S12, S12, S14
5DE8DA:  VMUL.F32        S2, S12, S2
5DE8DE:  VMUL.F32        S0, S12, S0
5DE8E2:  VMUL.F32        S4, S4, S12
5DE8E6:  VSTR            S2, [SP,#0x60+var_30]
5DE8EA:  VSTR            S0, [SP,#0x60+var_34]
5DE8EE:  VSTR            S4, [SP,#0x60+var_2C]
5DE8F2:  B               loc_5DE742
5DE8F4:  VLDR            S0, =180.0
5DE8F8:  MOVS            R0, #0
5DE8FA:  VLDR            S2, =3.1416
5DE8FE:  VMUL.F32        S0, S16, S0
5DE902:  STR             R0, [SP,#0x60+var_2C]
5DE904:  VLDR            S16, =0.0
5DE908:  VDIV.F32        S0, S0, S2
5DE90C:  VLDR            S2, =0.017453
5DE910:  VMUL.F32        S0, S0, S2
5DE914:  VMOV            R4, S0
5DE918:  MOV             R0, R4; x
5DE91A:  BLX.W           cosf
5DE91E:  MOV             R10, R0
5DE920:  MOV             R0, R4; x
5DE922:  STR.W           R10, [SP,#0x60+var_30]
5DE926:  BLX.W           sinf
5DE92A:  EOR.W           R0, R0, #0x80000000
5DE92E:  VMOV            S0, R10
5DE932:  STR             R0, [SP,#0x60+var_34]
5DE934:  MOV             R10, R6
5DE936:  LDRB.W          R2, [R10,#0x3A]
5DE93A:  ADD             R1, SP, #0x60+var_34
5DE93C:  VMOV            S2, R0
5DE940:  ADD.W           R5, R1, #8
5DE944:  AND.W           R0, R2, #7
5DE948:  ADDS            R4, R1, #4
5DE94A:  CMP             R0, #3
5DE94C:  BNE             loc_5DE976
5DE94E:  LDR.W           R0, [R10,#0x444]
5DE952:  LDR             R6, [SP,#0x60+var_50]
5DE954:  CBZ             R0, loc_5DE978
5DE956:  LDR             R0, [R0,#0x54]; x
5DE958:  BLX.W           tanf
5DE95C:  EOR.W           R0, R0, #0x80000000
5DE960:  STR             R0, [SP,#0x60+var_2C]
5DE962:  ADD             R0, SP, #0x60+var_34; this
5DE964:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5DE968:  VLDR            S2, [SP,#0x60+var_34]
5DE96C:  VLDR            S0, [SP,#0x60+var_30]
5DE970:  VLDR            S16, [SP,#0x60+var_2C]
5DE974:  B               loc_5DE978
5DE976:  LDR             R6, [SP,#0x60+var_50]
5DE978:  VMOV            S6, R6
5DE97C:  VMOV            S4, R8
5DE980:  VMOV            S8, R11
5DE984:  VADD.F32        S0, S0, S4
5DE988:  VADD.F32        S6, S16, S6
5DE98C:  VADD.F32        S2, S2, S8
5DE990:  VMOV            R2, S0
5DE994:  VSTR            S0, [SP,#0x60+var_40+4]
5DE998:  VMOV            R0, S6
5DE99C:  VMOV            R3, S2
5DE9A0:  VSTR            S2, [SP,#0x60+var_40]
5DE9A4:  VSTR            S6, [SP,#0x60+var_38]
5DE9A8:  B               loc_5DE742
