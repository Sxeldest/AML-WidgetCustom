; =========================================================
; Game Engine Function: _Z20_rpWorldPipelineOpenv
; Address            : 0x21F790 - 0x21F7BC
; =========================================================

21F790:  PUSH            {R7,LR}
21F792:  MOV             R7, SP
21F794:  BLX             j__Z34_rpCreatePlatformMaterialPipelinesv; _rpCreatePlatformMaterialPipelines(void)
21F798:  CBZ             R0, loc_21F7AC
21F79A:  BLX             j__Z32_rpCreatePlatformAtomicPipelinesv; _rpCreatePlatformAtomicPipelines(void)
21F79E:  CBZ             R0, loc_21F7AC
21F7A0:  BLX             j__Z37_rpCreatePlatformWorldSectorPipelinesv; _rpCreatePlatformWorldSectorPipelines(void)
21F7A4:  CMP             R0, #0
21F7A6:  ITT NE
21F7A8:  MOVNE           R0, #1
21F7AA:  POPNE           {R7,PC}
21F7AC:  BLX             j__Z38_rpDestroyPlatformWorldSectorPipelinesv; _rpDestroyPlatformWorldSectorPipelines(void)
21F7B0:  BLX             j__Z33_rpDestroyPlatformAtomicPipelinesv; _rpDestroyPlatformAtomicPipelines(void)
21F7B4:  BLX             j__Z35_rpDestroyPlatformMaterialPipelinesv; _rpDestroyPlatformMaterialPipelines(void)
21F7B8:  MOVS            R0, #0
21F7BA:  POP             {R7,PC}
