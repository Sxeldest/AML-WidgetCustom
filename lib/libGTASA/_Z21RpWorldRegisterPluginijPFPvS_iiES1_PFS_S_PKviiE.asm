; =========================================================
; Game Engine Function: _Z21RpWorldRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE
; Address            : 0x21D518 - 0x21D53E
; =========================================================

21D518:  PUSH            {R7,LR}
21D51A:  MOV             R7, SP
21D51C:  SUB             SP, SP, #8
21D51E:  LDR.W           LR, =(worldTKList_ptr - 0x21D52E)
21D522:  MOV             R12, R2
21D524:  MOV             R2, R1
21D526:  MOV             R1, R0
21D528:  LDR             R0, [R7,#8]
21D52A:  ADD             LR, PC; worldTKList_ptr
21D52C:  STRD.W          R3, R0, [SP,#0x10+var_10]
21D530:  MOV             R3, R12
21D532:  LDR.W           R0, [LR]; worldTKList
21D536:  BLX             j__Z26_rwPluginRegistryAddPluginP16RwPluginRegistryijPFPvS1_iiES3_PFS1_S1_PKviiE; _rwPluginRegistryAddPlugin(RwPluginRegistry *,int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
21D53A:  ADD             SP, SP, #8
21D53C:  POP             {R7,PC}
