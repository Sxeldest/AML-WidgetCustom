; =========================================================
; Game Engine Function: _Z24RxPipelineFindNodeByNameP10RxPipelinePKcP14RxPipelineNodePi
; Address            : 0x1DF9A8 - 0x1DFA2C
; =========================================================

1DF9A8:  PUSH            {R4-R7,LR}
1DF9AA:  ADD             R7, SP, #0xC
1DF9AC:  PUSH.W          {R8,R9,R11}
1DF9B0:  MOV             R8, R3
1DF9B2:  MOV             R9, R1
1DF9B4:  CBZ             R0, loc_1DFA06
1DF9B6:  CMP.W           R9, #0
1DF9BA:  ITT NE
1DF9BC:  LDRNE           R1, [R0,#4]
1DF9BE:  CMPNE           R1, #0
1DF9C0:  BEQ             loc_1DFA06
1DF9C2:  LDR             R0, [R0,#8]
1DF9C4:  CBZ             R2, loc_1DF9DE
1DF9C6:  SUBS            R4, R1, #1
1DF9C8:  ADD.W           R6, R0, #0x28 ; '('
1DF9CC:  CMP             R2, R0
1DF9CE:  BEQ             loc_1DF9D8
1DF9D0:  CMP             R1, #0
1DF9D2:  MOV             R0, R6
1DF9D4:  MOV             R1, R4
1DF9D6:  BGT             loc_1DF9C6
1DF9D8:  CMP             R4, #1
1DF9DA:  BGE             loc_1DF9E6
1DF9DC:  B               loc_1DFA06
1DF9DE:  MOV             R6, R0
1DF9E0:  MOV             R4, R1
1DF9E2:  CMP             R4, #1
1DF9E4:  BLT             loc_1DFA06
1DF9E6:  LDR             R0, =(RwEngineInstance_ptr - 0x1DF9EC)
1DF9E8:  ADD             R0, PC; RwEngineInstance_ptr
1DF9EA:  LDR             R5, [R0]; RwEngineInstance
1DF9EC:  LDR             R0, [R6]
1DF9EE:  CBZ             R0, loc_1DF9FE
1DF9F0:  LDR             R1, [R5]
1DF9F2:  LDR             R0, [R0]
1DF9F4:  LDR.W           R2, [R1,#0x110]
1DF9F8:  MOV             R1, R9
1DF9FA:  BLX             R2
1DF9FC:  CBZ             R0, loc_1DFA20
1DF9FE:  SUBS            R4, #1
1DFA00:  ADD.W           R6, R6, #0x28 ; '('
1DFA04:  BGT             loc_1DF9EC
1DFA06:  CMP.W           R8, #0
1DFA0A:  MOV.W           R6, #0
1DFA0E:  ITT NE
1DFA10:  MOVNE.W         R0, #0xFFFFFFFF
1DFA14:  STRNE.W         R0, [R8]
1DFA18:  MOV             R0, R6
1DFA1A:  POP.W           {R8,R9,R11}
1DFA1E:  POP             {R4-R7,PC}
1DFA20:  CMP.W           R8, #0
1DFA24:  IT NE
1DFA26:  STRNE.W         R4, [R8]
1DFA2A:  B               loc_1DFA18
