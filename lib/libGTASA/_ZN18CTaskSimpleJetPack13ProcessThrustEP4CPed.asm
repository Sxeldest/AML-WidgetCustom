; =========================================================
; Game Engine Function: _ZN18CTaskSimpleJetPack13ProcessThrustEP4CPed
; Address            : 0x531724 - 0x531D10
; =========================================================

531724:  PUSH            {R4-R7,LR}
531726:  ADD             R7, SP, #0xC
531728:  PUSH.W          {R8-R11}
53172C:  SUB             SP, SP, #4
53172E:  VPUSH           {D8-D15}
531732:  MOV             R9, R0
531734:  MOV             R5, R1
531736:  LDRB.W          R0, [R9,#0xD]
53173A:  ADD.W           R10, R5, #0x4C ; 'L'
53173E:  VLDR            D8, [R5,#0x4C]
531742:  VLDR            S18, [R5,#0x48]
531746:  CMP             R0, #0
531748:  BEQ             loc_531812
53174A:  MOV             R11, R5
53174C:  VLDR            S20, =0.008
531750:  LDR.W           R0, [R11,#0x14]!
531754:  VLDR            S6, [R5,#0x90]
531758:  VLDR            S0, [R0,#0x20]
53175C:  VLDR            S2, [R0,#0x24]
531760:  VLDR            S4, [R0,#0x28]
531764:  VMUL.F32        S0, S0, S20
531768:  VMUL.F32        S2, S2, S20
53176C:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x531778)
531770:  VMUL.F32        S4, S4, S20
531774:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
531776:  LDR             R6, [R0]; CTimer::ms_fTimeStep ...
531778:  MOV             R0, R5
53177A:  VMUL.F32        S0, S0, S6
53177E:  VMUL.F32        S2, S2, S6
531782:  VMUL.F32        S4, S4, S6
531786:  VLDR            S6, [R6]
53178A:  VMUL.F32        S0, S0, S6
53178E:  VMUL.F32        S2, S2, S6
531792:  VMUL.F32        S4, S4, S6
531796:  VMOV            R1, S0
53179A:  VMOV            R2, S2
53179E:  VMOV            R3, S4
5317A2:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
5317A6:  LDR.W           R0, =(_ZN18CTaskSimpleJetPack11THRUST_STOPE_ptr - 0x5317B2)
5317AA:  VLDR            S0, [R5,#0x48]
5317AE:  ADD             R0, PC; _ZN18CTaskSimpleJetPack11THRUST_STOPE_ptr
5317B0:  VLDR            S2, [R5,#0x4C]
5317B4:  VMUL.F32        S10, S0, S0
5317B8:  VLDR            S4, [R5,#0x50]
5317BC:  LDR             R0, [R0]; CTaskSimpleJetPack::THRUST_STOP ...
5317BE:  VMUL.F32        S8, S2, S2
5317C2:  VLDR            S12, [R6]
5317C6:  VMUL.F32        S14, S4, S4
5317CA:  VLDR            S6, [R0]
5317CE:  VMUL.F32        S6, S6, S20
5317D2:  VADD.F32        S8, S10, S8
5317D6:  VMOV.F32        S10, #0.75
5317DA:  VMUL.F32        S6, S6, S12
5317DE:  VADD.F32        S8, S8, S14
5317E2:  VMUL.F32        S12, S6, S6
5317E6:  VMUL.F32        S10, S6, S10
5317EA:  VCMPE.F32       S12, S8
5317EE:  VMRS            APSR_nzcv, FPSCR
5317F2:  IT GT
5317F4:  VMOVGT.F32      S6, S10
5317F8:  VMUL.F32        S10, S6, S6
5317FC:  VCMPE.F32       S10, S8
531800:  VMRS            APSR_nzcv, FPSCR
531804:  BLE.W           loc_53197E
531808:  MOVS            R0, #0
53180A:  STRD.W          R0, R0, [R5,#0x48]
53180E:  STR             R0, [R5,#0x50]
531810:  B               loc_531AC2
531812:  LDR.W           R0, =(_ZN18CTaskSimpleJetPack14THRUST_NOMINALE_ptr - 0x531824)
531816:  VMOV.F32        S0, #0.5
53181A:  MOV             R11, R5
53181C:  VLDR            S20, =0.008
531820:  ADD             R0, PC; _ZN18CTaskSimpleJetPack14THRUST_NOMINALE_ptr
531822:  LDR.W           R1, [R11,#0x14]!
531826:  LDR             R0, [R0]; CTaskSimpleJetPack::THRUST_NOMINAL ...
531828:  VLDR            S4, [R1,#0x20]
53182C:  VLDR            S6, [R1,#0x24]
531830:  VLDR            S2, [R0]
531834:  VMUL.F32        S4, S4, S20
531838:  LDRSB.W         R0, [R9,#0xE]
53183C:  VMUL.F32        S0, S2, S0
531840:  VLDR            S8, [R1,#0x28]
531844:  CMP             R0, #0
531846:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x53184E)
53184A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
53184C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
53184E:  IT LT
531850:  VMOVLT.F32      S2, S0
531854:  VMUL.F32        S0, S6, S20
531858:  VMUL.F32        S6, S8, S20
53185C:  VMUL.F32        S4, S2, S4
531860:  VMUL.F32        S0, S2, S0
531864:  VMUL.F32        S2, S2, S6
531868:  VLDR            S6, [R5,#0x90]
53186C:  VMUL.F32        S4, S4, S6
531870:  VMUL.F32        S0, S0, S6
531874:  VMUL.F32        S2, S6, S2
531878:  VLDR            S6, [R0]
53187C:  MOV             R0, R5
53187E:  VMUL.F32        S4, S4, S6
531882:  VMUL.F32        S0, S0, S6
531886:  VMUL.F32        S2, S6, S2
53188A:  VMOV            R1, S4
53188E:  VMOV            R2, S0
531892:  VMOV            R3, S2
531896:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
53189A:  LDRSB.W         R0, [R9,#0xE]
53189E:  CMP             R0, #1
5318A0:  BLT.W           loc_531A40
5318A4:  MOV             R4, R11
5318A6:  LDR.W           R11, [R9,#0x14]
5318AA:  MOV             R0, R11; x
5318AC:  BLX             sinf
5318B0:  MOV             R8, R0
5318B2:  MOV             R0, R11; x
5318B4:  LDR             R6, [R5,#0x14]
5318B6:  BLX             cosf
5318BA:  LDR.W           R1, =(TheCamera_ptr - 0x5318CC)
5318BE:  ADD.W           R11, R5, #4
5318C2:  VMOV            S14, R0
5318C6:  CMP             R6, #0
5318C8:  ADD             R1, PC; TheCamera_ptr
5318CA:  VLDR            S8, [R6,#0x20]
5318CE:  VLDR            S10, [R6,#0x24]
5318D2:  VMOV            S0, R8
5318D6:  LDR             R0, [R1]; TheCamera ; this
5318D8:  MOV             R1, R11
5318DA:  VLDR            S2, [R6,#0x10]
5318DE:  VMUL.F32        S19, S14, S10
5318E2:  VLDR            S4, [R6,#0x14]
5318E6:  VMUL.F32        S23, S14, S8
5318EA:  VLDR            S6, [R6,#0x18]
5318EE:  VMUL.F32        S24, S2, S0
5318F2:  VLDR            S12, [R6,#0x28]
5318F6:  IT NE
5318F8:  ADDNE.W         R1, R6, #0x30 ; '0'
5318FC:  VLDR            S21, [R1,#8]
531900:  MOVS            R1, #2; unsigned int
531902:  VMUL.F32        S26, S6, S0
531906:  VMUL.F32        S30, S14, S12
53190A:  VMUL.F32        S22, S4, S0
53190E:  BLX             j__ZN7CCamera21CalculateGroundHeightEj; CCamera::CalculateGroundHeight(uint)
531912:  VLDR            S28, =100.0
531916:  VMOV            S0, R0
53191A:  VMOV.F32        S2, #0.75
53191E:  VSUB.F32        S4, S30, S26
531922:  VADD.F32        S0, S0, S28
531926:  VSUB.F32        S22, S19, S22
53192A:  VSUB.F32        S24, S23, S24
53192E:  VMIN.F32        D13, D2, D1
531932:  VCMPE.F32       S21, S0
531936:  VMRS            APSR_nzcv, FPSCR
53193A:  BLE             loc_5319D4
53193C:  LDR.W           R1, =(TheCamera_ptr - 0x531946)
531940:  LDR             R0, [R4]
531942:  ADD             R1, PC; TheCamera_ptr
531944:  CMP             R0, #0
531946:  IT NE
531948:  ADDNE.W         R11, R0, #0x30 ; '0'
53194C:  LDR             R0, [R1]; TheCamera ; this
53194E:  MOVS            R1, #2; unsigned int
531950:  VLDR            S30, [R11,#8]
531954:  BLX             j__ZN7CCamera21CalculateGroundHeightEj; CCamera::CalculateGroundHeight(uint)
531958:  VMOV            S0, R0
53195C:  VLDR            S4, =0.0
531960:  VMOV.F32        S2, #-20.0
531964:  VADD.F32        S0, S0, S28
531968:  VSUB.F32        S0, S30, S0
53196C:  VDIV.F32        S0, S0, S2
531970:  VMOV.F32        S2, #1.0
531974:  VADD.F32        S0, S0, S2
531978:  VMAX.F32        D0, D0, D2
53197C:  B               loc_5319D8
53197E:  VSQRT.F32       S8, S8
531982:  VMOV.F32        S10, #1.0
531986:  VDIV.F32        S8, S10, S8
53198A:  VMUL.F32        S0, S0, S8
53198E:  VMUL.F32        S2, S2, S8
531992:  VMUL.F32        S4, S4, S8
531996:  VMUL.F32        S0, S0, S6
53199A:  VMUL.F32        S2, S2, S6
53199E:  VMUL.F32        S4, S4, S6
5319A2:  VLDR            S6, [R5,#0x90]
5319A6:  VMUL.F32        S0, S0, S6
5319AA:  VMUL.F32        S2, S2, S6
5319AE:  VMUL.F32        S4, S4, S6
5319B2:  VMOV            R0, S0
5319B6:  VMOV            R2, S2
5319BA:  VMOV            R3, S4
5319BE:  EOR.W           R1, R0, #0x80000000
5319C2:  EOR.W           R2, R2, #0x80000000
5319C6:  EOR.W           R3, R3, #0x80000000
5319CA:  B               loc_531ABC
5319CC:  DCFS 0.008
5319D0:  DCFS 100.0
5319D4:  VMOV.F32        S0, #1.0
5319D8:  VMUL.F32        S2, S24, S20
5319DC:  LDR             R0, =(_ZN18CTaskSimpleJetPack11THRUST_FULLE_ptr - 0x5319EA)
5319DE:  VMUL.F32        S4, S22, S20
5319E2:  VMUL.F32        S6, S26, S20
5319E6:  ADD             R0, PC; _ZN18CTaskSimpleJetPack11THRUST_FULLE_ptr
5319E8:  LDR             R0, [R0]; CTaskSimpleJetPack::THRUST_FULL ...
5319EA:  VMUL.F32        S2, S2, S0
5319EE:  VMUL.F32        S4, S4, S0
5319F2:  VMUL.F32        S0, S6, S0
5319F6:  VLDR            S6, [R0]
5319FA:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x531A00)
5319FC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5319FE:  VMUL.F32        S2, S2, S6
531A02:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
531A04:  VMUL.F32        S4, S4, S6
531A08:  VMUL.F32        S0, S0, S6
531A0C:  VLDR            S6, [R5,#0x90]
531A10:  VMUL.F32        S2, S2, S6
531A14:  VMUL.F32        S4, S4, S6
531A18:  VMUL.F32        S0, S0, S6
531A1C:  VLDR            S6, [R0]
531A20:  MOV             R0, R5
531A22:  VMUL.F32        S2, S2, S6
531A26:  VMUL.F32        S4, S4, S6
531A2A:  VMUL.F32        S0, S0, S6
531A2E:  VMOV            R1, S2
531A32:  VMOV            R2, S4
531A36:  VMOV            R3, S0
531A3A:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
531A3E:  MOV             R11, R4
531A40:  VLDR            S0, [R9,#0x10]
531A44:  VCMP.F32        S0, #0.0
531A48:  VMRS            APSR_nzcv, FPSCR
531A4C:  BEQ             loc_531AC2
531A4E:  LDR             R0, [R5,#0x14]
531A50:  VLDR            S2, [R0]
531A54:  VLDR            S4, [R0,#4]
531A58:  VLDR            S6, [R0,#8]
531A5C:  VMUL.F32        S2, S0, S2
531A60:  VMUL.F32        S4, S0, S4
531A64:  LDR             R0, =(_ZN18CTaskSimpleJetPack13THRUST_STRAFEE_ptr - 0x531A6E)
531A66:  VMUL.F32        S0, S0, S6
531A6A:  ADD             R0, PC; _ZN18CTaskSimpleJetPack13THRUST_STRAFEE_ptr
531A6C:  LDR             R0, [R0]; CTaskSimpleJetPack::THRUST_STRAFE ...
531A6E:  VMUL.F32        S2, S2, S20
531A72:  VMUL.F32        S4, S4, S20
531A76:  VLDR            S6, [R0]
531A7A:  VMUL.F32        S0, S0, S20
531A7E:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x531A84)
531A80:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
531A82:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
531A84:  VMUL.F32        S2, S2, S6
531A88:  VMUL.F32        S4, S4, S6
531A8C:  VMUL.F32        S0, S6, S0
531A90:  VLDR            S6, [R5,#0x90]
531A94:  VMUL.F32        S2, S2, S6
531A98:  VMUL.F32        S4, S4, S6
531A9C:  VMUL.F32        S0, S6, S0
531AA0:  VLDR            S6, [R0]
531AA4:  VMUL.F32        S2, S2, S6
531AA8:  VMUL.F32        S4, S4, S6
531AAC:  VMUL.F32        S0, S6, S0
531AB0:  VMOV            R1, S2
531AB4:  VMOV            R2, S4
531AB8:  VMOV            R3, S0
531ABC:  MOV             R0, R5
531ABE:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
531AC2:  VLDR            S0, [R9,#0x30]
531AC6:  VLDR            S2, [R5,#0x48]
531ACA:  VLDR            D16, [R9,#0x34]
531ACE:  VSUB.F32        S0, S2, S0
531AD2:  VLDR            D17, [R10]
531AD6:  VSUB.F32        S2, S2, S18
531ADA:  LDR.W           R0, [R11]
531ADE:  VSUB.F32        D16, D17, D16
531AE2:  VLDR            S30, [R9,#0x18]
531AE6:  VSUB.F32        D17, D17, D8
531AEA:  LDR             R1, =(_ZN18CTaskSimpleJetPack22LEG_SWING_DELTA_V_MULTE_ptr - 0x531AF6)
531AEC:  VLDR            S4, [R0,#0x18]
531AF0:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x531B00)
531AF2:  ADD             R1, PC; _ZN18CTaskSimpleJetPack22LEG_SWING_DELTA_V_MULTE_ptr
531AF4:  LDR.W           R3, [R5,#0x484]
531AF8:  VADD.F32        D8, D17, D16
531AFC:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
531AFE:  VADD.F32        S18, S2, S0
531B02:  VLDR            S0, [R0,#0x10]
531B06:  VLDR            S2, [R0,#0x14]
531B0A:  VMOV            R0, S30; x
531B0E:  VLDR            S22, =0.0
531B12:  TST.W           R3, #3
531B16:  VLDR            S20, [R9,#0x24]
531B1A:  VMUL.F32        S2, S16, S2
531B1E:  LDR             R6, [R1]; CTaskSimpleJetPack::LEG_SWING_DELTA_V_MULT ...
531B20:  VMUL.F32        S4, S17, S4
531B24:  LDR             R4, [R2]; CTimer::ms_fTimeStep ...
531B26:  VMUL.F32        S0, S18, S0
531B2A:  VADD.F32        S0, S0, S2
531B2E:  VADD.F32        S19, S0, S4
531B32:  IT NE
531B34:  VMOVNE.F32      S19, S22
531B38:  BLX             sinf
531B3C:  LDR             R1, =(_ZN18CTaskSimpleJetPack22LEG_SWING_GRAVITY_MULTE_ptr - 0x531B4A)
531B3E:  VMOV            S0, R0
531B42:  VLDR            S24, [R4]
531B46:  ADD             R1, PC; _ZN18CTaskSimpleJetPack22LEG_SWING_GRAVITY_MULTE_ptr
531B48:  VLDR            S28, [R6]
531B4C:  VMOV            R8, S24
531B50:  LDR             R0, =(_ZN18CTaskSimpleJetPack19LEG_SWING_DAMP_FRACE_ptr - 0x531B5C)
531B52:  LDR             R1, [R1]; CTaskSimpleJetPack::LEG_SWING_GRAVITY_MULT ...
531B54:  VMUL.F32        S2, S28, S19
531B58:  ADD             R0, PC; _ZN18CTaskSimpleJetPack19LEG_SWING_DAMP_FRACE_ptr
531B5A:  VLDR            S26, [R1]
531B5E:  LDR             R0, [R0]; CTaskSimpleJetPack::LEG_SWING_DAMP_FRAC ...
531B60:  VMUL.F32        S0, S0, S26
531B64:  VSUB.F32        S2, S20, S2
531B68:  LDR             R0, [R0]; x
531B6A:  VMUL.F32        S0, S0, S24
531B6E:  MOV             R1, R8; y
531B70:  VSUB.F32        S19, S2, S0
531B74:  BLX             powf
531B78:  VMOV            S20, R0
531B7C:  LDR             R0, =(_ZN18CTaskSimpleJetPack19LEG_SWING_MAX_ANGLEE_ptr - 0x531B8E)
531B7E:  ADDW            R1, R5, #0x484
531B82:  ADD.W           R10, R9, #0x30 ; '0'
531B86:  VMUL.F32        S2, S20, S19
531B8A:  ADD             R0, PC; _ZN18CTaskSimpleJetPack19LEG_SWING_MAX_ANGLEE_ptr
531B8C:  ADD.W           R6, R5, #0x48 ; 'H'
531B90:  LDR             R0, [R0]; CTaskSimpleJetPack::LEG_SWING_MAX_ANGLE ...
531B92:  VMUL.F32        S0, S24, S2
531B96:  VSTR            S2, [R9,#0x24]
531B9A:  VADD.F32        S0, S30, S0
531B9E:  VSTR            S0, [R9,#0x18]
531BA2:  VLDR            S30, [R0]
531BA6:  VMOV.F32        S2, S30
531BAA:  VCMPE.F32       S0, S30
531BAE:  VMRS            APSR_nzcv, FPSCR
531BB2:  BLE             loc_531BBA
531BB4:  VSTR            S2, [R9,#0x18]
531BB8:  B               loc_531BCC
531BBA:  VNEG.F32        S2, S30
531BBE:  VCMPE.F32       S0, S2
531BC2:  VMRS            APSR_nzcv, FPSCR
531BC6:  IT LT
531BC8:  VSTRLT          S2, [R9,#0x18]
531BCC:  LDR.W           R0, [R11]
531BD0:  LDR             R1, [R1]
531BD2:  VLDR            S19, [R9,#0x28]
531BD6:  VLDR            S0, [R0]
531BDA:  TST.W           R1, #3
531BDE:  VLDR            D16, [R0,#4]
531BE2:  VMUL.F32        S0, S18, S0
531BE6:  VLDR            S18, [R9,#0x1C]
531BEA:  VMUL.F32        D1, D8, D16
531BEE:  VMOV            R0, S18; x
531BF2:  VADD.F32        S0, S0, S2
531BF6:  VADD.F32        S16, S0, S3
531BFA:  IT NE
531BFC:  VMOVNE.F32      S16, S22
531C00:  BLX             sinf
531C04:  VMOV            S0, R0
531C08:  VMUL.F32        S2, S28, S16
531C0C:  VMUL.F32        S0, S0, S26
531C10:  VSUB.F32        S2, S19, S2
531C14:  VMUL.F32        S0, S0, S24
531C18:  VSUB.F32        S0, S2, S0
531C1C:  VMUL.F32        S2, S20, S0
531C20:  VMUL.F32        S0, S24, S2
531C24:  VSTR            S2, [R9,#0x28]
531C28:  VADD.F32        S0, S18, S0
531C2C:  VCMPE.F32       S0, S30
531C30:  VSTR            S0, [R9,#0x1C]
531C34:  VMRS            APSR_nzcv, FPSCR
531C38:  BLE             loc_531C40
531C3A:  VSTR            S30, [R9,#0x1C]
531C3E:  B               loc_531C52
531C40:  VNEG.F32        S30, S30
531C44:  VCMPE.F32       S0, S30
531C48:  VMRS            APSR_nzcv, FPSCR
531C4C:  IT LT
531C4E:  VSTRLT          S30, [R9,#0x1C]
531C52:  VLDR            S0, [R9,#0x20]
531C56:  MOV             R1, R8; y
531C58:  LDR             R0, =(_ZN18CTaskSimpleJetPack19THRUST_MOVE_DAMPINGE_ptr - 0x531C62)
531C5A:  VMUL.F32        S0, S20, S0
531C5E:  ADD             R0, PC; _ZN18CTaskSimpleJetPack19THRUST_MOVE_DAMPINGE_ptr
531C60:  LDR             R0, [R0]; CTaskSimpleJetPack::THRUST_MOVE_DAMPING ...
531C62:  VSTR            S0, [R9,#0x20]
531C66:  VLDR            S16, [R5,#0x48]
531C6A:  VLDR            S18, [R5,#0x4C]
531C6E:  VMUL.F32        S2, S16, S16
531C72:  VLDR            S20, [R5,#0x50]
531C76:  VMUL.F32        S0, S18, S18
531C7A:  VMUL.F32        S4, S20, S20
531C7E:  VADD.F32        S0, S2, S0
531C82:  VLDR            S2, [R0]
531C86:  VADD.F32        S0, S0, S4
531C8A:  VMOV.F32        S4, #1.0
531C8E:  VSQRT.F32       S0, S0
531C92:  VMUL.F32        S0, S2, S0
531C96:  VSUB.F32        S0, S4, S0
531C9A:  VMOV            R0, S0; x
531C9E:  BLX             powf
531CA2:  VMOV            S0, R0
531CA6:  VMUL.F32        S2, S16, S0
531CAA:  VMUL.F32        S4, S18, S0
531CAE:  VMUL.F32        S0, S20, S0
531CB2:  VSTR            S2, [R5,#0x48]
531CB6:  VSTR            S4, [R5,#0x4C]
531CBA:  VSTR            S0, [R5,#0x50]
531CBE:  VLDR            D16, [R6]
531CC2:  LDR             R0, [R6,#8]
531CC4:  STR.W           R0, [R10,#8]
531CC8:  VSTR            D16, [R10]
531CCC:  LDRB.W          R0, [R9,#8]
531CD0:  CBZ             R0, loc_531CDE
531CD2:  VPOP            {D8-D15}
531CD6:  ADD             SP, SP, #4
531CD8:  POP.W           {R8-R11}
531CDC:  POP             {R4-R7,PC}
531CDE:  ADD.W           R5, R5, #0x13C
531CE2:  MOV             R0, R5; this
531CE4:  BLX             j__ZN17CAEPedAudioEntity13TurnOnJetPackEv; CAEPedAudioEntity::TurnOnJetPack(void)
531CE8:  LDRSB.W         R0, [R9,#0xE]
531CEC:  VMOV            S0, R0
531CF0:  MOV             R0, R5; this
531CF2:  VCVT.F32.S32    S0, S0
531CF6:  LDR.W           R2, [R9,#0x14]; x
531CFA:  VMOV            R1, S0; float
531CFE:  VPOP            {D8-D15}
531D02:  ADD             SP, SP, #4
531D04:  POP.W           {R8-R11}
531D08:  POP.W           {R4-R7,LR}
531D0C:  B.W             sub_19B2FC
