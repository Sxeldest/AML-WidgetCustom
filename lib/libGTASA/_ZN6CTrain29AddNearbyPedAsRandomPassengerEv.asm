; =========================================================
; Game Engine Function: _ZN6CTrain29AddNearbyPedAsRandomPassengerEv
; Address            : 0x57E8A0 - 0x57ECC8
; =========================================================

57E8A0:  PUSH            {R4-R7,LR}
57E8A2:  ADD             R7, SP, #0xC
57E8A4:  PUSH.W          {R8-R11}
57E8A8:  SUB             SP, SP, #4
57E8AA:  VPUSH           {D8-D11}
57E8AE:  SUB             SP, SP, #0x78; int *
57E8B0:  MOV             R4, R0
57E8B2:  MOV.W           R0, #0xFFFFFFFF; int
57E8B6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
57E8BA:  LDR.W           R1, [R0,#0x590]
57E8BE:  CMP             R1, R4
57E8C0:  BEQ.W           loc_57ECBA
57E8C4:  LDR.W           R0, [R0,#0x440]
57E8C8:  LDR             R5, [R0,#0x10]
57E8CA:  CBZ             R5, loc_57E8F2
57E8CC:  LDR             R0, [R5]
57E8CE:  LDR             R1, [R0,#0x14]
57E8D0:  MOV             R0, R5
57E8D2:  BLX             R1
57E8D4:  MOVW            R1, #0x2BD
57E8D8:  CMP             R0, R1
57E8DA:  BEQ             loc_57E8EA
57E8DC:  LDR             R0, [R5]
57E8DE:  LDR             R1, [R0,#0x14]
57E8E0:  MOV             R0, R5
57E8E2:  BLX             R1
57E8E4:  CMP.W           R0, #0x2BC
57E8E8:  BNE             loc_57E8F2
57E8EA:  LDR             R0, [R5,#0xC]
57E8EC:  CMP             R0, R4
57E8EE:  BEQ.W           loc_57ECBA
57E8F2:  LDRB.W          R0, [R4,#0x5DF]
57E8F6:  AND.W           R1, R0, #0xF
57E8FA:  CMP.W           R1, R0,LSR#4
57E8FE:  BEQ.W           loc_57ECBA
57E902:  LDR.W           R0, [R4,#0x5E0]
57E906:  ADD.W           R5, R4, #0x5E0
57E90A:  LDRH.W          R8, [R4,#0x5CC]
57E90E:  CBZ             R0, loc_57E980
57E910:  LDR.W           R2, [R0,#0x484]
57E914:  LDR.W           R1, [R0,#0x490]
57E918:  AND.W           R2, R2, #0x100
57E91C:  AND.W           R1, R1, #0x40000
57E920:  EOR.W           R6, R2, #0x100
57E924:  EOR.W           R3, R1, #0x40000
57E928:  ORRS            R3, R6
57E92A:  ITT NE
57E92C:  BFCNE.W         R1, #0x13, #0xD
57E930:  ORRSNE.W        R1, R1, R2
57E934:  BEQ.W           loc_57ECBA
57E938:  LDR.W           R0, [R0,#0x440]; this
57E93C:  MOVW            R1, #0x2C3; int
57E940:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
57E944:  CMP             R0, #0
57E946:  BNE.W           loc_57ECBA
57E94A:  LDR             R0, [R5]; this
57E94C:  MOV             R1, R5; CEntity **
57E94E:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
57E952:  LDR             R0, [R5]; this
57E954:  MOV.W           R3, #0x40000
57E958:  LDR.W           R2, [R0,#0x490]
57E95C:  LDR.W           R1, [R0,#0x484]
57E960:  ANDS            R2, R3
57E962:  MOV.W           R3, #0x100
57E966:  ANDS            R1, R3
57E968:  EOR.W           R1, R1, #0x100
57E96C:  ORRS            R1, R2
57E96E:  BNE             loc_57E97C
57E970:  LDR.W           R1, [R0,#0x590]; CPed *
57E974:  CMP             R1, R4
57E976:  IT EQ
57E978:  BLXEQ           j__ZN11CPopulation9RemovePedEP4CPed; CPopulation::RemovePed(CPed *)
57E97C:  MOVS            R0, #0
57E97E:  STR             R0, [R5]
57E980:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x57E98A)
57E982:  ADDS            R3, R4, #4
57E984:  LDR             R1, [R4,#0x14]
57E986:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
57E988:  MOV             R2, R3
57E98A:  CMP             R1, #0
57E98C:  LDR             R0, [R0]; CPools::ms_pPedPool ...
57E98E:  IT NE
57E990:  ADDNE.W         R2, R1, #0x30 ; '0'
57E994:  LDR.W           R11, [R0]; CPools::ms_pPedPool
57E998:  LDR.W           R0, [R11,#8]
57E99C:  CMP             R0, #0
57E99E:  BEQ.W           loc_57ECBA
57E9A2:  STR             R3, [SP,#0xB8+var_B4]
57E9A4:  AND.W           R3, R8, #0x40 ; '@'
57E9A8:  STR             R5, [SP,#0xB8+var_AC]
57E9AA:  SUB.W           R8, R0, #1
57E9AE:  STR             R3, [SP,#0xB8+var_B0]
57E9B0:  VLDR            S0, [R1]
57E9B4:  VLDR            S6, [R2]
57E9B8:  VLDR            S2, [R1,#4]
57E9BC:  VLDR            S8, [R2,#4]
57E9C0:  VMUL.F32        S0, S6, S0
57E9C4:  VLDR            S4, [R1,#8]
57E9C8:  MOVW            R1, #0x7CC
57E9CC:  VMUL.F32        S2, S8, S2
57E9D0:  VLDR            S10, [R2,#8]
57E9D4:  MULS            R1, R0; CPed *
57E9D6:  VLDR            S18, =1000000.0
57E9DA:  VMUL.F32        S4, S10, S4
57E9DE:  VLDR            S20, =0.0
57E9E2:  MOVS            R0, #0
57E9E4:  VLDR            S22, =625.0
57E9E8:  STR             R0, [SP,#0xB8+var_A8]
57E9EA:  SUB.W           R6, R1, #0x38C
57E9EE:  VADD.F32        S0, S0, S2
57E9F2:  VADD.F32        S16, S0, S4
57E9F6:  B               loc_57EB00
57E9F8:  LDR.W           R0, [R10,#0x15C]
57E9FC:  CMP             R0, #6
57E9FE:  BEQ.W           loc_57EB3E
57EA02:  LDR.W           R0, [R10,#0x44]
57EA06:  MOV.W           R2, #0x40000
57EA0A:  LDR.W           R1, [R10,#0x50]
57EA0E:  ANDS            R1, R2
57EA10:  MOV.W           R2, #0x100
57EA14:  ANDS            R0, R2
57EA16:  ORRS            R0, R1
57EA18:  BNE.W           loc_57EB3E
57EA1C:  LDR.W           R0, [R10,#0xC]
57EA20:  SUBS            R0, #0x36 ; '6'
57EA22:  CMP             R0, #3
57EA24:  BCC.W           loc_57EB3E
57EA28:  LDR.W           R0, [R9,R6]; this
57EA2C:  MOV.W           R1, #0x2BC; int
57EA30:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
57EA34:  CMP             R0, #0
57EA36:  BNE.W           loc_57EB3E
57EA3A:  MOVW            R0, #0xFBD4
57EA3E:  LDR.W           R12, [R4,#0x14]
57EA42:  MOVT            R0, #0xFFFF
57EA46:  LDR             R3, [SP,#0xB8+var_B4]
57EA48:  LDR.W           R2, [R10,R0]
57EA4C:  MOV             R0, #0xFFFFF838
57EA54:  ADD             R0, R9
57EA56:  CMP.W           R12, #0
57EA5A:  IT NE
57EA5C:  ADDNE.W         R3, R12, #0x30 ; '0'
57EA60:  ADD.W           R1, R2, #0x30 ; '0'
57EA64:  ADD             R0, R6
57EA66:  CMP             R2, #0
57EA68:  VLDR            S0, [R3]
57EA6C:  VLDR            S6, [R3,#4]
57EA70:  IT EQ
57EA72:  ADDEQ.W         R1, R0, #0x38C
57EA76:  VLDR            S2, [R1]
57EA7A:  VLDR            S4, [R1,#4]
57EA7E:  VSUB.F32        S0, S2, S0
57EA82:  VSUB.F32        S6, S4, S6
57EA86:  VMUL.F32        S0, S0, S0
57EA8A:  VMUL.F32        S6, S6, S6
57EA8E:  VADD.F32        S0, S0, S6
57EA92:  VADD.F32        S0, S0, S20
57EA96:  VCMPE.F32       S0, S22
57EA9A:  VMRS            APSR_nzcv, FPSCR
57EA9E:  BGT             loc_57EB3E
57EAA0:  VLDR            S6, [R12]
57EAA4:  MOVS            R0, #0
57EAA6:  VLDR            S8, [R12,#4]
57EAAA:  VMUL.F32        S2, S2, S6
57EAAE:  VLDR            S6, [R1,#8]
57EAB2:  VMUL.F32        S4, S4, S8
57EAB6:  VLDR            S10, [R12,#8]
57EABA:  MOVS            R1, #0
57EABC:  VMUL.F32        S6, S6, S10
57EAC0:  VADD.F32        S2, S2, S4
57EAC4:  VADD.F32        S2, S2, S6
57EAC8:  VSUB.F32        S2, S2, S16
57EACC:  VCMPE.F32       S2, #0.0
57EAD0:  VMRS            APSR_nzcv, FPSCR
57EAD4:  IT LT
57EAD6:  MOVLT           R0, #1
57EAD8:  IT GT
57EADA:  MOVGT           R1, #1
57EADC:  LDR             R2, [SP,#0xB8+var_B0]
57EADE:  CMP             R2, #0
57EAE0:  IT NE
57EAE2:  MOVNE           R1, R0
57EAE4:  CBNZ            R1, loc_57EB3E
57EAE6:  VCMPE.F32       S0, S18
57EAEA:  LDR             R0, [SP,#0xB8+var_A8]
57EAEC:  VMRS            APSR_nzcv, FPSCR
57EAF0:  VMIN.F32        D1, D0, D9
57EAF4:  VMOV            D9, D1
57EAF8:  IT LT
57EAFA:  MOVLT           R0, R5
57EAFC:  STR             R0, [SP,#0xB8+var_A8]
57EAFE:  B               loc_57EB3E
57EB00:  LDR.W           R0, [R11,#4]
57EB04:  LDRSB.W         R0, [R0,R8]
57EB08:  CMP             R0, #0
57EB0A:  BLT             loc_57EB3E
57EB0C:  LDR.W           R9, [R11]
57EB10:  ADD.W           R10, R9, R6
57EB14:  CMP.W           R10, #0x440
57EB18:  BEQ             loc_57EB3E
57EB1A:  LDRB.W          R0, [R10,#8]
57EB1E:  CMP             R0, #1
57EB20:  BNE             loc_57EB3E
57EB22:  SUB.W           R0, R10, #0x7C8
57EB26:  ADD.W           R5, R0, #0x388
57EB2A:  MOV             R0, R5; this
57EB2C:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
57EB30:  CMP             R0, #0
57EB32:  ITT EQ
57EB34:  LDREQ.W         R0, [R10,#4]
57EB38:  CMPEQ           R0, #0
57EB3A:  BEQ.W           loc_57E9F8
57EB3E:  SUB.W           R8, R8, #1
57EB42:  SUBW            R6, R6, #0x7CC
57EB46:  ADDS.W          R0, R8, #1
57EB4A:  BNE             loc_57EB00
57EB4C:  LDR.W           R9, [SP,#0xB8+var_A8]
57EB50:  LDR.W           R8, [SP,#0xB8+var_AC]
57EB54:  CMP.W           R9, #0
57EB58:  BEQ.W           loc_57ECBA
57EB5C:  ADD             R5, SP, #0xB8+var_4C
57EB5E:  ADD             R3, SP, #0xB8+var_50; CVector *
57EB60:  MOVS            R6, #0
57EB62:  MOV             R0, R9; this
57EB64:  MOV             R1, R4; CPed *
57EB66:  MOV             R2, R5; CVehicle *
57EB68:  STR             R6, [SP,#0xB8+var_50]
57EB6A:  BLX             j__ZN13CCarEnterExit17GetNearestCarDoorERK4CPedRK8CVehicleR7CVectorRi; CCarEnterExit::GetNearestCarDoor(CPed const&,CVehicle const&,CVector &,int &)
57EB6E:  STRD.W          R6, R6, [SP,#0xB8+var_58]
57EB72:  ADD             R6, SP, #0xB8+var_98
57EB74:  LDR             R0, [R4,#0x14]; CMatrix *
57EB76:  MOV             R1, R6; CMatrix *
57EB78:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
57EB7C:  ADD             R0, SP, #0xB8+var_A4
57EB7E:  MOV             R1, R6
57EB80:  MOV             R2, R5
57EB82:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
57EB86:  LDR             R0, [R4,#0x14]
57EB88:  LDR.W           R10, [SP,#0xB8+var_B0]
57EB8C:  VLDR            S2, [SP,#0xB8+var_A4]
57EB90:  VLDR            S0, [SP,#0xB8+var_A0]
57EB94:  CMP.W           R10, #0
57EB98:  VLDR            S4, [SP,#0xB8+var_9C]
57EB9C:  VLDR            S6, [R0]
57EBA0:  BEQ             loc_57EBB8
57EBA2:  VLDR            S8, [R0,#4]
57EBA6:  VADD.F32        S16, S2, S6
57EBAA:  VLDR            S10, [R0,#8]
57EBAE:  VADD.F32        S20, S0, S8
57EBB2:  VADD.F32        S18, S4, S10
57EBB6:  B               loc_57EBCC
57EBB8:  VLDR            S8, [R0,#4]
57EBBC:  VSUB.F32        S16, S2, S6
57EBC0:  VLDR            S10, [R0,#8]
57EBC4:  VSUB.F32        S20, S0, S8
57EBC8:  VSUB.F32        S18, S4, S10
57EBCC:  MOVS            R0, #dword_58; this
57EBCE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
57EBD2:  MOV             R5, R0
57EBD4:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
57EBD8:  ADR             R2, dword_57ECD0
57EBDA:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x57EBE8)
57EBDC:  VLD1.64         {D16-D17}, [R2@128]
57EBE0:  ADD.W           R2, R5, #0x18
57EBE4:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr
57EBE6:  MOV.W           R3, #0x3E8
57EBEA:  LDR             R1, =(_ZTV32CEntitySeekPosCalculatorXYOffset_ptr - 0x57EBF8)
57EBEC:  VST1.32         {D16-D17}, [R2]
57EBF0:  MOVW            R2, #0xC350
57EBF4:  ADD             R1, PC; _ZTV32CEntitySeekPosCalculatorXYOffset_ptr
57EBF6:  STRD.W          R2, R3, [R5,#0x10]
57EBFA:  MOVS            R2, #0
57EBFC:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorXYOffset> ...
57EBFE:  STRH            R2, [R5,#0x30]
57EC00:  STRH            R2, [R5,#0x3C]
57EC02:  ADDS            R0, #8
57EC04:  STRD.W          R2, R2, [R5,#0x28]
57EC08:  STRD.W          R2, R2, [R5,#0x34]
57EC0C:  STRD.W          R2, R2, [R5,#0x44]
57EC10:  STR             R2, [R5,#0x4C]
57EC12:  MOVS            R2, #6
57EC14:  STR             R2, [R5,#0x50]
57EC16:  LDR             R1, [R1]; `vtable for'CEntitySeekPosCalculatorXYOffset ...
57EC18:  LDRB.W          R2, [R5,#0x54]
57EC1C:  STR             R0, [R5]
57EC1E:  ADD.W           R0, R1, #8
57EC22:  STR             R0, [R5,#0x40]
57EC24:  AND.W           R0, R2, #0xF0
57EC28:  MOV             R1, R5
57EC2A:  ORR.W           R0, R0, #3
57EC2E:  STRB.W          R0, [R5,#0x54]
57EC32:  MOV             R0, R4; this
57EC34:  STR.W           R4, [R1,#0xC]!; CEntity **
57EC38:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
57EC3C:  MOVS            R0, #7
57EC3E:  VSTR            S16, [R5,#0x44]
57EC42:  VSTR            S20, [R5,#0x48]
57EC46:  VSTR            S18, [R5,#0x4C]
57EC4A:  STR             R0, [R5,#0x50]
57EC4C:  MOVS            R0, #dword_40; this
57EC4E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
57EC52:  MOV             R6, R0
57EC54:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
57EC58:  MOV             R1, R5; CTask *
57EC5A:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
57EC5E:  MOVS            R0, #dword_50; this
57EC60:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
57EC64:  MOV             R5, R0
57EC66:  MOV             R1, R4; CVehicle *
57EC68:  CMP.W           R10, #0
57EC6C:  BEQ             loc_57EC78
57EC6E:  MOVS            R2, #0; int
57EC70:  MOVS            R3, #0; bool
57EC72:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerC2EP8CVehicleib; CTaskComplexEnterCarAsPassenger::CTaskComplexEnterCarAsPassenger(CVehicle *,int,bool)
57EC76:  B               loc_57EC7C
57EC78:  BLX             j__ZN28CTaskComplexEnterCarAsDriverC2EP8CVehicle; CTaskComplexEnterCarAsDriver::CTaskComplexEnterCarAsDriver(CVehicle *)
57EC7C:  MOV             R0, R6; this
57EC7E:  MOV             R1, R5; CTask *
57EC80:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
57EC84:  LDR.W           R0, [R9,#0x440]
57EC88:  MOV             R1, R6; CTask *
57EC8A:  MOVS            R2, #3; int
57EC8C:  MOVS            R3, #0; bool
57EC8E:  ADDS            R0, #4; this
57EC90:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
57EC94:  LDRB.W          R0, [R4,#0x5DF]
57EC98:  STR.W           R9, [R4,#0x5E0]
57EC9C:  AND.W           R1, R0, #0xF0
57ECA0:  ADDS            R0, #1
57ECA2:  AND.W           R0, R0, #0xF
57ECA6:  ORRS            R0, R1
57ECA8:  STRB.W          R0, [R4,#0x5DF]
57ECAC:  MOV             R0, R9; this
57ECAE:  MOV             R1, R8; CEntity **
57ECB0:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
57ECB4:  ADD             R0, SP, #0xB8+var_98; this
57ECB6:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
57ECBA:  ADD             SP, SP, #0x78 ; 'x'
57ECBC:  VPOP            {D8-D11}
57ECC0:  ADD             SP, SP, #4
57ECC2:  POP.W           {R8-R11}
57ECC6:  POP             {R4-R7,PC}
