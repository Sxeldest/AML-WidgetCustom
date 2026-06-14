; =========================================================
; Game Engine Function: _Z37_rwIm3DDestroyPlatformRenderPipelinesP21rwIm3DRenderPipelines
; Address            : 0x1DDA4E - 0x1DDA96
; =========================================================

1DDA4E:  PUSH            {R4,R5,R7,LR}
1DDA50:  ADD             R7, SP, #8
1DDA52:  MOV             R4, R0
1DDA54:  MOVS            R0, #0
1DDA56:  MOVS            R1, #3
1DDA58:  MOVS            R5, #0
1DDA5A:  BLX             j__Z23RwIm3DSetRenderPipelineP10RxPipeline15RwPrimitiveType; RwIm3DSetRenderPipeline(RxPipeline *,RwPrimitiveType)
1DDA5E:  MOVS            R0, #0
1DDA60:  MOVS            R1, #5
1DDA62:  BLX             j__Z23RwIm3DSetRenderPipelineP10RxPipeline15RwPrimitiveType; RwIm3DSetRenderPipeline(RxPipeline *,RwPrimitiveType)
1DDA66:  MOVS            R0, #0
1DDA68:  MOVS            R1, #4
1DDA6A:  BLX             j__Z23RwIm3DSetRenderPipelineP10RxPipeline15RwPrimitiveType; RwIm3DSetRenderPipeline(RxPipeline *,RwPrimitiveType)
1DDA6E:  MOVS            R0, #0
1DDA70:  MOVS            R1, #1
1DDA72:  BLX             j__Z23RwIm3DSetRenderPipelineP10RxPipeline15RwPrimitiveType; RwIm3DSetRenderPipeline(RxPipeline *,RwPrimitiveType)
1DDA76:  MOVS            R0, #0
1DDA78:  MOVS            R1, #2
1DDA7A:  BLX             j__Z23RwIm3DSetRenderPipelineP10RxPipeline15RwPrimitiveType; RwIm3DSetRenderPipeline(RxPipeline *,RwPrimitiveType)
1DDA7E:  LDR             R0, [R4]
1DDA80:  CMP             R0, #0
1DDA82:  IT EQ
1DDA84:  POPEQ           {R4,R5,R7,PC}
1DDA86:  BLX             j__Z18_rxPipelineDestroyP10RxPipeline; _rxPipelineDestroy(RxPipeline *)
1DDA8A:  VMOV.I32        Q8, #0
1DDA8E:  VST1.32         {D16-D17}, [R4]!
1DDA92:  STR             R5, [R4]
1DDA94:  POP             {R4,R5,R7,PC}
