; =========================================================
; Game Engine Function: _ZN23CCustomBuildingRenderer10InitialiseEv
; Address            : 0x2CA1AC - 0x2CA1C8
; =========================================================

2CA1AC:  PUSH            {R7,LR}
2CA1AE:  MOV             R7, SP
2CA1B0:  BLX             j__ZN23CCustomBuildingPipeline10CreatePipeEv; CCustomBuildingPipeline::CreatePipe(void)
2CA1B4:  CMP             R0, #0
2CA1B6:  ITT EQ
2CA1B8:  MOVEQ           R0, #0; this
2CA1BA:  POPEQ           {R7,PC}
2CA1BC:  BLX             j__ZN25CCustomBuildingDNPipeline10CreatePipeEv; CCustomBuildingDNPipeline::CreatePipe(void)
2CA1C0:  CMP             R0, #0
2CA1C2:  IT NE
2CA1C4:  MOVNE           R0, #1
2CA1C6:  POP             {R7,PC}
