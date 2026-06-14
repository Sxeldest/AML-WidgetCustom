; =========================================================
; Game Engine Function: _ZN5CBike17ProcessRiderAnimsEP4CPedP8CVehicleP13CRideAnimDataP17tBikeHandlingDatas
; Address            : 0x5678A4 - 0x568350
; =========================================================

5678A4:  PUSH            {R4-R7,LR}
5678A6:  ADD             R7, SP, #0xC
5678A8:  PUSH.W          {R8-R11}
5678AC:  SUB             SP, SP, #4
5678AE:  VPUSH           {D8-D14}
5678B2:  SUB             SP, SP, #0xD0
5678B4:  MOV             R5, R3
5678B6:  MOV             R11, R2
5678B8:  MOV             R10, R1
5678BA:  MOV             R8, R0
5678BC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5678C0:  MOV             R4, R0
5678C2:  LDR.W           R0, [R10,#0x5A0]
5678C6:  STR             R5, [SP,#0x128+var_E8]
5678C8:  CBZ             R0, loc_5678DC
5678CA:  CMP             R0, #9
5678CC:  BNE             loc_5678EE
5678CE:  MOVS            R1, #0
5678D0:  ADDW            R0, R10, #0x818
5678D4:  STR             R1, [SP,#0x128+var_108]
5678D6:  MOV             R1, R10
5678D8:  STR             R1, [SP,#0x128+var_F4]
5678DA:  B               loc_5678E8
5678DC:  ADDW            R0, R10, #0x974
5678E0:  MOVS            R1, #0
5678E2:  STR             R1, [SP,#0x128+var_F4]
5678E4:  MOV             R1, R10
5678E6:  STR             R1, [SP,#0x128+var_108]
5678E8:  LDRB            R0, [R0]
5678EA:  STR             R0, [SP,#0x128+var_104]
5678EC:  B               loc_5678FA
5678EE:  MOVS            R0, #0
5678F0:  STR             R0, [SP,#0x128+var_104]
5678F2:  MOVS            R0, #0
5678F4:  STR             R0, [SP,#0x128+var_108]
5678F6:  MOVS            R0, #0
5678F8:  STR             R0, [SP,#0x128+var_F4]
5678FA:  LDR.W           R0, [R8,#0x18]
5678FE:  MOVS            R1, #0xC4
567900:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
567904:  MOV             R5, R0
567906:  LDR.W           R0, [R8,#0x18]
56790A:  MOVS            R1, #0xC5
56790C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
567910:  MOV             R6, R0
567912:  LDR.W           R0, [R8,#0x18]
567916:  MOVS            R1, #0xC3
567918:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
56791C:  CMP             R4, #1
56791E:  STRD.W          R6, R4, [SP,#0x128+var_E4]
567922:  STR             R5, [SP,#0x128+var_EC]
567924:  STR             R0, [SP,#0x128+var_F8]
567926:  BNE             loc_567940
567928:  LDR.W           R0, [R8,#0x18]
56792C:  MOVS            R1, #0xC7
56792E:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
567932:  MOV             R5, R0
567934:  LDR.W           R0, [R8,#0x18]
567938:  MOVS            R1, #0xC6
56793A:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
56793E:  B               loc_567944
567940:  MOVS            R5, #0
567942:  MOVS            R0, #0
567944:  STR             R0, [SP,#0x128+var_F0]
567946:  MOVS            R1, #0xC8
567948:  LDR.W           R0, [R8,#0x18]
56794C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
567950:  MOV             R6, R0
567952:  LDR.W           R0, [R8,#0x18]
567956:  MOVS            R1, #0xCA
567958:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
56795C:  MOV             R9, R0
56795E:  CMP.W           R9, #0
567962:  BNE             loc_567982
567964:  LDR.W           R0, [R8,#0x18]
567968:  MOVS            R1, #0xCB
56796A:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
56796E:  MOV             R9, R0
567970:  CMP.W           R9, #0
567974:  BNE             loc_567982
567976:  LDR.W           R0, [R8,#0x18]
56797A:  MOVS            R1, #0xCC
56797C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
567980:  MOV             R9, R0
567982:  LDR.W           R0, [R10,#0x14]
567986:  ADD.W           R1, R10, #0x48 ; 'H'
56798A:  VLDR            S0, [R10,#0x48]
56798E:  VLDR            S2, [R10,#0x4C]
567992:  VLDR            S6, [R0,#0x10]
567996:  VLDR            S8, [R0,#0x14]
56799A:  VMUL.F32        S6, S0, S6
56799E:  VLDR            S10, [R0,#0x18]
5679A2:  VMUL.F32        S2, S2, S8
5679A6:  VLDR            S4, [R10,#0x50]
5679AA:  LDR.W           R0, [R10,#0x5A4]
5679AE:  VMUL.F32        S0, S4, S10
5679B2:  STR             R1, [SP,#0x128+var_FC]
5679B4:  CMP             R0, #0xA
5679B6:  VADD.F32        S2, S6, S2
5679BA:  BNE             loc_5679C8
5679BC:  ORRS.W          R0, R6, R9
5679C0:  ITT NE
5679C2:  MOVNE           R0, #0
5679C4:  STRBNE.W        R0, [R10,#0x7C9]
5679C8:  MOV             R0, R8; this
5679CA:  VADD.F32        S16, S2, S0
5679CE:  BLX             j__ZN4CPed18GetBikeRidingSkillEv; CPed::GetBikeRidingSkill(void)
5679D2:  VMOV.F32        S20, #1.0
5679D6:  VLDR            S0, [R10,#0x54]
5679DA:  VLDR            S2, [R10,#0x58]
5679DE:  VMOV            S6, R0
5679E2:  VMUL.F32        S0, S0, S0
5679E6:  VLDR            S4, [R10,#0x5C]
5679EA:  VMUL.F32        S2, S2, S2
5679EE:  VLDR            S18, =0.3
5679F2:  VMUL.F32        S4, S4, S4
5679F6:  VADD.F32        S6, S6, S20
5679FA:  VADD.F32        S0, S0, S2
5679FE:  VMUL.F32        S2, S6, S18
567A02:  VADD.F32        S0, S0, S4
567A06:  VMUL.F32        S2, S2, S2
567A0A:  VCMPE.F32       S0, S2
567A0E:  VMRS            APSR_nzcv, FPSCR
567A12:  BLE             loc_567AAE
567A14:  MOVS            R0, #0
567A16:  MOV.W           R1, #0x3F800000
567A1A:  STRD.W          R0, R0, [SP,#0x128+var_D0]
567A1E:  MOVS            R2, #2
567A20:  STR             R1, [SP,#0x128+var_C8]
567A22:  MOVS            R1, #1
567A24:  MOVS            R3, #0x36 ; '6'
567A26:  STRD.W          R0, R0, [SP,#0x128+var_128]; float
567A2A:  STRD.W          R3, R2, [SP,#0x128+var_120]; int
567A2E:  MOV             R4, R6
567A30:  STRD.W          R0, R0, [SP,#0x128+var_118]; int
567A34:  ADD             R6, SP, #0x128+var_94
567A36:  STRD.W          R1, R0, [SP,#0x128+var_110]; int
567A3A:  ADD             R3, SP, #0x128+var_D0; int
567A3C:  LDR             R2, [SP,#0x128+var_FC]; int
567A3E:  MOV             R0, R6; int
567A40:  MOV             R1, R10; this
567A42:  BLX             j__ZN18CEventKnockOffBikeC2EP8CVehicleRK7CVectorS4_ff11eWeaponTypeaiP4CPedbb; CEventKnockOffBike::CEventKnockOffBike(CVehicle *,CVector const&,CVector const&,float,float,eWeaponType,signed char,int,CPed *,bool,bool)
567A46:  LDR.W           R0, [R8,#0x440]
567A4A:  MOV             R1, R6; CEvent *
567A4C:  MOVS            R2, #0; bool
567A4E:  ADDS            R0, #0x68 ; 'h'; this
567A50:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
567A54:  LDR.W           R0, [R10,#0x468]
567A58:  CMP             R0, #0
567A5A:  IT NE
567A5C:  CMPNE           R0, R8
567A5E:  BEQ             loc_567AA6
567A60:  MOVS            R0, #0
567A62:  MOV.W           R1, #0x3F800000
567A66:  STRD.W          R0, R0, [SP,#0x128+var_DC]
567A6A:  MOVS            R2, #0x36 ; '6'
567A6C:  STR             R1, [SP,#0x128+var_D4]
567A6E:  MOVS            R1, #2
567A70:  STRD.W          R0, R0, [SP,#0x128+var_128]; float
567A74:  ADD             R6, SP, #0x128+var_D0
567A76:  STRD.W          R2, R1, [SP,#0x128+var_120]; int
567A7A:  ADD             R3, SP, #0x128+var_DC; int
567A7C:  STRD.W          R0, R0, [SP,#0x128+var_118]; int
567A80:  MOV             R1, R10; this
567A82:  STRD.W          R0, R0, [SP,#0x128+var_110]; int
567A86:  MOV             R0, R6; int
567A88:  LDR             R2, [SP,#0x128+var_FC]; int
567A8A:  BLX             j__ZN18CEventKnockOffBikeC2EP8CVehicleRK7CVectorS4_ff11eWeaponTypeaiP4CPedbb; CEventKnockOffBike::CEventKnockOffBike(CVehicle *,CVector const&,CVector const&,float,float,eWeaponType,signed char,int,CPed *,bool,bool)
567A8E:  LDR.W           R0, [R10,#0x468]
567A92:  MOV             R1, R6; CEvent *
567A94:  MOVS            R2, #0; bool
567A96:  LDR.W           R0, [R0,#0x440]
567A9A:  ADDS            R0, #0x68 ; 'h'; this
567A9C:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
567AA0:  MOV             R0, R6; this
567AA2:  BLX             j__ZN18CEventKnockOffBikeD2Ev; CEventKnockOffBike::~CEventKnockOffBike()
567AA6:  ADD             R0, SP, #0x128+var_94; this
567AA8:  BLX             j__ZN18CEventKnockOffBikeD2Ev; CEventKnockOffBike::~CEventKnockOffBike()
567AAC:  MOV             R6, R4
567AAE:  VABS.F32        S0, S16
567AB2:  VLDR            S2, =0.02
567AB6:  VCMPE.F32       S0, S2
567ABA:  VMRS            APSR_nzcv, FPSCR
567ABE:  BGE             loc_567B38
567AC0:  CMP.W           R9, #0
567AC4:  BNE             loc_567B38
567AC6:  LDR             R0, [SP,#0x128+var_F8]
567AC8:  CBZ             R0, loc_567AEE
567ACA:  VMOV.F32        S2, #1.0
567ACE:  VLDR            S0, [R0,#0x18]
567AD2:  VLDR            S26, =0.0
567AD6:  VCMPE.F32       S0, S2
567ADA:  VMRS            APSR_nzcv, FPSCR
567ADE:  BGE             loc_567B0E
567AE0:  VLDR            S2, [R0,#0x1C]
567AE4:  VCMPE.F32       S2, #0.0
567AE8:  VMRS            APSR_nzcv, FPSCR
567AEC:  BGT             loc_567B0E
567AEE:  LDR.W           R1, [R11]; int
567AF2:  MOVS            R2, #0xC3; unsigned int
567AF4:  LDR.W           R0, [R8,#0x18]; int
567AF8:  MOV.W           R3, #0x40000000
567AFC:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
567B00:  VLDR            S26, =0.0
567B04:  CMP             R0, #0
567B06:  BEQ.W           loc_567C70
567B0A:  VLDR            S0, [R0,#0x18]
567B0E:  LDR.W           R1, =(_ZN6CTimer22ms_fTimeStepNonClippedE_ptr - 0x567B1A)
567B12:  VLDR            S2, =50.0
567B16:  ADD             R1, PC; _ZN6CTimer22ms_fTimeStepNonClippedE_ptr
567B18:  LDR             R1, [R1]; CTimer::ms_fTimeStepNonClipped ...
567B1A:  VLDR            S4, [R1]
567B1E:  VDIV.F32        S2, S4, S2
567B22:  VLDR            S4, [R0,#0x1C]
567B26:  VMUL.F32        S2, S4, S2
567B2A:  VADD.F32        S0, S0, S2
567B2E:  VMIN.F32        D0, D0, D10
567B32:  VSUB.F32        S22, S20, S0
567B36:  B               loc_567C74
567B38:  VCMPE.F32       S16, #0.0
567B3C:  VMRS            APSR_nzcv, FPSCR
567B40:  BGE             loc_567C30
567B42:  MOV             R0, R8; this
567B44:  BLX             j__ZN4CPed18GetBikeRidingSkillEv; CPed::GetBikeRidingSkill(void)
567B48:  VMOV            S0, R0
567B4C:  LDR.W           R0, [R10,#0x5A4]
567B50:  VMOV.F32        S2, #3.5
567B54:  VADD.F32        S0, S0, S20
567B58:  CMP             R0, #2
567B5A:  VMUL.F32        S2, S0, S2
567B5E:  VADD.F32        S0, S2, S2
567B62:  IT EQ
567B64:  VMOVEQ.F32      S2, S0
567B68:  LDR.W           R0, [R10,#0x388]
567B6C:  VLDR            S0, [R0,#0x8C]
567B70:  VMUL.F32        S2, S0, S2
567B74:  VCMPE.F32       S16, S2
567B78:  VMRS            APSR_nzcv, FPSCR
567B7C:  BGE.W           loc_56816C
567B80:  LDR             R0, [SP,#0x128+var_104]
567B82:  CMP             R0, #0
567B84:  BEQ.W           loc_568142
567B88:  MOVS            R0, #0
567B8A:  MOV.W           R1, #0x3F800000
567B8E:  STR             R6, [SP,#0x128+var_104]
567B90:  MOVS            R2, #2
567B92:  STRD.W          R0, R0, [SP,#0x128+var_D0]
567B96:  MOVS            R3, #0x36 ; '6'
567B98:  STR             R1, [SP,#0x128+var_C8]
567B9A:  MOVS            R1, #1
567B9C:  STRD.W          R0, R0, [SP,#0x128+var_128]; float
567BA0:  ADD             R6, SP, #0x128+var_94
567BA2:  STRD.W          R3, R2, [SP,#0x128+var_120]; int
567BA6:  ADD             R3, SP, #0x128+var_D0; int
567BA8:  STRD.W          R0, R0, [SP,#0x128+var_118]; int
567BAC:  STRD.W          R1, R0, [SP,#0x128+var_110]; int
567BB0:  MOV             R0, R6; int
567BB2:  LDR             R2, [SP,#0x128+var_FC]; int
567BB4:  MOV             R1, R10; this
567BB6:  BLX             j__ZN18CEventKnockOffBikeC2EP8CVehicleRK7CVectorS4_ff11eWeaponTypeaiP4CPedbb; CEventKnockOffBike::CEventKnockOffBike(CVehicle *,CVector const&,CVector const&,float,float,eWeaponType,signed char,int,CPed *,bool,bool)
567BBA:  LDR.W           R0, [R8,#0x440]
567BBE:  MOV             R1, R6; CEvent *
567BC0:  MOVS            R2, #0; bool
567BC2:  ADDS            R0, #0x68 ; 'h'; this
567BC4:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
567BC8:  LDR.W           R0, [R10,#0x468]
567BCC:  CMP             R0, #0
567BCE:  IT NE
567BD0:  CMPNE           R0, R8
567BD2:  BEQ             loc_567C1A
567BD4:  MOVS            R0, #0
567BD6:  MOV.W           R1, #0x3F800000
567BDA:  STRD.W          R0, R0, [SP,#0x128+var_DC]
567BDE:  MOVS            R2, #0x36 ; '6'
567BE0:  STR             R1, [SP,#0x128+var_D4]
567BE2:  MOVS            R1, #2
567BE4:  STRD.W          R0, R0, [SP,#0x128+var_128]; float
567BE8:  ADD             R6, SP, #0x128+var_D0
567BEA:  STRD.W          R2, R1, [SP,#0x128+var_120]; int
567BEE:  ADD             R3, SP, #0x128+var_DC; int
567BF0:  STRD.W          R0, R0, [SP,#0x128+var_118]; int
567BF4:  MOV             R1, R10; this
567BF6:  STRD.W          R0, R0, [SP,#0x128+var_110]; int
567BFA:  MOV             R0, R6; int
567BFC:  LDR             R2, [SP,#0x128+var_FC]; int
567BFE:  BLX             j__ZN18CEventKnockOffBikeC2EP8CVehicleRK7CVectorS4_ff11eWeaponTypeaiP4CPedbb; CEventKnockOffBike::CEventKnockOffBike(CVehicle *,CVector const&,CVector const&,float,float,eWeaponType,signed char,int,CPed *,bool,bool)
567C02:  LDR.W           R0, [R10,#0x468]
567C06:  MOV             R1, R6; CEvent *
567C08:  MOVS            R2, #0; bool
567C0A:  LDR.W           R0, [R0,#0x440]
567C0E:  ADDS            R0, #0x68 ; 'h'; this
567C10:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
567C14:  MOV             R0, R6; this
567C16:  BLX             j__ZN18CEventKnockOffBikeD2Ev; CEventKnockOffBike::~CEventKnockOffBike()
567C1A:  ADD             R0, SP, #0x128+var_94; this
567C1C:  BLX             j__ZN18CEventKnockOffBikeD2Ev; CEventKnockOffBike::~CEventKnockOffBike()
567C20:  VLDR            S26, =0.0
567C24:  LDR             R6, [SP,#0x128+var_104]
567C26:  LDR             R0, [SP,#0x128+var_F8]
567C28:  CMP             R0, #0
567C2A:  BNE.W           loc_567B0A
567C2E:  B               loc_567C70
567C30:  LDR             R0, [SP,#0x128+var_F8]
567C32:  CBZ             R0, loc_567C4A
567C34:  VLDR            S0, [R0,#0x1C]
567C38:  VCMPE.F32       S0, #0.0
567C3C:  VMRS            APSR_nzcv, FPSCR
567C40:  ITTT GE
567C42:  MOVGE           R1, #0
567C44:  MOVTGE          R1, #0xC080
567C48:  STRGE           R1, [R0,#0x1C]
567C4A:  VLDR            S26, =0.0
567C4E:  CMP             R6, #0
567C50:  BEQ.W           loc_568226
567C54:  VLDR            S0, [R6,#0x1C]
567C58:  VCMPE.F32       S0, #0.0
567C5C:  VMRS            APSR_nzcv, FPSCR
567C60:  ITTT GE
567C62:  MOVGE           R1, #0
567C64:  MOVTGE          R1, #0xC080
567C68:  STRGE           R1, [R6,#0x1C]
567C6A:  CMP             R0, #0
567C6C:  BNE.W           loc_567B0A
567C70:  VMOV.F32        S22, #1.0
567C74:  CMP.W           R9, #0
567C78:  STR             R5, [SP,#0x128+var_100]
567C7A:  BEQ             loc_567CA8
567C7C:  LDR.W           R0, =(_ZN6CTimer22ms_fTimeStepNonClippedE_ptr - 0x567C88)
567C80:  VLDR            S0, =50.0
567C84:  ADD             R0, PC; _ZN6CTimer22ms_fTimeStepNonClippedE_ptr
567C86:  VLDR            S4, [R9,#0x1C]
567C8A:  LDR             R0, [R0]; CTimer::ms_fTimeStepNonClipped ...
567C8C:  VLDR            S2, [R0]
567C90:  VDIV.F32        S0, S2, S0
567C94:  VMUL.F32        S0, S4, S0
567C98:  VLDR            S2, [R9,#0x18]
567C9C:  VADD.F32        S0, S2, S0
567CA0:  VMIN.F32        D0, D11, D0
567CA4:  VSUB.F32        S22, S22, S0
567CA8:  LDR             R4, [SP,#0x128+var_E0]
567CAA:  CMP             R6, #0
567CAC:  LDRD.W          R9, R5, [SP,#0x128+var_EC]
567CB0:  BEQ             loc_567CDE
567CB2:  LDR.W           R0, =(_ZN6CTimer22ms_fTimeStepNonClippedE_ptr - 0x567CBE)
567CB6:  VLDR            S0, =50.0
567CBA:  ADD             R0, PC; _ZN6CTimer22ms_fTimeStepNonClippedE_ptr
567CBC:  VLDR            S4, [R6,#0x1C]
567CC0:  LDR             R0, [R0]; CTimer::ms_fTimeStepNonClipped ...
567CC2:  VLDR            S2, [R0]
567CC6:  VDIV.F32        S0, S2, S0
567CCA:  VMUL.F32        S0, S4, S0
567CCE:  VLDR            S2, [R6,#0x18]
567CD2:  VADD.F32        S0, S2, S0
567CD6:  VMIN.F32        D0, D11, D0
567CDA:  VSUB.F32        S22, S22, S0
567CDE:  VLDR            S0, [R5,#0x18]
567CE2:  VMOV.F32        S28, S20
567CE6:  VLDR            S2, [R11,#8]
567CEA:  VLDR            S24, =0.0
567CEE:  VDIV.F32        S2, S2, S0
567CF2:  VMOV.F32        S0, #-1.0
567CF6:  VCMP.F32        S26, S0
567CFA:  VMRS            APSR_nzcv, FPSCR
567CFE:  IT EQ
567D00:  VMOVEQ.F32      S2, S24
567D04:  VCMPE.F32       S2, S20
567D08:  VMRS            APSR_nzcv, FPSCR
567D0C:  BGT             loc_567D20
567D0E:  VCMPE.F32       S2, S0
567D12:  VMRS            APSR_nzcv, FPSCR
567D16:  VMOV.F32        S28, S2
567D1A:  IT LT
567D1C:  VMOVLT.F32      S28, S0
567D20:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x567D28)
567D24:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
567D26:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
567D28:  VLDR            S0, [R0]
567D2C:  MOV             R0, #0x3F5C28F6; x
567D34:  VMOV            R6, S0
567D38:  MOV             R1, R6; y
567D3A:  BLX             powf
567D3E:  VMOV            S0, R0
567D42:  VLDR            S4, [R11,#0x14]
567D46:  CMP             R4, #1
567D48:  VSUB.F32        S2, S20, S0
567D4C:  VMUL.F32        S0, S0, S4
567D50:  VMUL.F32        S2, S28, S2
567D54:  VADD.F32        S0, S2, S0
567D58:  VSTR            S0, [R11,#0x14]
567D5C:  ITT EQ
567D5E:  LDREQ.W         R0, [R10,#0x468]
567D62:  CMPEQ           R0, #0
567D64:  BEQ.W           loc_567FF6
567D68:  LDR             R1, [SP,#0x128+var_F4]
567D6A:  CMP             R1, #0
567D6C:  ITTT NE
567D6E:  LDRBNE.W        R0, [R1,#0x628]
567D72:  ANDNE.W         R0, R0, #0x7F
567D76:  STRBNE.W        R0, [R1,#0x628]
567D7A:  CBZ             R4, loc_567DC4
567D7C:  MOVW            R0, #0xD70A
567D80:  MOV             R1, R6; y
567D82:  MOVT            R0, #0x3F63; x
567D86:  BLX             powf
567D8A:  VMOV.F32        S0, #1.0
567D8E:  VLDR            S4, [R11,#0x18]
567D92:  VMOV            S2, R0
567D96:  VSUB.F32        S0, S0, S2
567D9A:  VMUL.F32        S2, S2, S4
567D9E:  VMUL.F32        S0, S24, S0
567DA2:  VADD.F32        S0, S0, S2
567DA6:  B               loc_567DC8
567DA8:  DCFS 0.3
567DAC:  DCFS 0.02
567DB0:  DCFS 0.0
567DB4:  DCFS 50.0
567DB8:  DCFS 0.56
567DBC:  DCFS 0.01
567DC0:  DCFS 4.6566e-10
567DC4:  VLDR            S0, =0.0
567DC8:  VLDR            S2, [R11,#0x14]
567DCC:  VMOV.F32        S20, #1.0
567DD0:  VLDR            S4, =0.56
567DD4:  ADD.W           R10, R11, #0x18
567DD8:  VABS.F32        S6, S2
567DDC:  LDR             R5, [SP,#0x128+var_F0]
567DDE:  LDR             R6, [SP,#0x128+var_E4]
567DE0:  VLDR            S24, =0.0
567DE4:  VSTR            S0, [R11,#0x18]
567DE8:  VCMPE.F32       S6, S4
567DEC:  VMRS            APSR_nzcv, FPSCR
567DF0:  BGT             loc_567E0E
567DF2:  EORS.W          R0, R4, #1
567DF6:  BNE             loc_567E0E
567DF8:  VABS.F32        S24, S0
567DFC:  VCMPE.F32       S24, S4
567E00:  VMRS            APSR_nzcv, FPSCR
567E04:  BLE             loc_567E5A
567E06:  VMOV.F32        S24, #1.0
567E0A:  VLDR            S20, =0.0
567E0E:  CMP             R4, #1
567E10:  BNE             loc_567E8C
567E12:  LDR             R4, [SP,#0x128+var_100]
567E14:  CMP             R4, #0
567E16:  BEQ.W           loc_56809E
567E1A:  CMP             R5, #0
567E1C:  BEQ.W           loc_5680B4
567E20:  VMUL.F32        S0, S22, S24
567E24:  VLDR            S2, [R10]
567E28:  VCMPE.F32       S2, #0.0
567E2C:  VMRS            APSR_nzcv, FPSCR
567E30:  BGE.W           loc_567F9C
567E34:  LDR             R0, [R5,#0x14]
567E36:  VSTR            S0, [R5,#0x18]
567E3A:  VLDR            S0, [R10]
567E3E:  VLDR            S2, [R0,#0x10]
567E42:  VMUL.F32        S0, S2, S0
567E46:  VMOV            R0, S0
567E4A:  EOR.W           R1, R0, #0x80000000; float
567E4E:  MOV             R0, R5; this
567E50:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
567E54:  MOV             R0, R5
567E56:  MOV             R5, R4
567E58:  B               loc_567FBA
567E5A:  VMUL.F32        S4, S2, S2
567E5E:  VMUL.F32        S6, S0, S0
567E62:  VADD.F32        S4, S6, S4
567E66:  VLDR            S6, =0.01
567E6A:  VSQRT.F32       S4, S4
567E6E:  VCMPE.F32       S4, S6
567E72:  VMRS            APSR_nzcv, FPSCR
567E76:  BLE             loc_567E84
567E78:  VDIV.F32        S0, S0, S4
567E7C:  VDIV.F32        S2, S2, S4
567E80:  VABS.F32        S24, S0
567E84:  VABS.F32        S20, S2
567E88:  CMP             R4, #1
567E8A:  BEQ             loc_567E12
567E8C:  CMP.W           R9, #0
567E90:  BEQ.W           loc_567FCE
567E94:  CMP             R6, #0
567E96:  BEQ.W           loc_567FE4
567E9A:  VMUL.F32        S0, S22, S20
567E9E:  VLDR            S2, [R11,#0x14]
567EA2:  VCMPE.F32       S2, #0.0
567EA6:  VMRS            APSR_nzcv, FPSCR
567EAA:  BGE             loc_567ED4
567EAC:  LDR.W           R0, [R9,#0x14]
567EB0:  VSTR            S0, [R9,#0x18]
567EB4:  VLDR            S0, [R11,#0x14]
567EB8:  VLDR            S2, [R0,#0x10]
567EBC:  VMUL.F32        S0, S2, S0
567EC0:  VMOV            R0, S0
567EC4:  EOR.W           R1, R0, #0x80000000; float
567EC8:  MOV             R0, R9; this
567ECA:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
567ECE:  MOV             R0, R9
567ED0:  MOV             R9, R6
567ED2:  B               loc_567EF2
567ED4:  LDR             R0, [R6,#0x14]
567ED6:  VSTR            S0, [R6,#0x18]
567EDA:  VLDR            S0, [R11,#0x14]
567EDE:  VLDR            S2, [R0,#0x10]
567EE2:  MOV             R0, R6; this
567EE4:  VMUL.F32        S0, S2, S0
567EE8:  VMOV            R1, S0; float
567EEC:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
567EF0:  MOV             R0, R6
567EF2:  LDRH            R1, [R0,#0x2E]
567EF4:  VCMPE.F32       S16, S18
567EF8:  VMRS            APSR_nzcv, FPSCR
567EFC:  MOV.W           R2, #0
567F00:  BIC.W           R1, R1, #1
567F04:  STRH            R1, [R0,#0x2E]
567F06:  STR.W           R2, [R9,#0x18]
567F0A:  BLE             loc_567F8E
567F0C:  VMOV.F32        S0, #-6.0
567F10:  LDR.W           R0, [R8,#0x49C]
567F14:  VMOV.F32        S2, #6.0
567F18:  LDR             R5, [R0,#0x10]
567F1A:  VMUL.F32        S18, S16, S0
567F1E:  VMUL.F32        S16, S16, S2
567F22:  BLX             rand
567F26:  VMOV            S0, R0
567F2A:  VLDR            S20, =4.6566e-10
567F2E:  VSUB.F32        S16, S16, S18
567F32:  LDR.W           R0, =(_ZN6CPedIK7XaxisIKE_ptr - 0x567F40)
567F36:  VCVT.F32.S32    S0, S0
567F3A:  MOVS            R3, #2
567F3C:  ADD             R0, PC; _ZN6CPedIK7XaxisIKE_ptr
567F3E:  LDR             R1, [R0]; CPedIK::XaxisIK ...
567F40:  MOV             R0, R5
567F42:  VMUL.F32        S0, S0, S20
567F46:  VMUL.F32        S0, S16, S0
567F4A:  VADD.F32        S0, S18, S0
567F4E:  VMOV            R2, S0
567F52:  BLX             j__Z12RtQuatRotateP6RtQuatPK5RwV3df15RwOpCombineType; RtQuatRotate(RtQuat *,RwV3d const*,float,RwOpCombineType)
567F56:  BLX             rand
567F5A:  VMOV            S0, R0
567F5E:  LDR.W           R0, =(_ZN6CPedIK7YaxisIKE_ptr - 0x567F6C)
567F62:  MOVS            R3, #2
567F64:  VCVT.F32.S32    S0, S0
567F68:  ADD             R0, PC; _ZN6CPedIK7YaxisIKE_ptr
567F6A:  LDR             R1, [R0]; CPedIK::YaxisIK ...
567F6C:  MOV             R0, R5
567F6E:  VMUL.F32        S0, S0, S20
567F72:  VMUL.F32        S0, S16, S0
567F76:  VADD.F32        S0, S18, S0
567F7A:  VMOV            R2, S0
567F7E:  BLX             j__Z12RtQuatRotateP6RtQuatPK5RwV3df15RwOpCombineType; RtQuatRotate(RtQuat *,RwV3d const*,float,RwOpCombineType)
567F82:  LDR.W           R0, [R8,#0x488]
567F86:  ORR.W           R0, R0, #0x4000
567F8A:  STR.W           R0, [R8,#0x488]
567F8E:  ADD             SP, SP, #0xD0
567F90:  VPOP            {D8-D14}
567F94:  ADD             SP, SP, #4
567F96:  POP.W           {R8-R11}
567F9A:  POP             {R4-R7,PC}
567F9C:  LDR             R0, [R4,#0x14]
567F9E:  VSTR            S0, [R4,#0x18]
567FA2:  VLDR            S0, [R10]
567FA6:  VLDR            S2, [R0,#0x10]
567FAA:  MOV             R0, R4; this
567FAC:  VMUL.F32        S0, S2, S0
567FB0:  VMOV            R1, S0; float
567FB4:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
567FB8:  MOV             R0, R4
567FBA:  LDRH            R1, [R0,#0x2E]
567FBC:  BIC.W           R1, R1, #1
567FC0:  STRH            R1, [R0,#0x2E]
567FC2:  MOVS            R0, #0
567FC4:  STR             R0, [R5,#0x18]
567FC6:  CMP.W           R9, #0
567FCA:  BNE.W           loc_567E94
567FCE:  LDR.W           R1, [R11]; int
567FD2:  MOVS            R2, #0xC4; unsigned int
567FD4:  LDR.W           R0, [R8,#0x18]; int
567FD8:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId; CAnimManager::AddAnimation(RpClump *,AssocGroupId,AnimationId)
567FDC:  MOV             R9, R0
567FDE:  CMP             R6, #0
567FE0:  BNE.W           loc_567E9A
567FE4:  LDR.W           R1, [R11]; int
567FE8:  MOVS            R2, #0xC5; unsigned int
567FEA:  LDR.W           R0, [R8,#0x18]; int
567FEE:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId; CAnimManager::AddAnimation(RpClump *,AssocGroupId,AnimationId)
567FF2:  MOV             R6, R0
567FF4:  B               loc_567E9A
567FF6:  VMOV.F32        S0, #-1.0
567FFA:  LDR             R2, [SP,#0x128+var_F4]
567FFC:  VMOV            D12, D13
568000:  VCMPE.F32       S26, S0
568004:  VMRS            APSR_nzcv, FPSCR
568008:  BLE.W           loc_567D7C
56800C:  VLDR            S24, [R11,#0x10]
568010:  CMP             R2, #0
568012:  BEQ.W           loc_568230
568016:  ADDW            R1, R2, #0x744
56801A:  LDRB.W          R0, [R2,#0x628]
56801E:  VLDR            S0, [R1]
568022:  AND.W           R1, R0, #0x7F
568026:  STRB.W          R1, [R2,#0x628]
56802A:  VCMPE.F32       S0, #0.0
56802E:  VMRS            APSR_nzcv, FPSCR
568032:  BGT             loc_5680C6
568034:  ADD.W           R1, R2, #0x748
568038:  VLDR            S2, [R1]
56803C:  VCMPE.F32       S2, #0.0
568040:  VMRS            APSR_nzcv, FPSCR
568044:  BGT             loc_5680C6
568046:  LDR             R1, [R2,#0x14]
568048:  VLDR            S2, [R1,#0x18]
56804C:  VCMPE.F32       S2, #0.0
568050:  VMRS            APSR_nzcv, FPSCR
568054:  BLE             loc_5680C6
568056:  ADDW            R1, R2, #0x74C
56805A:  VLDR            S4, [R1]
56805E:  VCMPE.F32       S4, #0.0
568062:  VMRS            APSR_nzcv, FPSCR
568066:  BGT             loc_56807A
568068:  ADD.W           R1, R2, #0x750
56806C:  VLDR            S4, [R1]
568070:  VCMPE.F32       S4, #0.0
568074:  VMRS            APSR_nzcv, FPSCR
568078:  BLE             loc_5680C6
56807A:  VMOV.F32        S4, #0.5
56807E:  VLDR            S6, [R5,#0x2C]
568082:  VSUB.F32        S0, S6, S2
568086:  VMUL.F32        S2, S6, S4
56808A:  VCMPE.F32       S0, S2
56808E:  VMRS            APSR_nzcv, FPSCR
568092:  ITT LT
568094:  ORRLT.W         R0, R0, #0x80
568098:  STRBLT.W        R0, [R2,#0x628]
56809C:  B               loc_568294
56809E:  LDR.W           R1, [R11]; int
5680A2:  MOVS            R2, #0xC7; unsigned int
5680A4:  LDR.W           R0, [R8,#0x18]; int
5680A8:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId; CAnimManager::AddAnimation(RpClump *,AssocGroupId,AnimationId)
5680AC:  MOV             R4, R0
5680AE:  CMP             R5, #0
5680B0:  BNE.W           loc_567E20
5680B4:  LDR.W           R1, [R11]; int
5680B8:  MOVS            R2, #0xC6; unsigned int
5680BA:  LDR.W           R0, [R8,#0x18]; int
5680BE:  BLX             j__ZN12CAnimManager12AddAnimationEP7RpClump12AssocGroupId11AnimationId; CAnimManager::AddAnimation(RpClump *,AssocGroupId,AnimationId)
5680C2:  MOV             R5, R0
5680C4:  B               loc_567E20
5680C6:  ADDW            R1, R2, #0x74C
5680CA:  VLDR            S2, [R1]
5680CE:  VCMPE.F32       S2, #0.0
5680D2:  VMRS            APSR_nzcv, FPSCR
5680D6:  BGT.W           loc_5682AC
5680DA:  ADD.W           R1, R2, #0x750
5680DE:  VLDR            S2, [R1]
5680E2:  VCMPE.F32       S2, #0.0
5680E6:  VMRS            APSR_nzcv, FPSCR
5680EA:  BGT.W           loc_5682AC
5680EE:  LDR             R1, [R2,#0x14]
5680F0:  VLDR            S2, [R1,#0x18]
5680F4:  VCMPE.F32       S2, #0.0
5680F8:  VMRS            APSR_nzcv, FPSCR
5680FC:  BGE.W           loc_5682AC
568100:  VCMPE.F32       S0, #0.0
568104:  VMRS            APSR_nzcv, FPSCR
568108:  BGT             loc_56811E
56810A:  ADD.W           R1, R2, #0x748
56810E:  VLDR            S0, [R1]
568112:  VCMPE.F32       S0, #0.0
568116:  VMRS            APSR_nzcv, FPSCR
56811A:  BLE.W           loc_5682AC
56811E:  VLDR            S4, [R5,#0x30]
568122:  VLDR            S0, =0.6
568126:  VSUB.F32        S2, S4, S2
56812A:  VMUL.F32        S0, S4, S0
56812E:  VCMPE.F32       S2, S0
568132:  VMRS            APSR_nzcv, FPSCR
568136:  ITT GT
568138:  ORRGT.W         R0, R0, #0x80
56813C:  STRBGT.W        R0, [R2,#0x628]
568140:  B               loc_5682AC
568142:  VMOV.F32        S2, #-0.5
568146:  LDR.W           R0, [R10,#0x14]
56814A:  VLDR            S4, [R0,#0x28]
56814E:  VCMPE.F32       S4, S2
568152:  VMRS            APSR_nzcv, FPSCR
568156:  BGE             loc_56816C
568158:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x568162)
56815A:  LDR.W           R1, [R10,#0x40]
56815E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
568160:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
568162:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
568164:  SUBS            R0, R0, R1
568166:  CMP             R0, #0x63 ; 'c'
568168:  BLS.W           loc_567B88
56816C:  ADD.W           R0, R10, #0x4A0
568170:  VLDR            S2, [R0]
568174:  VCMPE.F32       S2, #0.0
568178:  VMRS            APSR_nzcv, FPSCR
56817C:  BGE             loc_5681D8
56817E:  VCVT.F64.F32    D16, S0
568182:  VMOV.F64        D17, #1.5
568186:  VMUL.F64        D16, D16, D17
56818A:  VCVT.F64.F32    D17, S16
56818E:  VCMPE.F64       D16, D17
568192:  VMRS            APSR_nzcv, FPSCR
568196:  BGE             loc_5681D8
568198:  CBZ             R6, loc_5681BE
56819A:  VLDR            S0, [R6,#0x18]
56819E:  VLDR            S26, =0.0
5681A2:  VCMPE.F32       S0, S20
5681A6:  VMRS            APSR_nzcv, FPSCR
5681AA:  BGE.W           loc_567C26
5681AE:  VLDR            S0, [R6,#0x1C]
5681B2:  VCMPE.F32       S0, #0.0
5681B6:  VMRS            APSR_nzcv, FPSCR
5681BA:  BGT.W           loc_567C26
5681BE:  LDR.W           R1, [R11]; int
5681C2:  MOVS            R2, #0xC8; unsigned int
5681C4:  LDR.W           R0, [R8,#0x18]; int
5681C8:  MOV.W           R3, #0x40800000
5681CC:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
5681D0:  MOV             R6, R0
5681D2:  VLDR            S26, =0.0
5681D6:  B               loc_567C26
5681D8:  LDR             R0, [SP,#0x128+var_E0]
5681DA:  VLDR            S26, =0.0
5681DE:  CMP             R0, #1
5681E0:  BNE             loc_568206
5681E2:  VCVT.F64.F32    D16, S0
5681E6:  LDR             R0, [SP,#0x128+var_F8]
5681E8:  VMOV.F64        D17, #1.5
5681EC:  VMUL.F64        D16, D16, D17
5681F0:  VCVT.F64.F32    D17, S16
5681F4:  VCMPE.F64       D16, D17
5681F8:  VMRS            APSR_nzcv, FPSCR
5681FC:  IT GT
5681FE:  VMOVGT.F32      S26, #-1.0
568202:  CBNZ            R0, loc_56820A
568204:  B               loc_568220
568206:  LDR             R0, [SP,#0x128+var_F8]
568208:  CBZ             R0, loc_568220
56820A:  VLDR            S0, [R0,#0x1C]
56820E:  VCMPE.F32       S0, #0.0
568212:  VMRS            APSR_nzcv, FPSCR
568216:  ITTT GE
568218:  MOVGE           R1, #0
56821A:  MOVTGE          R1, #0xC080
56821E:  STRGE           R1, [R0,#0x1C]
568220:  CMP             R6, #0
568222:  BNE.W           loc_567C54
568226:  MOVS            R6, #0
568228:  CMP             R0, #0
56822A:  BNE.W           loc_567B0A
56822E:  B               loc_567C70
568230:  LDR             R1, [SP,#0x128+var_108]
568232:  CBZ             R1, loc_5682AC
568234:  ADDW            R0, R1, #0x808
568238:  VLDR            S0, [R0]
56823C:  VCMPE.F32       S0, #0.0
568240:  VMRS            APSR_nzcv, FPSCR
568244:  BGT             loc_5682AC
568246:  ADDW            R0, R1, #0x80C
56824A:  VLDR            S0, [R0]
56824E:  VCMPE.F32       S0, #0.0
568252:  VMRS            APSR_nzcv, FPSCR
568256:  BGT             loc_5682AC
568258:  LDR             R0, [R1,#0x14]
56825A:  VLDR            S0, [R0,#0x18]
56825E:  VCMPE.F32       S0, #0.0
568262:  VMRS            APSR_nzcv, FPSCR
568266:  BLE             loc_5682AC
568268:  ADD.W           R0, R1, #0x810
56826C:  VLDR            S2, [R0]
568270:  VCMPE.F32       S2, #0.0
568274:  VMRS            APSR_nzcv, FPSCR
568278:  BGT             loc_56828C
56827A:  ADDW            R0, R1, #0x814
56827E:  VLDR            S2, [R0]
568282:  VCMPE.F32       S2, #0.0
568286:  VMRS            APSR_nzcv, FPSCR
56828A:  BLE             loc_5682AC
56828C:  VLDR            S2, [R5,#0x2C]
568290:  VSUB.F32        S0, S2, S0
568294:  VLDR            S2, =0.15
568298:  VCMPE.F32       S0, S2
56829C:  VMRS            APSR_nzcv, FPSCR
5682A0:  BGE             loc_5682AC
5682A2:  VMOV.F32        S0, #0.25
5682A6:  VMAX.F32        D12, D12, D0
5682AA:  B               loc_56831A
5682AC:  VLDR            S0, =0.01
5682B0:  VCMPE.F32       S16, S0
5682B4:  VMRS            APSR_nzcv, FPSCR
5682B8:  ITTTT GT
5682BA:  ADDWGT          R0, R10, #0x4A4
5682BE:  VLDRGT          S0, [R0]
5682C2:  VMOVGT.F32      S2, #0.5
5682C6:  VCMPEGT.F32     S0, S2
5682CA:  IT GT
5682CC:  VMRSGT          APSR_nzcv, FPSCR
5682D0:  BLE             loc_5682DC
5682D2:  VLDR            S0, =0.1
5682D6:  VMAX.F32        D12, D12, D0
5682DA:  B               loc_56831A
5682DC:  VCMPE.F32       S24, #0.0
5682E0:  VMRS            APSR_nzcv, FPSCR
5682E4:  BGT             loc_56831A
5682E6:  VMOV.F32        S2, #0.5
5682EA:  ADD.W           R0, R10, #0x4A0
5682EE:  VLDR            S0, [R0]
5682F2:  VCMPE.F32       S0, S2
5682F6:  VMRS            APSR_nzcv, FPSCR
5682FA:  BLE             loc_56831A
5682FC:  LDR.W           R0, [R10,#0x388]
568300:  VLDR            S0, [R0,#0x88]
568304:  VMUL.F32        S0, S0, S18
568308:  VCMPE.F32       S16, S0
56830C:  VMRS            APSR_nzcv, FPSCR
568310:  ITT LT
568312:  VLDRLT          S0, =-0.3
568316:  VMINLT.F32      D12, D12, D0
56831A:  VABS.F32        S0, S28
56831E:  VCMPE.F32       S0, S18
568322:  VMRS            APSR_nzcv, FPSCR
568326:  BLE.W           loc_567D7C
56832A:  VLDR            S2, =-0.3
56832E:  VLDR            S4, =0.0
568332:  VADD.F32        S0, S0, S2
568336:  VLDR            S2, =-0.26
56833A:  VDIV.F32        S0, S0, S2
56833E:  VMOV.F32        S2, #1.0
568342:  VADD.F32        S0, S0, S2
568346:  VMAX.F32        D0, D0, D2
56834A:  VMUL.F32        S24, S0, S24
56834E:  B               loc_567D7C
