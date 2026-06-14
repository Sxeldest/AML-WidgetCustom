; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline11DestroyPipeEv
; Address            : 0x2CA4A8 - 0x2CA4CE
; =========================================================

2CA4A8:  LDR             R0, =(_ZN25CCustomBuildingDNPipeline11ObjPipelineE_ptr - 0x2CA4AE)
2CA4AA:  ADD             R0, PC; _ZN25CCustomBuildingDNPipeline11ObjPipelineE_ptr
2CA4AC:  LDR             R0, [R0]; CCustomBuildingDNPipeline::ObjPipeline ...
2CA4AE:  LDR             R0, [R0]; CCustomBuildingDNPipeline::ObjPipeline
2CA4B0:  CMP             R0, #0
2CA4B2:  IT EQ
2CA4B4:  BXEQ            LR
2CA4B6:  PUSH            {R7,LR}
2CA4B8:  MOV             R7, SP
2CA4BA:  BLX             j__Z18_rxPipelineDestroyP10RxPipeline; _rxPipelineDestroy(RxPipeline *)
2CA4BE:  LDR             R0, =(_ZN25CCustomBuildingDNPipeline11ObjPipelineE_ptr - 0x2CA4C6)
2CA4C0:  MOVS            R1, #0
2CA4C2:  ADD             R0, PC; _ZN25CCustomBuildingDNPipeline11ObjPipelineE_ptr
2CA4C4:  LDR             R0, [R0]; CCustomBuildingDNPipeline::ObjPipeline ...
2CA4C6:  STR             R1, [R0]; CCustomBuildingDNPipeline::ObjPipeline
2CA4C8:  POP.W           {R7,LR}
2CA4CC:  BX              LR
