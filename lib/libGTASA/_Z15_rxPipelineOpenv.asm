; =========================================================
; Game Engine Function: _Z15_rxPipelineOpenv
; Address            : 0x1DE24C - 0x1DE30A
; =========================================================

1DE24C:  PUSH            {R4,R5,R7,LR}
1DE24E:  ADD             R7, SP, #8
1DE250:  SUB             SP, SP, #8
1DE252:  LDR             R0, =(RxPipelineInstanced_ptr - 0x1DE258)
1DE254:  ADD             R0, PC; RxPipelineInstanced_ptr
1DE256:  LDR             R0, [R0]; RxPipelineInstanced
1DE258:  LDR             R0, [R0]
1DE25A:  CBZ             R0, loc_1DE262
1DE25C:  MOVS            R0, #0
1DE25E:  ADD             SP, SP, #8
1DE260:  POP             {R4,R5,R7,PC}
1DE262:  LDR             R0, =(_rxHeapInitialSize_ptr - 0x1DE268)
1DE264:  ADD             R0, PC; _rxHeapInitialSize_ptr
1DE266:  LDR             R0, [R0]; _rxHeapInitialSize
1DE268:  LDR             R0, [R0]; unsigned int
1DE26A:  BLX             j__Z12RxHeapCreatej; RxHeapCreate(uint)
1DE26E:  LDR             R1, =(_rxHeapGlobal_ptr - 0x1DE276)
1DE270:  CMP             R0, #0
1DE272:  ADD             R1, PC; _rxHeapGlobal_ptr
1DE274:  LDR             R1, [R1]; _rxHeapGlobal
1DE276:  STR             R0, [R1]
1DE278:  BEQ             loc_1DE25C
1DE27A:  LDR             R0, =(dword_6826B4 - 0x1DE284)
1DE27C:  MOVS            R2, #4
1DE27E:  LDR             R1, =(dword_6826B0 - 0x1DE286)
1DE280:  ADD             R0, PC; dword_6826B4
1DE282:  ADD             R1, PC; dword_6826B0
1DE284:  LDR             R3, [R0]
1DE286:  LDR             R0, =(unk_6BCFE4 - 0x1DE28E)
1DE288:  LDR             R1, [R1]
1DE28A:  ADD             R0, PC; unk_6BCFE4
1DE28C:  STR             R0, [SP,#0x10+var_10]
1DE28E:  MOVS            R0, #0x34 ; '4'
1DE290:  BLX             j__Z35RwFreeListCreateAndPreallocateSpaceiiiiP10RwFreeList; RwFreeListCreateAndPreallocateSpace(int,int,int,int,RwFreeList *)
1DE294:  LDR             R1, =(_rxPipelineGlobalsOffset_ptr - 0x1DE29C)
1DE296:  LDR             R2, =(RwEngineInstance_ptr - 0x1DE29E)
1DE298:  ADD             R1, PC; _rxPipelineGlobalsOffset_ptr
1DE29A:  ADD             R2, PC; RwEngineInstance_ptr
1DE29C:  LDR             R1, [R1]; _rxPipelineGlobalsOffset
1DE29E:  LDR             R2, [R2]; RwEngineInstance
1DE2A0:  LDR.W           R12, [R1]
1DE2A4:  LDR             R3, [R2]
1DE2A6:  STR.W           R0, [R3,R12]
1DE2AA:  LDR             R0, [R1]
1DE2AC:  LDR             R1, [R2]
1DE2AE:  LDR             R2, [R1,R0]
1DE2B0:  CBZ             R2, loc_1DE2F6
1DE2B2:  ADD             R0, R1
1DE2B4:  LDR             R1, =(_rxPipelineMaxNodes_ptr - 0x1DE2BC)
1DE2B6:  LDR             R2, =(_rxPipelineGlobalsOffset_ptr - 0x1DE2C0)
1DE2B8:  ADD             R1, PC; _rxPipelineMaxNodes_ptr
1DE2BA:  LDR             R3, =(RwEngineInstance_ptr - 0x1DE2C4)
1DE2BC:  ADD             R2, PC; _rxPipelineGlobalsOffset_ptr
1DE2BE:  LDR             R1, [R1]; _rxPipelineMaxNodes
1DE2C0:  ADD             R3, PC; RwEngineInstance_ptr
1DE2C2:  LDR             R4, [R2]; _rxPipelineGlobalsOffset
1DE2C4:  LDR             R5, [R3]; RwEngineInstance
1DE2C6:  LDR             R1, [R1]
1DE2C8:  STR             R1, [R0,#0x38]
1DE2CA:  LDR             R0, [R4]
1DE2CC:  LDR             R1, [R5]
1DE2CE:  ADD             R0, R1
1DE2D0:  ADDS            R0, #4
1DE2D2:  BLX             j__Z46RxRenderStateVectorSetDefaultRenderStateVectorP19RxRenderStateVector; RxRenderStateVectorSetDefaultRenderStateVector(RxRenderStateVector *)
1DE2D6:  LDR             R0, [R4]
1DE2D8:  LDR             R1, [R5]
1DE2DA:  LDR             R2, =(RxPipelineInstanced_ptr - 0x1DE2E4)
1DE2DC:  ADD             R0, R1
1DE2DE:  MOVS            R1, #0
1DE2E0:  ADD             R2, PC; RxPipelineInstanced_ptr
1DE2E2:  STR             R1, [R0,#0x34]
1DE2E4:  LDR             R0, [R4]
1DE2E6:  LDR             R3, [R5]
1DE2E8:  LDR             R2, [R2]; RxPipelineInstanced
1DE2EA:  ADD             R0, R3
1DE2EC:  STR             R1, [R0,#0x30]
1DE2EE:  MOVS            R0, #1
1DE2F0:  STR             R0, [R2]
1DE2F2:  ADD             SP, SP, #8
1DE2F4:  POP             {R4,R5,R7,PC}
1DE2F6:  LDR             R0, =(_rxHeapGlobal_ptr - 0x1DE2FC)
1DE2F8:  ADD             R0, PC; _rxHeapGlobal_ptr
1DE2FA:  LDR             R4, [R0]; _rxHeapGlobal
1DE2FC:  LDR             R0, [R4]
1DE2FE:  BLX             j__Z13RxHeapDestroyP6RxHeap; RxHeapDestroy(RxHeap *)
1DE302:  MOVS            R0, #0
1DE304:  STR             R0, [R4]
1DE306:  ADD             SP, SP, #8
1DE308:  POP             {R4,R5,R7,PC}
