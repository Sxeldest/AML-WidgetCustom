; =========================================================
; Game Engine Function: _Z12_rwIm3DClosePvii
; Address            : 0x1DD80C - 0x1DD848
; =========================================================

1DD80C:  PUSH            {R4-R7,LR}
1DD80E:  ADD             R7, SP, #0xC
1DD810:  PUSH.W          {R11}
1DD814:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD81E)
1DD816:  MOV             R4, R0
1DD818:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD820)
1DD81A:  ADD             R1, PC; RwEngineInstance_ptr
1DD81C:  ADD             R0, PC; _rwIm3DModule_ptr
1DD81E:  LDR             R6, [R1]; RwEngineInstance
1DD820:  LDR             R5, [R0]; _rwIm3DModule
1DD822:  LDR             R1, [R6]
1DD824:  LDR             R0, [R5]
1DD826:  ADD             R0, R1
1DD828:  ADDS            R0, #0x20 ; ' '
1DD82A:  BLX             j__Z37_rwIm3DDestroyPlatformRenderPipelinesP21rwIm3DRenderPipelines; _rwIm3DDestroyPlatformRenderPipelines(rwIm3DRenderPipelines *)
1DD82E:  LDR             R0, [R5]
1DD830:  LDR             R1, [R6]
1DD832:  ADD             R0, R1
1DD834:  ADDS            R0, #0x1C
1DD836:  BLX             j__Z39_rwIm3DDestroyPlatformTransformPipelinePP10RxPipeline; _rwIm3DDestroyPlatformTransformPipeline(RxPipeline **)
1DD83A:  LDR             R0, [R5,#(dword_6BCF90 - 0x6BCF8C)]
1DD83C:  SUBS            R0, #1
1DD83E:  STR             R0, [R5,#(dword_6BCF90 - 0x6BCF8C)]
1DD840:  MOV             R0, R4
1DD842:  POP.W           {R11}
1DD846:  POP             {R4-R7,PC}
