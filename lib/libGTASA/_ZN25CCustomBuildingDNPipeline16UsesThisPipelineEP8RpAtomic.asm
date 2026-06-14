; =========================================================
; Game Engine Function: _ZN25CCustomBuildingDNPipeline16UsesThisPipelineEP8RpAtomic
; Address            : 0x2CA640 - 0x2CA654
; =========================================================

2CA640:  LDR             R1, =(_ZN25CCustomBuildingDNPipeline11ObjPipelineE_ptr - 0x2CA64A)
2CA642:  LDR             R2, [R0,#0x6C]
2CA644:  MOVS            R0, #0
2CA646:  ADD             R1, PC; _ZN25CCustomBuildingDNPipeline11ObjPipelineE_ptr
2CA648:  LDR             R1, [R1]; CCustomBuildingDNPipeline::ObjPipeline ...
2CA64A:  LDR             R1, [R1]; CCustomBuildingDNPipeline::ObjPipeline
2CA64C:  CMP             R1, R2
2CA64E:  IT EQ
2CA650:  MOVEQ           R0, #1
2CA652:  BX              LR
