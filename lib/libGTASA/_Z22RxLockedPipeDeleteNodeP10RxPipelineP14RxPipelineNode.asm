; =========================================================
; Game Engine Function: _Z22RxLockedPipeDeleteNodeP10RxPipelineP14RxPipelineNode
; Address            : 0x1DFE72 - 0x1DFE9E
; =========================================================

1DFE72:  PUSH            {R4,R6,R7,LR}
1DFE74:  ADD             R7, SP, #8
1DFE76:  MOV             R4, R0
1DFE78:  MOVS            R0, #0
1DFE7A:  CMP             R4, #0
1DFE7C:  IT EQ
1DFE7E:  POPEQ           {R4,R6,R7,PC}
1DFE80:  CMP             R1, #0
1DFE82:  ITT NE
1DFE84:  LDRNE           R2, [R4]
1DFE86:  CMPNE           R2, #0
1DFE88:  BEQ             locret_1DFE98
1DFE8A:  LDR             R0, [R1]
1DFE8C:  CBZ             R0, loc_1DFE9A
1DFE8E:  MOV             R0, R1
1DFE90:  MOV             R1, R4
1DFE92:  BLX             j__Z19PipelineNodeDestroyP14RxPipelineNodeP10RxPipeline; PipelineNodeDestroy(RxPipelineNode *,RxPipeline *)
1DFE96:  MOV             R0, R4
1DFE98:  POP             {R4,R6,R7,PC}
1DFE9A:  MOVS            R0, #0
1DFE9C:  POP             {R4,R6,R7,PC}
