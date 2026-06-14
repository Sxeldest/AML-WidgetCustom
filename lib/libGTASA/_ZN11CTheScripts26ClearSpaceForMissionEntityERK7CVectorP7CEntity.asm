; =========================================================
; Game Engine Function: _ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity
; Address            : 0x34D9E4 - 0x34DBD2
; =========================================================

34D9E4:  PUSH            {R4-R7,LR}
34D9E6:  ADD             R7, SP, #0xC
34D9E8:  PUSH.W          {R8-R11}
34D9EC:  SUB             SP, SP, #0x6C; __int16 *
34D9EE:  MOV             R5, R0
34D9F0:  LDR             R0, =(byte_81AF60 - 0x34D9F8)
34D9F2:  STR             R1, [SP,#0x88+var_64]
34D9F4:  ADD             R0, PC; byte_81AF60
34D9F6:  LDRB            R0, [R0]
34D9F8:  DMB.W           ISH
34D9FC:  TST.W           R0, #1
34DA00:  BNE             loc_34DA14
34DA02:  LDR             R0, =(byte_81AF60 - 0x34DA08)
34DA04:  ADD             R0, PC; byte_81AF60 ; __guard *
34DA06:  BLX             j___cxa_guard_acquire
34DA0A:  CBZ             R0, loc_34DA14
34DA0C:  LDR             R0, =(byte_81AF60 - 0x34DA12)
34DA0E:  ADD             R0, PC; byte_81AF60 ; __guard *
34DA10:  BLX             j___cxa_guard_release
34DA14:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x34DA22)
34DA16:  MOV.W           R8, #0
34DA1A:  LDR             R6, [SP,#0x88+var_64]
34DA1C:  ADD             R4, SP, #0x88+var_60
34DA1E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
34DA20:  MOVS            R2, #0x10
34DA22:  SUB.W           R3, R7, #-var_1E; bool
34DA26:  LDRSH.W         R1, [R6,#0x26]
34DA2A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
34DA2C:  LDR.W           R0, [R0,R1,LSL#2]
34DA30:  LDR             R0, [R0,#0x2C]
34DA32:  LDR             R1, [R0,#0x24]; CVector *
34DA34:  MOVS            R0, #1
34DA36:  STRH.W          R8, [R7,#var_1E]
34DA3A:  STMEA.W         SP, {R2,R4,R8}
34DA3E:  MOVS            R2, #0; float
34DA40:  STRD.W          R0, R0, [SP,#0x88+var_7C]; bool
34DA44:  MOV             R0, R5; this
34DA46:  STRD.W          R8, R8, [SP,#0x88+var_74]; bool
34DA4A:  MOV             R5, R6
34DA4C:  BLX             j__ZN6CWorld25FindObjectsKindaCollidingERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsKindaColliding(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
34DA50:  LDRSH.W         R0, [R7,#var_1E]
34DA54:  CMP             R0, #1
34DA56:  BLT.W           loc_34DBCA
34DA5A:  MOVS            R2, #0
34DA5C:  MOVS            R1, #0
34DA5E:  LDR.W           R3, [R4,R2,LSL#2]
34DA62:  CMP             R3, R5
34DA64:  BEQ             loc_34DA7E
34DA66:  LDRB.W          R6, [R3,#0x3A]
34DA6A:  AND.W           R6, R6, #7
34DA6E:  CMP             R6, #3
34DA70:  BNE             loc_34DA7E
34DA72:  LDRB.W          R3, [R3,#0x485]
34DA76:  LSLS            R3, R3, #0x1F
34DA78:  IT NE
34DA7A:  STRNE.W         R8, [R4,R2,LSL#2]
34DA7E:  ADDS            R1, #1
34DA80:  UXTH            R2, R1
34DA82:  CMP             R2, R0
34DA84:  BLT             loc_34DA5E
34DA86:  ADDS            R0, R5, #4
34DA88:  STR             R0, [SP,#0x88+var_68]
34DA8A:  MOVS            R0, #0
34DA8C:  MOV.W           R8, #0
34DA90:  LDR.W           R6, [R4,R0,LSL#2]
34DA94:  CMP             R6, R5
34DA96:  IT NE
34DA98:  CMPNE           R6, #0
34DA9A:  BEQ.W           loc_34DBB8
34DA9E:  MOV             R0, R5; this
34DAA0:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
34DAA4:  MOV             R10, R0
34DAA6:  LDR.W           R11, [R10,#0x2C]
34DAAA:  CMP.W           R11, #0
34DAAE:  BEQ.W           loc_34DBB8
34DAB2:  LDRSB.W         R9, [R11,#6]
34DAB6:  CMP.W           R9, #1
34DABA:  ITT GE
34DABC:  MOVGE           R0, #0
34DABE:  STRBGE.W        R0, [R11,#6]
34DAC2:  LDR             R4, [R5,#0x14]
34DAC4:  CBNZ            R4, loc_34DAD6
34DAC6:  MOV             R0, R5; this
34DAC8:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
34DACC:  LDR             R1, [R5,#0x14]; CMatrix *
34DACE:  LDR             R0, [SP,#0x88+var_68]; this
34DAD0:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
34DAD4:  LDR             R4, [R5,#0x14]
34DAD6:  LDR             R5, [R6,#0x14]
34DAD8:  CBNZ            R5, loc_34DAEA
34DADA:  MOV             R0, R6; this
34DADC:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
34DAE0:  LDR             R1, [R6,#0x14]; CMatrix *
34DAE2:  ADDS            R0, R6, #4; this
34DAE4:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
34DAE8:  LDR             R5, [R6,#0x14]
34DAEA:  MOV             R0, R6; this
34DAEC:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
34DAF0:  MOV             R3, R0; int
34DAF2:  LDR             R0, =(unk_81A9E0 - 0x34DAFC)
34DAF4:  MOV             R1, R10; int
34DAF6:  MOV             R2, R5; CMatrix *
34DAF8:  ADD             R0, PC; unk_81A9E0
34DAFA:  STR             R0, [SP,#0x88+var_88]; int
34DAFC:  MOVS            R0, #0
34DAFE:  STRD.W          R0, R0, [SP,#0x88+var_84]; int
34DB02:  STR             R0, [SP,#0x88+var_7C]; int
34DB04:  MOV             R0, R4; int
34DB06:  BLX             j__ZN10CCollision16ProcessColModelsERK7CMatrixR9CColModelS2_S4_P9CColPointS6_Pfb; CCollision::ProcessColModels(CMatrix const&,CColModel &,CMatrix const&,CColModel &,CColPoint *,CColPoint *,float *,bool)
34DB0A:  CMP.W           R9, #1
34DB0E:  ADD             R4, SP, #0x88+var_60
34DB10:  IT GE
34DB12:  STRBGE.W        R9, [R11,#6]
34DB16:  CMP             R0, #1
34DB18:  LDR             R5, [SP,#0x88+var_64]
34DB1A:  BLT             loc_34DBB8
34DB1C:  LDRB.W          R0, [R6,#0x3A]
34DB20:  AND.W           R0, R0, #7
34DB24:  CMP             R0, #3
34DB26:  BEQ             loc_34DBA0
34DB28:  CMP             R0, #2
34DB2A:  BNE             loc_34DBB8
34DB2C:  LDRB.W          R0, [R6,#0x42C]
34DB30:  LSLS            R0, R0, #0x1C
34DB32:  BMI             loc_34DBB8
34DB34:  MOV             R0, R6; this
34DB36:  BLX             j__ZNK8CVehicle12CanBeDeletedEv; CVehicle::CanBeDeleted(void)
34DB3A:  CBZ             R0, loc_34DBB8
34DB3C:  LDR.W           R0, [R6,#0x464]; this
34DB40:  CBZ             R0, loc_34DB5A
34DB42:  ADDW            R4, R6, #0x464
34DB46:  BLX             j__ZN11CPopulation9RemovePedEP4CPed; CPopulation::RemovePed(CPed *)
34DB4A:  LDR             R0, [R4]; this
34DB4C:  CMP             R0, #0
34DB4E:  ITT NE
34DB50:  MOVNE           R1, R4; CEntity **
34DB52:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
34DB56:  MOVS            R0, #0
34DB58:  STR             R0, [R4]
34DB5A:  LDRB.W          R0, [R6,#0x48C]
34DB5E:  CBZ             R0, loc_34DB86
34DB60:  ADD.W           R9, R6, #0x468
34DB64:  MOVS            R5, #0
34DB66:  LDR.W           R4, [R9,R5,LSL#2]
34DB6A:  CBZ             R4, loc_34DB7E
34DB6C:  MOV             R0, R6; this
34DB6E:  MOV             R1, R4; CPed *
34DB70:  BLX             j__ZN8CVehicle15RemovePassengerEP4CPed; CVehicle::RemovePassenger(CPed *)
34DB74:  MOV             R0, R4; this
34DB76:  BLX             j__ZN11CPopulation9RemovePedEP4CPed; CPopulation::RemovePed(CPed *)
34DB7A:  LDRB.W          R0, [R6,#0x48C]
34DB7E:  ADDS            R5, #1
34DB80:  UXTB            R1, R0; CVehicle *
34DB82:  CMP             R5, R1
34DB84:  BLT             loc_34DB66
34DB86:  MOV             R0, R6; this
34DB88:  BLX             j__ZN8CCarCtrl32RemoveFromInterestingVehicleListEP8CVehicle; CCarCtrl::RemoveFromInterestingVehicleList(CVehicle *)
34DB8C:  MOV             R0, R6; this
34DB8E:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
34DB92:  LDR             R0, [R6]
34DB94:  LDR             R1, [R0,#4]
34DB96:  MOV             R0, R6
34DB98:  BLX             R1
34DB9A:  LDR             R5, [SP,#0x88+var_64]
34DB9C:  ADD             R4, SP, #0x88+var_60
34DB9E:  B               loc_34DBB8
34DBA0:  MOV             R0, R6; this
34DBA2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
34DBA6:  CBNZ            R0, loc_34DBB8
34DBA8:  MOV             R0, R6; this
34DBAA:  BLX             j__ZN4CPed12CanBeDeletedEv; CPed::CanBeDeleted(void)
34DBAE:  CMP             R0, #0
34DBB0:  ITT NE
34DBB2:  MOVNE           R0, R6; this
34DBB4:  BLXNE           j__ZN11CPopulation9RemovePedEP4CPed; CPopulation::RemovePed(CPed *)
34DBB8:  ADD.W           R8, R8, #1
34DBBC:  LDRSH.W         R1, [R7,#var_1E]
34DBC0:  UXTH.W          R0, R8
34DBC4:  CMP             R0, R1
34DBC6:  BLT.W           loc_34DA90
34DBCA:  ADD             SP, SP, #0x6C ; 'l'
34DBCC:  POP.W           {R8-R11}
34DBD0:  POP             {R4-R7,PC}
