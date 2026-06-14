; =========================================================
; Game Engine Function: _ZN8CCarCtrl34FlyAIHeliToTarget_FixedOrientationEP5CHelif7CVectorb
; Address            : 0x2FA618 - 0x2FAA5A
; =========================================================

2FA618:  PUSH            {R4-R7,LR}
2FA61A:  ADD             R7, SP, #0xC
2FA61C:  PUSH.W          {R8-R11}
2FA620:  SUB             SP, SP, #4
2FA622:  VPUSH           {D8-D11}
2FA626:  SUB             SP, SP, #0x78
2FA628:  MOV             R4, R0
2FA62A:  LDR.W           R0, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x2FA638)
2FA62E:  MOV             R11, R1
2FA630:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2FA63C)
2FA634:  ADD             R0, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
2FA636:  MOV             R8, R2
2FA638:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2FA63A:  LDRH            R2, [R4,#0x24]
2FA63C:  LDR             R0, [R0]; CTimer::m_snPreviousTimeInMilliseconds ...
2FA63E:  MOV             R9, R3
2FA640:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
2FA642:  MOV             R3, #0x10624DD3
2FA64A:  VMOV            S18, R11
2FA64E:  LDR             R0, [R0]; CTimer::m_snPreviousTimeInMilliseconds
2FA650:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
2FA652:  ADD             R0, R2
2FA654:  ADD             R1, R2
2FA656:  UMULL.W         R6, R5, R0, R3
2FA65A:  MOV.W           R6, #0x1F4
2FA65E:  UMULL.W         R2, R3, R1, R3
2FA662:  LSRS            R2, R5, #5
2FA664:  MLS.W           R0, R2, R6, R0
2FA668:  LSRS            R2, R3, #5; float
2FA66A:  MLS.W           R1, R2, R6, R1
2FA66E:  CMP             R1, R0
2FA670:  BCS             loc_2FA762
2FA672:  LDR.W           R0, [R4,#0x9BC]
2FA676:  ADD.W           R10, R4, #4
2FA67A:  STR.W           R0, [R4,#0x9C0]
2FA67E:  VLDR            S0, =50.0
2FA682:  MOV             R1, R10
2FA684:  VLDR            S4, [R4,#0x4C]
2FA688:  VLDR            S6, [R4,#0x50]
2FA68C:  VLDR            S2, [R4,#0x48]
2FA690:  VMUL.F32        S4, S4, S0
2FA694:  VMUL.F32        S6, S6, S0
2FA698:  LDR             R0, [R4,#0x14]
2FA69A:  VMUL.F32        S0, S2, S0
2FA69E:  CMP             R0, #0
2FA6A0:  IT NE
2FA6A2:  ADDNE.W         R1, R0, #0x30 ; '0'
2FA6A6:  MOV             R0, R11; x
2FA6A8:  VLDR            S2, [R1]
2FA6AC:  VLDR            S8, [R1,#4]
2FA6B0:  VLDR            S10, [R1,#8]
2FA6B4:  VADD.F32        S16, S4, S8
2FA6B8:  VADD.F32        S20, S0, S2
2FA6BC:  VADD.F32        S22, S6, S10
2FA6C0:  VSTR            S16, [SP,#0xB8+var_78]
2FA6C4:  VSTR            S20, [SP,#0xB8+var_7C]
2FA6C8:  VSTR            S22, [SP,#0xB8+var_74]
2FA6CC:  BLX             sinf
2FA6D0:  STR             R0, [SP,#0xB8+var_84]
2FA6D2:  MOV             R0, R11; x
2FA6D4:  BLX             cosf
2FA6D8:  STR             R0, [SP,#0xB8+var_88]
2FA6DA:  MOVS            R0, #0xBF800000
2FA6E0:  STR             R0, [SP,#0xB8+var_80]
2FA6E2:  ADD             R0, SP, #0xB8+var_88; this
2FA6E4:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
2FA6E8:  VLDR            S0, =60.0
2FA6EC:  MOVS            R0, #1
2FA6EE:  VLDR            S2, [SP,#0xB8+var_88]
2FA6F2:  MOVS            R1, #0
2FA6F4:  VLDR            S4, [SP,#0xB8+var_84]
2FA6F8:  ADD             R2, SP, #0xB8+var_6C
2FA6FA:  VLDR            S6, [SP,#0xB8+var_80]
2FA6FE:  VMUL.F32        S2, S2, S0
2FA702:  VMUL.F32        S4, S4, S0
2FA706:  ADD             R3, SP, #0xB8+var_70
2FA708:  VMUL.F32        S0, S6, S0
2FA70C:  VADD.F32        S2, S2, S20
2FA710:  VADD.F32        S4, S4, S16
2FA714:  VADD.F32        S0, S0, S22
2FA718:  VSTR            S2, [SP,#0xB8+var_94]
2FA71C:  VSTR            S4, [SP,#0xB8+var_90]
2FA720:  VSTR            S0, [SP,#0xB8+var_8C]
2FA724:  STRD.W          R0, R1, [SP,#0xB8+var_B8]
2FA728:  STRD.W          R1, R1, [SP,#0xB8+var_B0]
2FA72C:  STRD.W          R1, R1, [SP,#0xB8+var_A8]
2FA730:  STRD.W          R1, R0, [SP,#0xB8+var_A0]
2FA734:  ADD             R0, SP, #0xB8+var_7C
2FA736:  ADD             R1, SP, #0xB8+var_94
2FA738:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
2FA73C:  ADD.W           R6, R4, #0x9C0
2FA740:  CMP             R0, #1
2FA742:  BNE             loc_2FA76A
2FA744:  ADDW            R0, R4, #0x9C4
2FA748:  VLDR            S0, [SP,#0xB8+var_64]
2FA74C:  VLDR            S4, [R6]
2FA750:  VLDR            S2, [R0]
2FA754:  VADD.F32        S0, S0, S2
2FA758:  VMAX.F32        D0, D2, D0
2FA75C:  VSTR            S0, [R6]
2FA760:  B               loc_2FA76A
2FA762:  ADD.W           R6, R4, #0x9C0
2FA766:  ADD.W           R10, R4, #4
2FA76A:  LDR             R1, [R4,#0x14]
2FA76C:  LDRD.W          R0, R1, [R1,#0x10]; float
2FA770:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2FA774:  VLDR            S0, =100.0
2FA778:  MOV             R5, R0
2FA77A:  VLDR            S2, [R4,#0x50]
2FA77E:  MOV             R1, R10
2FA780:  LDR             R0, [R4,#0x14]
2FA782:  VMOV.F32        S16, #5.0
2FA786:  VMUL.F32        S0, S2, S0
2FA78A:  VLDR            S20, =0.0
2FA78E:  CMP             R0, #0
2FA790:  IT NE
2FA792:  ADDNE.W         R1, R0, #0x30 ; '0'
2FA796:  VLDR            S2, [R1,#8]
2FA79A:  VMOV.F32        S4, S16
2FA79E:  VADD.F32        S0, S2, S0
2FA7A2:  VLDR            S2, [R6]
2FA7A6:  ADDW            R6, R4, #0x9AC
2FA7AA:  VSUB.F32        S0, S2, S0
2FA7AE:  VMOV.F32        S2, #10.0
2FA7B2:  VCMPE.F32       S0, #0.0
2FA7B6:  VMRS            APSR_nzcv, FPSCR
2FA7BA:  IT GT
2FA7BC:  VMOVGT.F32      S4, S2
2FA7C0:  VDIV.F32        S0, S0, S4
2FA7C4:  VADD.F32        S0, S0, S20
2FA7C8:  VSTR            S0, [R6]
2FA7CC:  BLX             rand
2FA7D0:  AND.W           R0, R0, #0xF
2FA7D4:  VLDR            S2, =0.002
2FA7D8:  SUBS            R0, #7
2FA7DA:  VMOV            S10, R5
2FA7DE:  VMOV            S0, R0
2FA7E2:  VCVT.F32.S32    S0, S0
2FA7E6:  VLDR            S4, [R6]
2FA7EA:  VMUL.F32        S0, S0, S2
2FA7EE:  VMOV.F32        S2, #1.0
2FA7F2:  VADD.F32        S0, S4, S0
2FA7F6:  VLDR            S4, =-0.3
2FA7FA:  VMOV.F32        S6, S2
2FA7FE:  VMOV.F32        S8, S2
2FA802:  VCMPE.F32       S0, S4
2FA806:  VMRS            APSR_nzcv, FPSCR
2FA80A:  VCMPE.F32       S0, S2
2FA80E:  IT LT
2FA810:  VMOVLT.F32      S6, S4
2FA814:  VMRS            APSR_nzcv, FPSCR
2FA818:  VCMPE.F32       S0, S4
2FA81C:  VSUB.F32        S4, S18, S10
2FA820:  IT LT
2FA822:  VMOVLT.F32      S8, S6
2FA826:  VMOV.F32        S6, S8
2FA82A:  IT LT
2FA82C:  VMOVLT.F32      S6, S0
2FA830:  VMRS            APSR_nzcv, FPSCR
2FA834:  VLDR            S0, =3.1416
2FA838:  VCMPE.F32       S4, S0
2FA83C:  IT LT
2FA83E:  VMOVLT.F32      S6, S8
2FA842:  VMRS            APSR_nzcv, FPSCR
2FA846:  VSTR            S6, [R6]
2FA84A:  BLE             loc_2FA85E
2FA84C:  VLDR            S6, =-6.2832
2FA850:  VADD.F32        S4, S4, S6
2FA854:  VCMPE.F32       S4, S0
2FA858:  VMRS            APSR_nzcv, FPSCR
2FA85C:  BGT             loc_2FA850
2FA85E:  VLDR            S0, =-3.1416
2FA862:  VCMPE.F32       S4, S0
2FA866:  VMRS            APSR_nzcv, FPSCR
2FA86A:  BGE             loc_2FA87E
2FA86C:  VLDR            S6, =6.2832
2FA870:  VADD.F32        S4, S4, S6
2FA874:  VCMPE.F32       S4, S0
2FA878:  VMRS            APSR_nzcv, FPSCR
2FA87C:  BLT             loc_2FA870
2FA87E:  VMOV.F32        S0, #-0.5
2FA882:  ADD.W           R1, R4, #0x9A0
2FA886:  VMOV.F32        S6, #-1.0
2FA88A:  VMOV.F32        S8, S2
2FA88E:  VMOV            S14, R8
2FA892:  VMUL.F32        S4, S4, S0
2FA896:  VCMPE.F32       S4, S6
2FA89A:  VMRS            APSR_nzcv, FPSCR
2FA89E:  VCMPE.F32       S4, S2
2FA8A2:  IT LT
2FA8A4:  VMOVLT.F32      S8, S6
2FA8A8:  VMRS            APSR_nzcv, FPSCR
2FA8AC:  VCMPE.F32       S4, S6
2FA8B0:  IT LT
2FA8B2:  VMOVLT.F32      S2, S8
2FA8B6:  VMOV.F32        S8, S2
2FA8BA:  IT LT
2FA8BC:  VMOVLT.F32      S8, S4
2FA8C0:  VMRS            APSR_nzcv, FPSCR
2FA8C4:  IT LT
2FA8C6:  VMOVLT.F32      S8, S2
2FA8CA:  LDR             R0, [R4,#0x14]
2FA8CC:  VSTR            S8, [R1]
2FA8D0:  VMOV            S2, R9
2FA8D4:  CMP             R0, #0
2FA8D6:  IT NE
2FA8D8:  ADDNE.W         R10, R0, #0x30 ; '0'
2FA8DC:  VLDR            S8, [R4,#0x48]
2FA8E0:  VLDR            S4, [R10]
2FA8E4:  VLDR            S6, [R10,#4]
2FA8E8:  VLDR            S10, [R4,#0x4C]
2FA8EC:  VSUB.F32        S4, S14, S4
2FA8F0:  VLDR            S1, [R0]
2FA8F4:  VSUB.F32        S2, S2, S6
2FA8F8:  VLDR            S3, [R0,#4]
2FA8FC:  VMUL.F32        S14, S1, S8
2FA900:  VLDR            S12, [R4,#0x50]
2FA904:  VMUL.F32        S6, S3, S10
2FA908:  VLDR            S5, [R0,#8]
2FA90C:  VLDR            S7, [R0,#0x10]
2FA910:  VMUL.F32        S9, S5, S12
2FA914:  VMUL.F32        S1, S4, S1
2FA918:  VMUL.F32        S3, S2, S3
2FA91C:  VMUL.F32        S8, S7, S8
2FA920:  VMUL.F32        S5, S5, S20
2FA924:  VADD.F32        S6, S14, S6
2FA928:  VLDR            S14, [R0,#0x14]
2FA92C:  VMUL.F32        S4, S4, S7
2FA930:  VMUL.F32        S10, S14, S10
2FA934:  VMUL.F32        S2, S2, S14
2FA938:  VADD.F32        S1, S1, S3
2FA93C:  VLDR            S3, [R0,#0x18]
2FA940:  VMUL.F32        S12, S3, S12
2FA944:  VADD.F32        S6, S6, S9
2FA948:  VMUL.F32        S3, S3, S20
2FA94C:  VADD.F32        S8, S8, S10
2FA950:  VLDR            S10, =80.0
2FA954:  VADD.F32        S4, S4, S2
2FA958:  VADD.F32        S14, S1, S5
2FA95C:  VMUL.F32        S1, S6, S10
2FA960:  VADD.F32        S2, S8, S12
2FA964:  VADD.F32        S4, S4, S3
2FA968:  VADD.F32        S8, S14, S1
2FA96C:  VMUL.F32        S10, S2, S10
2FA970:  VABS.F32        S12, S8
2FA974:  VADD.F32        S4, S4, S10
2FA978:  VCMPE.F32       S12, S16
2FA97C:  VMRS            APSR_nzcv, FPSCR
2FA980:  BLT             loc_2FA992
2FA982:  VCVT.F64.F32    D16, S8
2FA986:  VLDR            D17, =-0.02
2FA98A:  VMUL.F64        D16, D16, D17
2FA98E:  VCVT.F32.F64    S6, D16
2FA992:  VMOV.F32        S8, #0.75
2FA996:  ADDW            R0, R4, #0x9A8
2FA99A:  VMOV.F32        S10, #-0.75
2FA99E:  VCMPE.F32       S6, S8
2FA9A2:  VMRS            APSR_nzcv, FPSCR
2FA9A6:  VMOV.F32        S12, S8
2FA9AA:  IT LT
2FA9AC:  VMOVLT.F32      S12, S6
2FA9B0:  VCMPE.F32       S12, S10
2FA9B4:  VMRS            APSR_nzcv, FPSCR
2FA9B8:  VCMPE.F32       S6, S8
2FA9BC:  IT LT
2FA9BE:  VMOVLT.F32      S8, S10
2FA9C2:  VMRS            APSR_nzcv, FPSCR
2FA9C6:  VMOV.F32        S14, S8
2FA9CA:  VCMPE.F32       S12, S10
2FA9CE:  IT LT
2FA9D0:  VMOVLT.F32      S14, S6
2FA9D4:  VMRS            APSR_nzcv, FPSCR
2FA9D8:  VABS.F32        S6, S4
2FA9DC:  VCMPE.F32       S6, S16
2FA9E0:  IT LT
2FA9E2:  VMOVLT.F32      S14, S8
2FA9E6:  VMRS            APSR_nzcv, FPSCR
2FA9EA:  VSTR            S14, [R0]
2FA9EE:  BLT             loc_2FAA00
2FA9F0:  VCVT.F64.F32    D16, S4
2FA9F4:  VLDR            D17, =-0.015
2FA9F8:  VMUL.F64        D16, D16, D17
2FA9FC:  VCVT.F32.F64    S2, D16
2FAA00:  VMOV.F32        S4, #0.5
2FAA04:  ADDW            R0, R4, #0x9A4
2FAA08:  VCMPE.F32       S2, S4
2FAA0C:  VMRS            APSR_nzcv, FPSCR
2FAA10:  VMOV.F32        S6, S4
2FAA14:  IT LT
2FAA16:  VMOVLT.F32      S6, S2
2FAA1A:  VCMPE.F32       S6, S0
2FAA1E:  VMRS            APSR_nzcv, FPSCR
2FAA22:  VCMPE.F32       S2, S4
2FAA26:  IT LT
2FAA28:  VMOVLT.F32      S4, S0
2FAA2C:  VMRS            APSR_nzcv, FPSCR
2FAA30:  VMOV.F32        S8, S4
2FAA34:  VCMPE.F32       S6, S0
2FAA38:  IT LT
2FAA3A:  VMOVLT.F32      S8, S2
2FAA3E:  VMRS            APSR_nzcv, FPSCR
2FAA42:  IT LT
2FAA44:  VMOVLT.F32      S8, S4
2FAA48:  VSTR            S8, [R0]
2FAA4C:  ADD             SP, SP, #0x78 ; 'x'
2FAA4E:  VPOP            {D8-D11}
2FAA52:  ADD             SP, SP, #4
2FAA54:  POP.W           {R8-R11}
2FAA58:  POP             {R4-R7,PC}
