; =========================================================
; Game Engine Function: _ZN23CCustomBuildingPipeline11DestroyPipeEv
; Address            : 0x2CB0E0 - 0x2CB106
; =========================================================

2CB0E0:  LDR             R0, =(_ZN23CCustomBuildingPipeline11ObjPipelineE_ptr - 0x2CB0E6)
2CB0E2:  ADD             R0, PC; _ZN23CCustomBuildingPipeline11ObjPipelineE_ptr
2CB0E4:  LDR             R0, [R0]; CCustomBuildingPipeline::ObjPipeline ...
2CB0E6:  LDR             R0, [R0]; CCustomBuildingPipeline::ObjPipeline
2CB0E8:  CMP             R0, #0
2CB0EA:  IT EQ
2CB0EC:  BXEQ            LR
2CB0EE:  PUSH            {R7,LR}
2CB0F0:  MOV             R7, SP
2CB0F2:  BLX             j__Z18_rxPipelineDestroyP10RxPipeline; _rxPipelineDestroy(RxPipeline *)
2CB0F6:  LDR             R0, =(_ZN23CCustomBuildingPipeline11ObjPipelineE_ptr - 0x2CB0FE)
2CB0F8:  MOVS            R1, #0
2CB0FA:  ADD             R0, PC; _ZN23CCustomBuildingPipeline11ObjPipelineE_ptr
2CB0FC:  LDR             R0, [R0]; CCustomBuildingPipeline::ObjPipeline ...
2CB0FE:  STR             R1, [R0]; CCustomBuildingPipeline::ObjPipeline
2CB100:  POP.W           {R7,LR}
2CB104:  BX              LR
