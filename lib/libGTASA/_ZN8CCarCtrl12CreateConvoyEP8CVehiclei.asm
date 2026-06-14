; =========================================================
; Game Engine Function: _ZN8CCarCtrl12CreateConvoyEP8CVehiclei
; Address            : 0x2EB86C - 0x2EBC42
; =========================================================

2EB86C:  PUSH            {R4-R7,LR}
2EB86E:  ADD             R7, SP, #0xC
2EB870:  PUSH.W          {R8-R11}
2EB874:  SUB             SP, SP, #4
2EB876:  VPUSH           {D8-D13}
2EB87A:  SUB             SP, SP, #0x80
2EB87C:  STR             R1, [SP,#0xD0+var_A8]
2EB87E:  MOV             R11, R0
2EB880:  BLX             rand
2EB884:  UXTH            R0, R0
2EB886:  VLDR            S2, =0.000015259
2EB88A:  VMOV            S0, R0
2EB88E:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2EB89E)
2EB890:  VMOV.F32        S4, #2.5
2EB894:  MOVS            R6, #3
2EB896:  VCVT.F32.S32    S0, S0
2EB89A:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2EB89C:  LDRH.W          R0, [R11,#0x26]
2EB8A0:  MOVS            R5, #0
2EB8A2:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
2EB8A4:  MOV             R4, R11
2EB8A6:  VLDR            S20, =1.0e9
2EB8AA:  SXTH            R2, R0
2EB8AC:  VLDR            S22, =0.0
2EB8B0:  LDR.W           R1, [R1,R2,LSL#2]
2EB8B4:  VLDR            S24, =0.02
2EB8B8:  VMUL.F32        S0, S0, S2
2EB8BC:  VLDR            S2, =100.0
2EB8C0:  LDR             R1, [R1,#0x2C]
2EB8C2:  VLDR            S16, [R1,#0x24]
2EB8C6:  LDRH.W          R1, [R11,#0x24]
2EB8CA:  VADD.F32        S6, S16, S16
2EB8CE:  VMUL.F32        S0, S0, S2
2EB8D2:  VADD.F32        S18, S6, S4
2EB8D6:  VCVT.S32.F32    S0, S0
2EB8DA:  STRH.W          R1, [R11,#0x462]
2EB8DE:  VMOV            R1, S0
2EB8E2:  CMP             R1, #0x33 ; '3'
2EB8E4:  ADD.W           R1, R11, #0x48 ; 'H'
2EB8E8:  IT LT
2EB8EA:  MOVLT           R6, #2
2EB8EC:  STR             R1, [SP,#0xD0+var_AC]
2EB8EE:  MOVS            R1, #1
2EB8F0:  STR             R6, [SP,#0xD0+var_9C]
2EB8F2:  STR             R1, [SP,#0xD0+var_B0]
2EB8F4:  MOVS            R1, #0
2EB8F6:  STR             R1, [SP,#0xD0+var_A4]
2EB8F8:  B               loc_2EB902
2EB8FA:  LDRH.W          R0, [R11,#0x26]
2EB8FE:  MOV             R5, R1
2EB900:  MOV             R4, R8
2EB902:  SXTH            R0, R0; this
2EB904:  MOVS            R1, #1; int
2EB906:  BLX             j__ZN8CCarCtrl32GetNewVehicleDependingOnCarModelEih; CCarCtrl::GetNewVehicleDependingOnCarModel(int,uchar)
2EB90A:  MOV             R8, R0
2EB90C:  CMP.W           R8, #0
2EB910:  BEQ             loc_2EBA0C
2EB912:  ADDS            R0, R5, #1
2EB914:  STR             R4, [SP,#0xD0+var_94]
2EB916:  STR             R5, [SP,#0xD0+var_A0]
2EB918:  ADD             R5, SP, #0xD0+var_8C
2EB91A:  VMOV            S0, R0
2EB91E:  STR             R0, [SP,#0xD0+var_98]
2EB920:  MOV             R6, R11
2EB922:  ADD.W           R9, SP, #0xD0+var_5C
2EB926:  VCVT.F32.S32    S0, S0
2EB92A:  LDR.W           R0, [R11,#0x14]
2EB92E:  MOV.W           R10, #1
2EB932:  MOVS            R4, #0
2EB934:  ADD.W           R1, R0, #0x30 ; '0'
2EB938:  CMP             R0, #0
2EB93A:  VLDR            S2, [R0,#0x10]
2EB93E:  MOV             R3, R5; int
2EB940:  VLDR            S4, [R0,#0x14]
2EB944:  VLDR            S6, [R0,#0x18]
2EB948:  IT EQ
2EB94A:  ADDEQ.W         R1, R11, #4
2EB94E:  VLDR            S8, [R1,#4]
2EB952:  ADD.W           R11, SP, #0xD0+var_88
2EB956:  VMUL.F32        S4, S4, S0
2EB95A:  VLDR            S10, [R1,#8]
2EB95E:  VMUL.F32        S2, S2, S0
2EB962:  MOV             R0, R9; CVector *
2EB964:  VMUL.F32        S0, S6, S0
2EB968:  VLDR            S6, [R1]
2EB96C:  MOVS            R1, #0
2EB96E:  MOV             R2, R11; int
2EB970:  MOVT            R1, #0x447A; int
2EB974:  STR.W           R10, [SP,#0xD0+var_D0]; int
2EB978:  VMUL.F32        S4, S18, S4
2EB97C:  VMUL.F32        S2, S18, S2
2EB980:  VMUL.F32        S0, S18, S0
2EB984:  VSUB.F32        S4, S8, S4
2EB988:  VSUB.F32        S2, S6, S2
2EB98C:  VSUB.F32        S0, S10, S0
2EB990:  VSTR            S4, [SP,#0xD0+var_58]
2EB994:  VSTR            S2, [SP,#0xD0+var_5C]
2EB998:  VSTR            S0, [SP,#0xD0+var_54]
2EB99C:  STRD.W          R4, R4, [SP,#0xD0+var_CC]; int
2EB9A0:  STRD.W          R4, R10, [SP,#0xD0+var_C4]; int
2EB9A4:  STRD.W          R4, R4, [SP,#0xD0+var_BC]; int
2EB9A8:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
2EB9AC:  MOVS            R1, #0
2EB9AE:  VLDR            S0, [SP,#0xD0+var_80]
2EB9B2:  CMP             R0, #0
2EB9B4:  VMOV.F32        S26, S20
2EB9B8:  MOV             R0, R9; CVector *
2EB9BA:  MOVT            R1, #0xC47A; int
2EB9BE:  MOV             R2, R11; int
2EB9C0:  MOV             R3, R5; int
2EB9C2:  IT NE
2EB9C4:  VMOVNE.F32      S26, S0
2EB9C8:  STRD.W          R10, R4, [SP,#0xD0+var_D0]; int
2EB9CC:  STRD.W          R4, R4, [SP,#0xD0+var_C8]; int
2EB9D0:  STRD.W          R10, R4, [SP,#0xD0+var_C0]; bool
2EB9D4:  STR             R4, [SP,#0xD0+var_B8]; int
2EB9D6:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
2EB9DA:  CMP             R0, #1
2EB9DC:  BNE             loc_2EBA18
2EB9DE:  VLDR            S2, [SP,#0xD0+var_54]
2EB9E2:  MOV             R11, R6
2EB9E4:  VLDR            S0, [SP,#0xD0+var_80]
2EB9E8:  VSUB.F32        S4, S26, S2
2EB9EC:  LDR             R4, [SP,#0xD0+var_94]
2EB9EE:  VSUB.F32        S2, S0, S2
2EB9F2:  LDR             R6, [SP,#0xD0+var_9C]
2EB9F4:  VABS.F32        S4, S4
2EB9F8:  VABS.F32        S2, S2
2EB9FC:  VCMPE.F32       S2, S4
2EBA00:  VMRS            APSR_nzcv, FPSCR
2EBA04:  IT LT
2EBA06:  VMOVLT.F32      S26, S0
2EBA0A:  B               loc_2EBA1E
2EBA0C:  ADDS            R1, R5, #1
2EBA0E:  MOV             R8, R4
2EBA10:  CMP             R1, R6
2EBA12:  BLT.W           loc_2EB8FA
2EBA16:  B               loc_2EBC2E
2EBA18:  MOV             R11, R6
2EBA1A:  LDR             R4, [SP,#0xD0+var_94]
2EBA1C:  LDR             R6, [SP,#0xD0+var_9C]
2EBA1E:  VCMPE.F32       S26, S20
2EBA22:  VMRS            APSR_nzcv, FPSCR
2EBA26:  BGT             loc_2EBA6E
2EBA28:  LDR.W           R0, [R8]
2EBA2C:  LDR.W           R1, [R0,#0xD8]
2EBA30:  MOV             R0, R8
2EBA32:  BLX             R1
2EBA34:  VMOV            R1, S16; CVector *
2EBA38:  MOVS            R3, #1
2EBA3A:  VMOV            S0, R0
2EBA3E:  MOVS            R0, #(stderr+2)
2EBA40:  STR             R0, [SP,#0xD0+var_D0]; __int16 *
2EBA42:  MOVS            R0, #0
2EBA44:  VADD.F32        S0, S26, S0
2EBA48:  MOVS            R2, #1; float
2EBA4A:  MOV.W           R9, #0
2EBA4E:  VSTR            S0, [SP,#0xD0+var_54]
2EBA52:  STRD.W          R0, R0, [SP,#0xD0+var_CC]; __int16
2EBA56:  STRD.W          R3, R3, [SP,#0xD0+var_C4]; bool
2EBA5A:  SUB.W           R3, R7, #-var_8E; bool
2EBA5E:  STR             R0, [SP,#0xD0+var_BC]; bool
2EBA60:  STR             R0, [SP,#0xD0+var_B8]; bool
2EBA62:  ADD             R0, SP, #0xD0+var_5C; this
2EBA64:  BLX             j__ZN6CWorld25FindObjectsKindaCollidingERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsKindaColliding(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
2EBA68:  LDRH.W          R0, [R7,#var_8E]
2EBA6C:  CBZ             R0, loc_2EBA84
2EBA6E:  LDR.W           R0, [R8]
2EBA72:  LDR             R1, [R0,#4]
2EBA74:  MOV             R0, R8
2EBA76:  BLX             R1
2EBA78:  MOV             R8, R4
2EBA7A:  LDR             R1, [SP,#0xD0+var_98]
2EBA7C:  CMP             R1, R6
2EBA7E:  BLT.W           loc_2EB8FA
2EBA82:  B               loc_2EBC2E
2EBA84:  LDR             R0, [SP,#0xD0+var_A4]
2EBA86:  LSLS            R0, R0, #0x1F
2EBA88:  BEQ             loc_2EBA90
2EBA8A:  LDR.W           R6, [R11,#0x14]
2EBA8E:  B               loc_2EBB0C
2EBA90:  MOVS            R0, #2
2EBA92:  MOVS            R1, #3
2EBA94:  STRB.W          R0, [R11,#0x3BD]
2EBA98:  LDR.W           R6, [R11,#0x14]
2EBA9C:  LDRB.W          R0, [R11,#0x3A]
2EBAA0:  CMP             R6, #0
2EBAA2:  BFI.W           R0, R1, #3, #0x1D
2EBAA6:  STRB.W          R0, [R11,#0x3A]
2EBAAA:  BEQ             loc_2EBABA
2EBAAC:  VLDR            S2, [R6,#0x10]
2EBAB0:  VLDR            S0, [R6,#0x14]
2EBAB4:  VLDR            S4, [R6,#0x18]
2EBAB8:  B               loc_2EBADC
2EBABA:  LDR.W           R5, [R11,#0x10]
2EBABE:  MOV             R0, R5; x
2EBAC0:  BLX             sinf
2EBAC4:  MOV             R10, R0
2EBAC6:  MOV             R0, R5; x
2EBAC8:  BLX             cosf
2EBACC:  VMOV.F32        S4, S22
2EBAD0:  VMOV            S0, R0
2EBAD4:  EOR.W           R0, R10, #0x80000000
2EBAD8:  VMOV            S2, R0
2EBADC:  LDRB.W          R0, [R11,#0x3D4]
2EBAE0:  VMOV            S6, R0
2EBAE4:  VCVT.F32.U32    S6, S6
2EBAE8:  VMUL.F32        S2, S2, S6
2EBAEC:  VMUL.F32        S0, S0, S6
2EBAF0:  VMUL.F32        S4, S4, S6
2EBAF4:  VMUL.F32        S2, S2, S24
2EBAF8:  VMUL.F32        S0, S0, S24
2EBAFC:  VMUL.F32        S4, S4, S24
2EBB00:  VSTR            S2, [R11,#0x48]
2EBB04:  VSTR            S0, [R11,#0x4C]
2EBB08:  VSTR            S4, [R11,#0x50]
2EBB0C:  LDR.W           R0, [R8,#0x14]
2EBB10:  MOV             R1, R6
2EBB12:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
2EBB16:  LDRD.W          R2, R1, [SP,#0xD0+var_5C]
2EBB1A:  LDR.W           R3, [R8,#0x14]
2EBB1E:  LDR             R0, [SP,#0xD0+var_54]
2EBB20:  CBZ             R3, loc_2EBB32
2EBB22:  STR             R2, [R3,#0x30]
2EBB24:  LDR.W           R2, [R8,#0x14]
2EBB28:  STR             R1, [R2,#0x34]
2EBB2A:  LDR.W           R1, [R8,#0x14]
2EBB2E:  ADDS            R1, #0x38 ; '8'
2EBB30:  B               loc_2EBB3A
2EBB32:  STRD.W          R2, R1, [R8,#4]
2EBB36:  ADD.W           R1, R8, #0xC
2EBB3A:  STR             R0, [R1]
2EBB3C:  LDR             R0, [SP,#0xD0+var_AC]
2EBB3E:  LDR.W           R1, [R8,#0x42C]
2EBB42:  LDR.W           R2, [R8,#0x430]
2EBB46:  VLDR            D16, [R0]
2EBB4A:  ORR.W           R1, R1, #0x8000000
2EBB4E:  LDR             R0, [R0,#8]
2EBB50:  LDRB.W          R3, [R8,#0x3A]
2EBB54:  STR.W           R0, [R8,#0x50]
2EBB58:  VSTR            D16, [R8,#0x48]
2EBB5C:  LDRB.W          R0, [R11,#0x3A]
2EBB60:  STR.W           R1, [R8,#0x42C]
2EBB64:  AND.W           R1, R3, #7; CEntity *
2EBB68:  AND.W           R0, R0, #0xF8
2EBB6C:  STR.W           R2, [R8,#0x430]
2EBB70:  ORRS            R0, R1
2EBB72:  STRB.W          R0, [R8,#0x3A]
2EBB76:  MOV             R0, R8; this
2EBB78:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
2EBB7C:  LDR.W           R0, [R8,#0x5A0]
2EBB80:  CMP             R0, #0
2EBB82:  BEQ             loc_2EBB90
2EBB84:  CMP             R0, #9
2EBB86:  BNE             loc_2EBB96
2EBB88:  MOV             R0, R8; this
2EBB8A:  BLX             j__ZN5CBike19PlaceOnRoadProperlyEv; CBike::PlaceOnRoadProperly(void)
2EBB8E:  B               loc_2EBB96
2EBB90:  MOV             R0, R8; this
2EBB92:  BLX             j__ZN11CAutomobile19PlaceOnRoadProperlyEv; CAutomobile::PlaceOnRoadProperly(void)
2EBB96:  MOVS            R0, #0x63 ; 'c'
2EBB98:  LDR             R1, [SP,#0xD0+var_A8]; CVehicle *
2EBB9A:  STR.W           R9, [SP,#0xD0+var_D0]; bool
2EBB9E:  MOVS            R2, #0; int
2EBBA0:  STR             R0, [SP,#0xD0+var_CC]; bool
2EBBA2:  MOVS            R0, #1
2EBBA4:  STR             R0, [SP,#0xD0+var_A4]
2EBBA6:  MOV             R0, R8; this
2EBBA8:  MOVS            R3, #(stderr+1); CPopulation *
2EBBAA:  BLX             j__ZN8CCarCtrl34SetUpDriverAndPassengersForVehicleEP8CVehicleiibbi; CCarCtrl::SetUpDriverAndPassengersForVehicle(CVehicle *,int,int,bool,bool,int)
2EBBAE:  LDR.W           R0, [R8,#0x464]
2EBBB2:  LDR.W           R9, [R0,#0x440]
2EBBB6:  MOVS            R0, #dword_24; this
2EBBB8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
2EBBBC:  MOVS            R3, #0
2EBBBE:  MOV             R1, R8; CVehicle *
2EBBC0:  MOVS            R2, #0; int
2EBBC2:  MOVT            R3, #0x4120; float
2EBBC6:  MOV             R6, R0
2EBBC8:  BLX             j__ZN26CTaskComplexCarDriveWanderC2EP8CVehicleif; CTaskComplexCarDriveWander::CTaskComplexCarDriveWander(CVehicle *,int,float)
2EBBCC:  ADD.W           R0, R9, #4; this
2EBBD0:  MOV             R1, R6; CTask *
2EBBD2:  MOVS            R2, #4; int
2EBBD4:  MOVS            R3, #0; bool
2EBBD6:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
2EBBDA:  LDR             R0, [SP,#0xD0+var_A0]
2EBBDC:  ADD.W           R1, R8, #0x420; CEntity **
2EBBE0:  VMOV            S0, R0
2EBBE4:  VCVT.F32.S32    S0, S0
2EBBE8:  LDRB.W          R0, [R11,#0x3D4]
2EBBEC:  STRB.W          R0, [R8,#0x3D4]
2EBBF0:  VLDR            S2, [R11,#0x3CC]
2EBBF4:  VSUB.F32        S0, S2, S0
2EBBF8:  VMAX.F32        D0, D0, D11
2EBBFC:  VSTR            S0, [R8,#0x3CC]
2EBC00:  LDRB.W          R0, [R11,#0x3BD]
2EBC04:  STRB.W          R0, [R8,#0x3BD]
2EBC08:  LDRB.W          R0, [R11,#0x3BE]
2EBC0C:  STRB.W          R0, [R8,#0x3BE]
2EBC10:  LDRH.W          R0, [R11,#0x24]
2EBC14:  STRH.W          R0, [R8,#0x24]
2EBC18:  LDRH.W          R0, [R11,#0x462]
2EBC1C:  STR.W           R4, [R8,#0x420]
2EBC20:  STRH.W          R0, [R8,#0x462]
2EBC24:  MOV             R0, R4; this
2EBC26:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
2EBC2A:  LDR             R6, [SP,#0xD0+var_9C]
2EBC2C:  B               loc_2EBA7A
2EBC2E:  LDR             R0, [SP,#0xD0+var_A4]
2EBC30:  AND.W           R0, R0, #1
2EBC34:  ADD             SP, SP, #0x80
2EBC36:  VPOP            {D8-D13}
2EBC3A:  ADD             SP, SP, #4
2EBC3C:  POP.W           {R8-R11}
2EBC40:  POP             {R4-R7,PC}
