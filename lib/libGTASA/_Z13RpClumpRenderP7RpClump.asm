; =========================================================
; Game Engine Function: _Z13RpClumpRenderP7RpClump
; Address            : 0x2142DC - 0x21431E
; =========================================================

2142DC:  PUSH            {R4-R7,LR}
2142DE:  ADD             R7, SP, #0xC
2142E0:  PUSH.W          {R8}
2142E4:  MOV             R4, R0
2142E6:  ADD.W           R5, R4, #8
2142EA:  MOV             R6, R5
2142EC:  B               loc_214306
2142EE:  LDR.W           R0, [R6,#-0x3C]
2142F2:  SUB.W           R8, R6, #0x40 ; '@'
2142F6:  MOVS            R0, #0
2142F8:  NOP
2142FA:  LDR             R1, [R6,#8]
2142FC:  MOV             R0, R8
2142FE:  BLX             R1
214300:  CMP             R0, #0
214302:  IT EQ
214304:  MOVEQ           R4, R0
214306:  LDR             R6, [R6]
214308:  CMP             R6, R5
21430A:  BEQ             loc_214316
21430C:  LDRB.W          R0, [R6,#-0x3E]
214310:  LSLS            R0, R0, #0x1D
214312:  BPL             loc_214306
214314:  B               loc_2142EE
214316:  MOV             R0, R4
214318:  POP.W           {R8}
21431C:  POP             {R4-R7,PC}
