; =========================================================
; Game Engine Function: _ZN11CPopulation16PopulateInteriorEi7CVector
; Address            : 0x4D10F0 - 0x4D12E2
; =========================================================

4D10F0:  PUSH            {R4-R7,LR}
4D10F2:  ADD             R7, SP, #0xC
4D10F4:  PUSH.W          {R8-R11}
4D10F8:  SUB             SP, SP, #4
4D10FA:  VPUSH           {D8}
4D10FE:  SUB             SP, SP, #0x48
4D1100:  MOV             R9, R3
4D1102:  VLDR            S0, =900.0
4D1106:  VMOV            S2, R9
4D110A:  MOV             R8, R0
4D110C:  STR             R1, [SP,#0x70+var_4C]
4D110E:  VCMPE.F32       S2, S0
4D1112:  VMRS            APSR_nzcv, FPSCR
4D1116:  BLT.W           loc_4D12D4
4D111A:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x4D1122)
4D111C:  STR             R2, [SP,#0x70+var_5C]
4D111E:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
4D1120:  LDR             R0, [R0]; CPools::ms_pPedPool ...
4D1122:  LDR.W           R10, [R0]; CPools::ms_pPedPool
4D1126:  LDR.W           R0, [R10,#8]
4D112A:  CBZ             R0, loc_4D116C
4D112C:  MOVW            R1, #0x7CC
4D1130:  SUBS            R4, R0, #1
4D1132:  MULS            R1, R0
4D1134:  SUBW            R6, R1, #0x7CC
4D1138:  LDR.W           R0, [R10,#4]
4D113C:  LDRSB           R0, [R0,R4]
4D113E:  CMP             R0, #0
4D1140:  BLT             loc_4D1162
4D1142:  LDR.W           R5, [R10]
4D1146:  ADDS.W          R11, R5, R6
4D114A:  BEQ             loc_4D1162
4D114C:  MOV             R0, R11; this
4D114E:  BLX             j__ZN4CPed12CanBeDeletedEv; CPed::CanBeDeleted(void)
4D1152:  CBZ             R0, loc_4D1162
4D1154:  MOV             R0, R11; this
4D1156:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
4D115A:  LDR             R0, [R5,R6]
4D115C:  LDR             R1, [R0,#4]
4D115E:  MOV             R0, R11
4D1160:  BLX             R1
4D1162:  SUBS            R4, #1
4D1164:  SUBW            R6, R6, #0x7CC
4D1168:  ADDS            R0, R4, #1
4D116A:  BNE             loc_4D1138
4D116C:  LDR             R5, [SP,#0x70+var_5C]
4D116E:  MOV             R2, R9
4D1170:  LDR             R0, [SP,#0x70+var_4C]
4D1172:  MOVS            R3, #1
4D1174:  MOV             R1, R5
4D1176:  BLX             j__ZN9CColStore13LoadCollisionE7CVectorb; CColStore::LoadCollision(CVector,bool)
4D117A:  MOVS            R0, #0; this
4D117C:  MOVS            R4, #0
4D117E:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
4D1182:  CMP.W           R8, #1
4D1186:  BLT.W           loc_4D12D4
4D118A:  VMOV            S0, R8
4D118E:  VLDR            S2, =0.95
4D1192:  MOVS            R1, #0
4D1194:  MOVS            R0, #7
4D1196:  VCVT.F32.S32    S0, S0
4D119A:  MOVT            R1, #0x4316
4D119E:  MOV             R2, R9
4D11A0:  MOVS            R3, #0
4D11A2:  VMUL.F32        S0, S0, S2
4D11A6:  VCVT.S32.F32    S0, S0
4D11AA:  STRD.W          R1, R4, [SP,#0x70+var_70]
4D11AE:  STRD.W          R1, R0, [SP,#0x70+var_68]
4D11B2:  MOV             R1, R5
4D11B4:  LDR             R0, [SP,#0x70+var_4C]
4D11B6:  VSTR            S0, [SP,#0x70+var_60]
4D11BA:  BLX             j__ZN11CPopulation24GeneratePedsAtAttractorsE7CVectorffffii; CPopulation::GeneratePedsAtAttractors(CVector,float,float,float,float,int,int)
4D11BE:  SUB.W           R4, R8, R0
4D11C2:  CMP             R4, #1
4D11C4:  BLT.W           loc_4D12D4
4D11C8:  LDR             R0, =(ThePaths_ptr - 0x4D11D8)
4D11CA:  ADR.W           R9, aJogger; "jogger"
4D11CE:  VLDR            S16, =0.9
4D11D2:  MOVS            R6, #0
4D11D4:  ADD             R0, PC; ThePaths_ptr
4D11D6:  MOVW            R8, #0xFFFF
4D11DA:  LDR             R0, [R0]; ThePaths
4D11DC:  STR             R0, [SP,#0x70+var_50]
4D11DE:  LDR             R0, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x4D11E4)
4D11E0:  ADD             R0, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
4D11E2:  LDR             R0, [R0]; CAnimManager::ms_numAnimAssocDefinitions ...
4D11E4:  STR             R0, [SP,#0x70+var_58]
4D11E6:  LDR             R0, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x4D11EC)
4D11E8:  ADD             R0, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
4D11EA:  LDR.W           R10, [R0]; CAnimManager::ms_numAnimAssocDefinitions ...
4D11EE:  LDR             R0, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x4D11F4)
4D11F0:  ADD             R0, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
4D11F2:  LDR.W           R11, [R0]; CAnimManager::ms_numAnimAssocDefinitions ...
4D11F6:  ADD             R0, SP, #0x70+var_38
4D11F8:  STR             R0, [SP,#0x70+var_70]
4D11FA:  ADD             R0, SP, #0x70+var_3C
4D11FC:  STR             R0, [SP,#0x70+var_6C]
4D11FE:  ADD             R0, SP, #0x70+var_40
4D1200:  STRH.W          R8, [SP,#0x70+var_38]
4D1204:  STRH.W          R8, [SP,#0x70+var_3C]
4D1208:  ADD             R3, SP, #0x70+var_34
4D120A:  STR             R0, [SP,#0x70+var_68]
4D120C:  MOV             R2, R5
4D120E:  LDRD.W          R0, R1, [SP,#0x70+var_50]
4D1212:  BLX             j__ZN9CPathFind33GeneratePedCreationCoors_InteriorEffP7CVectorP12CNodeAddressS3_Pf; CPathFind::GeneratePedCreationCoors_Interior(float,float,CVector *,CNodeAddress *,CNodeAddress *,float *)
4D1216:  CMP             R0, #1
4D1218:  BNE             loc_4D12C0
4D121A:  ADD             R0, SP, #0x70+var_44
4D121C:  ADD             R1, SP, #0x70+var_48
4D121E:  MOVS            R2, #1
4D1220:  MOVS            R3, #1
4D1222:  BLX             j__ZN9CPopCycle14FindNewPedTypeEP8ePedTypePibb; CPopCycle::FindNewPedType(ePedType *,int *,bool,bool)
4D1226:  CMP             R0, #1
4D1228:  BNE             loc_4D12C0
4D122A:  VLDR            S0, [SP,#0x70+var_2C]
4D122E:  ADD             R2, SP, #0x70+var_34
4D1230:  LDRD.W          R1, R0, [SP,#0x70+var_48]
4D1234:  MOVS            R3, #1
4D1236:  VADD.F32        S0, S0, S16
4D123A:  VSTR            S0, [SP,#0x70+var_2C]
4D123E:  BLX             j__ZN11CPopulation6AddPedE8ePedTypejRK7CVectorb; CPopulation::AddPed(ePedType,uint,CVector const&,bool)
4D1242:  STR             R0, [SP,#0x70+var_54]
4D1244:  MOVS            R1, #7; int
4D1246:  LDR.W           R0, [R0,#0x440]; this
4D124A:  BLX             j__ZN16CPedIntelligence23SetPedDecisionMakerTypeEi; CPedIntelligence::SetPedDecisionMakerType(int)
4D124E:  LDR             R0, [SP,#0x70+var_58]
4D1250:  SUBS            R4, #1
4D1252:  MOV.W           R8, #0
4D1256:  LDR             R1, [R0]
4D1258:  CMP             R1, #1
4D125A:  BLT             loc_4D127C
4D125C:  MOV             R0, R8
4D125E:  BLX             j__ZN12CAnimManager16GetAnimGroupNameE12AssocGroupId; CAnimManager::GetAnimGroupName(AssocGroupId)
4D1262:  MOV             R1, R0; char *
4D1264:  MOV             R0, R9; char *
4D1266:  BLX             strcasecmp
4D126A:  CMP             R0, #0
4D126C:  IT NE
4D126E:  MOVNE           R0, #1
4D1270:  LDR.W           R1, [R11]; CAnimManager::ms_numAnimAssocDefinitions
4D1274:  ADD             R8, R0
4D1276:  BEQ             loc_4D127C
4D1278:  CMP             R8, R1
4D127A:  BLT             loc_4D125C
4D127C:  LDR             R0, [SP,#0x70+var_54]
4D127E:  LDR.W           R0, [R0,#0x4E0]
4D1282:  CMP             R0, R8
4D1284:  BNE             loc_4D12CC
4D1286:  CMP             R1, #1
4D1288:  MOVW            R8, #0xFFFF
4D128C:  BLT             loc_4D12C0
4D128E:  MOVS            R5, #0
4D1290:  MOV             R0, R5
4D1292:  BLX             j__ZN12CAnimManager16GetAnimGroupNameE12AssocGroupId; CAnimManager::GetAnimGroupName(AssocGroupId)
4D1296:  MOV             R1, R0; char *
4D1298:  ADR             R0, dword_4D1308; char *
4D129A:  BLX             strcasecmp
4D129E:  CMP             R0, #0
4D12A0:  MOV             R1, R0
4D12A2:  IT NE
4D12A4:  MOVNE           R1, #1
4D12A6:  CMP             R0, #0
4D12A8:  ADD             R5, R1
4D12AA:  BEQ             loc_4D12B4
4D12AC:  LDR.W           R1, [R10]; CAnimManager::ms_numAnimAssocDefinitions
4D12B0:  CMP             R5, R1
4D12B2:  BLT             loc_4D1290
4D12B4:  CMP             R0, #0
4D12B6:  ITT EQ
4D12B8:  LDREQ           R0, [SP,#0x70+var_54]
4D12BA:  STREQ.W         R5, [R0,#0x4E0]
4D12BE:  LDR             R5, [SP,#0x70+var_5C]
4D12C0:  CMP             R6, #0x17
4D12C2:  BGT             loc_4D12D4
4D12C4:  ADDS            R6, #1
4D12C6:  CMP             R4, #0
4D12C8:  BGT             loc_4D11F6
4D12CA:  B               loc_4D12D4
4D12CC:  MOVW            R8, #0xFFFF
4D12D0:  CMP             R6, #0x17
4D12D2:  BLE             loc_4D12C4
4D12D4:  ADD             SP, SP, #0x48 ; 'H'
4D12D6:  VPOP            {D8}
4D12DA:  ADD             SP, SP, #4
4D12DC:  POP.W           {R8-R11}
4D12E0:  POP             {R4-R7,PC}
