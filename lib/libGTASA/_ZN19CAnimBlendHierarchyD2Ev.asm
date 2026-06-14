; =========================================================
; Game Engine Function: _ZN19CAnimBlendHierarchyD2Ev
; Address            : 0x38A112 - 0x38A17E
; =========================================================

38A112:  PUSH            {R4-R7,LR}; Alternative name is 'CAnimBlendHierarchy::~CAnimBlendHierarchy()'
38A114:  ADD             R7, SP, #0xC
38A116:  PUSH.W          {R8,R9,R11}
38A11A:  MOV             R4, R0
38A11C:  LDR             R0, [R4,#4]
38A11E:  CBZ             R0, loc_38A130
38A120:  LDRB            R1, [R0,#4]
38A122:  LSLS            R1, R1, #0x1C; CAnimBlendHierarchy *
38A124:  ITE MI
38A126:  LDRMI.W         R9, [R0,#8]
38A12A:  MOVPL.W         R9, #0
38A12E:  B               loc_38A134
38A130:  MOV.W           R9, #0
38A134:  MOV             R0, R4; this
38A136:  BLX             j__ZN12CAnimManager27RemoveFromUncompressedCacheEP19CAnimBlendHierarchy; CAnimManager::RemoveFromUncompressedCache(CAnimBlendHierarchy *)
38A13A:  LDR             R0, [R4,#4]
38A13C:  CBZ             R0, loc_38A162
38A13E:  LDR.W           R1, [R0,#-4]
38A142:  SUB.W           R8, R0, #8
38A146:  CBZ             R1, loc_38A15C
38A148:  SUB.W           R6, R0, #0xC
38A14C:  ADD.W           R0, R1, R1,LSL#1
38A150:  LSLS            R5, R0, #2
38A152:  ADDS            R0, R6, R5; this
38A154:  BLX             j__ZN18CAnimBlendSequenceD2Ev; CAnimBlendSequence::~CAnimBlendSequence()
38A158:  SUBS            R5, #0xC
38A15A:  BNE             loc_38A152
38A15C:  MOV             R0, R8; void *
38A15E:  BLX             _ZdaPv; operator delete[](void *)
38A162:  MOVS            R0, #0
38A164:  CMP.W           R9, #0
38A168:  STRH            R0, [R4,#8]
38A16A:  STR             R0, [R4,#4]
38A16C:  STR             R0, [R4,#0x10]
38A16E:  ITT NE
38A170:  MOVNE           R0, R9; this
38A172:  BLXNE           j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
38A176:  MOV             R0, R4
38A178:  POP.W           {R8,R9,R11}
38A17C:  POP             {R4-R7,PC}
