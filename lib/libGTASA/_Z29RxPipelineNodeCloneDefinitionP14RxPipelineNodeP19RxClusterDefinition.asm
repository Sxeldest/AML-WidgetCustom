; =========================================================
; Game Engine Function: _Z29RxPipelineNodeCloneDefinitionP14RxPipelineNodeP19RxClusterDefinition
; Address            : 0x1DEB14 - 0x1DEB4C
; =========================================================

1DEB14:  PUSH            {R7,LR}
1DEB16:  MOV             R7, SP
1DEB18:  CBZ             R0, loc_1DEB48
1DEB1A:  CMP             R1, #0
1DEB1C:  ITTT NE
1DEB1E:  LDRNE           R2, [R0]
1DEB20:  LDRNE.W         R12, [R2,#0x20]
1DEB24:  CMPNE.W         R12, #0
1DEB28:  BEQ             loc_1DEB42
1DEB2A:  LDR.W           LR, [R2,#0x24]
1DEB2E:  MOVS            R2, #0
1DEB30:  LDR.W           R3, [LR]
1DEB34:  CMP             R3, R1
1DEB36:  BEQ             loc_1DEB48
1DEB38:  ADDS            R2, #1
1DEB3A:  ADD.W           LR, LR, #0xC
1DEB3E:  CMP             R2, R12
1DEB40:  BCC             loc_1DEB30
1DEB42:  POP.W           {R7,LR}
1DEB46:  B               sub_1DEB4C
1DEB48:  MOVS            R0, #0
1DEB4A:  POP             {R7,PC}
