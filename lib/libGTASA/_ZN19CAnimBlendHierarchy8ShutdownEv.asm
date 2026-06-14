; =========================================================
; Game Engine Function: _ZN19CAnimBlendHierarchy8ShutdownEv
; Address            : 0x38A1F0 - 0x38A25C
; =========================================================

38A1F0:  PUSH            {R4-R7,LR}
38A1F2:  ADD             R7, SP, #0xC
38A1F4:  PUSH.W          {R8,R9,R11}
38A1F8:  MOV             R4, R0
38A1FA:  LDR             R0, [R4,#4]
38A1FC:  CBZ             R0, loc_38A20E
38A1FE:  LDRB            R1, [R0,#4]
38A200:  LSLS            R1, R1, #0x1C; CAnimBlendHierarchy *
38A202:  ITE MI
38A204:  LDRMI.W         R9, [R0,#8]
38A208:  MOVPL.W         R9, #0
38A20C:  B               loc_38A212
38A20E:  MOV.W           R9, #0
38A212:  MOV             R0, R4; this
38A214:  BLX             j__ZN12CAnimManager27RemoveFromUncompressedCacheEP19CAnimBlendHierarchy; CAnimManager::RemoveFromUncompressedCache(CAnimBlendHierarchy *)
38A218:  LDR             R0, [R4,#4]
38A21A:  CBZ             R0, loc_38A240
38A21C:  LDR.W           R1, [R0,#-4]
38A220:  SUB.W           R8, R0, #8
38A224:  CBZ             R1, loc_38A23A
38A226:  SUB.W           R6, R0, #0xC
38A22A:  ADD.W           R0, R1, R1,LSL#1
38A22E:  LSLS            R5, R0, #2
38A230:  ADDS            R0, R6, R5; this
38A232:  BLX             j__ZN18CAnimBlendSequenceD2Ev; CAnimBlendSequence::~CAnimBlendSequence()
38A236:  SUBS            R5, #0xC
38A238:  BNE             loc_38A230
38A23A:  MOV             R0, R8; void *
38A23C:  BLX             _ZdaPv; operator delete[](void *)
38A240:  MOVS            R5, #0
38A242:  CMP.W           R9, #0
38A246:  STRH            R5, [R4,#8]
38A248:  STR             R5, [R4,#4]
38A24A:  STR             R5, [R4,#0x10]
38A24C:  ITT NE
38A24E:  MOVNE           R0, R9; this
38A250:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
38A254:  STRB            R5, [R4,#0xA]
38A256:  POP.W           {R8,R9,R11}
38A25A:  POP             {R4-R7,PC}
