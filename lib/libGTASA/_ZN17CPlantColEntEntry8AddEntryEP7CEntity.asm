; =========================================================
; Game Engine Function: _ZN17CPlantColEntEntry8AddEntryEP7CEntity
; Address            : 0x2CE2FC - 0x2CE390
; =========================================================

2CE2FC:  PUSH            {R4-R7,LR}
2CE2FE:  ADD             R7, SP, #0xC
2CE300:  PUSH.W          {R11}
2CE304:  MOV             R5, R1
2CE306:  MOV             R4, R0
2CE308:  MOV             R0, R5; this
2CE30A:  MOV             R1, R4; CEntity **
2CE30C:  STR             R5, [R4]
2CE30E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
2CE312:  MOV             R0, R5; this
2CE314:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
2CE318:  LDR             R0, [R0,#0x2C]
2CE31A:  CBZ             R0, loc_2CE35C
2CE31C:  LDRSH.W         R6, [R0,#4]
2CE320:  MOVS            R5, #0
2CE322:  CMP             R6, #1
2CE324:  BLT             loc_2CE388
2CE326:  LSLS            R0, R6, #2; byte_count
2CE328:  STRH            R6, [R4,#8]
2CE32A:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
2CE32E:  CMP             R6, #1
2CE330:  STR             R0, [R4,#4]
2CE332:  STR             R5, [R0]
2CE334:  BEQ             loc_2CE346
2CE336:  MOVS            R0, #1
2CE338:  MOVS            R1, #0
2CE33A:  LDR             R2, [R4,#4]
2CE33C:  STR.W           R1, [R2,R0,LSL#2]
2CE340:  ADDS            R0, #1
2CE342:  CMP             R6, R0
2CE344:  BNE             loc_2CE33A
2CE346:  LDRD.W          R1, R0, [R4,#0xC]
2CE34A:  CBZ             R0, loc_2CE360
2CE34C:  CMP             R1, #0
2CE34E:  ITTE NE
2CE350:  STRNE           R0, [R1,#0x10]
2CE352:  LDRDNE.W        R1, R0, [R4,#0xC]
2CE356:  MOVEQ           R1, #0
2CE358:  STR             R1, [R0,#0xC]
2CE35A:  B               loc_2CE370
2CE35C:  MOVS            R5, #0
2CE35E:  B               loc_2CE388
2CE360:  LDR             R0, =(_ZN9CPlantMgr22m_UnusedColEntListHeadE_ptr - 0x2CE368)
2CE362:  CMP             R1, #0
2CE364:  ADD             R0, PC; _ZN9CPlantMgr22m_UnusedColEntListHeadE_ptr
2CE366:  LDR             R0, [R0]; CPlantMgr::m_UnusedColEntListHead ...
2CE368:  STR             R1, [R0]; CPlantMgr::m_UnusedColEntListHead
2CE36A:  ITT NE
2CE36C:  MOVNE           R0, #0
2CE36E:  STRNE           R0, [R1,#0x10]
2CE370:  LDR             R0, =(_ZN9CPlantMgr21m_CloseColEntListHeadE_ptr - 0x2CE37A)
2CE372:  MOV             R5, R4
2CE374:  MOVS            R2, #0
2CE376:  ADD             R0, PC; _ZN9CPlantMgr21m_CloseColEntListHeadE_ptr
2CE378:  LDR             R1, [R0]; CPlantMgr::m_CloseColEntListHead ...
2CE37A:  LDR             R0, [R1]; CPlantMgr::m_CloseColEntListHead
2CE37C:  STRD.W          R0, R2, [R4,#0xC]
2CE380:  CMP             R0, #0
2CE382:  STR             R4, [R1]; CPlantMgr::m_CloseColEntListHead
2CE384:  IT NE
2CE386:  STRNE           R4, [R0,#0x10]
2CE388:  MOV             R0, R5
2CE38A:  POP.W           {R11}
2CE38E:  POP             {R4-R7,PC}
