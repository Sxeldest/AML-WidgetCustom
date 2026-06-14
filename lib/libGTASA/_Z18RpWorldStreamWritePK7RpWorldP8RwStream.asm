; =========================================================
; Game Engine Function: _Z18RpWorldStreamWritePK7RpWorldP8RwStream
; Address            : 0x21287C - 0x2129F4
; =========================================================

21287C:  PUSH            {R4-R7,LR}
21287E:  ADD             R7, SP, #0xC
212880:  PUSH.W          {R8-R11}
212884:  SUB             SP, SP, #0x10C
212886:  MOV             R10, R0
212888:  MOV             R9, R1
21288A:  LDR.W           R8, [R10,#8]
21288E:  BLX             j__Z20RpWorldStreamGetSizePK7RpWorld; RpWorldStreamGetSize(RpWorld const*)
212892:  MOVW            R5, #:lower16:(stru_35FF8.st_size+3)
212896:  MOV             R2, R0
212898:  MOVT            R5, #:upper16:(stru_35FF8.st_size+3)
21289C:  MOVW            R4, #0xFFFF
2128A0:  MOV             R0, R9
2128A2:  MOVS            R1, #0xB
2128A4:  MOV             R3, R5
2128A6:  STR             R4, [SP,#0x128+var_128]
2128A8:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
2128AC:  CMP             R0, #0
2128AE:  BEQ.W           loc_2129E8
2128B2:  MOV             R0, R9
2128B4:  MOVS            R1, #1
2128B6:  MOVS            R2, #0x40 ; '@'
2128B8:  MOV             R3, R5
2128BA:  STR             R4, [SP,#0x128+var_128]
2128BC:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
2128C0:  CMP             R0, #0
2128C2:  BEQ.W           loc_2129E8
2128C6:  LDR.W           R12, [R10,#0x1C]
2128CA:  ADD.W           R11, SP, #0x128+var_120
2128CE:  MOV.W           LR, #0
2128D2:  MOVS            R1, #0
2128D4:  MOVS            R2, #0
2128D6:  MOVS            R3, #0
2128D8:  MOV             R5, R12
2128DA:  MOVS            R4, #0
2128DC:  LDR             R6, [R5]
2128DE:  CMP.W           R6, #0xFFFFFFFF
2128E2:  BLE             loc_2128FA
2128E4:  LDRD.W          R0, R5, [R5,#8]
2128E8:  ADDS            R4, #1
2128EA:  ADDS            R2, #1
2128EC:  STR.W           R5, [R11,R4,LSL#2]
2128F0:  MOV             R5, R0
2128F2:  CMP.W           R4, #0xFFFFFFFF
2128F6:  BGT             loc_2128DC
2128F8:  B               loc_212914
2128FA:  LDRH.W          R6, [R5,#0x8C]
2128FE:  ADDS            R3, #1
212900:  LDRH.W          R0, [R5,#0x8A]
212904:  LDR.W           R5, [R11,R4,LSL#2]
212908:  ADD             LR, R6
21290A:  ADD             R1, R0
21290C:  SUBS            R4, #1
21290E:  CMP.W           R4, #0xFFFFFFFF
212912:  BGT             loc_2128DC
212914:  LDR.W           R0, [R10,#0x20]
212918:  MOVS            R5, #0
21291A:  ADD.W           R4, R11, #0x28 ; '('
21291E:  LSLS            R0, R0, #0x10
212920:  UXTB16.W        R0, R0
212924:  ORR.W           R0, R0, R8
212928:  ORR.W           R0, R0, #0x40000000
21292C:  STR             R0, [SP,#0x128+var_FC]
21292E:  LDR.W           R0, [R12]
212932:  LSRS            R0, R0, #0x1F
212934:  STR             R0, [SP,#0x128+var_120]
212936:  ADD.W           R0, R10, #0x50 ; 'P'
21293A:  VLDR            S0, [R10,#0x44]
21293E:  VLDR            S2, [R10,#0x48]
212942:  VNEG.F32        S0, S0
212946:  VLDR            S4, [R10,#0x4C]
21294A:  VSTR            S0, [SP,#0x128+var_11C]
21294E:  VNEG.F32        S0, S2
212952:  VSTR            S0, [SP,#0x128+var_118]
212956:  VNEG.F32        S0, S4
21295A:  STRD.W          LR, R1, [SP,#0x128+var_110]
21295E:  MOVS            R1, #0xC; unsigned int
212960:  STRD.W          R2, R3, [SP,#0x128+var_108]
212964:  STR             R5, [SP,#0x128+var_100]
212966:  VSTR            S0, [SP,#0x128+var_114]
21296A:  VLD1.32         {D16-D17}, [R0]
21296E:  ORR.W           R0, R11, #4; void *
212972:  VLDR            D18, [R10,#0x60]
212976:  VST1.64         {D16-D17}, [R4]
21297A:  VSTR            D18, [SP,#0x128+var_E8]
21297E:  BLX             j__Z18RwMemRealToFloat32Pvj; RwMemRealToFloat32(void *,uint)
212982:  MOV             R0, R4; void *
212984:  MOVS            R1, #0x18; unsigned int
212986:  BLX             j__Z18RwMemRealToFloat32Pvj; RwMemRealToFloat32(void *,uint)
21298A:  MOV             R0, R11; void *
21298C:  MOVS            R1, #0x40 ; '@'; unsigned int
21298E:  BLX             j__Z19RwMemLittleEndian32Pvj; RwMemLittleEndian32(void *,uint)
212992:  MOV             R0, R9; int
212994:  MOV             R1, R11; void *
212996:  MOVS            R2, #0x40 ; '@'; size_t
212998:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
21299C:  CBZ             R0, loc_2129EA
21299E:  ADD.W           R0, R10, #0x10
2129A2:  MOV             R1, R9
2129A4:  BLX             j__Z26_rpMaterialListStreamWritePK14RpMaterialListP8RwStream; _rpMaterialListStreamWrite(RpMaterialList const*,RwStream *)
2129A8:  CBZ             R0, loc_2129E8
2129AA:  LDR.W           R0, [R10,#0x1C]
2129AE:  LDR             R1, [R0]
2129B0:  CMP.W           R1, #0xFFFFFFFF
2129B4:  BLE             loc_2129DA
2129B6:  MOV             R1, R9
2129B8:  MOV             R2, R10
2129BA:  MOV             R3, R8
2129BC:  BL              sub_212BE0
2129C0:  CBZ             R0, loc_2129E8
2129C2:  LDR             R0, =(worldTKList_ptr - 0x2129CC)
2129C4:  MOV             R1, R9
2129C6:  MOV             R2, R10
2129C8:  ADD             R0, PC; worldTKList_ptr
2129CA:  LDR             R0, [R0]; worldTKList
2129CC:  BLX             j__Z32_rwPluginRegistryWriteDataChunksPK16RwPluginRegistryP8RwStreamPKv; _rwPluginRegistryWriteDataChunks(RwPluginRegistry const*,RwStream *,void const*)
2129D0:  MOV             R5, R0
2129D2:  CMP             R5, #0
2129D4:  IT NE
2129D6:  MOVNE           R5, R10
2129D8:  B               loc_2129EA
2129DA:  MOV             R1, R9
2129DC:  MOV             R2, R10
2129DE:  MOV             R3, R8
2129E0:  BL              sub_2129F8
2129E4:  CMP             R0, #0
2129E6:  BNE             loc_2129C2
2129E8:  MOVS            R5, #0
2129EA:  MOV             R0, R5
2129EC:  ADD             SP, SP, #0x10C
2129EE:  POP.W           {R8-R11}
2129F2:  POP             {R4-R7,PC}
