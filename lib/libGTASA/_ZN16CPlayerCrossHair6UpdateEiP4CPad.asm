; =========================================================
; Game Engine Function: _ZN16CPlayerCrossHair6UpdateEiP4CPad
; Address            : 0x40B644 - 0x40B914
; =========================================================

40B644:  PUSH            {R4-R7,LR}
40B646:  ADD             R7, SP, #0xC
40B648:  PUSH.W          {R8-R10}
40B64C:  VPUSH           {D8-D15}
40B650:  SUB             SP, SP, #0x50
40B652:  MOV             R5, R0
40B654:  MOV             R10, R2
40B656:  LDRB            R0, [R5]
40B658:  MOV             R8, R1
40B65A:  CMP             R0, #0
40B65C:  BEQ.W           loc_40B908
40B660:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x40B666)
40B662:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
40B664:  LDR             R4, [R0]; CTimer::ms_fTimeStep ...
40B666:  MOV             R0, R10; this
40B668:  VLDR            S16, [R4]
40B66C:  BLX             j__ZN4CPad20GetSteeringLeftRightEv; CPad::GetSteeringLeftRight(void)
40B670:  VMOV            S0, R0
40B674:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x40B682)
40B676:  VCVT.F32.S32    S0, S0
40B67A:  VLDR            S2, [R5,#4]
40B67E:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
40B680:  LDR             R0, [R0]; MobileSettings::settings ...
40B682:  VMUL.F32        S0, S16, S0
40B686:  VLDR            S16, =3000.0
40B68A:  VDIV.F32        S0, S0, S16
40B68E:  VADD.F32        S0, S2, S0
40B692:  VSTR            S0, [R5,#4]
40B696:  LDR.W           R6, [R0,#(dword_6E05DC - 0x6E03F4)]
40B69A:  MOV             R0, R10; this
40B69C:  VLDR            S18, [R4]
40B6A0:  BLX             j__ZN4CPad17GetSteeringUpDownEv; CPad::GetSteeringUpDown(void)
40B6A4:  VMOV            S0, R0
40B6A8:  CMP             R6, #0
40B6AA:  VCVT.F32.S32    S0, S0
40B6AE:  VMUL.F32        S0, S18, S0
40B6B2:  VDIV.F32        S0, S0, S16
40B6B6:  VNEG.F32        S2, S0
40B6BA:  IT NE
40B6BC:  VMOVNE.F32      S2, S0
40B6C0:  VLDR            S0, [R5,#8]
40B6C4:  VLDR            S4, [R5,#4]
40B6C8:  VADD.F32        S0, S0, S2
40B6CC:  VLDR            S2, =0.9
40B6D0:  VCMPE.F32       S4, S2
40B6D4:  VMRS            APSR_nzcv, FPSCR
40B6D8:  VSTR            S0, [R5,#8]
40B6DC:  BLE             loc_40B6E4
40B6DE:  VSTR            S2, [R5,#4]
40B6E2:  B               loc_40B6F6
40B6E4:  VLDR            S2, =-0.9
40B6E8:  VCMPE.F32       S4, S2
40B6EC:  VMRS            APSR_nzcv, FPSCR
40B6F0:  IT LT
40B6F2:  VSTRLT          S2, [R5,#4]
40B6F6:  VLDR            S2, =0.9
40B6FA:  VCMPE.F32       S0, S2
40B6FE:  VMRS            APSR_nzcv, FPSCR
40B702:  BLE             loc_40B70A
40B704:  VSTR            S2, [R5,#8]
40B708:  B               loc_40B71C
40B70A:  VLDR            S2, =-0.9
40B70E:  VCMPE.F32       S0, S2
40B712:  VMRS            APSR_nzcv, FPSCR
40B716:  IT LT
40B718:  VSTRLT          S2, [R5,#8]
40B71C:  MOV             R0, R10; this
40B71E:  MOVS            R1, #0; bool
40B720:  MOVS            R2, #0; bool
40B722:  MOV.W           R9, #0
40B726:  BLX             j__ZN4CPad14GetCarGunFiredEbb; CPad::GetCarGunFired(bool,bool)
40B72A:  CMP             R0, #0
40B72C:  BEQ.W           loc_40B908
40B730:  LDR             R0, =(TheCamera_ptr - 0x40B73E)
40B732:  MOV             R1, #0x3E4CCCCD; float
40B73A:  ADD             R0, PC; TheCamera_ptr
40B73C:  LDR             R6, [R0]; TheCamera
40B73E:  MOV             R0, R6; CCamera *
40B740:  BLX             j__Z13CamShakeNoPosP7CCameraf; CamShakeNoPos(CCamera *,float)
40B744:  ADDW            R0, R6, #0x8FC
40B748:  ADDW            R1, R6, #0x904
40B74C:  VLDR            S16, [R5,#4]
40B750:  VLDR            S20, [R0]
40B754:  ADD.W           R0, R6, #0x900
40B758:  VLDR            S18, [R1]
40B75C:  VLDR            S22, [R0]
40B760:  MOV             R0, R6; this
40B762:  BLX             j__ZN7CCamera10FindCamFOVEv; CCamera::FindCamFOV(void)
40B766:  VLDR            S24, =0.017453
40B76A:  VMOV            S0, R0
40B76E:  VMOV.F32        S26, #0.5
40B772:  VMUL.F32        S0, S0, S24
40B776:  VMUL.F32        S0, S0, S26
40B77A:  VMOV            R0, S0; x
40B77E:  BLX             tanf
40B782:  MOV             R4, R0
40B784:  ADDW            R0, R6, #0x90C
40B788:  ADDW            R1, R6, #0x914
40B78C:  VLDR            S19, [R5,#8]
40B790:  VLDR            S30, [R0]
40B794:  ADD.W           R0, R6, #0x910
40B798:  VLDR            S28, [R1]
40B79C:  VLDR            S17, [R0]
40B7A0:  MOV             R0, R6; this
40B7A2:  BLX             j__ZN7CCamera10FindCamFOVEv; CCamera::FindCamFOV(void)
40B7A6:  VMOV            S0, R0
40B7AA:  VMUL.F32        S0, S0, S24
40B7AE:  VMUL.F32        S0, S0, S26
40B7B2:  VMOV            R0, S0; x
40B7B6:  BLX             tanf
40B7BA:  LDR             R1, =(_ZN5CDraw15ms_fAspectRatioE_ptr - 0x40B7CC)
40B7BC:  VMOV            S0, R0
40B7C0:  VMUL.F32        S4, S16, S20
40B7C4:  MOVW            R2, #0x1388
40B7C8:  ADD             R1, PC; _ZN5CDraw15ms_fAspectRatioE_ptr
40B7CA:  VMUL.F32        S0, S19, S0
40B7CE:  VMUL.F32        S6, S16, S18
40B7D2:  LDR             R0, [R1]; CDraw::ms_fAspectRatio ...
40B7D4:  VMOV            S8, R4
40B7D8:  ADDW            R1, R6, #0x91C
40B7DC:  VLDR            S2, [R0]
40B7E0:  ADD.W           R0, R6, #0x920
40B7E4:  VMUL.F32        S4, S4, S8
40B7E8:  VDIV.F32        S0, S0, S2
40B7EC:  VMUL.F32        S2, S16, S22
40B7F0:  VLDR            S10, [R0]
40B7F4:  VMUL.F32        S6, S6, S8
40B7F8:  ADDW            R0, R6, #0x924
40B7FC:  VSUB.F32        S4, S30, S4
40B800:  VLDR            S12, [R0]
40B804:  VMUL.F32        S10, S0, S10
40B808:  ADDW            R0, R6, #0x934
40B80C:  VMUL.F32        S2, S2, S8
40B810:  VLDR            S8, [R1]
40B814:  VSUB.F32        S6, S28, S6
40B818:  ADDW            R1, R6, #0x92C
40B81C:  VMUL.F32        S8, S8, S0
40B820:  VMUL.F32        S0, S0, S12
40B824:  VSUB.F32        S2, S17, S2
40B828:  VSUB.F32        S4, S4, S8
40B82C:  VSUB.F32        S0, S6, S0
40B830:  VLDR            S6, =200.0
40B834:  VSUB.F32        S2, S2, S10
40B838:  VLDR            S10, [R0]
40B83C:  ADD             R0, SP, #0xA8+var_80
40B83E:  VMUL.F32        S4, S4, S6
40B842:  VMUL.F32        S0, S0, S6
40B846:  VMUL.F32        S2, S2, S6
40B84A:  VLDR            S6, [R1]
40B84E:  ADD.W           R1, R6, #0x930
40B852:  VADD.F32        S4, S4, S6
40B856:  VLDR            S8, [R1]
40B85A:  VADD.F32        S0, S10, S0
40B85E:  MOVS            R1, #0x1F
40B860:  VADD.F32        S2, S8, S2
40B864:  VSTR            S4, [SP,#0xA8+var_64]
40B868:  VSTR            S2, [SP,#0xA8+var_60]
40B86C:  VSTR            S0, [SP,#0xA8+var_5C]
40B870:  BLX             j__ZN7CWeaponC2E11eWeaponTypei; CWeapon::CWeapon(eWeaponType,int)
40B874:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x40B884)
40B876:  MOV.W           R2, #0x194
40B87A:  MUL.W           R10, R8, R2
40B87E:  LDR             R3, [R6,#(dword_951FBC - 0x951FA8)]
40B880:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
40B882:  CMP             R3, #0
40B884:  LDR             R5, [R1]; CWorld::Players ...
40B886:  ADD.W           R1, R3, #0x30 ; '0'
40B88A:  IT EQ
40B88C:  ADDEQ           R1, R6, #4
40B88E:  VLDR            D16, [R1]
40B892:  LDR             R1, [R1,#(dword_951FB4 - 0x951FAC)]
40B894:  STR             R1, [SP,#0xA8+var_88]
40B896:  LDR.W           R1, [R5,R10]
40B89A:  VSTR            D16, [SP,#0xA8+var_90]
40B89E:  LDR.W           R8, [R1,#0x488]
40B8A2:  LDR.W           R2, [R1,#0x484]
40B8A6:  LDR.W           R3, [R1,#0x48C]
40B8AA:  BIC.W           R4, R8, #0x2000000
40B8AE:  LDR.W           R6, [R1,#0x490]
40B8B2:  STR.W           R2, [R1,#0x484]
40B8B6:  MOVS            R2, #1
40B8B8:  STR.W           R4, [R1,#0x488]
40B8BC:  STR.W           R3, [R1,#0x48C]
40B8C0:  ADD             R3, SP, #0xA8+var_64
40B8C2:  STR.W           R6, [R1,#0x490]
40B8C6:  LDR.W           R1, [R5,R10]; CEntity *
40B8CA:  STRD.W          R9, R3, [SP,#0xA8+var_A8]; CEntity *
40B8CE:  STRD.W          R9, R2, [SP,#0xA8+var_A0]; CVector *
40B8D2:  STR             R2, [SP,#0xA8+var_98]; bool
40B8D4:  ADD             R2, SP, #0xA8+var_90; CVector *
40B8D6:  MOV             R3, R2; CVector *
40B8D8:  BLX             j__ZN7CWeapon14FireInstantHitEP7CEntityP7CVectorS3_S1_S3_S3_bb; CWeapon::FireInstantHit(CEntity *,CVector *,CVector *,CEntity *,CVector *,CVector *,bool,bool)
40B8DC:  LDR.W           R0, [R5,R10]
40B8E0:  MOV.W           R5, R8,LSR#25
40B8E4:  LDR.W           R2, [R0,#0x488]
40B8E8:  LDR.W           R1, [R0,#0x484]
40B8EC:  LDR.W           R3, [R0,#0x48C]
40B8F0:  BFI.W           R2, R5, #0x19, #1
40B8F4:  LDR.W           R6, [R0,#0x490]
40B8F8:  STR.W           R1, [R0,#0x484]
40B8FC:  STR.W           R2, [R0,#0x488]
40B900:  STR.W           R3, [R0,#0x48C]
40B904:  STR.W           R6, [R0,#0x490]
40B908:  ADD             SP, SP, #0x50 ; 'P'
40B90A:  VPOP            {D8-D15}
40B90E:  POP.W           {R8-R10}
40B912:  POP             {R4-R7,PC}
