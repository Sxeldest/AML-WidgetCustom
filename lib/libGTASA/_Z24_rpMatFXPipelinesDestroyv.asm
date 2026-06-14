; =========================================================
; Game Engine Function: _Z24_rpMatFXPipelinesDestroyv
; Address            : 0x1C4844 - 0x1C4892
; =========================================================

1C4844:  PUSH            {R7,LR}
1C4846:  MOV             R7, SP
1C4848:  LDR             R0, =(dword_6B70E0 - 0x1C484E)
1C484A:  ADD             R0, PC; dword_6B70E0
1C484C:  LDR             R0, [R0]
1C484E:  CBZ             R0, loc_1C4866
1C4850:  LDR             R1, =(RwEngineInstance_ptr - 0x1C4856)
1C4852:  ADD             R1, PC; RwEngineInstance_ptr
1C4854:  LDR             R1, [R1]; RwEngineInstance
1C4856:  LDR             R1, [R1]
1C4858:  LDR.W           R1, [R1,#0x130]
1C485C:  BLX             R1
1C485E:  LDR             R0, =(dword_6B70E0 - 0x1C4866)
1C4860:  MOVS            R1, #0
1C4862:  ADD             R0, PC; dword_6B70E0
1C4864:  STR             R1, [R0]
1C4866:  LDR             R0, =(dword_6B70DC - 0x1C486C)
1C4868:  ADD             R0, PC; dword_6B70DC
1C486A:  LDR             R0, [R0]
1C486C:  CBZ             R0, loc_1C487A
1C486E:  BLX             j__Z18_rxPipelineDestroyP10RxPipeline; _rxPipelineDestroy(RxPipeline *)
1C4872:  LDR             R0, =(dword_6B70DC - 0x1C487A)
1C4874:  MOVS            R1, #0
1C4876:  ADD             R0, PC; dword_6B70DC
1C4878:  STR             R1, [R0]
1C487A:  LDR             R0, =(dword_6B70D8 - 0x1C4880)
1C487C:  ADD             R0, PC; dword_6B70D8
1C487E:  LDR             R0, [R0]
1C4880:  CBZ             R0, loc_1C488E
1C4882:  BLX             j__Z18_rxPipelineDestroyP10RxPipeline; _rxPipelineDestroy(RxPipeline *)
1C4886:  LDR             R0, =(dword_6B70D8 - 0x1C488E)
1C4888:  MOVS            R1, #0
1C488A:  ADD             R0, PC; dword_6B70D8
1C488C:  STR             R1, [R0]
1C488E:  MOVS            R0, #1
1C4890:  POP             {R7,PC}
