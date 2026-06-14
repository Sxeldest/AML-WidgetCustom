; =========================================================
; Game Engine Function: _ZN9CColStore20LoadAllBoundingBoxesEv
; Address            : 0x2E30D0 - 0x2E3128
; =========================================================

2E30D0:  PUSH            {R4-R7,LR}
2E30D2:  ADD             R7, SP, #0xC
2E30D4:  PUSH.W          {R8}
2E30D8:  BLX             j__ZN9CColAccel14isCacheLoadingEv; CColAccel::isCacheLoading(void)
2E30DC:  CBZ             R0, loc_2E30EA
2E30DE:  POP.W           {R8}
2E30E2:  POP.W           {R4-R7,LR}
2E30E6:  B.W             sub_19A8E8
2E30EA:  LDR             R0, =(_ZN9CColStore11ms_pColPoolE_ptr - 0x2E30F6)
2E30EC:  MOVS            R5, #0
2E30EE:  MOVW            R8, #0x61A9
2E30F2:  ADD             R0, PC; _ZN9CColStore11ms_pColPoolE_ptr
2E30F4:  LDR             R6, [R0]; CColStore::ms_pColPool ...
2E30F6:  LDR             R0, [R6]; CColStore::ms_pColPool
2E30F8:  LDR             R0, [R0,#4]
2E30FA:  ADD             R0, R5
2E30FC:  LDRSB.W         R0, [R0,#1]
2E3100:  CMP             R0, #0
2E3102:  BLT             loc_2E311C
2E3104:  ADD.W           R4, R5, R8
2E3108:  MOVS            R1, #0x10; int
2E310A:  MOV             R0, R4; this
2E310C:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2E3110:  MOVS            R0, #(stderr+1); this
2E3112:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
2E3116:  MOV             R0, R4; this
2E3118:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2E311C:  ADDS            R5, #1
2E311E:  CMP             R5, #0xFE
2E3120:  BNE             loc_2E30F6
2E3122:  POP.W           {R8}
2E3126:  POP             {R4-R7,PC}
