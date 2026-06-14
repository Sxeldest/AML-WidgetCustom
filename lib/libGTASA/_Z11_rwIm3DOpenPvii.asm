; =========================================================
; Game Engine Function: _Z11_rwIm3DOpenPvii
; Address            : 0x1DD850 - 0x1DD90C
; =========================================================

1DD850:  PUSH            {R4-R7,LR}
1DD852:  ADD             R7, SP, #0xC
1DD854:  PUSH.W          {R11}
1DD858:  LDR             R2, =(_rwIm3DModule_ptr - 0x1DD866)
1DD85A:  MOV             R6, R0
1DD85C:  LDR             R0, =(RwEngineInstance_ptr - 0x1DD86A)
1DD85E:  VMOV.I32        Q8, #0
1DD862:  ADD             R2, PC; _rwIm3DModule_ptr
1DD864:  LDR             R3, =(_rwIm3DGlobals_ptr - 0x1DD86E)
1DD866:  ADD             R0, PC; RwEngineInstance_ptr
1DD868:  LDR             R2, [R2]; _rwIm3DModule
1DD86A:  ADD             R3, PC; _rwIm3DGlobals_ptr
1DD86C:  LDR             R0, [R0]; RwEngineInstance
1DD86E:  LDR             R3, [R3]; _rwIm3DGlobals
1DD870:  STR             R1, [R2]
1DD872:  LDR             R4, [R0]
1DD874:  LDR             R5, [R2,#(dword_6BCF90 - 0x6BCF8C)]
1DD876:  ADD             R4, R1
1DD878:  STR             R4, [R3]
1DD87A:  ADDS            R3, R5, #1
1DD87C:  STR             R3, [R2,#(dword_6BCF90 - 0x6BCF8C)]
1DD87E:  MOVS            R2, #0
1DD880:  STR             R2, [R4,#0x70]
1DD882:  ADD.W           R2, R4, #0x60 ; '`'
1DD886:  VST1.32         {D16-D17}, [R2]
1DD88A:  ADD.W           R2, R4, #0x50 ; 'P'
1DD88E:  VST1.32         {D16-D17}, [R2]
1DD892:  ADD.W           R2, R4, #0x40 ; '@'
1DD896:  VST1.32         {D16-D17}, [R2]
1DD89A:  ADD.W           R2, R4, #0x30 ; '0'
1DD89E:  VST1.32         {D16-D17}, [R2]
1DD8A2:  ADD.W           R2, R4, #0x20 ; ' '
1DD8A6:  VST1.32         {D16-D17}, [R2]
1DD8AA:  VST1.32         {D16-D17}, [R4]!
1DD8AE:  VST1.32         {D16-D17}, [R4]
1DD8B2:  LDR             R0, [R0]
1DD8B4:  ADD             R0, R1
1DD8B6:  ADDS            R0, #0x1C
1DD8B8:  BLX             j__Z38_rwIm3DCreatePlatformTransformPipelinePP10RxPipeline; _rwIm3DCreatePlatformTransformPipeline(RxPipeline **)
1DD8BC:  CBZ             R0, loc_1DD8D8
1DD8BE:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD8C6)
1DD8C0:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD8C8)
1DD8C2:  ADD             R0, PC; _rwIm3DModule_ptr
1DD8C4:  ADD             R1, PC; RwEngineInstance_ptr
1DD8C6:  LDR             R0, [R0]; _rwIm3DModule
1DD8C8:  LDR             R1, [R1]; RwEngineInstance
1DD8CA:  LDR             R0, [R0]
1DD8CC:  LDR             R1, [R1]
1DD8CE:  ADD             R0, R1
1DD8D0:  ADDS            R0, #0x20 ; ' '
1DD8D2:  BLX             j__Z36_rwIm3DCreatePlatformRenderPipelinesP21rwIm3DRenderPipelines; _rwIm3DCreatePlatformRenderPipelines(rwIm3DRenderPipelines *)
1DD8D6:  CBNZ            R0, loc_1DD904
1DD8D8:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD8E0)
1DD8DA:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD8E2)
1DD8DC:  ADD             R0, PC; _rwIm3DModule_ptr
1DD8DE:  ADD             R1, PC; RwEngineInstance_ptr
1DD8E0:  LDR             R4, [R0]; _rwIm3DModule
1DD8E2:  LDR             R5, [R1]; RwEngineInstance
1DD8E4:  LDR             R0, [R4]
1DD8E6:  LDR             R1, [R5]
1DD8E8:  ADD             R0, R1
1DD8EA:  ADDS            R0, #0x20 ; ' '
1DD8EC:  BLX             j__Z37_rwIm3DDestroyPlatformRenderPipelinesP21rwIm3DRenderPipelines; _rwIm3DDestroyPlatformRenderPipelines(rwIm3DRenderPipelines *)
1DD8F0:  LDR             R0, [R4]
1DD8F2:  LDR             R1, [R5]
1DD8F4:  ADD             R0, R1
1DD8F6:  ADDS            R0, #0x1C
1DD8F8:  BLX             j__Z39_rwIm3DDestroyPlatformTransformPipelinePP10RxPipeline; _rwIm3DDestroyPlatformTransformPipeline(RxPipeline **)
1DD8FC:  LDR             R0, [R4,#(dword_6BCF90 - 0x6BCF8C)]
1DD8FE:  MOVS            R6, #0
1DD900:  SUBS            R0, #1
1DD902:  STR             R0, [R4,#(dword_6BCF90 - 0x6BCF8C)]
1DD904:  MOV             R0, R6
1DD906:  POP.W           {R11}
1DD90A:  POP             {R4-R7,PC}
