; =========================================================
; Game Engine Function: _Z24RpGeometryRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE
; Address            : 0x216008 - 0x21602A
; =========================================================

216008:  PUSH            {R7,LR}
21600A:  MOV             R7, SP
21600C:  SUB             SP, SP, #8
21600E:  MOV             R12, R2
216010:  MOV             R2, R1
216012:  MOV             R1, R0
216014:  LDR             R0, =(dword_683B78 - 0x21601E)
216016:  LDR.W           LR, [R7,#8]
21601A:  ADD             R0, PC; dword_683B78
21601C:  STRD.W          R3, LR, [SP,#0x10+var_10]
216020:  MOV             R3, R12
216022:  BLX             j__Z26_rwPluginRegistryAddPluginP16RwPluginRegistryijPFPvS1_iiES3_PFS1_S1_PKviiE; _rwPluginRegistryAddPlugin(RwPluginRegistry *,int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
216026:  ADD             SP, SP, #8
216028:  POP             {R7,PC}
