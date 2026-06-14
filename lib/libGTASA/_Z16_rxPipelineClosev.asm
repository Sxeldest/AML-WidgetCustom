; =========================================================
; Game Engine Function: _Z16_rxPipelineClosev
; Address            : 0x1DE1D4 - 0x1DE21E
; =========================================================

1DE1D4:  LDR             R0, =(RxPipelineInstanced_ptr - 0x1DE1DA)
1DE1D6:  ADD             R0, PC; RxPipelineInstanced_ptr
1DE1D8:  LDR             R0, [R0]; RxPipelineInstanced
1DE1DA:  LDR             R0, [R0]
1DE1DC:  CBZ             R0, loc_1DE21A
1DE1DE:  PUSH            {R4,R5,R7,LR}
1DE1E0:  ADD             R7, SP, #8
1DE1E2:  LDR             R0, =(_rxPipelineGlobalsOffset_ptr - 0x1DE1EA)
1DE1E4:  LDR             R1, =(RwEngineInstance_ptr - 0x1DE1EC)
1DE1E6:  ADD             R0, PC; _rxPipelineGlobalsOffset_ptr
1DE1E8:  ADD             R1, PC; RwEngineInstance_ptr
1DE1EA:  LDR             R4, [R0]; _rxPipelineGlobalsOffset
1DE1EC:  LDR             R5, [R1]; RwEngineInstance
1DE1EE:  LDR             R0, [R4]
1DE1F0:  LDR             R1, [R5]
1DE1F2:  LDR             R0, [R1,R0]
1DE1F4:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
1DE1F8:  LDR             R0, =(_rxHeapGlobal_ptr - 0x1DE202)
1DE1FA:  LDR             R2, [R5]
1DE1FC:  MOVS            R5, #0
1DE1FE:  ADD             R0, PC; _rxHeapGlobal_ptr
1DE200:  LDR             R1, [R4]
1DE202:  LDR             R4, [R0]; _rxHeapGlobal
1DE204:  STR             R5, [R2,R1]
1DE206:  LDR             R0, [R4]
1DE208:  BLX             j__Z13RxHeapDestroyP6RxHeap; RxHeapDestroy(RxHeap *)
1DE20C:  LDR             R0, =(RxPipelineInstanced_ptr - 0x1DE214)
1DE20E:  STR             R5, [R4]
1DE210:  ADD             R0, PC; RxPipelineInstanced_ptr
1DE212:  LDR             R0, [R0]; RxPipelineInstanced
1DE214:  STR             R5, [R0]
1DE216:  POP.W           {R4,R5,R7,LR}
1DE21A:  MOVS            R0, #1
1DE21C:  BX              LR
