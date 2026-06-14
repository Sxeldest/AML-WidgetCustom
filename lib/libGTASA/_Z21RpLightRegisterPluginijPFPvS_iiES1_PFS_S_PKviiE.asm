; =========================================================
; Game Engine Function: _Z21RpLightRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE
; Address            : 0x216AE0 - 0x216B02
; =========================================================

216AE0:  PUSH            {R7,LR}
216AE2:  MOV             R7, SP
216AE4:  SUB             SP, SP, #8
216AE6:  MOV             R12, R2
216AE8:  MOV             R2, R1
216AEA:  MOV             R1, R0
216AEC:  LDR             R0, =(dword_683B90 - 0x216AF6)
216AEE:  LDR.W           LR, [R7,#8]
216AF2:  ADD             R0, PC; dword_683B90
216AF4:  STRD.W          R3, LR, [SP,#0x10+var_10]
216AF8:  MOV             R3, R12
216AFA:  BLX             j__Z26_rwPluginRegistryAddPluginP16RwPluginRegistryijPFPvS1_iiES3_PFS1_S1_PKviiE; _rwPluginRegistryAddPlugin(RwPluginRegistry *,int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
216AFE:  ADD             SP, SP, #8
216B00:  POP             {R7,PC}
