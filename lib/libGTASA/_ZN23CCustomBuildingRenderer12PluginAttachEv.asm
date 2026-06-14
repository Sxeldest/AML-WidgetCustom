; =========================================================
; Game Engine Function: _ZN23CCustomBuildingRenderer12PluginAttachEv
; Address            : 0x2CA1D8 - 0x2CA1E8
; =========================================================

2CA1D8:  PUSH            {R7,LR}
2CA1DA:  MOV             R7, SP
2CA1DC:  BLX             j__ZN25CCustomBuildingDNPipeline27ExtraVertColourPluginAttachEv; CCustomBuildingDNPipeline::ExtraVertColourPluginAttach(void)
2CA1E0:  CMP             R0, #0
2CA1E2:  IT NE
2CA1E4:  MOVNE           R0, #1
2CA1E6:  POP             {R7,PC}
