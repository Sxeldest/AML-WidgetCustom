; =========================================================
; Game Engine Function: _ZN10CStreaming19UpdateForAnimViewerEv
; Address            : 0x2D2238 - 0x2D2276
; =========================================================

2D2238:  PUSH            {R7,LR}
2D223A:  MOV             R7, SP
2D223C:  SUB             SP, SP, #0x10
2D223E:  MOVS            R0, #0
2D2240:  MOVS            R1, #0; CVector *
2D2242:  STRD.W          R0, R0, [SP,#0x18+var_14]
2D2246:  STR             R0, [SP,#0x18+var_C]
2D2248:  ADD             R0, SP, #0x18+var_14; this
2D224A:  BLX             j__ZN10CStreaming22AddModelsToRequestListERK7CVectorj; CStreaming::AddModelsToRequestList(CVector const&,uint)
2D224E:  BLX             j__ZN10CStreaming19LoadRequestedModelsEv; CStreaming::LoadRequestedModels(void)
2D2252:  LDR             R0, =(_ZN10CStreaming13ms_memoryUsedE_ptr - 0x2D225A)
2D2254:  LDR             R1, =(_ZN10CStreaming21ms_numModelsRequestedE_ptr - 0x2D225E)
2D2256:  ADD             R0, PC; _ZN10CStreaming13ms_memoryUsedE_ptr
2D2258:  LDR             R2, =(gString_ptr - 0x2D2262)
2D225A:  ADD             R1, PC; _ZN10CStreaming21ms_numModelsRequestedE_ptr
2D225C:  LDR             R0, [R0]; CStreaming::ms_memoryUsed ...
2D225E:  ADD             R2, PC; gString_ptr
2D2260:  LDR             R1, [R1]; CStreaming::ms_numModelsRequested ...
2D2262:  LDR             R3, [R0]; CStreaming::ms_memoryUsed
2D2264:  LDR             R0, [R2]; gString
2D2266:  LDR             R2, [R1]; CStreaming::ms_numModelsRequested
2D2268:  ADR             R1, aRequestedDMemo; "Requested %d, memory size %dK\n"
2D226A:  LSLS            R3, R3, #1
2D226C:  ADD             SP, SP, #0x10
2D226E:  POP.W           {R7,LR}
2D2272:  B.W             sub_5E6BC0
