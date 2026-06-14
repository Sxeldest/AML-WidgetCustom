; =========================================================
; Game Engine Function: _ZN13CCarEnterExit18IsVehicleStealableERK8CVehicleRK4CPed
; Address            : 0x508904 - 0x508A8E
; =========================================================

508904:  PUSH            {R4,R5,R7,LR}
508906:  ADD             R7, SP, #8
508908:  SUB             SP, SP, #0x90
50890A:  MOV             R4, R0
50890C:  MOV             R5, R1
50890E:  LDR.W           R0, [R4,#0x5A4]
508912:  SUBS            R0, #3
508914:  CMP             R0, #2
508916:  BCC.W           loc_508A88
50891A:  LDR.W           R0, [R4,#0x5A0]
50891E:  CMP             R0, #9
508920:  IT NE
508922:  CMPNE           R0, #0
508924:  BNE.W           loc_508A88
508928:  LDRB.W          R0, [R4,#0x4A8]
50892C:  ORR.W           R0, R0, #2
508930:  CMP             R0, #3
508932:  BNE.W           loc_508A7E
508936:  ADD             R0, SP, #0x98+var_74; this
508938:  MOV             R1, R4; CVehicle *
50893A:  BLX             j__ZN19CUpsideDownCarCheck15IsCarUpsideDownEPK8CVehicle; CUpsideDownCarCheck::IsCarUpsideDown(CVehicle const*)
50893E:  CMP             R0, #0
508940:  BNE.W           loc_508A88
508944:  MOV             R0, R4; this
508946:  BLX             j__ZNK8CVehicle11CanBeDrivenEv; CVehicle::CanBeDriven(void)
50894A:  CMP             R0, #1
50894C:  BNE.W           loc_508A88
508950:  MOV             R0, R4; this
508952:  BLX             j__ZNK8CVehicle23IsLawEnforcementVehicleEv; CVehicle::IsLawEnforcementVehicle(void)
508956:  CMP             R0, #0
508958:  BNE.W           loc_508A88
50895C:  LDR.W           R0, [R4,#0x464]; this
508960:  CBZ             R0, loc_508996
508962:  LDRB.W          R1, [R0,#0x448]
508966:  CMP             R1, #2
508968:  BEQ.W           loc_508A88
50896C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
508970:  CMP             R0, #0
508972:  BNE.W           loc_508A88
508976:  LDR.W           R1, [R4,#0x464]; CPed *
50897A:  LDR.W           R0, [R5,#0x440]; this
50897E:  BLX             j__ZNK16CPedIntelligence14IsFriendlyWithERK4CPed; CPedIntelligence::IsFriendlyWith(CPed const&)
508982:  CMP             R0, #0
508984:  BNE.W           loc_508A88
508988:  LDR.W           R1, [R4,#0x464]; CPed *
50898C:  MOV             R0, R5; this
50898E:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
508992:  CMP             R0, #0
508994:  BNE             loc_508A88
508996:  MOV             R0, R5; this
508998:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
50899C:  CBZ             R0, loc_5089A8
50899E:  MOV             R1, R4; CVehicle *
5089A0:  BLX             j__ZNK9CPedGroup16IsAnyoneUsingCarERK8CVehicle; CPedGroup::IsAnyoneUsingCar(CVehicle const&)
5089A4:  CMP             R0, #0
5089A6:  BNE             loc_508A88
5089A8:  LDR.W           R0, [R4,#0x494]
5089AC:  CMP             R0, #0
5089AE:  BNE             loc_508A88
5089B0:  ADDW            R0, R4, #0x4CC
5089B4:  VLDR            S0, =600.0
5089B8:  VLDR            S2, [R0]
5089BC:  VCMPE.F32       S2, S0
5089C0:  VMRS            APSR_nzcv, FPSCR
5089C4:  BLE             loc_508A88
5089C6:  MOV             R0, R4; this
5089C8:  BLX             j__ZNK8CVehicle12IsUpsideDownEv; CVehicle::IsUpsideDown(void)
5089CC:  CMP             R0, #0
5089CE:  BNE             loc_508A88
5089D0:  MOV             R0, R4; this
5089D2:  BLX             j__ZNK8CVehicle11IsOnItsSideEv; CVehicle::IsOnItsSide(void)
5089D6:  CMP             R0, #0
5089D8:  BNE             loc_508A88
5089DA:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5089EA)
5089DC:  VMOV.F32        S4, #0.5
5089E0:  LDRSH.W         R1, [R4,#0x26]
5089E4:  MOVS            R2, #0
5089E6:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5089E8:  ADD             R3, SP, #0x98+var_38
5089EA:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5089EC:  LDR.W           R0, [R0,R1,LSL#2]
5089F0:  LDR             R0, [R0,#0x2C]
5089F2:  VLDR            S0, [R0,#4]
5089F6:  VLDR            S2, [R0,#0x10]
5089FA:  LDR             R0, [R4,#0x14]
5089FC:  VSUB.F32        S0, S2, S0
508A00:  VMOV.F32        S2, #1.5
508A04:  ADD.W           R1, R0, #0x30 ; '0'
508A08:  VLDR            S6, [R0,#0x18]
508A0C:  CMP             R0, #0
508A0E:  VMUL.F32        S0, S0, S4
508A12:  VLDR            S4, [R0,#0x14]
508A16:  VADD.F32        S0, S0, S2
508A1A:  VLDR            S2, [R0,#0x10]
508A1E:  STR             R2, [SP,#0x98+var_38]
508A20:  IT EQ
508A22:  ADDEQ           R1, R4, #4
508A24:  VLDR            S8, [R1,#4]
508A28:  MOVS            R0, #1
508A2A:  VLDR            S10, [R1,#8]
508A2E:  VMUL.F32        S4, S0, S4
508A32:  VMUL.F32        S2, S2, S0
508A36:  VMUL.F32        S0, S0, S6
508A3A:  VLDR            S6, [R1]
508A3E:  VADD.F32        S4, S4, S8
508A42:  VADD.F32        S2, S2, S6
508A46:  VADD.F32        S0, S0, S10
508A4A:  VSTR            S4, [SP,#0x98+var_40]
508A4E:  VSTR            S2, [SP,#0x98+var_44]
508A52:  VSTR            S0, [SP,#0x98+var_3C]
508A56:  STRD.W          R0, R0, [SP,#0x98+var_98]
508A5A:  STRD.W          R2, R2, [SP,#0x98+var_90]
508A5E:  STRD.W          R2, R0, [SP,#0x98+var_88]
508A62:  STRD.W          R0, R2, [SP,#0x98+var_80]
508A66:  ADD             R0, SP, #0x98+var_44
508A68:  ADD             R2, SP, #0x98+var_34
508A6A:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
508A6E:  LDR             R1, [SP,#0x98+var_38]
508A70:  CMP             R1, R4
508A72:  IT NE
508A74:  CMPNE           R0, #0
508A76:  BNE             loc_508A88
508A78:  MOVS            R0, #1
508A7A:  ADD             SP, SP, #0x90
508A7C:  POP             {R4,R5,R7,PC}
508A7E:  LDR.W           R0, [R5,#0x590]
508A82:  CMP             R0, R4
508A84:  BEQ.W           loc_508936
508A88:  MOVS            R0, #0
508A8A:  ADD             SP, SP, #0x90
508A8C:  POP             {R4,R5,R7,PC}
