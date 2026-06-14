; =========================================================
; Game Engine Function: _Z39_rwIm3DDestroyPlatformTransformPipelinePP10RxPipeline
; Address            : 0x1DDA30 - 0x1DDA4E
; =========================================================

1DDA30:  PUSH            {R4,R5,R7,LR}
1DDA32:  ADD             R7, SP, #8
1DDA34:  MOV             R4, R0
1DDA36:  MOVS            R0, #0
1DDA38:  MOVS            R5, #0
1DDA3A:  BLX             j__Z26RwIm3DSetTransformPipelineP10RxPipeline; RwIm3DSetTransformPipeline(RxPipeline *)
1DDA3E:  LDR             R0, [R4]
1DDA40:  CMP             R0, #0
1DDA42:  IT EQ
1DDA44:  POPEQ           {R4,R5,R7,PC}
1DDA46:  BLX             j__Z18_rxPipelineDestroyP10RxPipeline; _rxPipelineDestroy(RxPipeline *)
1DDA4A:  STR             R5, [R4]
1DDA4C:  POP             {R4,R5,R7,PC}
