; =========================================================
; Game Engine Function: _ZN4CCam23Get_TwoPlayer_AimVectorER7CVector
; Address            : 0x3D64E0 - 0x3D6666
; =========================================================

3D64E0:  PUSH            {R4-R7,LR}
3D64E2:  ADD             R7, SP, #0xC
3D64E4:  PUSH.W          {R8}
3D64E8:  VPUSH           {D8-D11}
3D64EC:  SUB             SP, SP, #0x20
3D64EE:  MOV             R5, R0
3D64F0:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3D64F8)
3D64F2:  MOV             R8, R1
3D64F4:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3D64F6:  LDR             R0, [R0]; CWorld::Players ...
3D64F8:  LDR             R0, [R0]; CWorld::Players
3D64FA:  LDR.W           R1, [R0,#0x590]
3D64FE:  CBZ             R1, loc_3D6516
3D6500:  LDR             R2, =(_ZN6CWorld7PlayersE_ptr - 0x3D650A)
3D6502:  LDR.W           R1, [R1,#0x464]
3D6506:  ADD             R2, PC; _ZN6CWorld7PlayersE_ptr
3D6508:  CMP             R1, R0
3D650A:  LDR             R2, [R2]; CWorld::Players ...
3D650C:  LDR.W           R6, [R2,#(dword_96B830 - 0x96B69C)]
3D6510:  IT EQ
3D6512:  MOVEQ           R6, R1
3D6514:  B               loc_3D6518
3D6516:  MOV             R6, R0
3D6518:  LDRSB.W         R0, [R6,#0x71C]
3D651C:  RSB.W           R0, R0, R0,LSL#3
3D6520:  ADD.W           R0, R6, R0,LSL#2
3D6524:  LDR.W           R4, [R0,#0x5A4]
3D6528:  MOV             R0, R6; this
3D652A:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
3D652E:  MOV             R1, R0
3D6530:  MOV             R0, R4
3D6532:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
3D6536:  VLDR            S0, [R0,#8]
3D653A:  MOV.W           R12, #0
3D653E:  LDR             R3, [R6,#0x14]
3D6540:  VADD.F32        S0, S0, S0
3D6544:  LDRD.W          R0, R1, [R5,#0xE0]
3D6548:  ADD.W           R4, R3, #0x30 ; '0'
3D654C:  CMP             R3, #0
3D654E:  IT EQ
3D6550:  ADDEQ           R4, R6, #4
3D6552:  LDRD.W          R3, R6, [R4]
3D6556:  LDR             R4, [R4,#8]
3D6558:  VMOV            R2, S0
3D655C:  STRD.W          R6, R4, [SP,#0x50+var_50]
3D6560:  STRD.W          R12, R12, [SP,#0x50+var_48]
3D6564:  BLX             j__ZN7CWeapon38FindNearestTargetEntityWithScreenCoorsEfff7CVectorPfS1_; CWeapon::FindNearestTargetEntityWithScreenCoors(float,float,float,CVector,float *,float *)
3D6568:  MOV             R6, R0
3D656A:  CBZ             R6, loc_3D659E
3D656C:  LDR             R0, [R6,#0x14]
3D656E:  VLDR            S4, [R5,#0x174]
3D6572:  ADD.W           R1, R0, #0x30 ; '0'
3D6576:  CMP             R0, #0
3D6578:  VLDR            S2, [R5,#0x178]
3D657C:  VLDR            S0, [R5,#0x17C]
3D6580:  IT EQ
3D6582:  ADDEQ           R1, R6, #4
3D6584:  VLDR            S6, [R1]
3D6588:  VLDR            S8, [R1,#4]
3D658C:  VLDR            S10, [R1,#8]
3D6590:  VSUB.F32        S4, S6, S4
3D6594:  VSUB.F32        S2, S8, S2
3D6598:  VSUB.F32        S0, S10, S0
3D659C:  B               loc_3D6646
3D659E:  ADD.W           R1, R5, #0x168; CVector *
3D65A2:  ADD.W           R2, R5, #0x18C
3D65A6:  ADD             R0, SP, #0x50+var_3C; CVector *
3D65A8:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3D65AC:  VLDR            S0, =0.017453
3D65B0:  VMOV.F32        S4, #0.5
3D65B4:  VLDR            S2, [R5,#0x8C]
3D65B8:  VLDR            S16, [R5,#0xE0]
3D65BC:  VMUL.F32        S0, S2, S0
3D65C0:  VLDR            S18, [SP,#0x50+var_3C]
3D65C4:  VLDR            S20, [SP,#0x50+var_38]
3D65C8:  VLDR            S22, [SP,#0x50+var_34]
3D65CC:  VMUL.F32        S0, S0, S4
3D65D0:  VMOV            R0, S0; x
3D65D4:  BLX             tanf
3D65D8:  LDR             R1, =(_ZN5CDraw15ms_fAspectRatioE_ptr - 0x3D65EA)
3D65DA:  VMOV            S8, R0
3D65DE:  VLDR            S0, [R5,#0xE4]
3D65E2:  VMUL.F32        S12, S16, S20
3D65E6:  ADD             R1, PC; _ZN5CDraw15ms_fAspectRatioE_ptr
3D65E8:  VMUL.F32        S14, S16, S18
3D65EC:  VMUL.F32        S0, S8, S0
3D65F0:  VLDR            S2, [R5,#0x168]
3D65F4:  LDR             R0, [R1]; CDraw::ms_fAspectRatio ...
3D65F6:  VLDR            S4, [R5,#0x16C]
3D65FA:  VLDR            S6, [R5,#0x170]
3D65FE:  VLDR            S10, [R0]
3D6602:  VMUL.F32        S12, S12, S8
3D6606:  VLDR            S1, [R5,#0x190]
3D660A:  VLDR            S3, [R5,#0x194]
3D660E:  VDIV.F32        S0, S0, S10
3D6612:  VMUL.F32        S10, S16, S22
3D6616:  VADD.F32        S4, S12, S4
3D661A:  VMUL.F32        S12, S0, S1
3D661E:  VMUL.F32        S10, S10, S8
3D6622:  VMUL.F32        S8, S14, S8
3D6626:  VLDR            S14, [R5,#0x18C]
3D662A:  VMUL.F32        S14, S14, S0
3D662E:  VADD.F32        S6, S10, S6
3D6632:  VMUL.F32        S10, S0, S3
3D6636:  VADD.F32        S8, S2, S8
3D663A:  VSUB.F32        S2, S4, S12
3D663E:  VSUB.F32        S0, S6, S10
3D6642:  VSUB.F32        S4, S8, S14
3D6646:  MOV             R0, R8; this
3D6648:  VSTR            S4, [R8]
3D664C:  VSTR            S2, [R8,#4]
3D6650:  VSTR            S0, [R8,#8]
3D6654:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3D6658:  MOV             R0, R6
3D665A:  ADD             SP, SP, #0x20 ; ' '
3D665C:  VPOP            {D8-D11}
3D6660:  POP.W           {R8}
3D6664:  POP             {R4-R7,PC}
