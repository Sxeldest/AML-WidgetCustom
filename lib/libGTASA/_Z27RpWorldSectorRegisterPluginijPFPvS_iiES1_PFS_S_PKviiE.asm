; =========================================================
; Game Engine Function: _Z27RpWorldSectorRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE
; Address            : 0x21C7F8 - 0x21C81E
; =========================================================

21C7F8:  PUSH            {R7,LR}
21C7FA:  MOV             R7, SP
21C7FC:  SUB             SP, SP, #8
21C7FE:  LDR.W           LR, =(sectorTKList_ptr - 0x21C80E)
21C802:  MOV             R12, R2
21C804:  MOV             R2, R1
21C806:  MOV             R1, R0
21C808:  LDR             R0, [R7,#8]
21C80A:  ADD             LR, PC; sectorTKList_ptr
21C80C:  STRD.W          R3, R0, [SP,#0x10+var_10]
21C810:  MOV             R3, R12
21C812:  LDR.W           R0, [LR]; sectorTKList
21C816:  BLX             j__Z26_rwPluginRegistryAddPluginP16RwPluginRegistryijPFPvS1_iiES3_PFS1_S1_PKviiE; _rwPluginRegistryAddPlugin(RwPluginRegistry *,int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
21C81A:  ADD             SP, SP, #8
21C81C:  POP             {R7,PC}
