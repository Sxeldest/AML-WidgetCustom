; =========================================================
; Game Engine Function: _ZN19CAnimBlendHierarchy19RemoveAnimSequencesEv
; Address            : 0x38A17E - 0x38A1F0
; =========================================================

38A17E:  PUSH            {R4-R7,LR}
38A180:  ADD             R7, SP, #0xC
38A182:  PUSH.W          {R8,R9,R11}
38A186:  MOV             R4, R0
38A188:  LDR             R0, [R4,#4]
38A18A:  CBZ             R0, loc_38A19C
38A18C:  LDRB            R1, [R0,#4]
38A18E:  LSLS            R1, R1, #0x1C; CAnimBlendHierarchy *
38A190:  ITE MI
38A192:  LDRMI.W         R9, [R0,#8]
38A196:  MOVPL.W         R9, #0
38A19A:  B               loc_38A1A0
38A19C:  MOV.W           R9, #0
38A1A0:  MOV             R0, R4; this
38A1A2:  BLX             j__ZN12CAnimManager27RemoveFromUncompressedCacheEP19CAnimBlendHierarchy; CAnimManager::RemoveFromUncompressedCache(CAnimBlendHierarchy *)
38A1A6:  LDR             R0, [R4,#4]
38A1A8:  CBZ             R0, loc_38A1CE
38A1AA:  LDR.W           R1, [R0,#-4]
38A1AE:  SUB.W           R8, R0, #8
38A1B2:  CBZ             R1, loc_38A1C8
38A1B4:  SUB.W           R6, R0, #0xC
38A1B8:  ADD.W           R0, R1, R1,LSL#1
38A1BC:  LSLS            R5, R0, #2
38A1BE:  ADDS            R0, R6, R5; this
38A1C0:  BLX             j__ZN18CAnimBlendSequenceD2Ev; CAnimBlendSequence::~CAnimBlendSequence()
38A1C4:  SUBS            R5, #0xC
38A1C6:  BNE             loc_38A1BE
38A1C8:  MOV             R0, R8; void *
38A1CA:  BLX             _ZdaPv; operator delete[](void *)
38A1CE:  MOVS            R0, #0
38A1D0:  CMP.W           R9, #0
38A1D4:  STRH            R0, [R4,#8]
38A1D6:  STR             R0, [R4,#4]
38A1D8:  STR             R0, [R4,#0x10]
38A1DA:  BEQ             loc_38A1EA
38A1DC:  MOV             R0, R9; this
38A1DE:  POP.W           {R8,R9,R11}
38A1E2:  POP.W           {R4-R7,LR}
38A1E6:  B.W             j_j__ZN10CMemoryMgr4FreeEPv; j_CMemoryMgr::Free(void *)
38A1EA:  POP.W           {R8,R9,R11}
38A1EE:  POP             {R4-R7,PC}
