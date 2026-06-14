; =========================================================
; Game Engine Function: _ZN11CPopulation19ConvertToRealObjectEP12CDummyObject
; Address            : 0x4CE288 - 0x4CE360
; =========================================================

4CE288:  PUSH            {R4,R5,R7,LR}
4CE28A:  ADD             R7, SP, #8
4CE28C:  MOV             R5, R0
4CE28E:  BLX             j__ZN11CPopulation21TestSafeForRealObjectEP12CDummyObject; CPopulation::TestSafeForRealObject(CDummyObject *)
4CE292:  CMP             R0, #1
4CE294:  BNE             locret_4CE35E
4CE296:  MOV             R0, R5; this
4CE298:  BLX             j__ZN12CDummyObject12CreateObjectEv; CDummyObject::CreateObject(void)
4CE29C:  MOV             R4, R0
4CE29E:  CMP             R4, #0
4CE2A0:  BEQ             locret_4CE35E
4CE2A2:  MOV             R0, R5; this
4CE2A4:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
4CE2A8:  LDR             R0, [R5,#0x1C]
4CE2AA:  BIC.W           R0, R0, #0x80
4CE2AE:  STR             R0, [R5,#0x1C]
4CE2B0:  MOV             R0, R5; this
4CE2B2:  BLX             j__ZN7CEntity17ResolveReferencesEv; CEntity::ResolveReferences(void)
4CE2B6:  MOV             R0, R4; this
4CE2B8:  MOV             R1, R5; CDummyObject *
4CE2BA:  BLX             j__ZN7CObject15SetRelatedDummyEP12CDummyObject; CObject::SetRelatedDummy(CDummyObject *)
4CE2BE:  MOV             R0, R4; this
4CE2C0:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
4CE2C4:  LDRB.W          R0, [R4,#0x3A]
4CE2C8:  AND.W           R0, R0, #7
4CE2CC:  CMP             R0, #4
4CE2CE:  BNE             loc_4CE310
4CE2D0:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CE2DA)
4CE2D2:  LDRSH.W         R1, [R4,#0x26]
4CE2D6:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CE2D8:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CE2DA:  LDR.W           R0, [R0,R1,LSL#2]
4CE2DE:  LDR             R1, [R0]
4CE2E0:  LDR             R1, [R1,#8]
4CE2E2:  BLX             R1
4CE2E4:  CBZ             R0, loc_4CE310
4CE2E6:  LDRH            R0, [R0,#0x28]
4CE2E8:  AND.W           R0, R0, #0x7000
4CE2EC:  ORR.W           R0, R0, #0x800
4CE2F0:  CMP.W           R0, #0x2800
4CE2F4:  BNE             loc_4CE310
4CE2F6:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4CE300)
4CE2F8:  LDRSH.W         R1, [R4,#0x26]
4CE2FC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4CE2FE:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4CE300:  LDR.W           R0, [R0,R1,LSL#2]
4CE304:  LDRH            R0, [R0,#0x28]
4CE306:  AND.W           R0, R0, #0x7800
4CE30A:  CMP.W           R0, #0x2800
4CE30E:  BNE             loc_4CE356
4CE310:  LDR             R0, =(MI_BUOY_ptr - 0x4CE31A)
4CE312:  LDRSH.W         R1, [R4,#0x26]
4CE316:  ADD             R0, PC; MI_BUOY_ptr
4CE318:  LDR             R0, [R0]; MI_BUOY
4CE31A:  LDRH            R0, [R0]
4CE31C:  CMP             R1, R0
4CE31E:  BEQ             loc_4CE32A
4CE320:  LDRB.W          R0, [R4,#0x47]
4CE324:  LSLS            R0, R0, #0x1E
4CE326:  IT PL
4CE328:  POPPL           {R4,R5,R7,PC}
4CE32A:  LDR             R0, [R4]
4CE32C:  MOVS            R1, #0
4CE32E:  MOVS            R5, #0
4CE330:  LDR             R2, [R0,#0x14]
4CE332:  MOV             R0, R4
4CE334:  BLX             R2
4CE336:  STRD.W          R5, R5, [R4,#0x48]
4CE33A:  MOVW            R1, #0x126F
4CE33E:  LDR             R0, [R4,#0x44]
4CE340:  MOVT            R1, #0xBA83
4CE344:  STR             R1, [R4,#0x50]
4CE346:  ORR.W           R0, R0, #0x8000000
4CE34A:  STR             R0, [R4,#0x44]
4CE34C:  MOV             R0, R4; this
4CE34E:  POP.W           {R4,R5,R7,LR}
4CE352:  B.W             sub_18BFE0
4CE356:  LDR             R0, [R4,#0x1C]
4CE358:  BIC.W           R0, R0, #0x80
4CE35C:  STR             R0, [R4,#0x1C]
4CE35E:  POP             {R4,R5,R7,PC}
