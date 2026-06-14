; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline10CreatePipeEv
; Address            : 0x2CA40C - 0x2CA424
; =========================================================

2CA40C:  PUSH            {R4,R6,R7,LR}
2CA40E:  ADD             R7, SP, #8
2CA410:  LDR             R0, =(_ZN25CCustomBuildingDNPipeline11ObjPipelineE_ptr - 0x2CA416)
2CA412:  ADD             R0, PC; _ZN25CCustomBuildingDNPipeline11ObjPipelineE_ptr ; this
2CA414:  LDR             R4, [R0]; CCustomBuildingDNPipeline::ObjPipeline ...
2CA416:  BLX             j__ZN25CCustomBuildingDNPipeline19CreateCustomObjPipeEv; CCustomBuildingDNPipeline::CreateCustomObjPipe(void)
2CA41A:  CMP             R0, #0
2CA41C:  STR             R0, [R4]; CCustomBuildingDNPipeline::ObjPipeline
2CA41E:  IT NE
2CA420:  MOVNE           R0, #1
2CA422:  POP             {R4,R6,R7,PC}
