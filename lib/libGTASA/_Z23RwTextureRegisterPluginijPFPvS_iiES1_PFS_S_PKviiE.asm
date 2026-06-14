; =========================================================
; Game Engine Function: _Z23RwTextureRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE
; Address            : 0x1DBB60 - 0x1DBB86
; =========================================================

1DBB60:  PUSH            {R7,LR}
1DBB62:  MOV             R7, SP
1DBB64:  SUB             SP, SP, #8
1DBB66:  LDR.W           LR, =(textureTKList_ptr - 0x1DBB76)
1DBB6A:  MOV             R12, R2
1DBB6C:  MOV             R2, R1
1DBB6E:  MOV             R1, R0
1DBB70:  LDR             R0, [R7,#8]
1DBB72:  ADD             LR, PC; textureTKList_ptr
1DBB74:  STRD.W          R3, R0, [SP,#0x10+var_10]
1DBB78:  MOV             R3, R12
1DBB7A:  LDR.W           R0, [LR]; textureTKList
1DBB7E:  BLX             j__Z26_rwPluginRegistryAddPluginP16RwPluginRegistryijPFPvS1_iiES3_PFS1_S1_PKviiE; _rwPluginRegistryAddPlugin(RwPluginRegistry *,int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
1DBB82:  ADD             SP, SP, #8
1DBB84:  POP             {R7,PC}
