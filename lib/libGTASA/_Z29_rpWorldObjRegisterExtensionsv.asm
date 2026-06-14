; =========================================================
; Game Engine Function: _Z29_rpWorldObjRegisterExtensionsv
; Address            : 0x21D898 - 0x21DAB6
; =========================================================

21D898:  PUSH            {R4-R7,LR}
21D89A:  ADD             R7, SP, #0xC
21D89C:  PUSH.W          {R8-R11}
21D8A0:  SUB             SP, SP, #0x2C
21D8A2:  LDR             R2, =(sub_21DB54+1 - 0x21D8B0)
21D8A4:  MOVS            R0, #8; int
21D8A6:  LDR             R3, =(sub_21DC2C+1 - 0x21D8B2)
21D8A8:  MOVW            R1, #0x509; unsigned int
21D8AC:  ADD             R2, PC; sub_21DB54 ; void *(*)(void *, int, int)
21D8AE:  ADD             R3, PC; sub_21DC2C ; void *(*)(void *, int, int)
21D8B0:  BLX             j__Z22RwEngineRegisterPluginijPFPvS_iiES1_; RwEngineRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int))
21D8B4:  LDR             R2, =(sub_21DCA4+1 - 0x21D8C2)
21D8B6:  MOVW            R1, #0x509; unsigned int
21D8BA:  LDR             R3, =(sub_21DCF0+1 - 0x21D8C6)
21D8BC:  STR             R0, [SP,#0x48+var_20]
21D8BE:  ADD             R2, PC; sub_21DCA4 ; void *(*)(void *, int, int)
21D8C0:  LDR             R0, =(sub_21DD30+1 - 0x21D8C8)
21D8C2:  ADD             R3, PC; sub_21DCF0 ; void *(*)(void *, int, int)
21D8C4:  ADD             R0, PC; sub_21DD30
21D8C6:  STR             R0, [SP,#0x48+var_48]; void *(*)(void *, const void *, int, int)
21D8C8:  MOVS            R0, #0x1C; int
21D8CA:  BLX             j__Z22RwCameraRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RwCameraRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
21D8CE:  LDR             R6, =(dword_6BD638 - 0x21D8D8)
21D8D0:  LDR             R1, =(nullsub_13+1 - 0x21D8DC)
21D8D2:  LDR             R2, =(sub_21DD68+1 - 0x21D8DE)
21D8D4:  ADD             R6, PC; dword_6BD638
21D8D6:  LDR             R3, =(sub_21DDA8+1 - 0x21D8E2)
21D8D8:  ADD             R1, PC; nullsub_13
21D8DA:  ADD             R2, PC; sub_21DD68 ; void *(*)(void *, int, int)
21D8DC:  STR             R1, [SP,#0x48+var_48]; void *(*)(void *, const void *, int, int)
21D8DE:  ADD             R3, PC; sub_21DDA8 ; void *(*)(void *, int, int)
21D8E0:  STR             R0, [SP,#0x48+var_24]
21D8E2:  STR             R0, [R6]
21D8E4:  MOVS            R0, #8; int
21D8E6:  MOVW            R1, #0x509; unsigned int
21D8EA:  BLX             j__Z22RpAtomicRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RpAtomicRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
21D8EE:  LDR             R1, =(dword_6BD63C - 0x21D8F6)
21D8F0:  LDR             R2, =(sub_21DE38+1 - 0x21D8FC)
21D8F2:  ADD             R1, PC; dword_6BD63C
21D8F4:  LDR             R3, =(nullsub_14+1 - 0x21D900)
21D8F6:  STR             R0, [SP,#0x48+var_28]
21D8F8:  ADD             R2, PC; sub_21DE38 ; void *(*)(void *, int, int)
21D8FA:  STR             R0, [R1]
21D8FC:  ADD             R3, PC; nullsub_14 ; void *(*)(void *, int, int)
21D8FE:  LDR             R0, =(sub_21DE4C+1 - 0x21D908)
21D900:  MOVW            R1, #0x509; unsigned int
21D904:  ADD             R0, PC; sub_21DE4C
21D906:  STR             R0, [SP,#0x48+var_48]; void *(*)(void *, const void *, int, int)
21D908:  MOVS            R0, #4; int
21D90A:  BLX             j__Z21RpClumpRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RpClumpRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
21D90E:  LDR             R1, =(dword_6BD640 - 0x21D916)
21D910:  LDR             R2, =(sub_21DE6C+1 - 0x21D91C)
21D912:  ADD             R1, PC; dword_6BD640
21D914:  LDR             R3, =(sub_21DE8C+1 - 0x21D920)
21D916:  STR             R0, [SP,#0x48+var_2C]
21D918:  ADD             R2, PC; sub_21DE6C ; void *(*)(void *, int, int)
21D91A:  STR             R0, [R1]
21D91C:  ADD             R3, PC; sub_21DE8C ; void *(*)(void *, int, int)
21D91E:  LDR             R0, =(sub_21DEEC+1 - 0x21D928)
21D920:  MOVW            R1, #0x509; unsigned int
21D924:  ADD             R0, PC; sub_21DEEC
21D926:  STR             R0, [SP,#0x48+var_48]; void *(*)(void *, const void *, int, int)
21D928:  MOVS            R0, #8; int
21D92A:  BLX             j__Z21RpLightRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RpLightRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
21D92E:  LDR             R1, =(dword_6BD644 - 0x21D93A)
21D930:  MOVS            R5, #0
21D932:  STR             R0, [SP,#0x48+var_30]
21D934:  MOVS            R2, #0; void *(*)(void *, int, int)
21D936:  ADD             R1, PC; dword_6BD644
21D938:  MOVS            R3, #0; void *(*)(void *, int, int)
21D93A:  STR             R5, [SP,#0x48+var_48]; void *(*)(void *, const void *, int, int)
21D93C:  STR             R0, [R1]
21D93E:  MOVS            R0, #0; int
21D940:  MOVW            R1, #0x50E; unsigned int
21D944:  BLX             j__Z24RpGeometryRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RpGeometryRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
21D948:  STR             R0, [SP,#0x48+var_34]
21D94A:  MOVS            R0, #0; int
21D94C:  MOVW            R1, #0x50E; unsigned int
21D950:  MOVS            R2, #0; void *(*)(void *, int, int)
21D952:  MOVS            R3, #0; void *(*)(void *, int, int)
21D954:  STR             R5, [SP,#0x48+var_48]; void *(*)(void *, const void *, int, int)
21D956:  BLX             j__Z27RpWorldSectorRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RpWorldSectorRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
21D95A:  LDR             R1, =(sub_21DF34+1 - 0x21D964)
21D95C:  LDR             R2, =(sub_21DF50+1 - 0x21D966)
21D95E:  LDR             R3, =(sub_21DF60+1 - 0x21D96A)
21D960:  ADD             R1, PC; sub_21DF34
21D962:  ADD             R2, PC; sub_21DF50
21D964:  STR             R0, [SP,#0x48+var_38]
21D966:  ADD             R3, PC; sub_21DF60
21D968:  MOVW            R0, #0x50E
21D96C:  BLX             j__Z30RpGeometryRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE; RpGeometryRegisterPluginStream(uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
21D970:  LDR             R1, =(sub_21DF68+1 - 0x21D97A)
21D972:  LDR             R2, =(sub_21DF8E+1 - 0x21D97C)
21D974:  LDR             R3, =(sub_21DFB0+1 - 0x21D980)
21D976:  ADD             R1, PC; sub_21DF68
21D978:  ADD             R2, PC; sub_21DF8E
21D97A:  STR             R0, [SP,#0x48+var_3C]
21D97C:  ADD             R3, PC; sub_21DFB0
21D97E:  MOVW            R0, #0x50E
21D982:  BLX             j__Z33RpWorldSectorRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE; RpWorldSectorRegisterPluginStream(uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
21D986:  STR             R0, [SP,#0x48+var_40]
21D988:  MOVS            R0, #0; int
21D98A:  MOV.W           R1, #0x510; unsigned int
21D98E:  MOVS            R2, #0; void *(*)(void *, int, int)
21D990:  MOVS            R3, #0; void *(*)(void *, int, int)
21D992:  STR             R5, [SP,#0x48+var_48]; void *(*)(void *, const void *, int, int)
21D994:  BLX             j__Z24RpGeometryRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RpGeometryRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
21D998:  STRD.W          R5, R0, [SP,#0x48+var_48]; void *(*)(void *, const void *, int, int)
21D99C:  MOVS            R0, #0; int
21D99E:  MOV.W           R1, #0x510; unsigned int
21D9A2:  MOVS            R2, #0; void *(*)(void *, int, int)
21D9A4:  MOVS            R3, #0; void *(*)(void *, int, int)
21D9A6:  BLX             j__Z27RpWorldSectorRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RpWorldSectorRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
21D9AA:  LDR             R1, =(sub_21DFC8+1 - 0x21D9BA)
21D9AC:  MOV             R6, R0
21D9AE:  LDR             R2, =(sub_21DFDC+1 - 0x21D9BC)
21D9B0:  MOV.W           R0, #0x510
21D9B4:  LDR             R3, =(sub_21DFE2+1 - 0x21D9BE)
21D9B6:  ADD             R1, PC; sub_21DFC8
21D9B8:  ADD             R2, PC; sub_21DFDC
21D9BA:  ADD             R3, PC; sub_21DFE2
21D9BC:  BLX             j__Z30RpGeometryRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE; RpGeometryRegisterPluginStream(uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
21D9C0:  LDR             R1, =(sub_21DFE6+1 - 0x21D9D0)
21D9C2:  MOV             R4, R0
21D9C4:  LDR             R2, =(sub_21DFFA+1 - 0x21D9D2)
21D9C6:  MOV.W           R0, #0x510
21D9CA:  LDR             R3, =(sub_21E000+1 - 0x21D9D4)
21D9CC:  ADD             R1, PC; sub_21DFE6
21D9CE:  ADD             R2, PC; sub_21DFFA
21D9D0:  ADD             R3, PC; sub_21E000
21D9D2:  BLX             j__Z33RpWorldSectorRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE; RpWorldSectorRegisterPluginStream(uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
21D9D6:  MOV             R8, R0
21D9D8:  MOVS            R0, #0; int
21D9DA:  MOVS            R1, #0x1F; unsigned int
21D9DC:  MOVS            R2, #0; void *(*)(void *, int, int)
21D9DE:  MOVS            R3, #0; void *(*)(void *, int, int)
21D9E0:  STR             R5, [SP,#0x48+var_48]; void *(*)(void *, const void *, int, int)
21D9E2:  BLX             j__Z22RpAtomicRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RpAtomicRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
21D9E6:  MOV             R11, R0
21D9E8:  LDR             R0, =(_Z19_rpReadAtomicRightsP8RwStreamiPvii_ptr - 0x21D9EE)
21D9EA:  ADD             R0, PC; _Z19_rpReadAtomicRightsP8RwStreamiPvii_ptr
21D9EC:  LDR             R1, [R0]; _rpReadAtomicRights(RwStream *,int,void *,int,int)
21D9EE:  LDR             R0, =(_Z20_rpWriteAtomicRightsP8RwStreamiPKvii_ptr - 0x21D9F4)
21D9F0:  ADD             R0, PC; _Z20_rpWriteAtomicRightsP8RwStreamiPKvii_ptr
21D9F2:  LDR             R2, [R0]; _rpWriteAtomicRights(RwStream *,int,void const*,int,int)
21D9F4:  LDR             R0, =(_Z19_rpSizeAtomicRightsPKvii_ptr - 0x21D9FA)
21D9F6:  ADD             R0, PC; _Z19_rpSizeAtomicRightsPKvii_ptr
21D9F8:  LDR             R3, [R0]; _rpSizeAtomicRights(void const*,int,int)
21D9FA:  MOVS            R0, #0x1F
21D9FC:  BLX             j__Z28RpAtomicRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE; RpAtomicRegisterPluginStream(uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
21DA00:  MOV             R9, R0
21DA02:  MOVS            R0, #0; int
21DA04:  MOVS            R1, #0x1F; unsigned int
21DA06:  MOVS            R2, #0; void *(*)(void *, int, int)
21DA08:  MOVS            R3, #0; void *(*)(void *, int, int)
21DA0A:  STR             R5, [SP,#0x48+var_48]; void *(*)(void *, const void *, int, int)
21DA0C:  BLX             j__Z21RpWorldRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RpWorldRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
21DA10:  MOV             R10, R0
21DA12:  LDR             R0, =(_Z18_rpReadWorldRightsP8RwStreamiPvii_ptr - 0x21DA18)
21DA14:  ADD             R0, PC; _Z18_rpReadWorldRightsP8RwStreamiPvii_ptr
21DA16:  LDR             R1, [R0]; _rpReadWorldRights(RwStream *,int,void *,int,int)
21DA18:  LDR             R0, =(_Z19_rpWriteWorldRightsP8RwStreamiPKvii_ptr - 0x21DA1E)
21DA1A:  ADD             R0, PC; _Z19_rpWriteWorldRightsP8RwStreamiPKvii_ptr
21DA1C:  LDR             R2, [R0]; _rpWriteWorldRights(RwStream *,int,void const*,int,int)
21DA1E:  LDR             R0, =(_Z18_rpSizeWorldRightsPKvii_ptr - 0x21DA24)
21DA20:  ADD             R0, PC; _Z18_rpSizeWorldRightsPKvii_ptr
21DA22:  LDR             R3, [R0]; _rpSizeWorldRights(void const*,int,int)
21DA24:  MOVS            R0, #0x1F
21DA26:  BLX             j__Z27RpWorldRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE; RpWorldRegisterPluginStream(uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
21DA2A:  STR             R5, [SP,#0x48+var_48]; void *(*)(void *, const void *, int, int)
21DA2C:  MOVS            R3, #0; void *(*)(void *, int, int)
21DA2E:  LDRD.W          R2, R1, [SP,#0x48+var_24]
21DA32:  ORRS            R1, R2
21DA34:  LDR             R2, [SP,#0x48+var_28]
21DA36:  ORRS            R1, R2
21DA38:  LDR             R2, [SP,#0x48+var_2C]
21DA3A:  ORRS            R1, R2
21DA3C:  LDR             R2, [SP,#0x48+var_30]
21DA3E:  ORRS            R1, R2
21DA40:  LDR             R2, [SP,#0x48+var_34]
21DA42:  ORRS            R1, R2
21DA44:  LDR             R2, [SP,#0x48+var_38]
21DA46:  ORRS            R1, R2
21DA48:  LDR             R2, [SP,#0x48+var_3C]
21DA4A:  ORRS            R1, R2
21DA4C:  LDR             R2, [SP,#0x48+var_40]
21DA4E:  ORRS            R1, R2
21DA50:  LDR             R2, [SP,#0x48+var_44]
21DA52:  ORRS            R1, R2
21DA54:  LDR             R2, =(_Z17_rpReadSectRightsP8RwStreamiPvii_ptr - 0x21DA5C)
21DA56:  ORRS            R1, R6
21DA58:  ADD             R2, PC; _Z17_rpReadSectRightsP8RwStreamiPvii_ptr
21DA5A:  ORRS            R1, R4
21DA5C:  ORR.W           R1, R1, R8
21DA60:  LDR.W           R8, [R2]; _rpReadSectRights(RwStream *,int,void *,int,int)
21DA64:  ORR.W           R1, R1, R11
21DA68:  LDR             R2, =(_Z18_rpWriteSectRightsP8RwStreamiPKvii_ptr - 0x21DA76)
21DA6A:  ORR.W           R1, R1, R9
21DA6E:  ORR.W           R1, R1, R10
21DA72:  ADD             R2, PC; _Z18_rpWriteSectRightsP8RwStreamiPKvii_ptr
21DA74:  ORR.W           R4, R1, R0
21DA78:  MOVS            R0, #0; int
21DA7A:  MOVS            R1, #0x1F; unsigned int
21DA7C:  LDR.W           R11, [R2]; _rpWriteSectRights(RwStream *,int,void const*,int,int)
21DA80:  LDR             R2, =(_Z17_rpSizeSectRightsPKvii_ptr - 0x21DA86)
21DA82:  ADD             R2, PC; _Z17_rpSizeSectRightsPKvii_ptr
21DA84:  LDR             R6, [R2]; _rpSizeSectRights(void const*,int,int)
21DA86:  MOVS            R2, #0; void *(*)(void *, int, int)
21DA88:  BLX             j__Z27RpWorldSectorRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RpWorldSectorRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
21DA8C:  ORRS            R4, R0
21DA8E:  MOVS            R0, #0x1F
21DA90:  MOV             R1, R8
21DA92:  MOV             R2, R11
21DA94:  MOV             R3, R6
21DA96:  BLX             j__Z33RpWorldSectorRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE; RpWorldSectorRegisterPluginStream(uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
21DA9A:  ORRS            R0, R4
21DA9C:  CMP             R0, #0
21DA9E:  BLT             loc_21DAAC
21DAA0:  BLX             j__Z18_rpWorldPipeAttachv; _rpWorldPipeAttach(void)
21DAA4:  MOV             R5, R0
21DAA6:  CMP             R5, #0
21DAA8:  IT NE
21DAAA:  MOVNE           R5, #1
21DAAC:  MOV             R0, R5
21DAAE:  ADD             SP, SP, #0x2C ; ','
21DAB0:  POP.W           {R8-R11}
21DAB4:  POP             {R4-R7,PC}
