; =========================================================
; Game Engine Function: _ZN8CVehicle13FlyingControlE12eFlightModelffff
; Address            : 0x585690 - 0x587A72
; =========================================================

585690:  PUSH            {R4-R7,LR}
585692:  ADD             R7, SP, #0xC
585694:  PUSH.W          {R8-R11}
585698:  SUB             SP, SP, #4
58569A:  VPUSH           {D8-D15}
58569E:  SUB             SP, SP, #0x40
5856A0:  MOV             R11, R0
5856A2:  MOV             R6, R3
5856A4:  LDR.W           R0, [R11,#0x38C]
5856A8:  MOV             R5, R2
5856AA:  MOV             R8, R1
5856AC:  CMP             R0, #0
5856AE:  BEQ.W           loc_587A64
5856B2:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5856BA)
5856B6:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5856B8:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5856BA:  VLDR            S0, [R0]
5856BE:  VCMPE.F32       S0, #0.0
5856C2:  VMRS            APSR_nzcv, FPSCR
5856C6:  BLE.W           loc_587A64
5856CA:  LDRB.W          R0, [R11,#0x3A]
5856CE:  CMP             R0, #7
5856D0:  BHI             loc_5856EC
5856D2:  LDR.W           R0, [R11,#0x464]; this
5856D6:  CBZ             R0, loc_5856EC
5856D8:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5856DC:  CMP             R0, #1
5856DE:  BNE             loc_5856EC
5856E0:  LDR.W           R0, [R11,#0x464]; this
5856E4:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
5856E8:  MOV             R9, R0
5856EA:  B               loc_5856F0
5856EC:  MOV.W           R9, #0
5856F0:  LDRB.W          R0, [R11,#0x4A8]
5856F4:  CMP             R0, #2
5856F6:  BNE             loc_585706
5856F8:  VLDR            S16, =0.0
5856FC:  VMOV.F32        S18, S16
585700:  VMOV.F32        S20, S16
585704:  B               loc_58573E
585706:  LDR.W           R0, =(_ZN8CWeather7WindDirE_ptr - 0x585712)
58570A:  LDR.W           R1, [R11,#0x38C]
58570E:  ADD             R0, PC; _ZN8CWeather7WindDirE_ptr
585710:  LDR             R0, [R0]; CWeather::WindDir ...
585712:  VLDR            S0, [R1,#0x38]
585716:  VLDR            S4, [R0,#4]
58571A:  VLDR            S6, [R0,#8]
58571E:  VLDR            S2, [R0]
585722:  VMUL.F32        S4, S0, S4
585726:  VMUL.F32        S6, S0, S6
58572A:  VMUL.F32        S0, S0, S2
58572E:  VLDR            S2, =0.0
585732:  VSUB.F32        S18, S2, S4
585736:  VSUB.F32        S20, S2, S6
58573A:  VSUB.F32        S16, S2, S0
58573E:  LDR.W           R1, [R11,#0x14]; CVector *
585742:  ADD.W           R2, R11, #0xA8
585746:  ADD             R0, SP, #0xA0+var_6C; CMatrix *
585748:  VLDR            S28, [R11,#0x48]
58574C:  VLDR            S30, [R11,#0x4C]
585750:  VLDR            S19, [R11,#0x50]
585754:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
585758:  CMP.W           R8, #8
58575C:  BHI.W           loc_5875D0
585760:  VADD.F32        S31, S20, S19
585764:  MOVS            R0, #1
585766:  VADD.F32        S29, S18, S30
58576A:  VLDR            S17, [R7,#arg_4]
58576E:  VADD.F32        S20, S16, S28
585772:  VLDR            S22, [R7,#arg_0]
585776:  VMOV            S26, R6
58577A:  LSL.W           R0, R0, R8
58577E:  VMOV            S24, R5
585782:  TST.W           R0, #0x3A
585786:  BNE             loc_585834
585788:  TST.W           R0, #0x144
58578C:  BEQ             loc_585864
58578E:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x58579A)
585792:  LDR.W           R4, [R11,#0x38C]
585796:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
585798:  LDR             R1, [R0]; CTimer::ms_fTimeStep ...
58579A:  LDR             R0, [R4,#0x3C]; x
58579C:  LDR             R1, [R1]; y
58579E:  BLX             powf
5857A2:  VLDR            S0, [R11,#0x48]
5857A6:  VMOV            S6, R0
5857AA:  VLDR            S2, [R11,#0x4C]
5857AE:  CMP.W           R8, #8
5857B2:  VLDR            S4, [R11,#0x50]
5857B6:  VMUL.F32        S0, S6, S0
5857BA:  VMUL.F32        S2, S6, S2
5857BE:  LDR.W           R6, [R11,#0x14]
5857C2:  VMUL.F32        S4, S6, S4
5857C6:  VSTR            S0, [R11,#0x48]
5857CA:  VSTR            S2, [R11,#0x4C]
5857CE:  VSTR            S4, [R11,#0x50]
5857D2:  BNE.W           loc_585AC0
5857D6:  VLDR            S0, [R6,#0x10]
5857DA:  VLDR            S2, [R6,#0x14]
5857DE:  VMUL.F32        S0, S20, S0
5857E2:  VLDR            S4, [R6,#0x18]
5857E6:  VMUL.F32        S2, S29, S2
5857EA:  VMUL.F32        S4, S31, S4
5857EE:  VADD.F32        S0, S0, S2
5857F2:  VADD.F32        S18, S0, S4
5857F6:  VLDR            S0, =-10000.0
5857FA:  VCMP.F32        S17, S0
5857FE:  VMRS            APSR_nzcv, FPSCR
585802:  BNE.W           loc_585F14
585806:  CMP.W           R9, #0
58580A:  BEQ.W           loc_585F10
58580E:  MOV             R0, R9; this
585810:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
585814:  MOV             R5, R0
585816:  MOV             R0, R9; this
585818:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
58581C:  SUBS            R0, R5, R0
58581E:  VLDR            S2, =255.0
585822:  VMOV            S0, R0
585826:  VCVT.F32.S32    S0, S0
58582A:  LDR.W           R4, [R11,#0x38C]
58582E:  VDIV.F32        S17, S0, S2
585832:  B               loc_585F14
585834:  VLDR            S30, =-10000.0
585838:  VCMP.F32        S24, S30
58583C:  VMRS            APSR_nzcv, FPSCR
585840:  BNE.W           loc_585B5E
585844:  CMP.W           R9, #0
585848:  BEQ.W           loc_585B5A
58584C:  MOV             R0, R9; this
58584E:  BLX             j__ZN4CPad20GetSteeringLeftRightEv; CPad::GetSteeringLeftRight(void)
585852:  VMOV            S0, R0
585856:  VLDR            S2, =0.0078125
58585A:  VCVT.F32.S32    S0, S0
58585E:  VMUL.F32        S24, S0, S2
585862:  B               loc_585B5E
585864:  CMP.W           R8, #0
585868:  BNE.W           loc_5875D0
58586C:  VMUL.F32        S0, S29, S29
585870:  LDR.W           R0, [R11,#0x14]
585874:  VMUL.F32        S2, S20, S20
585878:  VLDR            D18, =0.001
58587C:  VMUL.F32        S4, S31, S31
585880:  VLDR            D19, =0.003
585884:  VLDR            S6, [R0,#4]
585888:  VLDR            S8, [R0,#8]
58588C:  VMUL.F32        S12, S29, S6
585890:  VLDR            S10, [R0,#0x10]
585894:  VLDR            S1, [R0,#0x18]
585898:  VADD.F32        S0, S2, S0
58589C:  VLDR            S2, [R0]
5858A0:  VMUL.F32        S5, S31, S1
5858A4:  VMUL.F32        S14, S20, S2
5858A8:  VADD.F32        S0, S0, S4
5858AC:  VMUL.F32        S4, S31, S8
5858B0:  VADD.F32        S12, S14, S12
5858B4:  VMUL.F32        S14, S20, S10
5858B8:  VSQRT.F32       S26, S0
5858BC:  VADD.F32        S4, S12, S4
5858C0:  VNEG.F32        S4, S4
5858C4:  VDIV.F32        S16, S4, S26
5858C8:  VLDR            S4, [R0,#0x14]
5858CC:  ADD.W           R0, R11, #0x498
5858D0:  VCVT.F64.F32    D17, S16
5858D4:  VMUL.F32        S12, S29, S4
5858D8:  VLDR            S3, [R0]
5858DC:  VMUL.F64        D17, D17, D19
5858E0:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5858E8)
5858E4:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5858E6:  LDR             R4, [R0]; CTimer::ms_fTimeStep ...
5858E8:  MOV             R0, R11
5858EA:  VADD.F32        S12, S14, S12
5858EE:  VCVT.F64.F32    D16, S3
5858F2:  VMUL.F64        D16, D16, D18
5858F6:  VADD.F32        S12, S12, S5
5858FA:  VADD.F64        D16, D17, D16
5858FE:  VMUL.F32        S0, S0, S12
585902:  VMUL.F32        S24, S12, S0
585906:  VLDR            S0, [R11,#0x94]
58590A:  VCVT.F64.F32    D17, S0
58590E:  VCVT.F64.F32    D11, S24
585912:  VMUL.F64        D16, D16, D11
585916:  VMUL.F64        D16, D16, D17
58591A:  VLDR            S0, [R4]
58591E:  VCVT.F64.F32    D17, S0
585922:  VMUL.F64        D16, D16, D17
585926:  VCVT.F32.F64    S0, D16
58592A:  VMUL.F32        S2, S2, S0
58592E:  VMUL.F32        S6, S6, S0
585932:  VMUL.F32        S0, S8, S0
585936:  VMOV            R1, S2
58593A:  VMOV            R2, S6
58593E:  VMOV            R3, S0
585942:  VMOV.F32        S0, #-4.0
585946:  VMUL.F32        S30, S10, S0
58594A:  VMUL.F32        S18, S1, S0
58594E:  VMUL.F32        S28, S4, S0
585952:  VSTR            S30, [SP,#0xA0+var_A0]
585956:  VSTR            S28, [SP,#0xA0+var_9C]
58595A:  VSTR            S18, [SP,#0xA0+var_98]
58595E:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
585962:  VLDR            S0, =0.2
585966:  VLDR            S2, [R11,#0x90]
58596A:  VMUL.F32        S0, S16, S0
58596E:  LDR.W           R0, [R11,#0x14]
585972:  VLDR            S4, [R0,#4]
585976:  VLDR            S6, [R0,#8]
58597A:  VMUL.F32        S0, S0, S24
58597E:  VMUL.F32        S0, S0, S2
585982:  VLDR            S2, [R4]
585986:  VMUL.F32        S0, S0, S2
58598A:  VLDR            S2, [R0]
58598E:  MOV             R0, R11
585990:  VMUL.F32        S2, S2, S0
585994:  VMUL.F32        S4, S4, S0
585998:  VMUL.F32        S0, S6, S0
58599C:  VMOV            R5, S2
5859A0:  VMOV            R6, S4
5859A4:  VMOV            R10, S0
5859A8:  MOV             R1, R5
5859AA:  MOV             R2, R6
5859AC:  MOV             R3, R10
5859AE:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
5859B2:  LDR.W           R0, [R11,#0x14]
5859B6:  MOV             R1, R5
5859B8:  MOV             R2, R6
5859BA:  MOV             R3, R10
5859BC:  VLDR            S0, [R0,#0x20]
5859C0:  VLDR            S2, [R0,#0x24]
5859C4:  VLDR            S4, [R0,#0x28]
5859C8:  VADD.F32        S0, S0, S0
5859CC:  VADD.F32        S2, S2, S2
5859D0:  MOV             R0, R11
5859D2:  VADD.F32        S4, S4, S4
5859D6:  VSTR            S0, [SP,#0xA0+var_A0]
5859DA:  VSTR            S2, [SP,#0xA0+var_9C]
5859DE:  VSTR            S4, [SP,#0xA0+var_98]
5859E2:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
5859E6:  LDR.W           R0, [R11,#0x14]
5859EA:  VMOV            R10, S18
5859EE:  VMOV            R5, S28
5859F2:  CMP.W           R9, #0
5859F6:  VMOV            R6, S30
5859FA:  VLDR            S2, [R0,#0x24]
5859FE:  VLDR            S0, [R0,#0x20]
585A02:  VMUL.F32        S2, S29, S2
585A06:  VLDR            S4, [R0,#0x28]
585A0A:  VMUL.F32        S6, S20, S0
585A0E:  VMUL.F32        S4, S31, S4
585A12:  VADD.F32        S2, S6, S2
585A16:  VADD.F32        S2, S2, S4
585A1A:  VNEG.F32        S2, S2
585A1E:  VDIV.F32        S16, S2, S26
585A22:  BEQ.W           loc_585D78
585A26:  MOV             R0, R9; this
585A28:  BLX             j__ZN4CPad17GetSteeringUpDownEv; CPad::GetSteeringUpDown(void)
585A2C:  VMOV            S0, R0
585A30:  VLDR            S2, =-0.0078125
585A34:  VCVT.F32.S32    S0, S0
585A38:  LDR.W           R0, [R11,#0x14]
585A3C:  VMUL.F32        S0, S0, S2
585A40:  VLDR            S2, =0.001
585A44:  VMUL.F32        S2, S0, S2
585A48:  VLDR            S0, [R0,#0x20]
585A4C:  B               loc_585D7C
585A4E:  ALIGN 0x10
585A50:  DCFS 0.0
585A54:  DCFS -10000.0
585A58:  DCFS 255.0
585A5C:  DCFS 0.0078125
585A60:  DCFD 0.001
585A68:  DCFD 0.003
585A70:  DCFS 0.2
585A74:  DCFS -0.0078125
585A78:  DCFS 0.001
585A7C:  DCFS 1.5708
585A80:  DCFS -0.7854
585A84:  DCFS 0.7854
585A88:  DCFS 2.3562
585A8C:  DCFS -1.5708
585A90:  DCFS -3.1416
585A94:  DCFS -2.3562
585A98:  DCFS 0.002
585A9C:  ALIGN 0x10
585AA0:  DCFD 0.05
585AA8:  DCFS 0.008
585AAC:  DCFS 800.0
585AB0:  DCFS -800.0
585AB4:  ALIGN 8
585AB8:  DCFD 0.00720000034
585AC0:  LDRB.W          R0, [R11,#0x42F]
585AC4:  VLDR            S19, [R6,#0x20]
585AC8:  VLDR            S28, [R6,#0x24]
585ACC:  VLDR            S30, [R6,#0x28]
585AD0:  LSLS            R0, R0, #0x1B
585AD2:  BMI.W           loc_585C40
585AD6:  LDRH.W          R0, [R11,#0x26]
585ADA:  CMP.W           R0, #0x208
585ADE:  BNE.W           loc_585C9E
585AE2:  LDR.W           R0, =(_ZN6CPlane27HARRIER_NOZZLE_ROTATE_LIMITE_ptr - 0x585AEE)
585AE6:  LDRH.W          R1, [R11,#0x880]
585AEA:  ADD             R0, PC; _ZN6CPlane27HARRIER_NOZZLE_ROTATE_LIMITE_ptr
585AEC:  VLDR            S2, =1.5708
585AF0:  VMOV            S0, R1
585AF4:  LDR             R0, [R0]; CPlane::HARRIER_NOZZLE_ROTATE_LIMIT ...
585AF6:  VCVT.F32.U32    S0, S0
585AFA:  LDRSH.W         R0, [R0]; CPlane::HARRIER_NOZZLE_ROTATE_LIMIT
585AFE:  VMOV            S4, R0
585B02:  VCVT.F32.S32    S4, S4
585B06:  VMUL.F32        S0, S0, S2
585B0A:  VDIV.F32        S0, S0, S4
585B0E:  VMOV            R5, S0
585B12:  MOV             R0, R5; x
585B14:  BLX             cosf
585B18:  MOV             R4, R0
585B1A:  MOV             R0, R5; x
585B1C:  BLX             sinf
585B20:  VMOV            S0, R0
585B24:  VLDR            S2, [R6,#0x10]
585B28:  VMOV            S8, R4
585B2C:  VLDR            S4, [R6,#0x14]
585B30:  VLDR            S6, [R6,#0x18]
585B34:  VMUL.F32        S10, S30, S0
585B38:  VMUL.F32        S12, S28, S0
585B3C:  VMUL.F32        S6, S8, S6
585B40:  VMUL.F32        S4, S8, S4
585B44:  VMUL.F32        S0, S19, S0
585B48:  VMUL.F32        S2, S8, S2
585B4C:  VADD.F32        S30, S6, S10
585B50:  VADD.F32        S28, S4, S12
585B54:  VADD.F32        S19, S2, S0
585B58:  B               loc_585C9E
585B5A:  VLDR            S24, =0.0
585B5E:  VCMP.F32        S26, S30
585B62:  VMRS            APSR_nzcv, FPSCR
585B66:  BNE             loc_585BDA
585B68:  CMP.W           R9, #0
585B6C:  BEQ             loc_585BD6
585B6E:  MOV             R0, R9; this
585B70:  BLX             j__ZN4CPad17GetSteeringUpDownEv; CPad::GetSteeringUpDown(void)
585B74:  MOVW            R3, #0x4000
585B78:  MOV             R5, R0
585B7A:  MOVS            R4, #0
585B7C:  MOVT            R3, #0x451C; float
585B80:  MOV             R0, R9; this
585B82:  MOVS            R1, #0; bool
585B84:  MOVS            R2, #0; CAutomobile *
585B86:  STR             R4, [SP,#0xA0+var_A0]; CHID *
585B88:  BLX             j__ZN4CPad15GetCarGunUpDownEbP11CAutomobilefb; CPad::GetCarGunUpDown(bool,CAutomobile *,float,bool)
585B8C:  VMOV            S0, R0
585B90:  VLDR            S16, =0.0078125
585B94:  VMOV.F32        S4, #1.0
585B98:  VCVT.F32.S32    S2, S0
585B9C:  VMOV            S0, R5
585BA0:  VCVT.F32.S32    S0, S0
585BA4:  VABS.F32        S2, S2
585BA8:  VCMPE.F32       S2, S4
585BAC:  VMRS            APSR_nzcv, FPSCR
585BB0:  BLE             loc_585BD0
585BB2:  MOVW            R3, #0x4000
585BB6:  MOV             R0, R9; this
585BB8:  MOVT            R3, #0x451C; float
585BBC:  MOVS            R1, #0; bool
585BBE:  MOVS            R2, #0; CAutomobile *
585BC0:  STR             R4, [SP,#0xA0+var_A0]; CHID *
585BC2:  BLX             j__ZN4CPad15GetCarGunUpDownEbP11CAutomobilefb; CPad::GetCarGunUpDown(bool,CAutomobile *,float,bool)
585BC6:  NEGS            R0, R0
585BC8:  VMOV            S0, R0
585BCC:  VCVT.F32.S32    S0, S0
585BD0:  VMUL.F32        S26, S0, S16
585BD4:  B               loc_585BDA
585BD6:  VLDR            S26, =0.0
585BDA:  VMOV            R0, S26; y
585BDE:  VMOV            R1, S24; x
585BE2:  BLX             atan2f
585BE6:  VLDR            S2, =-0.7854
585BEA:  VMOV            S0, R0
585BEE:  VCMPE.F32       S0, S2
585BF2:  VMRS            APSR_nzcv, FPSCR
585BF6:  BLE             loc_585C08
585BF8:  VLDR            S4, =0.7854
585BFC:  VCMPE.F32       S0, S4
585C00:  VMRS            APSR_nzcv, FPSCR
585C04:  BLE.W           loc_5861EA
585C08:  VLDR            S4, =0.7854
585C0C:  VCMPE.F32       S0, S4
585C10:  VMRS            APSR_nzcv, FPSCR
585C14:  BLE             loc_585C2A
585C16:  VLDR            S4, =2.3562
585C1A:  VCMPE.F32       S0, S4
585C1E:  VMRS            APSR_nzcv, FPSCR
585C22:  BGT             loc_585C2A
585C24:  VLDR            S2, =-1.5708
585C28:  B               loc_5861E6
585C2A:  VLDR            S4, =2.3562
585C2E:  VCMPE.F32       S0, S4
585C32:  VMRS            APSR_nzcv, FPSCR
585C36:  BLE.W           loc_585D4E
585C3A:  VLDR            S2, =-3.1416
585C3E:  B               loc_5861E6
585C40:  VMOV            R0, S19; x
585C44:  BLX             asinf
585C48:  VMOV.F32        S16, #4.0
585C4C:  VMOV            S0, R0
585C50:  VMUL.F32        S0, S0, S16
585C54:  VMOV            R0, S0; x
585C58:  BLX             sinf
585C5C:  MOV             R5, R0
585C5E:  VMOV            R0, S28; x
585C62:  BLX             asinf
585C66:  VMOV            R1, S30
585C6A:  VMOV            S18, R0
585C6E:  MOV             R0, R1; x
585C70:  BLX             acosf
585C74:  VMUL.F32        S2, S18, S16
585C78:  VMOV            S0, R0
585C7C:  VMOV            S19, R5
585C80:  VMUL.F32        S0, S0, S16
585C84:  VMOV            R0, S2; x
585C88:  VMOV            R6, S0
585C8C:  BLX             sinf
585C90:  VMOV            S28, R0
585C94:  MOV             R0, R6; x
585C96:  BLX             cosf
585C9A:  VMOV            S30, R0
585C9E:  VMUL.F32        S0, S29, S28
585CA2:  VMUL.F32        S2, S20, S19
585CA6:  VMUL.F32        S4, S31, S30
585CAA:  VADD.F32        S0, S2, S0
585CAE:  VADD.F32        S23, S0, S4
585CB2:  VCMPE.F32       S23, #0.0
585CB6:  VMRS            APSR_nzcv, FPSCR
585CBA:  VADD.F32        S0, S23, S23
585CBE:  IT GT
585CC0:  VMOVGT.F32      S23, S0
585CC4:  VLDR            S0, =-10000.0
585CC8:  VCMP.F32        S17, S0
585CCC:  VMRS            APSR_nzcv, FPSCR
585CD0:  BNE.W           loc_5860D8
585CD4:  CMP.W           R9, #0
585CD8:  BEQ.W           loc_5860CA
585CDC:  MOV             R0, R9; this
585CDE:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
585CE2:  MOV             R5, R0
585CE4:  MOV             R0, R9; this
585CE6:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
585CEA:  MOVW            R3, #0x4000
585CEE:  MOV             R6, R0
585CF0:  MOVS            R4, #0
585CF2:  MOVT            R3, #0x451C; float
585CF6:  MOV             R0, R9; this
585CF8:  MOVS            R1, #0; bool
585CFA:  MOVS            R2, #0; CAutomobile *
585CFC:  STR             R4, [SP,#0xA0+var_A0]; CHID *
585CFE:  BLX             j__ZN4CPad15GetCarGunUpDownEbP11CAutomobilefb; CPad::GetCarGunUpDown(bool,CAutomobile *,float,bool)
585D02:  SUBS            R1, R5, R6
585D04:  VMOV            S2, R0
585D08:  VMOV.F32        S4, #1.0
585D0C:  VMOV            S0, R1
585D10:  VCVT.F32.S32    S0, S0
585D14:  VCVT.F32.S32    S2, S2
585D18:  VABS.F32        S2, S2
585D1C:  VCMPE.F32       S2, S4
585D20:  VMRS            APSR_nzcv, FPSCR
585D24:  BLE.W           loc_5860D0
585D28:  MOVW            R3, #0x4000
585D2C:  MOV             R0, R9; this
585D2E:  MOVT            R3, #0x451C; float
585D32:  MOVS            R1, #0; bool
585D34:  MOVS            R2, #0; CAutomobile *
585D36:  STR             R4, [SP,#0xA0+var_A0]; CHID *
585D38:  BLX             j__ZN4CPad15GetCarGunUpDownEbP11CAutomobilefb; CPad::GetCarGunUpDown(bool,CAutomobile *,float,bool)
585D3C:  VMOV            S0, R0
585D40:  VLDR            S2, =0.0078125
585D44:  VCVT.F32.S32    S0, S0
585D48:  VMUL.F32        S17, S0, S2
585D4C:  B               loc_5860D8
585D4E:  VLDR            S4, =-2.3562
585D52:  VCMPE.F32       S0, S4
585D56:  VMRS            APSR_nzcv, FPSCR
585D5A:  BLE.W           loc_5861E2
585D5E:  VMOV.F32        S19, #1.0
585D62:  BLE.W           loc_5861FE
585D66:  VCMPE.F32       S0, S2
585D6A:  VMRS            APSR_nzcv, FPSCR
585D6E:  BGE.W           loc_5861FE
585D72:  VLDR            S2, =1.5708
585D76:  B               loc_5861E6
585D78:  VLDR            S2, =0.0
585D7C:  VLDR            S4, =0.002
585D80:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x585D90)
585D84:  VMUL.F32        S4, S16, S4
585D88:  VLDR            S6, [R0,#0x28]
585D8C:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
585D8E:  LDR             R4, [R1]; CTimer::ms_fTimeStep ...
585D90:  VADD.F32        S2, S4, S2
585D94:  VLDR            S4, [R11,#0x94]
585D98:  VMUL.F32        S2, S24, S2
585D9C:  VMUL.F32        S2, S2, S4
585DA0:  VLDR            S4, [R4]
585DA4:  VMUL.F32        S2, S2, S4
585DA8:  VLDR            S4, [R0,#0x24]
585DAC:  MOV             R0, R11
585DAE:  STRD.W          R6, R5, [SP,#0xA0+var_A0]
585DB2:  STR.W           R10, [SP,#0xA0+var_98]
585DB6:  VMUL.F32        S0, S0, S2
585DBA:  VMUL.F32        S4, S4, S2
585DBE:  VMUL.F32        S2, S6, S2
585DC2:  VMOV            R1, S0
585DC6:  VMOV            R2, S4
585DCA:  VMOV            R3, S2
585DCE:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
585DD2:  VCVT.F64.F32    D16, S16
585DD6:  LDRB.W          R0, [R11,#0x3A]
585DDA:  MOVS            R1, #8
585DDC:  ORR.W           R0, R1, R0,LSR#3
585DE0:  CMP             R0, #8
585DE2:  VMOV.F64        D17, #3.5
585DE6:  VMUL.F64        D16, D16, D17
585DEA:  VMOV.F64        D17, #0.5
585DEE:  VADD.F64        D16, D16, D17
585DF2:  VLDR            D17, =0.05
585DF6:  VLDR            S2, [R11,#0x90]
585DFA:  VMUL.F64        D16, D16, D17
585DFE:  VMUL.F64        D17, D16, D11
585E02:  VCVT.F64.F32    D16, S2
585E06:  VMUL.F64        D18, D17, D16
585E0A:  VLDR            S4, [R4]
585E0E:  VCVT.F64.F32    D17, S4
585E12:  VMUL.F64        D18, D18, D17
585E16:  VCVT.F32.F64    S0, D18
585E1A:  BNE             loc_585E76
585E1C:  VLDR            S6, =0.008
585E20:  VMUL.F32        S4, S4, S6
585E24:  VMUL.F32        S2, S4, S2
585E28:  VCMPE.F32       S2, S0
585E2C:  VMRS            APSR_nzcv, FPSCR
585E30:  BGE             loc_585E76
585E32:  LDR.W           R0, [R11,#0x14]
585E36:  VLDR            S4, =800.0
585E3A:  ADD.W           R1, R0, #0x30 ; '0'
585E3E:  CMP             R0, #0
585E40:  IT EQ
585E42:  ADDEQ.W         R1, R11, #4
585E46:  VLDR            S2, [R1,#8]
585E4A:  VCMPE.F32       S2, S4
585E4E:  VMRS            APSR_nzcv, FPSCR
585E52:  ITTTT GE
585E54:  VLDRGE          S4, =-800.0
585E58:  VADDGE.F32      S2, S2, S4
585E5C:  VCMPEGE.F32     S2, #0.0
585E60:  VMRSGE          APSR_nzcv, FPSCR
585E64:  BLE             loc_585E76
585E66:  VLDR            D18, =0.00720000034
585E6A:  VMUL.F64        D17, D17, D18
585E6E:  VMUL.F64        D16, D17, D16
585E72:  VCVT.F32.F64    S0, D16
585E76:  LDR.W           R0, [R11,#0x14]
585E7A:  VLDR            S22, [SP,#0xA0+var_6C]
585E7E:  VLDR            S24, [SP,#0xA0+var_68]
585E82:  VLDR            S16, [R0,#0x20]
585E86:  VLDR            S18, [R0,#0x24]
585E8A:  VLDR            S20, [R0,#0x28]
585E8E:  VMUL.F32        S2, S0, S16
585E92:  VMUL.F32        S4, S0, S18
585E96:  MOV             R0, R11
585E98:  VMUL.F32        S0, S0, S20
585E9C:  VLDR            S26, [SP,#0xA0+var_64]
585EA0:  VMOV            R5, S2
585EA4:  VMOV            R6, S4
585EA8:  VMOV            R9, S0
585EAC:  MOV             R1, R5
585EAE:  MOV             R2, R6
585EB0:  MOV             R3, R9
585EB2:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
585EB6:  VADD.F32        S0, S20, S20
585EBA:  MOV             R0, R11
585EBC:  VADD.F32        S2, S18, S18
585EC0:  MOV             R1, R5
585EC2:  VADD.F32        S4, S16, S16
585EC6:  MOV             R2, R6
585EC8:  MOV             R3, R9
585ECA:  VADD.F32        S0, S0, S26
585ECE:  VADD.F32        S2, S2, S24
585ED2:  VADD.F32        S4, S4, S22
585ED6:  VSTR            S4, [SP,#0xA0+var_A0]
585EDA:  VSTR            S2, [SP,#0xA0+var_9C]
585EDE:  VSTR            S0, [SP,#0xA0+var_98]
585EE2:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
585EE6:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x585EEE)
585EEA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
585EEC:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
585EEE:  LDR             R1, [R0]; y
585EF0:  MOV             R0, #0x3F666666; x
585EF8:  BLX             powf
585EFC:  VLDR            S0, [R11,#0x58]
585F00:  VMOV            S2, R0
585F04:  VMUL.F32        S0, S2, S0
585F08:  VSTR            S0, [R11,#0x58]
585F0C:  B.W             loc_5875D0
585F10:  VLDR            S17, =0.0
585F14:  VCMPE.F32       S18, #0.0
585F18:  VLDR            S0, [R4,#4]
585F1C:  VMRS            APSR_nzcv, FPSCR
585F20:  VLDR            S2, [R4,#8]
585F24:  ITT LE
585F26:  VCMPELE.F32     S17, #0.0
585F2A:  VMRSLE          APSR_nzcv, FPSCR
585F2E:  BLE             loc_585F3A
585F30:  VMUL.F32        S2, S18, S2
585F34:  VSUB.F32        S2, S17, S2
585F38:  B               loc_585F52
585F3A:  VMOV.F32        S4, #-8.0
585F3E:  VMUL.F32        S2, S2, S4
585F42:  VLDR            S4, =0.0
585F46:  VMUL.F32        S2, S18, S2
585F4A:  VADD.F32        S2, S17, S2
585F4E:  VMIN.F32        D1, D1, D2
585F52:  VMUL.F32        S0, S0, S2
585F56:  LDR.W           R0, [R11,#0x14]
585F5A:  VLDR            S2, [R0,#0x10]
585F5E:  VLDR            S4, [R0,#0x14]
585F62:  VLDR            S6, [R0,#0x18]
585F66:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x585F76)
585F6A:  VMUL.F32        S2, S0, S2
585F6E:  VMUL.F32        S4, S0, S4
585F72:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
585F74:  VMUL.F32        S0, S0, S6
585F78:  VLDR            S6, [R11,#0x90]
585F7C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
585F7E:  VMUL.F32        S2, S2, S6
585F82:  VMUL.F32        S4, S4, S6
585F86:  VMUL.F32        S0, S0, S6
585F8A:  VLDR            S6, [R0]
585F8E:  MOV             R0, R11
585F90:  VMUL.F32        S2, S2, S6
585F94:  VMUL.F32        S4, S4, S6
585F98:  VMUL.F32        S0, S0, S6
585F9C:  VMOV            R1, S2
585FA0:  VMOV            R2, S4
585FA4:  VMOV            R3, S0
585FA8:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
585FAC:  LDR.W           R0, =(AUTOGYRO_ROTORTILT_ANGLE_ptr - 0x585FB8)
585FB0:  LDR.W           R1, [R11,#0x14]
585FB4:  ADD             R0, PC; AUTOGYRO_ROTORTILT_ANGLE_ptr
585FB6:  LDR             R0, [R0]; AUTOGYRO_ROTORTILT_ANGLE
585FB8:  VLDR            S2, [R1,#0x10]
585FBC:  VLDR            S4, [R1,#0x14]
585FC0:  VLDR            S0, [R0]
585FC4:  ADD             R0, SP, #0xA0+var_78; this
585FC6:  VLDR            S6, [R1,#0x18]
585FCA:  VMUL.F32        S2, S0, S2
585FCE:  VLDR            S8, [R1,#0x20]
585FD2:  VMUL.F32        S4, S0, S4
585FD6:  VLDR            S10, [R1,#0x24]
585FDA:  VMUL.F32        S0, S0, S6
585FDE:  VLDR            S12, [R1,#0x28]
585FE2:  VSUB.F32        S2, S8, S2
585FE6:  VSUB.F32        S4, S10, S4
585FEA:  VSUB.F32        S0, S12, S0
585FEE:  VSTR            S2, [SP,#0xA0+var_78]
585FF2:  VSTR            S4, [SP,#0xA0+var_74]
585FF6:  VSTR            S0, [SP,#0xA0+var_70]
585FFA:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
585FFE:  VLDR            S17, [SP,#0xA0+var_78]
586002:  VLDR            S28, [SP,#0xA0+var_74]
586006:  VMUL.F32        S2, S20, S17
58600A:  VLDR            S30, [SP,#0xA0+var_70]
58600E:  VMUL.F32        S0, S29, S28
586012:  LDR.W           R0, [R11,#0x5A0]
586016:  VMUL.F32        S4, S31, S30
58601A:  CMP             R0, #0
58601C:  VADD.F32        S0, S2, S0
586020:  VADD.F32        S18, S0, S4
586024:  BEQ             loc_58603A
586026:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x586032)
58602A:  VLDR            S0, =0.22
58602E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
586030:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
586032:  VLDR            S21, [R0]
586036:  B.W             loc_586C18
58603A:  LDR.W           R0, =(AUTOGYRO_ROTORSPIN_MULTLIMIT_ptr - 0x58604A)
58603E:  ADD.W           R4, R11, #0x860
586042:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x586050)
586046:  ADD             R0, PC; AUTOGYRO_ROTORSPIN_MULTLIMIT_ptr
586048:  LDR.W           R2, =(AUTOGYRO_ROTORSPIN_MULT_ptr - 0x586058)
58604C:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
58604E:  VLDR            S2, =0.0
586052:  LDR             R0, [R0]; AUTOGYRO_ROTORSPIN_MULTLIMIT
586054:  ADD             R2, PC; AUTOGYRO_ROTORSPIN_MULT_ptr
586056:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
586058:  VLDR            S0, [R0]
58605C:  VLDR            S21, [R1]
586060:  VNEG.F32        S0, S0
586064:  LDR             R0, [R2]; AUTOGYRO_ROTORSPIN_MULT
586066:  VMOV            R1, S21; y
58606A:  VMAX.F32        D16, D9, D0
58606E:  VLDR            S0, [R0]
586072:  LDR.W           R0, =(AUTOGYRO_ROTORSPIN_DAMP_ptr - 0x58607A)
586076:  ADD             R0, PC; AUTOGYRO_ROTORSPIN_DAMP_ptr
586078:  VMIN.F32        D9, D16, D1
58607C:  VLDR            S2, [R4]
586080:  LDR             R0, [R0]; AUTOGYRO_ROTORSPIN_DAMP
586082:  LDR             R0, [R0]; x
586084:  VMUL.F32        S0, S0, S18
586088:  VMUL.F32        S0, S21, S0
58608C:  VSUB.F32        S16, S2, S0
586090:  BLX             powf
586094:  VMOV            S0, R0
586098:  VMUL.F32        S2, S16, S0
58609C:  VLDR            S0, =0.4
5860A0:  VCMPE.F32       S2, S0
5860A4:  VSTR            S2, [R4]
5860A8:  VMRS            APSR_nzcv, FPSCR
5860AC:  BGT             loc_5860BE
5860AE:  VLDR            S0, =0.08
5860B2:  VCMPE.F32       S2, S0
5860B6:  VMRS            APSR_nzcv, FPSCR
5860BA:  BGE.W           loc_586C14
5860BE:  ADDW            R0, R11, #0x85C
5860C2:  VSTR            S0, [R0,#4]
5860C6:  B.W             loc_586C18
5860CA:  VLDR            S17, =0.0
5860CE:  B               loc_5860D8
5860D0:  VLDR            S2, =255.0
5860D4:  VDIV.F32        S17, S0, S2
5860D8:  VMOV.F32        S0, #0.5
5860DC:  VLDR            S2, [R11,#0x50]
5860E0:  VLDR            S21, =0.008
5860E4:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5860EE)
5860E6:  VLDR            S4, [R11,#0x90]
5860EA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5860EC:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5860EE:  VSUB.F32        S0, S0, S2
5860F2:  VLDR            S2, =0.0
5860F6:  VMUL.F32        S2, S0, S2
5860FA:  VMUL.F32        S0, S0, S21
5860FE:  VMUL.F32        S2, S2, S21
586102:  VMUL.F32        S0, S4, S0
586106:  VMUL.F32        S2, S4, S2
58610A:  VLDR            S4, [R0]
58610E:  LDR.W           R0, [R11,#0x38C]
586112:  VMUL.F32        S0, S4, S0
586116:  VLDR            S16, [R0,#4]
58611A:  MOV             R0, R11
58611C:  VMUL.F32        S2, S4, S2
586120:  VMOV            R3, S0
586124:  VMOV            R1, S2
586128:  MOV             R2, R1
58612A:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
58612E:  VMUL.F32        S0, S17, S16
586132:  LDR.W           R0, [R11,#0x38C]
586136:  VLDR            S2, =0.45
58613A:  VLDR            S4, [R0,#8]
58613E:  LDR.W           R0, [R11,#0x14]
586142:  ADD.W           R1, R0, #0x30 ; '0'
586146:  CMP             R0, #0
586148:  VADD.F32        S0, S0, S2
58614C:  IT EQ
58614E:  ADDEQ.W         R1, R11, #4
586152:  VMUL.F32        S2, S23, S4
586156:  SUB.W           R0, R8, #1
58615A:  CMP             R0, #1
58615C:  VSUB.F32        S0, S0, S2
586160:  VLDR            S2, [R1,#8]
586164:  BHI             loc_58618C
586166:  VLDR            S4, =500.0
58616A:  VCMPE.F32       S2, S4
58616E:  VMRS            APSR_nzcv, FPSCR
586172:  BLT.W           loc_586D9A
586176:  VLDR            S6, =950.0
58617A:  VCMPE.F32       S2, S6
58617E:  VMRS            APSR_nzcv, FPSCR
586182:  BGE.W           loc_586BE0
586186:  VLDR            S4, =-500.0
58618A:  B               loc_5861A0
58618C:  VLDR            S4, =800.0
586190:  VCMPE.F32       S2, S4
586194:  VMRS            APSR_nzcv, FPSCR
586198:  BLT.W           loc_586D9A
58619C:  VLDR            S4, =-800.0
5861A0:  VADD.F32        S4, S2, S4
5861A4:  VCMPE.F32       S4, #0.0
5861A8:  VMRS            APSR_nzcv, FPSCR
5861AC:  BLE.W           loc_586D9A
5861B0:  CMP             R0, #1
5861B2:  BHI.W           loc_586C00
5861B6:  VMOV.F32        S4, #-1.0
5861BA:  VLDR            S6, =500.0
5861BE:  VCMPE.F32       S2, S6
5861C2:  VMRS            APSR_nzcv, FPSCR
5861C6:  BLT.W           loc_586D8A
5861CA:  VLDR            S8, =950.0
5861CE:  VCMPE.F32       S2, S8
5861D2:  VMRS            APSR_nzcv, FPSCR
5861D6:  BGE.W           loc_586D70
5861DA:  VLDR            S4, =-500.0
5861DE:  B.W             loc_586C94
5861E2:  VLDR            S2, =3.1416
5861E6:  VADD.F32        S0, S0, S2
5861EA:  VMOV            R0, S0; x
5861EE:  BLX             cosf
5861F2:  VMOV.F32        S0, #1.0
5861F6:  VMOV            S2, R0
5861FA:  VDIV.F32        S19, S0, S2
5861FE:  LDR.W           R0, [R11,#0x14]
586202:  VLDR            S25, [R0,#0x10]
586206:  VLDR            S21, [R0,#0x14]
58620A:  VLDR            S23, [R0,#0x18]
58620E:  MOV             R0, R11; this
586210:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
586214:  VMUL.F32        S18, S29, S21
586218:  VLDR            S27, [R0,#4]
58621C:  VMUL.F32        S28, S20, S25
586220:  CMP.W           R8, #1
586224:  BNE             loc_58625C
586226:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x586234)
586228:  VLDR            S0, =0.0
58622C:  VLDR            S2, [R11,#0x90]
586230:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
586232:  VLDR            S4, =0.004
586236:  VMUL.F32        S0, S2, S0
58623A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
58623C:  VMUL.F32        S2, S2, S4
586240:  VLDR            S4, [R0]
586244:  MOV             R0, R11
586246:  VMUL.F32        S0, S0, S4
58624A:  VMUL.F32        S2, S2, S4
58624E:  VMOV            R1, S0
586252:  VMOV            R3, S2
586256:  MOV             R2, R1
586258:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
58625C:  VMUL.F32        S16, S31, S23
586260:  VADD.F32        S18, S28, S18
586264:  VCMP.F32        S17, S30
586268:  VMRS            APSR_nzcv, FPSCR
58626C:  BNE             loc_5862B0
58626E:  CMP.W           R9, #0
586272:  BEQ             loc_5862AC
586274:  MOV             R0, R9; this
586276:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
58627A:  MOV             R5, R0
58627C:  MOV             R0, R9; this
58627E:  BLX             j__ZN4CPad8GetBrakeEv; CPad::GetBrake(void)
586282:  SUBS            R0, R5, R0
586284:  VLDR            S2, =255.0
586288:  VMOV            S0, R0
58628C:  VCVT.F32.S32    S0, S0
586290:  VDIV.F32        S17, S0, S2
586294:  B               loc_5862B0
586296:  ALIGN 4
586298:  DCFS 0.0
58629C:  DCFS 0.22
5862A0:  DCFS 0.4
5862A4:  DCFS 0.08
5862A8:  DCFS 255.0
5862AC:  VLDR            S17, =0.0
5862B0:  VSTR            S29, [SP,#0xA0+var_90]
5862B4:  VADD.F32        S28, S18, S16
5862B8:  LDR.W           R0, [R11,#0x5A0]
5862BC:  LDRH.W          R1, [R11,#0x26]
5862C0:  CMP             R0, #0
5862C2:  VSTR            S20, [SP,#0xA0+var_8C]
5862C6:  BNE             loc_58634E
5862C8:  MOVW            R0, #0x21B
5862CC:  CMP             R1, R0
5862CE:  BEQ             loc_586344
5862D0:  VMOV.F32        S0, #1.0
5862D4:  ADD.W           R0, R11, #0x7E8
5862D8:  VLDR            S2, [R0]
5862DC:  VCMP.F32        S2, S0
5862E0:  VMRS            APSR_nzcv, FPSCR
5862E4:  ITTT EQ
5862E6:  VLDREQ          S2, [R0,#4]
5862EA:  VCMPEQ.F32      S2, S0
5862EE:  VMRSEQ          APSR_nzcv, FPSCR
5862F2:  BNE             loc_586344
5862F4:  VLDR            S2, [R0,#8]
5862F8:  VCMP.F32        S2, S0
5862FC:  VMRS            APSR_nzcv, FPSCR
586300:  ITTT EQ
586302:  VLDREQ          S2, [R0,#0xC]
586306:  VCMPEQ.F32      S2, S0
58630A:  VMRSEQ          APSR_nzcv, FPSCR
58630E:  BNE             loc_586344
586310:  CMP.W           R1, #0x1CC
586314:  BNE.W           loc_586C7E
586318:  VCMPE.F32       S17, #0.0
58631C:  MOV.W           R0, #0x1CC
586320:  VMRS            APSR_nzcv, FPSCR
586324:  ITTT LE
586326:  VLDRLE          S0, =0.2
58632A:  VCMPELE.F32     S28, S0
58632E:  VMRSLE          APSR_nzcv, FPSCR
586332:  BGT.W           loc_586C80
586336:  LDR.W           R2, [R11,#0x44]
58633A:  ANDS.W          R2, R2, #0x100
58633E:  BNE             loc_5863B2
586340:  B.W             loc_586C80
586344:  VCMPE.F32       S17, #0.0
586348:  VMRS            APSR_nzcv, FPSCR
58634C:  BLE             loc_5863B2
58634E:  VMOV.F32        S20, S31
586352:  LDR.W           R2, [R11,#0x38C]
586356:  MOVW            R0, #0x21B
58635A:  CMP             R1, R0
58635C:  VLDR            S0, [R2,#4]
586360:  BNE             loc_58636C
586362:  VMUL.F32        S30, S17, S0
586366:  MOVW            R0, #0x21B
58636A:  B               loc_586382
58636C:  MOV             R0, R1
58636E:  VMOV.F32        S2, #0.5
586372:  VMOV.F32        S4, #1.0
586376:  VMUL.F32        S0, S0, S2
58637A:  VADD.F32        S2, S17, S4
58637E:  VMUL.F32        S30, S2, S0
586382:  VCMPE.F32       S28, #0.0
586386:  VMRS            APSR_nzcv, FPSCR
58638A:  BLE             loc_586446
58638C:  VMOV.F32        S0, #1.0
586390:  VLDR            S2, [R2,#8]
586394:  VCMPE.F32       S2, S0
586398:  VMRS            APSR_nzcv, FPSCR
58639C:  BGE             loc_586446
58639E:  VCMPE.F32       S2, #0.0
5863A2:  VMRS            APSR_nzcv, FPSCR
5863A6:  BGE             loc_586426
5863A8:  VMOV.F32        S4, #-3.0
5863AC:  VADD.F32        S2, S28, S2
5863B0:  B               loc_58642E
5863B2:  VMOV.F32        S20, S31
5863B6:  VLDR            S30, =0.0
5863BA:  VCMPE.F32       S17, #0.0
5863BE:  VMRS            APSR_nzcv, FPSCR
5863C2:  BGE             loc_586422
5863C4:  LDR.W           R0, [R11,#0x14]
5863C8:  VLDR            S0, [R11,#0x48]
5863CC:  VLDR            S2, [R11,#0x4C]
5863D0:  VLDR            S6, [R0,#0x10]
5863D4:  VLDR            S8, [R0,#0x14]
5863D8:  VMUL.F32        S0, S6, S0
5863DC:  VLDR            S4, [R11,#0x50]
5863E0:  VMUL.F32        S2, S8, S2
5863E4:  VLDR            S10, [R0,#0x18]
5863E8:  VMUL.F32        S4, S10, S4
5863EC:  VADD.F32        S0, S0, S2
5863F0:  VLDR            S2, =0.02
5863F4:  VADD.F32        S0, S0, S4
5863F8:  VCMPE.F32       S0, S2
5863FC:  VMRS            APSR_nzcv, FPSCR
586400:  BGE             loc_586422
586402:  VLDR            S0, =-7.76
586406:  VLDR            S2, =0.0
58640A:  VMUL.F32        S0, S28, S0
58640E:  LDR.W           R0, [R11,#0x38C]
586412:  VLDR            S4, [R0,#4]
586416:  VADD.F32        S0, S17, S0
58641A:  VMIN.F32        D0, D0, D1
58641E:  VMUL.F32        S30, S0, S4
586422:  MOV             R0, R1
586424:  B               loc_586446
586426:  VSUB.F32        S2, S28, S2
58642A:  VLDR            S4, =-0.65
58642E:  VMUL.F32        S4, S2, S4
586432:  VMUL.F32        S2, S2, S4
586436:  VLDR            S4, =0.0
58643A:  VADD.F32        S0, S2, S0
58643E:  VMAX.F32        D0, D0, D2
586442:  VMUL.F32        S30, S30, S0
586446:  VMUL.F32        S23, S23, S27
58644A:  CMP.W           R8, #5
58644E:  VMUL.F32        S21, S21, S27
586452:  STR.W           R8, [SP,#0xA0+var_94]
586456:  VMUL.F32        S17, S25, S27
58645A:  BEQ             loc_5864FC
58645C:  CMP.W           R8, #4
586460:  BNE             loc_586504
586462:  VLDR            S0, =0.3
586466:  B               loc_586500
586468:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x5856BA
58646C:  DCD _ZN8CWeather7WindDirE_ptr - 0x585712
586470:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x58579A
586474:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x5858E8
586478:  DCD _ZN6CPlane27HARRIER_NOZZLE_ROTATE_LIMITE_ptr - 0x585AEE
58647C:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x585D90
586480:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x585EEE
586484:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x585F76
586488:  DCD AUTOGYRO_ROTORTILT_ANGLE_ptr - 0x585FB8
58648C:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x586032
586490:  DCD AUTOGYRO_ROTORSPIN_MULTLIMIT_ptr - 0x58604A
586494:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x586050
586498:  DCD AUTOGYRO_ROTORSPIN_MULT_ptr - 0x586058
58649C:  DCD AUTOGYRO_ROTORSPIN_DAMP_ptr - 0x58607A
5864A0:  DCFS 0.008
5864A4:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x5860EE
5864A8:  DCFS 0.45
5864AC:  DCFS 500.0
5864B0:  DCFS 950.0
5864B4:  DCFS -500.0
5864B8:  DCFS 800.0
5864BC:  DCFS -800.0
5864C0:  DCFS 3.1416
5864C4:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x586234
5864C8:  DCFS 0.004
5864CC:  DCFS 0.2
5864D0:  DCFS 0.02
5864D4:  DCFS -7.76
5864D8:  DCFS -0.65
5864DC:  DCFS 0.3
5864E0:  DCFS 0.1
5864E4:  DCD _ZN6CPlane27HARRIER_NOZZLE_ROTATE_LIMITE_ptr - 0x586536
5864E8:  DCFS 1.5708
5864EC:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x5865C0
5864F0:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x58671C
5864F4:  DCFS -10000.0
5864F8:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x5868D4
5864FC:  VLDR            S0, =0.1
586500:  VMUL.F32        S30, S30, S0
586504:  VMOV            R6, S23
586508:  LDR.W           R8, [R11,#0x14]
58650C:  VMOV            R9, S21
586510:  CMP.W           R0, #0x208
586514:  VMOV            R4, S17
586518:  VLDR            S18, [R8,#0x10]
58651C:  VLDR            S27, [R8,#0x14]
586520:  VLDR            S16, [R8,#0x18]
586524:  BNE             loc_5865A4
586526:  LDR.W           R0, =(_ZN6CPlane27HARRIER_NOZZLE_ROTATE_LIMITE_ptr - 0x586536)
58652A:  MOV             R10, R9
58652C:  LDRH.W          R1, [R11,#0x880]
586530:  MOV             R9, R6
586532:  ADD             R0, PC; _ZN6CPlane27HARRIER_NOZZLE_ROTATE_LIMITE_ptr
586534:  VLDR            S2, =1.5708
586538:  VMOV            S0, R1
58653C:  LDR             R0, [R0]; CPlane::HARRIER_NOZZLE_ROTATE_LIMIT ...
58653E:  VCVT.F32.U32    S0, S0
586542:  LDRSH.W         R0, [R0]; CPlane::HARRIER_NOZZLE_ROTATE_LIMIT
586546:  VMOV            S4, R0
58654A:  VCVT.F32.S32    S4, S4
58654E:  VMUL.F32        S0, S0, S2
586552:  VDIV.F32        S0, S0, S4
586556:  VMOV            R6, S0
58655A:  MOV             R0, R6; x
58655C:  BLX             cosf
586560:  MOV             R5, R0
586562:  MOV             R0, R6; x
586564:  MOV             R6, R9
586566:  MOV             R9, R10
586568:  BLX             sinf
58656C:  VMOV            S8, R5
586570:  VLDR            S0, [R8,#0x20]
586574:  VMOV            S6, R0
586578:  VLDR            S2, [R8,#0x24]
58657C:  VLDR            S4, [R8,#0x28]
586580:  VMUL.F32        S10, S16, S8
586584:  VMUL.F32        S2, S6, S2
586588:  VMUL.F32        S12, S27, S8
58658C:  VMUL.F32        S4, S6, S4
586590:  VMUL.F32        S0, S6, S0
586594:  VMUL.F32        S6, S18, S8
586598:  VADD.F32        S27, S12, S2
58659C:  VADD.F32        S16, S10, S4
5865A0:  VADD.F32        S18, S6, S0
5865A4:  VLDR            S4, =0.008
5865A8:  VMUL.F32        S25, S24, S19
5865AC:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5865C0)
5865B0:  VMUL.F32        S0, S18, S4
5865B4:  VLDR            S6, [R11,#0x90]
5865B8:  VMUL.F32        S2, S27, S4
5865BC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5865BE:  VMUL.F32        S4, S16, S4
5865C2:  LDR             R5, [R0]; CTimer::ms_fTimeStep ...
5865C4:  MOV             R0, R11
5865C6:  VMUL.F32        S0, S30, S0
5865CA:  VMUL.F32        S2, S30, S2
5865CE:  VMUL.F32        S4, S30, S4
5865D2:  VMUL.F32        S0, S0, S6
5865D6:  VMUL.F32        S2, S2, S6
5865DA:  VMUL.F32        S4, S6, S4
5865DE:  VLDR            S6, [R5]
5865E2:  VMUL.F32        S0, S0, S6
5865E6:  VMUL.F32        S2, S2, S6
5865EA:  VMUL.F32        S4, S6, S4
5865EE:  VMOV            R1, S0
5865F2:  VMOV            R2, S2
5865F6:  VMOV            R3, S4
5865FA:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
5865FE:  LDR.W           R0, [R11,#0x14]
586602:  VLDR            S6, [SP,#0xA0+var_90]
586606:  VLDR            S8, [SP,#0xA0+var_8C]
58660A:  VLDR            S0, [R0]
58660E:  VLDR            S2, [R0,#4]
586612:  VMUL.F32        S8, S8, S0
586616:  VLDR            S4, [R0,#8]
58661A:  VMUL.F32        S6, S6, S2
58661E:  LDR.W           R0, [R11,#0x38C]
586622:  VMUL.F32        S10, S20, S4
586626:  VADD.F32        S6, S8, S6
58662A:  VLDR            S8, [R0,#0x14]
58662E:  MOV             R0, R11
586630:  VADD.F32        S6, S6, S10
586634:  VNMUL.F32       S8, S6, S8
586638:  VABS.F32        S6, S6
58663C:  VMUL.F32        S6, S6, S8
586640:  VMUL.F32        S0, S0, S6
586644:  VMUL.F32        S2, S2, S6
586648:  VMUL.F32        S4, S4, S6
58664C:  VLDR            S6, [R11,#0x90]
586650:  VMUL.F32        S0, S6, S0
586654:  VMUL.F32        S2, S6, S2
586658:  VMUL.F32        S4, S6, S4
58665C:  VLDR            S6, [R5]
586660:  VMUL.F32        S0, S6, S0
586664:  VMUL.F32        S2, S6, S2
586668:  VMUL.F32        S4, S6, S4
58666C:  VMOV            R1, S0
586670:  VMOV            R2, S2
586674:  VMOV            R3, S4
586678:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
58667C:  LDR.W           R0, [R11,#0x14]
586680:  MOV             R1, R11
586682:  MOV             R2, R4
586684:  MOV             R3, R9
586686:  VLDR            S18, [R0]
58668A:  VLDR            S27, [R0,#4]
58668E:  VLDR            S24, [R0,#8]
586692:  ADD             R0, SP, #0xA0+var_78
586694:  STR             R6, [SP,#0xA0+var_A0]
586696:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
58669A:  LDR.W           R0, [R11,#0x14]
58669E:  MOVW            R1, #0x21B
5866A2:  VLDR            S0, [SP,#0xA0+var_78]
5866A6:  VLDR            S2, [SP,#0xA0+var_74]
5866AA:  VLDR            S6, [R0]
5866AE:  VLDR            S8, [R0,#4]
5866B2:  VMUL.F32        S0, S0, S6
5866B6:  VLDR            S10, [R0,#8]
5866BA:  VMUL.F32        S2, S2, S8
5866BE:  VLDR            S4, [SP,#0xA0+var_70]
5866C2:  LDRH.W          R0, [R11,#0x26]
5866C6:  VMUL.F32        S4, S4, S10
5866CA:  LDR.W           R8, [SP,#0xA0+var_94]
5866CE:  CMP             R0, R1
5866D0:  VADD.F32        S0, S0, S2
5866D4:  VMOV            D1, D14
5866D8:  VADD.F32        S0, S0, S4
5866DC:  VNEG.F32        S0, S0
5866E0:  BNE             loc_5866F8
5866E2:  VCMPE.F32       S28, #0.0
5866E6:  VMRS            APSR_nzcv, FPSCR
5866EA:  VMIN.F32        D1, D14, D15
5866EE:  VMAX.F32        D2, D14, D15
5866F2:  IT GT
5866F4:  VMOVGT.F32      S2, S4
5866F8:  LDR.W           R0, [R11,#0x38C]
5866FC:  VABS.F32        S8, S0
586700:  VMUL.F32        S30, S26, S19
586704:  VLDR            S4, [R0,#0xC]
586708:  VLDR            S6, [R0,#0x10]
58670C:  VMUL.F32        S4, S25, S4
586710:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x58671C)
586714:  VMUL.F32        S0, S6, S0
586718:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
58671A:  LDR             R5, [R0]; CTimer::ms_fTimeStep ...
58671C:  MOV             R0, R11
58671E:  VMUL.F32        S2, S2, S4
586722:  VMUL.F32        S0, S8, S0
586726:  VADD.F32        S0, S2, S0
58672A:  VLDR            S2, [R11,#0x94]
58672E:  VMUL.F32        S0, S2, S0
586732:  VLDR            S2, [R5]
586736:  VMUL.F32        S0, S2, S0
58673A:  VMUL.F32        S2, S18, S0
58673E:  VMUL.F32        S4, S27, S0
586742:  VMUL.F32        S0, S24, S0
586746:  VMOV            R1, S2
58674A:  VLDR            S2, [SP,#0xA0+var_68]
58674E:  VMOV            R2, S4
586752:  VLDR            S4, [SP,#0xA0+var_64]
586756:  VMOV            R3, S0
58675A:  VLDR            S0, [SP,#0xA0+var_6C]
58675E:  VADD.F32        S4, S23, S4
586762:  VADD.F32        S0, S17, S0
586766:  VADD.F32        S2, S21, S2
58676A:  VSTR            S0, [SP,#0xA0+var_A0]
58676E:  VSTR            S2, [SP,#0xA0+var_9C]
586772:  VSTR            S4, [SP,#0xA0+var_98]
586776:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
58677A:  VLDR            S0, =-10000.0
58677E:  VCMP.F32        S22, S0
586782:  VMRS            APSR_nzcv, FPSCR
586786:  IT EQ
586788:  VMOVEQ.F32      S22, S25
58678C:  LDR.W           R0, [R11,#0x38C]
586790:  VLDR            S2, [R11,#0x94]
586794:  VLDR            S0, [R0,#0x18]
586798:  LDR.W           R0, [R11,#0x14]
58679C:  VMUL.F32        S0, S22, S0
5867A0:  VLDR            S4, [R0,#4]
5867A4:  VLDR            S6, [R0,#8]
5867A8:  VLDR            S8, [R0,#0x20]
5867AC:  VLDR            S10, [R0,#0x24]
5867B0:  VLDR            S12, [R0,#0x28]
5867B4:  VMUL.F32        S0, S28, S0
5867B8:  VMUL.F32        S0, S2, S0
5867BC:  VLDR            S2, [R5]
5867C0:  VMUL.F32        S0, S2, S0
5867C4:  VLDR            S2, [R0]
5867C8:  MOV             R0, R11
5867CA:  VMUL.F32        S2, S2, S0
5867CE:  VMUL.F32        S4, S4, S0
5867D2:  VMUL.F32        S0, S6, S0
5867D6:  VMOV            R1, S2
5867DA:  VLDR            S2, [SP,#0xA0+var_68]
5867DE:  VMOV            R2, S4
5867E2:  VLDR            S4, [SP,#0xA0+var_64]
5867E6:  VMOV            R3, S0
5867EA:  VLDR            S0, [SP,#0xA0+var_6C]
5867EE:  VADD.F32        S4, S12, S4
5867F2:  VADD.F32        S0, S8, S0
5867F6:  VADD.F32        S2, S10, S2
5867FA:  VSTR            S0, [SP,#0xA0+var_A0]
5867FE:  VSTR            S2, [SP,#0xA0+var_9C]
586802:  VSTR            S4, [SP,#0xA0+var_98]
586806:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
58680A:  LDR.W           R0, [R11,#0x14]
58680E:  MOVS            R1, #0
586810:  STRD.W          R1, R1, [SP,#0xA0+var_88]
586814:  MOV.W           R1, #0x3F800000
586818:  STR             R1, [SP,#0xA0+var_80]
58681A:  ADD.W           R1, R0, #0x10; CVector *
58681E:  ADD             R0, SP, #0xA0+var_78; CVector *
586820:  ADD             R2, SP, #0xA0+var_88
586822:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
586826:  LDRD.W          R2, R3, [SP,#0xA0+var_78]
58682A:  LDR.W           R0, [R11,#0x14]
58682E:  LDR             R1, [SP,#0xA0+var_70]
586830:  VLDR            S0, [R0,#0x28]
586834:  VCMPE.F32       S0, #0.0
586838:  VMRS            APSR_nzcv, FPSCR
58683C:  BLE             loc_586856
58683E:  VLDR            S2, [R0,#8]
586842:  VLDR            S24, =0.008
586846:  VCMPE.F32       S2, #0.0
58684A:  VMRS            APSR_nzcv, FPSCR
58684E:  BGT             loc_586874
586850:  VMOV.F32        S4, #1.0
586854:  B               loc_586878
586856:  VLDR            S2, [R0,#8]
58685A:  EOR.W           R1, R1, #0x80000000
58685E:  EOR.W           R3, R3, #0x80000000
586862:  EOR.W           R2, R2, #0x80000000
586866:  VCMPE.F32       S2, #0.0
58686A:  VLDR            S24, =0.008
58686E:  VMRS            APSR_nzcv, FPSCR
586872:  BLE             loc_586850
586874:  VMOV.F32        S4, #-1.0
586878:  VLDR            S6, [R0]
58687C:  VMOV            S1, R2
586880:  VLDR            S8, [R0,#4]
586884:  VMOV            S14, R3
586888:  VMUL.F32        S1, S6, S1
58688C:  VLDR            S10, [R0,#0x18]
586890:  VMUL.F32        S14, S8, S14
586894:  VLDR            S12, [R0,#0x20]
586898:  VMOV            S3, R1
58689C:  LDR.W           R1, [R11,#0x38C]
5868A0:  VMOV.F32        S26, #1.0
5868A4:  VMUL.F32        S3, S2, S3
5868A8:  VABS.F32        S10, S10
5868AC:  VADD.F32        S14, S1, S14
5868B0:  VSUB.F32        S10, S26, S10
5868B4:  VADD.F32        S14, S14, S3
5868B8:  VSUB.F32        S14, S26, S14
5868BC:  VMUL.F32        S4, S4, S14
5868C0:  VMOV.F32        S14, #0.5
5868C4:  VMUL.F32        S4, S10, S4
5868C8:  VLDR            S10, [R1,#0x1C]
5868CC:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5868D4)
5868D0:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5868D2:  LDR             R5, [R1]; CTimer::ms_fTimeStep ...
5868D4:  VMUL.F32        S4, S10, S4
5868D8:  VLDR            S10, [R11,#0x94]
5868DC:  VMUL.F32        S4, S10, S4
5868E0:  VLDR            S10, [R5]
5868E4:  VMUL.F32        S4, S4, S14
5868E8:  VMUL.F32        S4, S10, S4
5868EC:  VMUL.F32        S6, S6, S4
5868F0:  VMUL.F32        S8, S8, S4
5868F4:  VMUL.F32        S2, S2, S4
5868F8:  VLDR            S4, [SP,#0xA0+var_68]
5868FC:  VMOV            R1, S6
586900:  VLDR            S6, [SP,#0xA0+var_64]
586904:  VMOV            R2, S8
586908:  VLDR            S8, [R0,#0x24]
58690C:  VMOV            R3, S2
586910:  VLDR            S2, [SP,#0xA0+var_6C]
586914:  VADD.F32        S0, S0, S6
586918:  MOV             R0, R11
58691A:  VADD.F32        S2, S12, S2
58691E:  VADD.F32        S4, S8, S4
586922:  VSTR            S2, [SP,#0xA0+var_A0]
586926:  VSTR            S4, [SP,#0xA0+var_9C]
58692A:  VSTR            S0, [SP,#0xA0+var_98]
58692E:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
586932:  LDR.W           R0, [R11,#0x14]
586936:  MOV             R1, R11
586938:  MOV             R2, R4
58693A:  MOV             R3, R9
58693C:  VLDR            S16, [R0,#0x20]
586940:  VLDR            S18, [R0,#0x24]
586944:  VLDR            S22, [R0,#0x28]
586948:  ADD             R0, SP, #0xA0+var_78
58694A:  STR             R6, [SP,#0xA0+var_A0]
58694C:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
586950:  LDR.W           R0, [R11,#0x14]
586954:  VLDR            S0, [SP,#0xA0+var_78]
586958:  VLDR            S2, [SP,#0xA0+var_74]
58695C:  VLDR            S6, [R0,#0x20]
586960:  VLDR            S8, [R0,#0x24]
586964:  VMUL.F32        S0, S0, S6
586968:  VLDR            S10, [R0,#0x28]
58696C:  VMUL.F32        S2, S2, S8
586970:  VLDR            S4, [SP,#0xA0+var_70]
586974:  LDR.W           R0, [R11,#0x38C]
586978:  VMUL.F32        S4, S4, S10
58697C:  VADD.F32        S0, S0, S2
586980:  VLDR            S2, [R0,#0x20]
586984:  VMUL.F32        S2, S30, S2
586988:  VADD.F32        S0, S0, S4
58698C:  VLDR            S4, [R0,#0x24]
586990:  MOV             R0, R11
586992:  VMUL.F32        S2, S28, S2
586996:  VNMUL.F32       S4, S0, S4
58699A:  VABS.F32        S0, S0
58699E:  VMUL.F32        S0, S0, S4
5869A2:  VSUB.F32        S0, S0, S2
5869A6:  VLDR            S2, [R11,#0x94]
5869AA:  VMUL.F32        S0, S2, S0
5869AE:  VLDR            S2, [R5]
5869B2:  VMUL.F32        S0, S2, S0
5869B6:  VMUL.F32        S2, S16, S0
5869BA:  VMUL.F32        S4, S18, S0
5869BE:  VMUL.F32        S0, S22, S0
5869C2:  VMOV            R1, S2
5869C6:  VLDR            S2, [SP,#0xA0+var_68]
5869CA:  VMOV            R2, S4
5869CE:  VLDR            S4, [SP,#0xA0+var_64]
5869D2:  VMOV            R3, S0
5869D6:  VLDR            S0, [SP,#0xA0+var_6C]
5869DA:  VADD.F32        S4, S23, S4
5869DE:  VADD.F32        S0, S17, S0
5869E2:  VADD.F32        S2, S21, S2
5869E6:  VSTR            S0, [SP,#0xA0+var_A0]
5869EA:  VSTR            S2, [SP,#0xA0+var_9C]
5869EE:  VSTR            S4, [SP,#0xA0+var_98]
5869F2:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
5869F6:  VLDR            S10, [SP,#0xA0+var_90]
5869FA:  VMUL.F32        S4, S20, S20
5869FE:  VLDR            S8, [SP,#0xA0+var_8C]
586A02:  VMOV.F32        S16, #-1.0
586A06:  VMUL.F32        S0, S10, S10
586A0A:  LDR.W           R4, [R11,#0x14]
586A0E:  VMUL.F32        S2, S8, S8
586A12:  VLDR            S6, [R4,#0x28]
586A16:  VMUL.F32        S6, S20, S6
586A1A:  VADD.F32        S0, S2, S0
586A1E:  VLDR            S2, [R4,#0x20]
586A22:  VMUL.F32        S2, S8, S2
586A26:  VADD.F32        S0, S0, S4
586A2A:  VLDR            S4, [R4,#0x24]
586A2E:  VMUL.F32        S4, S10, S4
586A32:  VSQRT.F32       S0, S0
586A36:  VADD.F32        S2, S2, S4
586A3A:  VLDR            S4, =0.01
586A3E:  VMAX.F32        D0, D0, D2
586A42:  VADD.F32        S2, S2, S6
586A46:  VDIV.F32        S0, S2, S0
586A4A:  VMIN.F32        D16, D0, D13
586A4E:  VMAX.F32        D0, D16, D8
586A52:  VMOV            R0, S0; x
586A56:  BLX             asinf
586A5A:  VLDR            S2, =-0.73304
586A5E:  VMOV            S0, R0
586A62:  LDR.W           R1, [R11,#0x5A4]
586A66:  VCMPE.F32       S0, S2
586A6A:  VMRS            APSR_nzcv, FPSCR
586A6E:  BGE             loc_586AA0
586A70:  CMP             R1, #4
586A72:  BNE             loc_586AA0
586A74:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x586A7E)
586A76:  VLDR            S2, =50.0
586A7A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
586A7C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
586A7E:  VLDR            S4, [R0]
586A82:  LDR.W           R0, [R11,#0x9B4]
586A86:  VDIV.F32        S2, S4, S2
586A8A:  VLDR            S4, =1000.0
586A8E:  VMUL.F32        S2, S2, S4
586A92:  VCVT.U32.F32    S2, S2
586A96:  VMOV            R2, S2
586A9A:  ADD             R0, R2
586A9C:  STR.W           R0, [R11,#0x9B4]
586AA0:  VMUL.F32        S2, S28, S28
586AA4:  LDR.W           R0, [R11,#0x38C]
586AA8:  CMP.W           R8, #1
586AAC:  VLDR            S4, [R0,#0x28]
586AB0:  BNE             loc_586ACA
586AB2:  VMUL.F32        S8, S2, S4
586AB6:  VLDR            S6, =0.004
586ABA:  VCMPE.F32       S8, S6
586ABE:  VMRS            APSR_nzcv, FPSCR
586AC2:  BLE             loc_586AE8
586AC4:  VDIV.F32        S4, S6, S2
586AC8:  B               loc_586AE8
586ACA:  CMP             R1, #4
586ACC:  BNE             loc_586AE8
586ACE:  ADD.W           R1, R11, #0x9E0
586AD2:  VLDR            S6, [R1]
586AD6:  VCMPE.F32       S6, S26
586ADA:  VMRS            APSR_nzcv, FPSCR
586ADE:  ITT LT
586AE0:  VLDRLT          S6, [R0,#0x34]
586AE4:  VMULLT.F32      S4, S4, S6
586AE8:  VLDR            S6, [R0,#0x2C]
586AEC:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x586AF6)
586AEE:  VMUL.F32        S0, S0, S6
586AF2:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
586AF4:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
586AF6:  VSUB.F32        S0, S4, S0
586AFA:  VMUL.F32        S4, S2, S0
586AFE:  VLDR            S2, [R0]
586B02:  VLDR            S0, [R11,#0x90]
586B06:  VMUL.F32        S6, S2, S24
586B0A:  VMUL.F32        S4, S0, S4
586B0E:  VMUL.F32        S8, S0, S6
586B12:  VMUL.F32        S6, S2, S4
586B16:  VCMPE.F32       S6, S8
586B1A:  VMRS            APSR_nzcv, FPSCR
586B1E:  BLE.W           loc_5875A6
586B22:  ADD.W           R0, R4, #0x30 ; '0'
586B26:  CMP             R4, #0
586B28:  IT EQ
586B2A:  ADDEQ.W         R0, R11, #4
586B2E:  VLDR            S4, [R0,#8]
586B32:  SUB.W           R0, R8, #1
586B36:  CMP             R0, #1
586B38:  BHI             loc_586B5E
586B3A:  VLDR            S8, =500.0
586B3E:  VCMPE.F32       S4, S8
586B42:  VMRS            APSR_nzcv, FPSCR
586B46:  BLT.W           loc_5875A6
586B4A:  VLDR            S10, =950.0
586B4E:  VCMPE.F32       S4, S10
586B52:  VMRS            APSR_nzcv, FPSCR
586B56:  BGE             loc_586BAA
586B58:  VLDR            S8, =-500.0
586B5C:  B               loc_586B72
586B5E:  VLDR            S8, =800.0
586B62:  VCMPE.F32       S4, S8
586B66:  VMRS            APSR_nzcv, FPSCR
586B6A:  BLT.W           loc_5875A6
586B6E:  VLDR            S8, =-800.0
586B72:  VADD.F32        S8, S4, S8
586B76:  VCMPE.F32       S8, #0.0
586B7A:  VMRS            APSR_nzcv, FPSCR
586B7E:  BLE.W           loc_5875A6
586B82:  CMP             R0, #1
586B84:  BHI             loc_586BC8
586B86:  VLDR            S6, =500.0
586B8A:  VCMPE.F32       S4, S6
586B8E:  VMRS            APSR_nzcv, FPSCR
586B92:  BLT.W           loc_586CB4
586B96:  VLDR            S8, =950.0
586B9A:  VCMPE.F32       S4, S8
586B9E:  VMRS            APSR_nzcv, FPSCR
586BA2:  BGE             loc_586C9A
586BA4:  VLDR            S6, =-500.0
586BA8:  B               loc_586BDA
586BAA:  VLDR            S10, =1500.0
586BAE:  VCMPE.F32       S4, S10
586BB2:  VMRS            APSR_nzcv, FPSCR
586BB6:  BLT.W           loc_5875A6
586BBA:  VLDR            S10, =-1000.0
586BBE:  VADD.F32        S10, S4, S10
586BC2:  VADD.F32        S8, S10, S8
586BC6:  B               loc_586B76
586BC8:  VLDR            S6, =800.0
586BCC:  VCMPE.F32       S4, S6
586BD0:  VMRS            APSR_nzcv, FPSCR
586BD4:  BLT             loc_586CB4
586BD6:  VLDR            S6, =-800.0
586BDA:  VADD.F32        S16, S4, S6
586BDE:  B               loc_586CB4
586BE0:  VLDR            S6, =1500.0
586BE4:  VCMPE.F32       S2, S6
586BE8:  VMRS            APSR_nzcv, FPSCR
586BEC:  BLT.W           loc_586D9A
586BF0:  VLDR            S6, =-1000.0
586BF4:  VADD.F32        S6, S2, S6
586BF8:  VADD.F32        S4, S6, S4
586BFC:  B.W             loc_5861A4
586C00:  VLDR            S4, =800.0
586C04:  VCMPE.F32       S2, S4
586C08:  VMRS            APSR_nzcv, FPSCR
586C0C:  BGE             loc_586C90
586C0E:  VMOV.F32        S4, #-1.0
586C12:  B               loc_586D8A
586C14:  VMOV.F32        S0, S2
586C18:  LDR.W           R0, =(AUTOGYRO_ROTORLIFT_FALLOFF_ptr - 0x586C24)
586C1C:  LDR.W           R1, =(AUTOGYRO_ROTORLIFT_MULT_ptr - 0x586C26)
586C20:  ADD             R0, PC; AUTOGYRO_ROTORLIFT_FALLOFF_ptr
586C22:  ADD             R1, PC; AUTOGYRO_ROTORLIFT_MULT_ptr
586C24:  LDR             R0, [R0]; AUTOGYRO_ROTORLIFT_FALLOFF
586C26:  LDR             R1, [R1]; AUTOGYRO_ROTORLIFT_MULT
586C28:  VLDR            S2, [R0]
586C2C:  VLDR            S4, [R1]
586C30:  VMUL.F32        S2, S18, S2
586C34:  VMUL.F32        S0, S0, S4
586C38:  VLDR            S4, =0.008
586C3C:  VMUL.F32        S6, S17, S4
586C40:  VSUB.F32        S0, S0, S2
586C44:  VMUL.F32        S2, S28, S4
586C48:  VMUL.F32        S4, S30, S4
586C4C:  VMUL.F32        S6, S6, S0
586C50:  VMUL.F32        S2, S0, S2
586C54:  VMUL.F32        S0, S0, S4
586C58:  VLDR            S4, [R11,#0x90]
586C5C:  VMUL.F32        S6, S6, S4
586C60:  VMUL.F32        S2, S2, S4
586C64:  VMUL.F32        S0, S4, S0
586C68:  VMUL.F32        S4, S6, S21
586C6C:  VMUL.F32        S2, S2, S21
586C70:  VMUL.F32        S0, S21, S0
586C74:  VMOV            R1, S4
586C78:  VMOV            R2, S2
586C7C:  B               loc_586DE2
586C7E:  MOV             R0, R1
586C80:  LDR.W           R2, [R11,#0x38C]
586C84:  VMOV.F32        S20, S31
586C88:  VLDR            S0, [R2,#4]
586C8C:  B.W             loc_58636E
586C90:  VLDR            S4, =-800.0
586C94:  VADD.F32        S4, S2, S4
586C98:  B               loc_586D8A
586C9A:  VLDR            S8, =1500.0
586C9E:  VCMPE.F32       S4, S8
586CA2:  VMRS            APSR_nzcv, FPSCR
586CA6:  ITTT GE
586CA8:  VLDRGE          S8, =-1000.0
586CAC:  VADDGE.F32      S8, S4, S8
586CB0:  VADDGE.F32      S16, S8, S6
586CB4:  VLDR            S6, =-50.0
586CB8:  VDIV.F32        S8, S16, S6
586CBC:  VADD.F32        S8, S8, S26
586CC0:  VCMPE.F32       S8, #0.0
586CC4:  VMRS            APSR_nzcv, FPSCR
586CC8:  BGE             loc_586CD2
586CCA:  VLDR            S4, =0.0
586CCE:  B.W             loc_58759E
586CD2:  CMP             R0, #1
586CD4:  BHI             loc_586D00
586CD6:  VMOV.F32        S8, #-1.0
586CDA:  VLDR            S10, =500.0
586CDE:  VCMPE.F32       S4, S10
586CE2:  VMRS            APSR_nzcv, FPSCR
586CE6:  BLT.W           loc_587592
586CEA:  VLDR            S12, =950.0
586CEE:  VCMPE.F32       S4, S12
586CF2:  VMRS            APSR_nzcv, FPSCR
586CF6:  BGE.W           loc_587578
586CFA:  VLDR            S8, =-500.0
586CFE:  B               loc_586D1A
586D00:  VLDR            S8, =800.0
586D04:  VCMPE.F32       S4, S8
586D08:  VMRS            APSR_nzcv, FPSCR
586D0C:  BGE             loc_586D16
586D0E:  VMOV.F32        S8, #-1.0
586D12:  B.W             loc_587592
586D16:  VLDR            S8, =-800.0
586D1A:  VADD.F32        S8, S4, S8
586D1E:  B.W             loc_587592
586D22:  ALIGN 4
586D24:  DCFS 0.01
586D28:  DCFS -0.73304
586D2C:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x586A7E
586D30:  DCFS 50.0
586D34:  DCFS 1000.0
586D38:  DCFS 0.004
586D3C:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x586AF6
586D40:  DCFS 500.0
586D44:  DCFS 950.0
586D48:  DCFS -500.0
586D4C:  DCFS 800.0
586D50:  DCFS -800.0
586D54:  DCFS 1500.0
586D58:  DCFS -1000.0
586D5C:  DCFS 0.008
586D60:  DCFS -50.0
586D64:  DCFS 0.0
586D68:  DCFS -10000.0
586D6C:  DCFS 0.0078125
586D70:  VLDR            S8, =1500.0
586D74:  VCMPE.F32       S2, S8
586D78:  VMRS            APSR_nzcv, FPSCR
586D7C:  ITTT GE
586D7E:  VLDRGE          S4, =-1000.0
586D82:  VADDGE.F32      S2, S2, S4
586D86:  VADDGE.F32      S4, S2, S6
586D8A:  VMOV.F32        S2, #10.0
586D8E:  VADD.F32        S4, S4, S2
586D92:  VDIV.F32        S2, S2, S4
586D96:  VMUL.F32        S0, S0, S2
586D9A:  VMUL.F32        S2, S19, S21
586D9E:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x586DAE)
586DA2:  VMUL.F32        S4, S28, S21
586DA6:  VMUL.F32        S6, S30, S21
586DAA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
586DAC:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
586DAE:  VMUL.F32        S2, S2, S0
586DB2:  VMUL.F32        S4, S4, S0
586DB6:  VMUL.F32        S0, S6, S0
586DBA:  VLDR            S6, [R11,#0x90]
586DBE:  VMUL.F32        S2, S2, S6
586DC2:  VMUL.F32        S4, S4, S6
586DC6:  VMUL.F32        S0, S0, S6
586DCA:  VLDR            S6, [R0]
586DCE:  VMUL.F32        S2, S2, S6
586DD2:  VMUL.F32        S4, S4, S6
586DD6:  VMUL.F32        S0, S0, S6
586DDA:  VMOV            R1, S2
586DDE:  VMOV            R2, S4
586DE2:  VMOV            R3, S0
586DE6:  MOV             R0, R11
586DE8:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
586DEC:  LDR.W           R0, [R11,#0x14]
586DF0:  VLDR            S0, [R0,#0x28]
586DF4:  VCMPE.F32       S0, #0.0
586DF8:  VMRS            APSR_nzcv, FPSCR
586DFC:  BLE.W           loc_586FE6
586E00:  LDR.W           R0, =(_ZN8CWeather7WindDirE_ptr - 0x586E10)
586E04:  VMOV.F32        S8, #1.0
586E08:  LDR.W           R1, [R11,#0x38C]
586E0C:  ADD             R0, PC; _ZN8CWeather7WindDirE_ptr
586E0E:  LDR             R0, [R0]; CWeather::WindDir ...
586E10:  VLDR            S0, [R1,#0x38]
586E14:  VLDR            S2, [R0]
586E18:  VLDR            S4, [R0,#4]
586E1C:  VLDR            S6, [R0,#8]
586E20:  VMUL.F32        S2, S0, S2
586E24:  VMUL.F32        S4, S0, S4
586E28:  ADD             R0, SP, #0xA0+var_78; this
586E2A:  VMUL.F32        S0, S0, S6
586E2E:  VLDR            S6, =0.0
586E32:  VADD.F32        S2, S2, S6
586E36:  VADD.F32        S4, S4, S6
586E3A:  VADD.F32        S0, S0, S8
586E3E:  VSTR            S2, [SP,#0xA0+var_78]
586E42:  VSTR            S4, [SP,#0xA0+var_74]
586E46:  VSTR            S0, [SP,#0xA0+var_70]
586E4A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
586E4E:  LDR.W           R0, [R11,#0x14]
586E52:  VLDR            S0, [SP,#0xA0+var_78]
586E56:  VLDR            S2, [SP,#0xA0+var_74]
586E5A:  VLDR            S6, [R0]
586E5E:  VLDR            S8, [R0,#4]
586E62:  VMUL.F32        S0, S6, S0
586E66:  VLDR            S4, [SP,#0xA0+var_70]
586E6A:  VMUL.F32        S2, S8, S2
586E6E:  VLDR            S10, [R0,#8]
586E72:  LDR.W           R1, [R11,#0x38C]
586E76:  VMUL.F32        S4, S10, S4
586E7A:  VLDR            S12, [R0,#0x20]
586E7E:  VLDR            S14, [R1,#0x2C]
586E82:  VADD.F32        S0, S0, S2
586E86:  VLDR            S2, [R1,#0x28]
586E8A:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x586E96)
586E8E:  VNEG.F32        S1, S2
586E92:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
586E94:  LDR             R4, [R1]; CTimer::ms_fTimeStep ...
586E96:  VADD.F32        S0, S0, S4
586E9A:  VCMPE.F32       S0, S1
586E9E:  VMRS            APSR_nzcv, FPSCR
586EA2:  VMOV.F32        S4, S0
586EA6:  IT LT
586EA8:  VMOVLT.F32      S4, S1
586EAC:  VCMPE.F32       S2, S4
586EB0:  VMRS            APSR_nzcv, FPSCR
586EB4:  VCMPE.F32       S0, S1
586EB8:  IT LT
586EBA:  VMOVLT.F32      S1, S2
586EBE:  VMRS            APSR_nzcv, FPSCR
586EC2:  VCMPE.F32       S2, S4
586EC6:  IT LT
586EC8:  VMOVLT.F32      S0, S1
586ECC:  VMRS            APSR_nzcv, FPSCR
586ED0:  IT LT
586ED2:  VMOVLT.F32      S0, S1
586ED6:  VLDR            S2, [R11,#0x94]
586EDA:  VMUL.F32        S0, S0, S14
586EDE:  VLDR            S4, [R0,#0x28]
586EE2:  VMUL.F32        S0, S0, S2
586EE6:  VLDR            S2, [R4]
586EEA:  VMUL.F32        S0, S0, S2
586EEE:  VLDR            S2, [R0,#0x24]
586EF2:  MOV             R0, R11
586EF4:  VNMUL.F32       S12, S0, S12
586EF8:  VNMUL.F32       S2, S0, S2
586EFC:  VNMUL.F32       S0, S0, S4
586F00:  VLDR            S4, [SP,#0xA0+var_64]
586F04:  VADD.F32        S4, S10, S4
586F08:  VMOV            R1, S12
586F0C:  VMOV            R2, S2
586F10:  VLDR            S2, [SP,#0xA0+var_68]
586F14:  VMOV            R3, S0
586F18:  VLDR            S0, [SP,#0xA0+var_6C]
586F1C:  VADD.F32        S2, S8, S2
586F20:  VADD.F32        S0, S6, S0
586F24:  VSTR            S0, [SP,#0xA0+var_A0]
586F28:  VSTR            S2, [SP,#0xA0+var_9C]
586F2C:  VSTR            S4, [SP,#0xA0+var_98]
586F30:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
586F34:  LDR.W           R0, [R11,#0x14]
586F38:  VLDR            S0, [SP,#0xA0+var_78]
586F3C:  VLDR            S2, [SP,#0xA0+var_74]
586F40:  VLDR            S6, [R0,#0x10]
586F44:  VLDR            S8, [R0,#0x14]
586F48:  VMUL.F32        S0, S6, S0
586F4C:  VLDR            S4, [SP,#0xA0+var_70]
586F50:  VMUL.F32        S2, S8, S2
586F54:  VLDR            S10, [R0,#0x18]
586F58:  LDR.W           R1, [R11,#0x38C]
586F5C:  VMUL.F32        S4, S10, S4
586F60:  VLDR            S12, [R0,#0x20]
586F64:  VLDR            S14, [R1,#0x2C]
586F68:  VADD.F32        S0, S0, S2
586F6C:  VLDR            S2, [R1,#0x28]
586F70:  VNEG.F32        S1, S2
586F74:  VADD.F32        S0, S0, S4
586F78:  VCMPE.F32       S0, S1
586F7C:  VMRS            APSR_nzcv, FPSCR
586F80:  VMOV.F32        S4, S0
586F84:  IT LT
586F86:  VMOVLT.F32      S4, S1
586F8A:  VCMPE.F32       S2, S4
586F8E:  VMRS            APSR_nzcv, FPSCR
586F92:  VCMPE.F32       S0, S1
586F96:  IT LT
586F98:  VMOVLT.F32      S1, S2
586F9C:  VMRS            APSR_nzcv, FPSCR
586FA0:  VCMPE.F32       S2, S4
586FA4:  IT LT
586FA6:  VMOVLT.F32      S0, S1
586FAA:  VMRS            APSR_nzcv, FPSCR
586FAE:  IT LT
586FB0:  VMOVLT.F32      S0, S1
586FB4:  VLDR            S2, [R11,#0x94]
586FB8:  VMUL.F32        S0, S0, S14
586FBC:  VLDR            S4, [R0,#0x28]
586FC0:  VMUL.F32        S0, S0, S2
586FC4:  VLDR            S2, [R4]
586FC8:  VMUL.F32        S0, S0, S2
586FCC:  VLDR            S2, [R0,#0x24]
586FD0:  VNMUL.F32       S12, S0, S12
586FD4:  VNMUL.F32       S2, S0, S2
586FD8:  VNMUL.F32       S0, S0, S4
586FDC:  VMOV            R1, S12
586FE0:  VMOV            R2, S2
586FE4:  B               loc_5870D8
586FE6:  VLDR            S12, [R0,#8]
586FEA:  LDR.W           R1, [R11,#0x38C]
586FEE:  VCMPE.F32       S12, #0.0
586FF2:  VLDR            S8, [R0]
586FF6:  VMRS            APSR_nzcv, FPSCR
586FFA:  VLDR            S2, [R1,#0x28]
586FFE:  VLDR            S4, [R1,#0x2C]
587002:  VNEG.F32        S6, S2
587006:  VLDR            S10, [R0,#4]
58700A:  VLDR            S14, [R0,#0x20]
58700E:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x587016)
587012:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
587014:  LDR             R4, [R1]; CTimer::ms_fTimeStep ...
587016:  IT LT
587018:  VMOVLT.F32      S6, S2
58701C:  VMUL.F32        S2, S4, S6
587020:  VLDR            S4, [R11,#0x94]
587024:  VMUL.F32        S2, S2, S4
587028:  VLDR            S4, [R4]
58702C:  VMUL.F32        S2, S2, S4
587030:  VLDR            S4, [R0,#0x24]
587034:  MOV             R0, R11
587036:  VMUL.F32        S6, S14, S2
58703A:  VMUL.F32        S4, S2, S4
58703E:  VMUL.F32        S0, S0, S2
587042:  VLDR            S2, [SP,#0xA0+var_68]
587046:  VADD.F32        S2, S10, S2
58704A:  VMOV            R1, S6
58704E:  VMOV            R2, S4
587052:  VLDR            S4, [SP,#0xA0+var_64]
587056:  VMOV            R3, S0
58705A:  VLDR            S0, [SP,#0xA0+var_6C]
58705E:  VADD.F32        S4, S12, S4
587062:  VADD.F32        S0, S8, S0
587066:  VSTR            S0, [SP,#0xA0+var_A0]
58706A:  VSTR            S2, [SP,#0xA0+var_9C]
58706E:  VSTR            S4, [SP,#0xA0+var_98]
587072:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
587076:  LDR.W           R0, [R11,#0x38C]
58707A:  VLDR            S0, [R0,#0x28]
58707E:  VLDR            S2, [R0,#0x2C]
587082:  LDR.W           R0, [R11,#0x14]
587086:  VNEG.F32        S4, S0
58708A:  VLDR            S10, [R0,#0x18]
58708E:  VLDR            S6, [R0,#0x10]
587092:  VCMPE.F32       S10, #0.0
587096:  VLDR            S8, [R0,#0x14]
58709A:  VMRS            APSR_nzcv, FPSCR
58709E:  VLDR            S12, [R0,#0x20]
5870A2:  VLDR            S14, [R0,#0x24]
5870A6:  VLDR            S1, [R0,#0x28]
5870AA:  IT LT
5870AC:  VMOVLT.F32      S4, S0
5870B0:  VMUL.F32        S0, S2, S4
5870B4:  VLDR            S2, [R11,#0x94]
5870B8:  VMUL.F32        S0, S0, S2
5870BC:  VLDR            S2, [R4]
5870C0:  VMUL.F32        S0, S0, S2
5870C4:  VMUL.F32        S2, S12, S0
5870C8:  VMUL.F32        S4, S0, S14
5870CC:  VMUL.F32        S0, S0, S1
5870D0:  VMOV            R1, S2
5870D4:  VMOV            R2, S4
5870D8:  VMOV            R3, S0
5870DC:  VLDR            S0, [SP,#0xA0+var_6C]
5870E0:  VLDR            S2, [SP,#0xA0+var_68]
5870E4:  MOV             R0, R11
5870E6:  VLDR            S4, [SP,#0xA0+var_64]
5870EA:  VADD.F32        S0, S6, S0
5870EE:  VADD.F32        S2, S8, S2
5870F2:  VADD.F32        S4, S10, S4
5870F6:  VSTR            S0, [SP,#0xA0+var_A0]
5870FA:  VSTR            S2, [SP,#0xA0+var_9C]
5870FE:  VSTR            S4, [SP,#0xA0+var_98]
587102:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
587106:  LDR.W           R0, =(_ZN5CHeli18bHeliControlsCheatE_ptr - 0x587112)
58710A:  VLDR            S18, =-10000.0
58710E:  ADD             R0, PC; _ZN5CHeli18bHeliControlsCheatE_ptr
587110:  VCMP.F32        S26, S18
587114:  LDR             R0, [R0]; CHeli::bHeliControlsCheat ...
587116:  LDRB            R0, [R0]; CHeli::bHeliControlsCheat
587118:  CBZ             R0, loc_58713E
58711A:  VMRS            APSR_nzcv, FPSCR
58711E:  BNE             loc_587166
587120:  CMP.W           R9, #0
587124:  BEQ             loc_587162
587126:  MOV             R0, R9; this
587128:  BLX             j__ZN4CPad17GetSteeringUpDownEv; CPad::GetSteeringUpDown(void)
58712C:  VMOV            S0, R0
587130:  VLDR            S2, =0.0078125
587134:  VCVT.F32.S32    S0, S0
587138:  VMUL.F32        S26, S0, S2
58713C:  B               loc_587166
58713E:  VMRS            APSR_nzcv, FPSCR
587142:  BNE             loc_5871CE
587144:  CMP.W           R9, #0
587148:  BEQ             loc_5871CA
58714A:  MOV             R0, R9; this
58714C:  BLX             j__ZN4CPad17GetSteeringUpDownEv; CPad::GetSteeringUpDown(void)
587150:  VMOV            S0, R0
587154:  VLDR            S2, =0.0078125
587158:  VCVT.F32.S32    S0, S0
58715C:  VMUL.F32        S26, S0, S2
587160:  B               loc_5871CE
587162:  VLDR            S26, =0.0
587166:  VCMP.F32        S22, S18
58716A:  VMRS            APSR_nzcv, FPSCR
58716E:  BNE             loc_58718C
587170:  CMP.W           R9, #0
587174:  BEQ             loc_587188
587176:  MOV             R0, R9; this
587178:  MOVS            R1, #1; bool
58717A:  BLX             j__ZN4CPad11GetLookLeftEb; CPad::GetLookLeft(bool)
58717E:  VMOV            S0, R0
587182:  VCVT.F32.U32    S22, S0
587186:  B               loc_58718C
587188:  VLDR            S22, =0.0
58718C:  VCMP.F32        S24, S18
587190:  VMRS            APSR_nzcv, FPSCR
587194:  BNE             loc_587278
587196:  CMP.W           R9, #0
58719A:  BEQ             loc_587274
58719C:  MOV             R0, R9; this
58719E:  MOVS            R1, #1; bool
5871A0:  BLX             j__ZN4CPad12GetLookRightEb; CPad::GetLookRight(bool)
5871A4:  MOV             R5, R0
5871A6:  MOV             R0, R9; this
5871A8:  BLX             j__ZN4CPad20GetSteeringLeftRightEv; CPad::GetSteeringLeftRight(void)
5871AC:  VMOV            S0, R0
5871B0:  VLDR            S2, =0.0078125
5871B4:  VMOV.F32        S4, #-1.0
5871B8:  CMP             R5, #0
5871BA:  VCVT.F32.S32    S0, S0
5871BE:  IT NE
5871C0:  VMOVNE.F32      S22, S4
5871C4:  VMUL.F32        S24, S0, S2
5871C8:  B               loc_587278
5871CA:  VLDR            S26, =0.0
5871CE:  VCMP.F32        S22, S18
5871D2:  VMRS            APSR_nzcv, FPSCR
5871D6:  BNE             loc_5871FC
5871D8:  CMP.W           R9, #0
5871DC:  BEQ             loc_5871F8
5871DE:  MOV             R0, R9; this
5871E0:  BLX             j__ZN4CPad20GetSteeringLeftRightEv; CPad::GetSteeringLeftRight(void)
5871E4:  NEGS            R0, R0
5871E6:  VLDR            S2, =0.0078125
5871EA:  VMOV            S0, R0
5871EE:  VCVT.F32.S32    S0, S0
5871F2:  VMUL.F32        S22, S0, S2
5871F6:  B               loc_5871FC
5871F8:  VLDR            S22, =0.0
5871FC:  VCMP.F32        S24, S18
587200:  VMRS            APSR_nzcv, FPSCR
587204:  BNE             loc_587278
587206:  CMP.W           R9, #0
58720A:  BEQ             loc_587274
58720C:  MOV             R0, R9; this
58720E:  MOVS            R1, #1; bool
587210:  BLX             j__ZN4CPad12GetLookRightEb; CPad::GetLookRight(bool)
587214:  VMOV            S0, R0
587218:  MOV             R0, R9; this
58721A:  MOVS            R1, #1; bool
58721C:  VCVT.F32.U32    S24, S0
587220:  BLX             j__ZN4CPad11GetLookLeftEb; CPad::GetLookLeft(bool)
587224:  MOV             R5, R0
587226:  MOV             R0, R9; this
587228:  MOVS            R1, #0; bool
58722A:  MOVS            R2, #0; bool
58722C:  BLX             j__ZN4CPad18GetCarGunLeftRightEbb; CPad::GetCarGunLeftRight(bool,bool)
587230:  VMOV            S0, R0
587234:  CMP             R5, #0
587236:  VMOV.F32        S2, #-1.0
58723A:  VLDR            S6, =0.0078125
58723E:  VCVT.F32.S32    S0, S0
587242:  VMOV.F32        S4, #1.0
587246:  IT NE
587248:  VMOVNE.F32      S24, S2
58724C:  VABS.F32        S2, S0
587250:  VMUL.F32        S0, S0, S6
587254:  VCMPE.F32       S2, S4
587258:  VMRS            APSR_nzcv, FPSCR
58725C:  IT GT
58725E:  VMOVGT.F32      S24, S0
587262:  B               loc_587278
587264:  DCFS 0.0078125
587268:  DCFS 0.0
58726C:  DCFS 1500.0
587270:  DCFS -1000.0
587274:  VLDR            S24, =0.0
587278:  LDR.W           R0, [R11,#0x38C]
58727C:  LDRB.W          R1, [R11,#0x42F]
587280:  VLDR            S16, [R0,#0x20]
587284:  LSLS            R1, R1, #0x1B
587286:  BPL             loc_5872C0
587288:  VLDR            S18, [R0,#0x2C]
58728C:  VDIV.F32        S0, S16, S18
587290:  VMOV            R0, S0; x
587294:  BLX             asinf
587298:  VMOV.F32        S0, #0.25
58729C:  VMOV            S2, R0
5872A0:  VMUL.F32        S0, S2, S0
5872A4:  VMOV            R0, S0; x
5872A8:  BLX             sinf
5872AC:  VMOV            S0, R0
5872B0:  VMUL.F32        S0, S18, S0
5872B4:  VDIV.F32        S0, S0, S16
5872B8:  VMUL.F32        S22, S22, S0
5872BC:  VMUL.F32        S26, S26, S0
5872C0:  LDR.W           R0, [R11,#0x14]
5872C4:  VLDR            S12, [R11,#0x94]
5872C8:  VLDR            S6, [R0,#0x20]
5872CC:  VLDR            S8, [R0,#0x24]
5872D0:  VLDR            S10, [R0,#0x28]
5872D4:  VMUL.F32        S6, S26, S6
5872D8:  VMUL.F32        S8, S26, S8
5872DC:  VLDR            S0, [R0,#0x10]
5872E0:  VMUL.F32        S10, S26, S10
5872E4:  VLDR            S2, [R0,#0x14]
5872E8:  VLDR            S4, [R0,#0x18]
5872EC:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5872F4)
5872F0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5872F2:  VMUL.F32        S6, S6, S16
5872F6:  VMUL.F32        S8, S8, S16
5872FA:  LDR             R4, [R0]; CTimer::ms_fTimeStep ...
5872FC:  VMUL.F32        S10, S10, S16
587300:  MOV             R0, R11
587302:  VMUL.F32        S6, S6, S12
587306:  VMUL.F32        S8, S8, S12
58730A:  VMUL.F32        S10, S10, S12
58730E:  VLDR            S12, [R4]
587312:  VMUL.F32        S6, S6, S12
587316:  VMUL.F32        S8, S8, S12
58731A:  VMUL.F32        S10, S10, S12
58731E:  VMOV            R1, S6
587322:  VLDR            S6, [SP,#0xA0+var_6C]
587326:  VMOV            R2, S8
58732A:  VLDR            S8, [SP,#0xA0+var_68]
58732E:  VMOV            R3, S10
587332:  VLDR            S10, [SP,#0xA0+var_64]
587336:  VADD.F32        S0, S0, S6
58733A:  VADD.F32        S4, S4, S10
58733E:  VADD.F32        S2, S2, S8
587342:  VSTR            S0, [SP,#0xA0+var_A0]
587346:  VSTR            S2, [SP,#0xA0+var_9C]
58734A:  VSTR            S4, [SP,#0xA0+var_98]
58734E:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
587352:  LDR.W           R0, [R11,#0x14]
587356:  VLDR            S6, [R0,#0x20]
58735A:  VLDR            S8, [R0,#0x24]
58735E:  VLDR            S10, [R0,#0x28]
587362:  VMUL.F32        S6, S22, S6
587366:  VMUL.F32        S8, S22, S8
58736A:  VLDR            S0, [R0]
58736E:  VMUL.F32        S10, S22, S10
587372:  VLDR            S2, [R0,#4]
587376:  VLDR            S4, [R0,#8]
58737A:  LDR.W           R0, [R11,#0x38C]
58737E:  VLDR            S12, [R0,#0x18]
587382:  MOV             R0, R11
587384:  VMUL.F32        S6, S6, S12
587388:  VMUL.F32        S8, S8, S12
58738C:  VMUL.F32        S10, S10, S12
587390:  VLDR            S12, [R11,#0x94]
587394:  VMUL.F32        S6, S6, S12
587398:  VMUL.F32        S8, S8, S12
58739C:  VMUL.F32        S10, S10, S12
5873A0:  VLDR            S12, [R4]
5873A4:  VMUL.F32        S6, S6, S12
5873A8:  VMUL.F32        S8, S8, S12
5873AC:  VMUL.F32        S10, S10, S12
5873B0:  VMOV            R1, S6
5873B4:  VLDR            S6, [SP,#0xA0+var_6C]
5873B8:  VMOV            R2, S8
5873BC:  VLDR            S8, [SP,#0xA0+var_68]
5873C0:  VMOV            R3, S10
5873C4:  VLDR            S10, [SP,#0xA0+var_64]
5873C8:  VADD.F32        S0, S0, S6
5873CC:  VADD.F32        S4, S4, S10
5873D0:  VADD.F32        S2, S2, S8
5873D4:  VSTR            S0, [SP,#0xA0+var_A0]
5873D8:  VSTR            S2, [SP,#0xA0+var_9C]
5873DC:  VSTR            S4, [SP,#0xA0+var_98]
5873E0:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
5873E4:  LDR.W           R0, [R11,#0x14]
5873E8:  VLDR            S0, [R0]
5873EC:  VLDR            S2, [R0,#4]
5873F0:  VMUL.F32        S8, S20, S0
5873F4:  VLDR            S4, [R0,#8]
5873F8:  VMUL.F32        S6, S29, S2
5873FC:  LDR.W           R0, [R11,#0x38C]
587400:  VMUL.F32        S10, S31, S4
587404:  VADD.F32        S6, S8, S6
587408:  VADD.F32        S16, S6, S10
58740C:  VLDR            S6, [R0,#0x14]
587410:  MOV             R0, R11
587412:  VNMUL.F32       S6, S16, S6
587416:  VABS.F32        S18, S16
58741A:  VMUL.F32        S6, S18, S6
58741E:  VMUL.F32        S0, S0, S6
587422:  VMUL.F32        S2, S2, S6
587426:  VMUL.F32        S4, S4, S6
58742A:  VLDR            S6, [R11,#0x90]
58742E:  VMUL.F32        S0, S6, S0
587432:  VMUL.F32        S2, S6, S2
587436:  VMUL.F32        S4, S6, S4
58743A:  VLDR            S6, [R4]
58743E:  VMUL.F32        S0, S6, S0
587442:  VMUL.F32        S2, S6, S2
587446:  VMUL.F32        S4, S6, S4
58744A:  VMOV            R1, S0
58744E:  VMOV            R2, S2
587452:  VMOV            R3, S4
587456:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
58745A:  LDR.W           R0, [R11,#0x38C]
58745E:  VLDR            S2, [R0,#0x10]
587462:  VLDR            S0, [R0,#0xC]
587466:  VMUL.F32        S2, S2, S16
58746A:  LDR.W           R0, [R11,#0x14]
58746E:  VMUL.F32        S0, S24, S0
587472:  VLDR            S4, [R0,#4]
587476:  VLDR            S6, [R0,#8]
58747A:  VLDR            S8, [R0,#0x10]
58747E:  VLDR            S10, [R0,#0x14]
587482:  VMUL.F32        S2, S18, S2
587486:  VLDR            S12, [R0,#0x18]
58748A:  VSUB.F32        S0, S0, S2
58748E:  VLDR            S2, [R11,#0x94]
587492:  VMUL.F32        S0, S2, S0
587496:  VLDR            S2, [R4]
58749A:  VMUL.F32        S0, S2, S0
58749E:  VLDR            S2, [R0]
5874A2:  MOV             R0, R11
5874A4:  VMUL.F32        S2, S2, S0
5874A8:  VMUL.F32        S4, S4, S0
5874AC:  VMUL.F32        S0, S6, S0
5874B0:  VMOV            R1, S2
5874B4:  VLDR            S2, [SP,#0xA0+var_68]
5874B8:  VMOV            R2, S4
5874BC:  VLDR            S4, [SP,#0xA0+var_64]
5874C0:  VMOV            R3, S0
5874C4:  VLDR            S0, [SP,#0xA0+var_6C]
5874C8:  VSUB.F32        S4, S4, S12
5874CC:  VSUB.F32        S0, S0, S8
5874D0:  VSUB.F32        S2, S2, S10
5874D4:  VSTR            S0, [SP,#0xA0+var_A0]
5874D8:  VSTR            S2, [SP,#0xA0+var_9C]
5874DC:  VSTR            S4, [SP,#0xA0+var_98]
5874E0:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
5874E4:  LDR.W           R0, [R11,#0x14]
5874E8:  VLDR            S6, [R0,#0x10]
5874EC:  VLDR            S8, [R0,#0x14]
5874F0:  VLDR            S10, [R0,#0x18]
5874F4:  VMUL.F32        S6, S24, S6
5874F8:  VMUL.F32        S8, S24, S8
5874FC:  VLDR            S0, [R0]
587500:  VMUL.F32        S10, S24, S10
587504:  VLDR            S2, [R0,#4]
587508:  VLDR            S4, [R0,#8]
58750C:  LDR.W           R0, [R11,#0x38C]
587510:  VLDR            S12, [R0,#0xC]
587514:  MOV             R0, R11
587516:  VMUL.F32        S6, S6, S12
58751A:  VMUL.F32        S8, S8, S12
58751E:  VMUL.F32        S10, S10, S12
587522:  VLDR            S12, [R11,#0x94]
587526:  VMUL.F32        S6, S6, S12
58752A:  VMUL.F32        S8, S8, S12
58752E:  VMUL.F32        S10, S10, S12
587532:  VLDR            S12, [R4]
587536:  VMUL.F32        S6, S6, S12
58753A:  VMUL.F32        S8, S8, S12
58753E:  VMUL.F32        S10, S10, S12
587542:  VMOV            R1, S6
587546:  VLDR            S6, [SP,#0xA0+var_6C]
58754A:  VMOV            R2, S8
58754E:  VLDR            S8, [SP,#0xA0+var_68]
587552:  VMOV            R3, S10
587556:  VLDR            S10, [SP,#0xA0+var_64]
58755A:  VADD.F32        S0, S0, S6
58755E:  VADD.F32        S4, S4, S10
587562:  VADD.F32        S2, S2, S8
587566:  VSTR            S0, [SP,#0xA0+var_A0]
58756A:  VSTR            S2, [SP,#0xA0+var_9C]
58756E:  VSTR            S4, [SP,#0xA0+var_98]
587572:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
587576:  B               loc_5875D0
587578:  VLDR            S12, =1500.0
58757C:  VCMPE.F32       S4, S12
587580:  VMRS            APSR_nzcv, FPSCR
587584:  ITTT GE
587586:  VLDRGE          S8, =-1000.0
58758A:  VADDGE.F32      S4, S4, S8
58758E:  VADDGE.F32      S8, S4, S10
587592:  VDIV.F32        S4, S8, S6
587596:  VADD.F32        S4, S4, S26
58759A:  VMUL.F32        S4, S4, S24
58759E:  VMUL.F32        S2, S4, S2
5875A2:  VMUL.F32        S6, S2, S0
5875A6:  VLDR            S0, [R4,#0x20]
5875AA:  MOV             R0, R11
5875AC:  VLDR            S2, [R4,#0x24]
5875B0:  VLDR            S4, [R4,#0x28]
5875B4:  VMUL.F32        S0, S6, S0
5875B8:  VMUL.F32        S2, S6, S2
5875BC:  VMUL.F32        S4, S6, S4
5875C0:  VMOV            R1, S0
5875C4:  VMOV            R2, S2
5875C8:  VMOV            R3, S4
5875CC:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
5875D0:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5875E0)
5875D4:  ADD.W           R10, R11, #0x54 ; 'T'
5875D8:  LDR.W           R1, [R11,#0x38C]
5875DC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5875DE:  ADD.W           R9, R1, #0x40 ; '@'
5875E2:  MOV             R1, R10; CMatrix *
5875E4:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5875E6:  LDM.W           R9, {R5,R6,R9}
5875EA:  LDR.W           R2, [R11,#0x14]
5875EE:  LDR             R4, [R0]; CTimer::ms_fTimeStep
5875F0:  ADD             R0, SP, #0xA0+var_78; CVector *
5875F2:  BLX             j__Z11Multiply3x3RK7CVectorRK7CMatrix; Multiply3x3(CVector const&,CMatrix const&)
5875F6:  MOV             R0, R5; x
5875F8:  MOV             R1, R4; y
5875FA:  BLX             powf
5875FE:  MOV             R5, R0
587600:  MOV             R0, R6; x
587602:  MOV             R1, R4; y
587604:  BLX             powf
587608:  MOV             R6, R0
58760A:  MOV             R0, R9; x
58760C:  MOV             R1, R4; y
58760E:  BLX             powf
587612:  MOV             R9, R0
587614:  SUB.W           R0, R8, #3
587618:  CMP             R0, #2
58761A:  BHI             loc_587646
58761C:  VLDR            S0, [R11,#0x48]
587620:  VLDR            S2, [R11,#0x4C]
587624:  VMUL.F32        S0, S0, S0
587628:  VLDR            S4, [R11,#0x50]
58762C:  VMUL.F32        S2, S2, S2
587630:  VMUL.F32        S4, S4, S4
587634:  VADD.F32        S0, S0, S2
587638:  VADD.F32        S0, S0, S4
58763C:  VSQRT.F32       S0, S0
587640:  VADD.F32        S16, S0, S0
587644:  B               loc_5876B8
587646:  CMP.W           R8, #8
58764A:  IT NE
58764C:  CMPNE.W         R8, #6
587650:  BEQ             loc_587686
587652:  CMP.W           R8, #1
587656:  BNE             loc_5876B4
587658:  VLDR            S0, [R11,#0x48]
58765C:  VLDR            S2, [R11,#0x4C]
587660:  VMUL.F32        S0, S0, S0
587664:  VLDR            S4, [R11,#0x50]
587668:  VMUL.F32        S2, S2, S2
58766C:  VMUL.F32        S4, S4, S4
587670:  VADD.F32        S0, S0, S2
587674:  VMOV.F32        S2, #6.0
587678:  VADD.F32        S0, S0, S4
58767C:  VSQRT.F32       S0, S0
587680:  VMUL.F32        S16, S0, S2
587684:  B               loc_5876B8
587686:  VLDR            S0, [R11,#0x48]
58768A:  VLDR            S2, [R11,#0x4C]
58768E:  VMUL.F32        S0, S0, S0
587692:  VLDR            S4, [R11,#0x50]
587696:  VMUL.F32        S2, S2, S2
58769A:  VMUL.F32        S4, S4, S4
58769E:  VADD.F32        S0, S0, S2
5876A2:  VMOV.F32        S2, #1.0
5876A6:  VADD.F32        S0, S0, S4
5876AA:  VSQRT.F32       S0, S0
5876AE:  VADD.F32        S16, S0, S2
5876B2:  B               loc_5876B8
5876B4:  VMOV.F32        S16, #1.0
5876B8:  LDR.W           R4, [R11,#0x38C]
5876BC:  VMOV            S0, R5
5876C0:  VLDR            S2, [R4,#0x4C]
5876C4:  VCMPE.F32       S2, #0.0
5876C8:  VMRS            APSR_nzcv, FPSCR
5876CC:  BLE             loc_587704
5876CE:  VLDR            S18, [SP,#0xA0+var_78]
5876D2:  VMOV.F32        S4, #1.0
5876D6:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5876E0)
5876D8:  VMUL.F32        S2, S2, S18
5876DC:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5876DE:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
5876E0:  LDR             R1, [R1]; y
5876E2:  VMUL.F32        S2, S18, S2
5876E6:  VADD.F32        S2, S2, S4
5876EA:  VDIV.F32        S0, S0, S2
5876EE:  VMOV            R0, S0; x
5876F2:  BLX             powf
5876F6:  VMOV            S0, R0
5876FA:  VMUL.F32        S0, S18, S0
5876FE:  VSUB.F32        S18, S0, S18
587702:  B               loc_587722
587704:  VMOV            R1, S16; y
587708:  MOV             R0, R5; x
58770A:  BLX             powf
58770E:  VLDR            S0, [SP,#0xA0+var_78]
587712:  VMOV            S2, R0
587716:  VLDR            S18, =0.0
58771A:  VMUL.F32        S0, S2, S0
58771E:  VSTR            S0, [SP,#0xA0+var_78]
587722:  VLDR            S2, [R4,#0x50]
587726:  VMOV            S0, R6
58772A:  VCMPE.F32       S2, #0.0
58772E:  VMRS            APSR_nzcv, FPSCR
587732:  BLE             loc_58776A
587734:  VLDR            S20, [SP,#0xA0+var_74]
587738:  VMOV.F32        S4, #1.0
58773C:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x587746)
58773E:  VMUL.F32        S2, S2, S20
587742:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
587744:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
587746:  LDR             R1, [R1]; y
587748:  VMUL.F32        S2, S20, S2
58774C:  VADD.F32        S2, S2, S4
587750:  VDIV.F32        S0, S0, S2
587754:  VMOV            R0, S0; x
587758:  BLX             powf
58775C:  VMOV            S0, R0
587760:  VMUL.F32        S0, S20, S0
587764:  VSUB.F32        S22, S0, S20
587768:  B               loc_587788
58776A:  VMOV            R1, S16; y
58776E:  MOV             R0, R6; x
587770:  BLX             powf
587774:  VLDR            S0, [SP,#0xA0+var_74]
587778:  VMOV            S2, R0
58777C:  VLDR            S22, =0.0
587780:  VMUL.F32        S0, S2, S0
587784:  VSTR            S0, [SP,#0xA0+var_74]
587788:  VLDR            S2, [R4,#0x54]
58778C:  VMOV            S0, R9
587790:  VCMPE.F32       S2, #0.0
587794:  VMRS            APSR_nzcv, FPSCR
587798:  BLE             loc_5877D0
58779A:  VLDR            S20, [SP,#0xA0+var_70]
58779E:  VMOV.F32        S4, #1.0
5877A2:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5877AC)
5877A4:  VMUL.F32        S2, S2, S20
5877A8:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5877AA:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
5877AC:  LDR             R1, [R1]; y
5877AE:  VMUL.F32        S2, S20, S2
5877B2:  VADD.F32        S2, S2, S4
5877B6:  VDIV.F32        S0, S0, S2
5877BA:  VMOV            R0, S0; x
5877BE:  BLX             powf
5877C2:  VMOV            S0, R0
5877C6:  VMUL.F32        S0, S20, S0
5877CA:  VSUB.F32        S20, S0, S20
5877CE:  B               loc_5877EE
5877D0:  VMOV            R1, S16; y
5877D4:  MOV             R0, R9; x
5877D6:  BLX             powf
5877DA:  VLDR            S0, [SP,#0xA0+var_70]
5877DE:  VMOV            S2, R0
5877E2:  VLDR            S20, =0.0
5877E6:  VMUL.F32        S0, S2, S0
5877EA:  VSTR            S0, [SP,#0xA0+var_70]
5877EE:  LDR.W           R1, [R11,#0x14]; CVector *
5877F2:  ADD             R0, SP, #0xA0+var_88; CMatrix *
5877F4:  ADD             R2, SP, #0xA0+var_78
5877F6:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
5877FA:  VMUL.F32        S0, S16, S18
5877FE:  VLDR            D16, [SP,#0xA0+var_88]
587802:  VMUL.F32        S18, S16, S22
587806:  LDR             R0, [SP,#0xA0+var_80]
587808:  STR.W           R0, [R10,#8]
58780C:  VSTR            D16, [R10]
587810:  VCMP.F32        S0, #0.0
587814:  VMRS            APSR_nzcv, FPSCR
587818:  BEQ             loc_587894
58781A:  LDR.W           R0, [R11,#0x14]
58781E:  VLDR            S2, [R0,#0x10]
587822:  VLDR            S4, [R0,#0x14]
587826:  VLDR            S6, [R0,#0x18]
58782A:  VMUL.F32        S2, S0, S2
58782E:  VMUL.F32        S4, S0, S4
587832:  VLDR            S8, [R0,#0x20]
587836:  VMUL.F32        S0, S0, S6
58783A:  VLDR            S6, [R11,#0x94]
58783E:  VLDR            S10, [R0,#0x24]
587842:  VMUL.F32        S2, S2, S6
587846:  VMUL.F32        S4, S4, S6
58784A:  VMUL.F32        S0, S0, S6
58784E:  VLDR            S6, [R0,#0x28]
587852:  MOV             R0, R11
587854:  VMOV            R1, S2
587858:  VLDR            S2, [SP,#0xA0+var_68]
58785C:  VMOV            R2, S4
587860:  VLDR            S4, [SP,#0xA0+var_64]
587864:  VMOV            R3, S0
587868:  VLDR            S0, [SP,#0xA0+var_6C]
58786C:  VADD.F32        S4, S6, S4
587870:  VADD.F32        S0, S8, S0
587874:  VADD.F32        S2, S10, S2
587878:  VSTR            S0, [SP,#0xA0+var_A0]
58787C:  VSTR            S2, [SP,#0xA0+var_9C]
587880:  VSTR            S4, [SP,#0xA0+var_98]
587884:  EOR.W           R1, R1, #0x80000000
587888:  EOR.W           R2, R2, #0x80000000
58788C:  EOR.W           R3, R3, #0x80000000
587890:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
587894:  VMUL.F32        S16, S16, S20
587898:  VCMP.F32        S18, #0.0
58789C:  VMRS            APSR_nzcv, FPSCR
5878A0:  BEQ             loc_58791C
5878A2:  LDR.W           R0, [R11,#0x14]
5878A6:  VLDR            S12, [R11,#0x94]
5878AA:  VLDR            S6, [R0,#0x20]
5878AE:  VLDR            S8, [R0,#0x24]
5878B2:  VLDR            S10, [R0,#0x28]
5878B6:  VMUL.F32        S6, S18, S6
5878BA:  VMUL.F32        S8, S18, S8
5878BE:  VLDR            S0, [R0]
5878C2:  VMUL.F32        S10, S18, S10
5878C6:  VLDR            S2, [R0,#4]
5878CA:  VLDR            S4, [R0,#8]
5878CE:  VMUL.F32        S6, S6, S12
5878D2:  VMUL.F32        S8, S8, S12
5878D6:  VMUL.F32        S10, S10, S12
5878DA:  VMOV            R0, S6
5878DE:  VLDR            S6, [SP,#0xA0+var_6C]
5878E2:  VMOV            R2, S8
5878E6:  VLDR            S8, [SP,#0xA0+var_68]
5878EA:  VMOV            R3, S10
5878EE:  VLDR            S10, [SP,#0xA0+var_64]
5878F2:  VADD.F32        S0, S0, S6
5878F6:  VADD.F32        S4, S4, S10
5878FA:  VADD.F32        S2, S2, S8
5878FE:  VSTR            S0, [SP,#0xA0+var_A0]
587902:  VSTR            S2, [SP,#0xA0+var_9C]
587906:  VSTR            S4, [SP,#0xA0+var_98]
58790A:  EOR.W           R1, R0, #0x80000000
58790E:  MOV             R0, R11
587910:  EOR.W           R2, R2, #0x80000000
587914:  EOR.W           R3, R3, #0x80000000
587918:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
58791C:  VCMP.F32        S16, #0.0
587920:  VMRS            APSR_nzcv, FPSCR
587924:  BEQ             loc_5879A0
587926:  LDR.W           R0, [R11,#0x14]
58792A:  VLDR            S8, [R11,#0x94]
58792E:  VLDR            S0, [R0]
587932:  VLDR            S2, [R0,#4]
587936:  VLDR            S4, [R0,#8]
58793A:  VMUL.F32        S0, S16, S0
58793E:  VMUL.F32        S2, S16, S2
587942:  VLDR            S6, [R0,#0x10]
587946:  VMUL.F32        S4, S16, S4
58794A:  VLDR            S10, [R0,#0x14]
58794E:  VMUL.F32        S0, S0, S8
587952:  VMUL.F32        S2, S2, S8
587956:  VMUL.F32        S4, S4, S8
58795A:  VLDR            S8, [R0,#0x18]
58795E:  MOV             R0, R11
587960:  VMOV            R1, S0
587964:  VLDR            S0, [SP,#0xA0+var_6C]
587968:  VMOV            R2, S2
58796C:  VLDR            S2, [SP,#0xA0+var_68]
587970:  VMOV            R3, S4
587974:  VLDR            S4, [SP,#0xA0+var_64]
587978:  VADD.F32        S0, S6, S0
58797C:  VADD.F32        S4, S8, S4
587980:  VADD.F32        S2, S10, S2
587984:  VSTR            S0, [SP,#0xA0+var_A0]
587988:  VSTR            S2, [SP,#0xA0+var_9C]
58798C:  VSTR            S4, [SP,#0xA0+var_98]
587990:  EOR.W           R1, R1, #0x80000000
587994:  EOR.W           R2, R2, #0x80000000
587998:  EOR.W           R3, R3, #0x80000000
58799C:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
5879A0:  VLDR            S0, [R11,#0x48]
5879A4:  VLDR            S4, [R11,#0x4C]
5879A8:  VMUL.F32        S8, S0, S0
5879AC:  VLDR            S2, [R11,#0x50]
5879B0:  VMUL.F32        S6, S4, S4
5879B4:  VMUL.F32        S10, S2, S2
5879B8:  VADD.F32        S6, S8, S6
5879BC:  VMOV.F32        S8, #2.25
5879C0:  VADD.F32        S6, S6, S10
5879C4:  VCMPE.F32       S6, S8
5879C8:  VMRS            APSR_nzcv, FPSCR
5879CC:  BLE             loc_587A02
5879CE:  VSQRT.F32       S6, S6
5879D2:  VMOV.F32        S8, #1.0
5879D6:  VDIV.F32        S6, S8, S6
5879DA:  VMOV.F32        S8, #1.5
5879DE:  VMUL.F32        S4, S4, S8
5879E2:  VMUL.F32        S0, S0, S8
5879E6:  VMUL.F32        S2, S2, S8
5879EA:  VMUL.F32        S4, S4, S6
5879EE:  VMUL.F32        S0, S0, S6
5879F2:  VMUL.F32        S2, S2, S6
5879F6:  VSTR            S0, [R11,#0x48]
5879FA:  VSTR            S4, [R11,#0x4C]
5879FE:  VSTR            S2, [R11,#0x50]
587A02:  VLDR            S0, [R11,#0x54]
587A06:  VLDR            S4, [R11,#0x58]
587A0A:  VMUL.F32        S8, S0, S0
587A0E:  VLDR            S2, [R11,#0x5C]
587A12:  VMUL.F32        S6, S4, S4
587A16:  VMUL.F32        S10, S2, S2
587A1A:  VADD.F32        S6, S8, S6
587A1E:  VLDR            S8, =0.04
587A22:  VADD.F32        S6, S6, S10
587A26:  VCMPE.F32       S6, S8
587A2A:  VMRS            APSR_nzcv, FPSCR
587A2E:  BLE             loc_587A64
587A30:  VSQRT.F32       S6, S6
587A34:  VMOV.F32        S8, #1.0
587A38:  VDIV.F32        S6, S8, S6
587A3C:  VLDR            S8, =0.2
587A40:  VMUL.F32        S4, S4, S8
587A44:  VMUL.F32        S0, S0, S8
587A48:  VMUL.F32        S2, S2, S8
587A4C:  VMUL.F32        S4, S4, S6
587A50:  VMUL.F32        S0, S0, S6
587A54:  VMUL.F32        S2, S2, S6
587A58:  VSTR            S0, [R11,#0x54]
587A5C:  VSTR            S4, [R11,#0x58]
587A60:  VSTR            S2, [R11,#0x5C]
587A64:  ADD             SP, SP, #0x40 ; '@'
587A66:  VPOP            {D8-D15}
587A6A:  ADD             SP, SP, #4
587A6C:  POP.W           {R8-R11}
587A70:  POP             {R4-R7,PC}
