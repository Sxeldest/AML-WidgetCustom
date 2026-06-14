; =========================================================
; Game Engine Function: _ZN29CTaskComplexProstituteSolicit13CreateSubTaskEiP4CPed
; Address            : 0x51B6B0 - 0x51B8F2
; =========================================================

51B6B0:  PUSH            {R4-R7,LR}
51B6B2:  ADD             R7, SP, #0xC
51B6B4:  PUSH.W          {R11}
51B6B8:  SUB             SP, SP, #0x88
51B6BA:  MOV             R6, R2
51B6BC:  MOV             R5, R0
51B6BE:  MOVS            R4, #0
51B6C0:  CMP.W           R1, #0x2D4
51B6C4:  BGT             loc_51B6FA
51B6C6:  CMP             R1, #0xCB
51B6C8:  BEQ             loc_51B734
51B6CA:  CMP.W           R1, #0x2BC
51B6CE:  BEQ             loc_51B752
51B6D0:  CMP.W           R1, #0x2C0
51B6D4:  BNE.W           loc_51B8E8
51B6D8:  MOVS            R0, #dword_34; this
51B6DA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51B6DE:  MOV             R4, R0
51B6E0:  LDR             R0, [R5,#0xC]
51B6E2:  MOVS            R2, #1
51B6E4:  MOVS            R3, #0; int
51B6E6:  LDR.W           R1, [R0,#0x590]; CVehicle *
51B6EA:  MOVS            R0, #0
51B6EC:  STRD.W          R2, R0, [SP,#0x98+var_98]; bool
51B6F0:  MOV             R0, R4; this
51B6F2:  MOVS            R2, #0; int
51B6F4:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
51B6F8:  B               loc_51B8E8
51B6FA:  MOVW            R0, #0x2D5
51B6FE:  CMP             R1, R0
51B700:  BEQ             loc_51B76C
51B702:  MOVW            R0, #0x38B
51B706:  CMP             R1, R0
51B708:  BEQ             loc_51B78E
51B70A:  CMP.W           R1, #0x398
51B70E:  BNE.W           loc_51B8E8
51B712:  MOVS            R0, #word_28; this
51B714:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51B718:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x51B722)
51B71A:  MOV             R4, R0
51B71C:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x51B724)
51B71E:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
51B720:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
51B722:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
51B724:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
51B726:  LDR             R1, [R5,#0xC]; CEntity *
51B728:  LDR             R3, [R3]; float
51B72A:  LDR             R2, [R0]; float
51B72C:  MOV             R0, R4; this
51B72E:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
51B732:  B               loc_51B8E8
51B734:  MOVS            R0, #dword_20; this
51B736:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51B73A:  MOV             R4, R0
51B73C:  MOV.W           R0, #0x41000000
51B740:  STR             R0, [SP,#0x98+var_98]; float
51B742:  MOV             R0, R4; this
51B744:  MOVW            R1, #0x1388; int
51B748:  MOVS            R2, #0; bool
51B74A:  MOVS            R3, #0; bool
51B74C:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
51B750:  B               loc_51B8E8
51B752:  MOVS            R0, #dword_50; this
51B754:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51B758:  MOV             R4, R0
51B75A:  LDR             R0, [R5,#0xC]
51B75C:  MOVS            R2, #8; int
51B75E:  MOVS            R3, #0; bool
51B760:  LDR.W           R1, [R0,#0x590]; CVehicle *
51B764:  MOV             R0, R4; this
51B766:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerC2EP8CVehicleib; CTaskComplexEnterCarAsPassenger::CTaskComplexEnterCarAsPassenger(CVehicle *,int,bool)
51B76A:  B               loc_51B8E8
51B76C:  LDRH            R0, [R5,#0x2C]
51B76E:  BIC.W           R0, R0, #3
51B772:  ORR.W           R0, R0, #1
51B776:  STRH            R0, [R5,#0x2C]
51B778:  MOVS            R0, #dword_24; this
51B77A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51B77E:  MOV             R4, R0
51B780:  LDR             R0, [R5,#0xC]
51B782:  LDR.W           R1, [R0,#0x590]; CVehicle *
51B786:  MOV             R0, R4; this
51B788:  BLX             j__ZN20CTaskComplexCarDriveC2EP8CVehicle; CTaskComplexCarDrive::CTaskComplexCarDrive(CVehicle *)
51B78C:  B               loc_51B8E8
51B78E:  MOVS            R0, #0
51B790:  ADD             R1, SP, #0x98+var_58; CMatrix *
51B792:  STRD.W          R0, R0, [SP,#0x98+var_18]
51B796:  LDR             R0, [R5,#0xC]
51B798:  LDR.W           R0, [R0,#0x590]
51B79C:  LDR             R0, [R0,#0x14]; CMatrix *
51B79E:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
51B7A2:  LDR             R0, [R5,#0xC]
51B7A4:  MOVS            R2, #0xA; int
51B7A6:  LDR.W           R1, [R0,#0x590]; CVehicle *
51B7AA:  ADD             R0, SP, #0x98+var_64; this
51B7AC:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
51B7B0:  LDR             R0, [R5,#0xC]
51B7B2:  MOVS            R2, #8; int
51B7B4:  LDR.W           R1, [R0,#0x590]; CVehicle *
51B7B8:  ADD             R0, SP, #0x98+var_70; this
51B7BA:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
51B7BE:  LDR             R0, [R6,#0x14]
51B7C0:  VLDR            S0, [SP,#0x98+var_70]
51B7C4:  ADD.W           R1, R0, #0x30 ; '0'
51B7C8:  CMP             R0, #0
51B7CA:  VLDR            S2, [SP,#0x98+var_6C]
51B7CE:  ADD             R0, SP, #0x98+var_90
51B7D0:  VLDR            S4, [SP,#0x98+var_68]
51B7D4:  IT EQ
51B7D6:  ADDEQ           R1, R6, #4
51B7D8:  VLDR            S6, [R1]
51B7DC:  VLDR            S8, [R1,#4]
51B7E0:  VLDR            S12, [SP,#0x98+var_64]
51B7E4:  VSUB.F32        S0, S6, S0
51B7E8:  VLDR            S14, [SP,#0x98+var_60]
51B7EC:  VSUB.F32        S2, S8, S2
51B7F0:  VSUB.F32        S6, S6, S12
51B7F4:  VLDR            S10, [R1,#8]
51B7F8:  VSUB.F32        S8, S8, S14
51B7FC:  VLDR            S1, [SP,#0x98+var_5C]
51B800:  VSUB.F32        S4, S10, S4
51B804:  ADD             R1, SP, #0x98+var_58
51B806:  VSUB.F32        S10, S10, S1
51B80A:  VMUL.F32        S0, S0, S0
51B80E:  VMUL.F32        S2, S2, S2
51B812:  VMUL.F32        S6, S6, S6
51B816:  VMUL.F32        S8, S8, S8
51B81A:  VMUL.F32        S4, S4, S4
51B81E:  VADD.F32        S0, S0, S2
51B822:  VMUL.F32        S2, S10, S10
51B826:  VADD.F32        S6, S6, S8
51B82A:  VADD.F32        S0, S0, S4
51B82E:  VADD.F32        S2, S6, S2
51B832:  VCMPE.F32       S2, S0
51B836:  VMRS            APSR_nzcv, FPSCR
51B83A:  ITE GE
51B83C:  ADDGE.W         R2, SP, #0x98+var_70
51B840:  ADDLT.W         R2, SP, #0x98+var_64
51B844:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
51B848:  LDR             R0, [SP,#0x98+var_88]
51B84A:  VLDR            D16, [SP,#0x98+var_90]
51B84E:  STR             R0, [SP,#0x98+var_78]
51B850:  MOVS            R0, #dword_58; this
51B852:  VSTR            D16, [SP,#0x98+var_80]
51B856:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51B85A:  MOV             R4, R0
51B85C:  LDR             R0, [R5,#0xC]
51B85E:  LDR.W           R5, [R0,#0x590]
51B862:  MOV             R0, R4; this
51B864:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51B868:  LDR             R1, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x51B874)
51B86A:  ADR             R2, dword_51B900
51B86C:  LDR             R0, =(_ZTV32CEntitySeekPosCalculatorXYOffset_ptr - 0x51B87A)
51B86E:  MOV             R6, R4
51B870:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr
51B872:  VLD1.64         {D16-D17}, [R2@128]
51B876:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorXYOffset_ptr
51B878:  ADD.W           R2, R4, #0x18
51B87C:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorXYOffset> ...
51B87E:  CMP             R5, #0
51B880:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorXYOffset ...
51B882:  ADD.W           R1, R1, #8
51B886:  VST1.32         {D16-D17}, [R2]
51B88A:  MOV.W           R2, #0x3E8
51B88E:  ADD.W           R0, R0, #8
51B892:  STR             R1, [R4]
51B894:  MOVW            R1, #0xC350
51B898:  STRD.W          R1, R2, [R4,#0x10]
51B89C:  MOV.W           R1, #0
51B8A0:  STRH            R1, [R4,#0x30]
51B8A2:  MOV.W           R2, #6
51B8A6:  STRH            R1, [R4,#0x3C]
51B8A8:  STRD.W          R1, R1, [R4,#0x28]
51B8AC:  STRD.W          R1, R1, [R4,#0x34]
51B8B0:  STR             R0, [R4,#0x40]
51B8B2:  LDRB.W          R0, [R4,#0x54]
51B8B6:  STRD.W          R1, R1, [R4,#0x48]
51B8BA:  STR             R2, [R4,#0x50]
51B8BC:  AND.W           R0, R0, #0xF0
51B8C0:  STRB.W          R0, [R4,#0x54]
51B8C4:  STR.W           R1, [R6,#0x44]!
51B8C8:  MOV             R1, R4
51B8CA:  STR.W           R5, [R1,#0xC]!; CEntity **
51B8CE:  ITT NE
51B8D0:  MOVNE           R0, R5; this
51B8D2:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51B8D6:  LDR             R0, [SP,#0x98+var_78]
51B8D8:  VLDR            D16, [SP,#0x98+var_80]
51B8DC:  STR             R0, [R6,#8]
51B8DE:  ADD             R0, SP, #0x98+var_58; this
51B8E0:  VSTR            D16, [R6]
51B8E4:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
51B8E8:  MOV             R0, R4
51B8EA:  ADD             SP, SP, #0x88
51B8EC:  POP.W           {R11}
51B8F0:  POP             {R4-R7,PC}
