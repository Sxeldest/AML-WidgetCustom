; =========================================================
; Game Engine Function: _ZNK16CEventGunAimedAt10AffectsPedEP4CPed
; Address            : 0x37621A - 0x3762C6
; =========================================================

37621A:  PUSH            {R4,R5,R7,LR}
37621C:  ADD             R7, SP, #8
37621E:  MOV             R4, R1
376220:  MOV             R5, R0
376222:  MOV             R0, R4; this
376224:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
376228:  CBNZ            R0, loc_37627E
37622A:  LDR.W           R0, [R4,#0x440]
37622E:  ADDS            R0, #4; this
376230:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
376234:  CBZ             R0, loc_37624E
376236:  LDR.W           R0, [R4,#0x440]
37623A:  ADDS            R0, #4; this
37623C:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
376240:  LDR             R1, [R0]
376242:  LDR             R1, [R1,#0x14]
376244:  BLX             R1
376246:  MOVW            R1, #0x259
37624A:  CMP             R0, R1
37624C:  BEQ             loc_37627E
37624E:  LDR             R2, [R5,#0x10]
376250:  CBZ             R2, loc_37627E
376252:  LDR             R3, [R2,#0x14]
376254:  LDR.W           R0, [R4,#0x440]; this
376258:  ADD.W           R1, R3, #0x30 ; '0'
37625C:  CMP             R3, #0
37625E:  IT EQ
376260:  ADDEQ           R1, R2, #4; CVector *
376262:  BLX             j__ZNK16CPedIntelligence15IsInSeeingRangeERK7CVector; CPedIntelligence::IsInSeeingRange(CVector const&)
376266:  CMP             R0, #1
376268:  BNE             loc_37627E
37626A:  MOV             R0, R4; this
37626C:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
376270:  CMP             R0, #1
376272:  BNE             loc_37627E
376274:  LDR             R1, [R5,#0x10]; CPed *
376276:  MOV             R0, R4; this
376278:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
37627C:  CBZ             R0, loc_376282
37627E:  MOVS            R0, #0
376280:  POP             {R4,R5,R7,PC}
376282:  LDRB.W          R0, [R4,#0x485]
376286:  LSLS            R0, R0, #0x1F
376288:  ITT NE
37628A:  LDRNE.W         R0, [R4,#0x590]; this
37628E:  CMPNE           R0, #0
376290:  BEQ             loc_3762A8
376292:  MOV             R1, R4; CPed *
376294:  BLX             j__ZNK8CVehicle11IsPassengerEPK4CPed; CVehicle::IsPassenger(CPed const*)
376298:  CMP             R0, #1
37629A:  BNE             loc_3762A8
37629C:  LDR.W           R0, [R4,#0x590]
3762A0:  LDR.W           R0, [R0,#0x464]
3762A4:  CMP             R0, #0
3762A6:  BNE             loc_37627E
3762A8:  LDR.W           R0, [R4,#0x59C]
3762AC:  CMP             R0, #6
3762AE:  BNE             loc_3762C2
3762B0:  MOV.W           R0, #0xFFFFFFFF; int
3762B4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3762B8:  MOV             R2, R0
3762BA:  MOVS            R0, #0x16
3762BC:  MOV             R1, R4
3762BE:  BLX             j__ZN6CCrime11ReportCrimeE10eCrimeTypeP7CEntityP4CPed; CCrime::ReportCrime(eCrimeType,CEntity *,CPed *)
3762C2:  MOVS            R0, #1
3762C4:  POP             {R4,R5,R7,PC}
