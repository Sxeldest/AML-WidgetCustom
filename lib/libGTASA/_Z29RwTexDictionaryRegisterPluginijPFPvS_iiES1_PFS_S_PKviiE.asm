; =========================================================
; Game Engine Function: _Z29RwTexDictionaryRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE
; Address            : 0x1DBBA0 - 0x1DBBC6
; =========================================================

1DBBA0:  PUSH            {R7,LR}
1DBBA2:  MOV             R7, SP
1DBBA4:  SUB             SP, SP, #8
1DBBA6:  LDR.W           LR, =(texDictTKList_ptr - 0x1DBBB6)
1DBBAA:  MOV             R12, R2
1DBBAC:  MOV             R2, R1
1DBBAE:  MOV             R1, R0
1DBBB0:  LDR             R0, [R7,#8]
1DBBB2:  ADD             LR, PC; texDictTKList_ptr
1DBBB4:  STRD.W          R3, R0, [SP,#0x10+var_10]
1DBBB8:  MOV             R3, R12
1DBBBA:  LDR.W           R0, [LR]; texDictTKList
1DBBBE:  BLX             j__Z26_rwPluginRegistryAddPluginP16RwPluginRegistryijPFPvS1_iiES3_PFS1_S1_PKviiE; _rwPluginRegistryAddPlugin(RwPluginRegistry *,int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
1DBBC2:  ADD             SP, SP, #8
1DBBC4:  POP             {R7,PC}
