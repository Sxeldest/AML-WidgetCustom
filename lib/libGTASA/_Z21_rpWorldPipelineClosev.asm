; =========================================================
; Game Engine Function: _Z21_rpWorldPipelineClosev
; Address            : 0x21F77C - 0x21F790
; =========================================================

21F77C:  PUSH            {R7,LR}
21F77E:  MOV             R7, SP
21F780:  BLX             j__Z38_rpDestroyPlatformWorldSectorPipelinesv; _rpDestroyPlatformWorldSectorPipelines(void)
21F784:  BLX             j__Z33_rpDestroyPlatformAtomicPipelinesv; _rpDestroyPlatformAtomicPipelines(void)
21F788:  POP.W           {R7,LR}
21F78C:  B.W             j_j__Z35_rpDestroyPlatformMaterialPipelinesv; j__rpDestroyPlatformMaterialPipelines(void)
