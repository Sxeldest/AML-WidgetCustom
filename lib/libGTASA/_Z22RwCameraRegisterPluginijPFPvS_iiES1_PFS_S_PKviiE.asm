; =========================================================
; Game Engine Function: _Z22RwCameraRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE
; Address            : 0x1D5EE0 - 0x1D5F06
; =========================================================

1D5EE0:  PUSH            {R7,LR}
1D5EE2:  MOV             R7, SP
1D5EE4:  SUB             SP, SP, #8
1D5EE6:  LDR.W           LR, =(cameraTKList_ptr - 0x1D5EF6)
1D5EEA:  MOV             R12, R2
1D5EEC:  MOV             R2, R1
1D5EEE:  MOV             R1, R0
1D5EF0:  LDR             R0, [R7,#8]
1D5EF2:  ADD             LR, PC; cameraTKList_ptr
1D5EF4:  STRD.W          R3, R0, [SP,#0x10+var_10]
1D5EF8:  MOV             R3, R12
1D5EFA:  LDR.W           R0, [LR]; cameraTKList
1D5EFE:  BLX             j__Z26_rwPluginRegistryAddPluginP16RwPluginRegistryijPFPvS1_iiES3_PFS1_S1_PKviiE; _rwPluginRegistryAddPlugin(RwPluginRegistry *,int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
1D5F02:  ADD             SP, SP, #8
1D5F04:  POP             {R7,PC}
