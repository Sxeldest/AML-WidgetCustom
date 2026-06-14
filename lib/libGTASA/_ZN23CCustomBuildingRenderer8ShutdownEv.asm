; =========================================================
; Game Engine Function: _ZN23CCustomBuildingRenderer8ShutdownEv
; Address            : 0x2CA1C8 - 0x2CA1D8
; =========================================================

2CA1C8:  PUSH            {R7,LR}
2CA1CA:  MOV             R7, SP
2CA1CC:  BLX             j__ZN23CCustomBuildingPipeline11DestroyPipeEv; CCustomBuildingPipeline::DestroyPipe(void)
2CA1D0:  POP.W           {R7,LR}
2CA1D4:  B.W             j_j__ZN25CCustomBuildingDNPipeline11DestroyPipeEv; j_CCustomBuildingDNPipeline::DestroyPipe(void)
