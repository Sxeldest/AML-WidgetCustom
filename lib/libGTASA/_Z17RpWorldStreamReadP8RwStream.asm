; =========================================================
; Game Engine Function: _Z17RpWorldStreamReadP8RwStream
; Address            : 0x212CD0 - 0x2130F8
; =========================================================

212CD0:  PUSH            {R4-R7,LR}
212CD2:  ADD             R7, SP, #0xC
212CD4:  PUSH.W          {R8-R11}
212CD8:  SUB             SP, SP, #0x94
212CDA:  ADD             R2, SP, #0xB0+var_68
212CDC:  ADD             R3, SP, #0xB0+var_6C
212CDE:  MOVS            R1, #1
212CE0:  MOV             R5, R0
212CE2:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
212CE6:  CMP             R0, #0
212CE8:  BEQ.W           loc_2130EC
212CEC:  LDR             R0, [SP,#0xB0+var_6C]
212CEE:  MOV             R11, #0x80000004
212CF6:  MOVW            R2, #0x2004
212CFA:  SUB.W           R1, R0, #0x34000
212CFE:  CMP             R1, R2
212D00:  BCC             loc_212D16
212D02:  MOVS            R4, #0
212D04:  MOV             R0, R11; int
212D06:  STR             R4, [SP,#0xB0+var_60]
212D08:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
212D0C:  STR             R0, [SP,#0xB0+var_5C]
212D0E:  ADD             R0, SP, #0xB0+var_60
212D10:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
212D14:  B               loc_2130EE
212D16:  ADD             R4, SP, #0xB0+var_60
212D18:  VMOV.I32        Q8, #0
212D1C:  ADD.W           R1, R4, #0x30 ; '0'
212D20:  CMP.W           R0, #0x34000
212D24:  VST1.64         {D16-D17}, [R1]
212D28:  ADD.W           R1, R4, #0x20 ; ' '
212D2C:  VST1.64         {D16-D17}, [R1]
212D30:  MOV             R1, R4
212D32:  VST1.64         {D16-D17}, [R1]!
212D36:  VST1.64         {D16-D17}, [R1]
212D3A:  BHI             loc_212D92
212D3C:  ADD             R6, SP, #0xB0+var_A8
212D3E:  LDR             R2, [SP,#0xB0+var_68]; size_t
212D40:  ADD.W           R1, R6, #0x20 ; ' '
212D44:  MOV             R0, R6
212D46:  VST1.64         {D16-D17}, [R0]!
212D4A:  VST1.64         {D16-D17}, [R1]
212D4E:  MOV             R1, R6; void *
212D50:  VST1.64         {D16-D17}, [R0]
212D54:  MOVS            R0, #0
212D56:  STR             R0, [SP,#0xB0+var_78]
212D58:  MOV             R0, R5; int
212D5A:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
212D5E:  LDR             R1, [SP,#0xB0+var_68]
212D60:  CMP             R0, R1
212D62:  BNE.W           loc_2130EC
212D66:  ADDS            R6, #0x1C
212D68:  VLDR            D16, [SP,#0xB0+var_A4]
212D6C:  LDRD.W          R0, R1, [SP,#0xB0+var_7C]
212D70:  VLD1.32         {D18-D19}, [R6]
212D74:  ADD.W           R6, R4, #0x10
212D78:  LDR             R2, [SP,#0xB0+var_A8]
212D7A:  LDR             R3, [SP,#0xB0+var_9C]
212D7C:  VST1.64         {D18-D19}, [R6]
212D80:  STR             R3, [SP,#0xB0+var_54]
212D82:  STR             R2, [SP,#0xB0+var_60]
212D84:  VSTR            D16, [SP,#0xB0+var_5C]
212D88:  STRD.W          R0, R1, [SP,#0xB0+var_40]
212D8C:  CMP             R0, #1
212D8E:  BGE             loc_212DAA
212D90:  B               loc_212DBE
212D92:  LDR             R2, [SP,#0xB0+var_68]; size_t
212D94:  ADD             R1, SP, #0xB0+var_60; void *
212D96:  MOV             R0, R5; int
212D98:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
212D9C:  LDR             R1, [SP,#0xB0+var_68]
212D9E:  CMP             R0, R1
212DA0:  BNE.W           loc_2130EC
212DA4:  LDR             R0, [SP,#0xB0+var_40]
212DA6:  CMP             R0, #1
212DA8:  BLT             loc_212DBE
212DAA:  MOVS            R4, #0
212DAC:  MOV             R0, R11; int
212DAE:  STR             R4, [SP,#0xB0+var_A8]
212DB0:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
212DB4:  STR             R0, [SP,#0xB0+var_A4]
212DB6:  ADD             R0, SP, #0xB0+var_A8
212DB8:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
212DBC:  B               loc_2130EE
212DBE:  MOV             R0, R4; void *
212DC0:  MOVS            R1, #0x40 ; '@'; unsigned int
212DC2:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
212DC6:  ADD.W           R8, R4, #0x28 ; '('
212DCA:  MOVS            R1, #0x18; unsigned int
212DCC:  MOV             R0, R8; void *
212DCE:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
212DD2:  ORR.W           R0, R4, #4; void *
212DD6:  MOVS            R1, #0xC; unsigned int
212DD8:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
212DDC:  LDR             R0, =(sectorTKList_ptr - 0x212DE4)
212DDE:  LDR             R1, =(worldTKList_ptr - 0x212DEA)
212DE0:  ADD             R0, PC; sectorTKList_ptr
212DE2:  LDRD.W          R2, R3, [SP,#0xB0+var_48]
212DE6:  ADD             R1, PC; worldTKList_ptr
212DE8:  LDR.W           R9, [SP,#0xB0+var_3C]
212DEC:  LDR             R0, [R0]; sectorTKList
212DEE:  LDR             R1, [R1]; worldTKList
212DF0:  ADD.W           R2, R2, R2,LSL#1
212DF4:  LDR             R0, [R0]
212DF6:  LDR             R1, [R1]
212DF8:  ADD.W           R1, R1, R2,LSL#3
212DFC:  MLA.W           R6, R0, R3, R1
212E00:  ANDS.W          R0, R9, #0xFF0000
212E04:  BEQ.W           loc_212F36
212E08:  MOV.W           R10, R0,LSR#16
212E0C:  MOVS.W          R0, R9,LSL#7
212E10:  BMI             loc_212E44
212E12:  LDR             R1, [SP,#0xB0+var_4C]
212E14:  TST.W           R9, #0x10
212E18:  ADD.W           R0, R1, R1,LSL#1
212E1C:  ADD.W           R0, R6, R0,LSL#2
212E20:  IT NE
212E22:  ADDNE.W         R0, R0, R1,LSL#2
212E26:  TST.W           R9, #8
212E2A:  IT NE
212E2C:  ADDNE.W         R0, R0, R1,LSL#2
212E30:  CMP.W           R10, #0
212E34:  ITT NE
212E36:  MULNE.W         R1, R10, R1
212E3A:  ADDNE.W         R0, R0, R1,LSL#3
212E3E:  LDR             R1, [SP,#0xB0+var_50]
212E40:  ADD.W           R6, R0, R1,LSL#3
212E44:  LDR             R0, =(RwEngineInstance_ptr - 0x212E4A)
212E46:  ADD             R0, PC; RwEngineInstance_ptr
212E48:  LDR             R0, [R0]; RwEngineInstance
212E4A:  LDR             R0, [R0]
212E4C:  LDR.W           R1, [R0,#0x12C]
212E50:  MOV             R0, R6
212E52:  BLX             R1
212E54:  MOV             R4, R0
212E56:  CMP             R4, #0
212E58:  BEQ             loc_212F4E
212E5A:  MOV             R0, R4
212E5C:  MOV             R1, R6
212E5E:  STR.W           R8, [SP,#0xB0+var_AC]
212E62:  BLX             j___aeabi_memclr8_0
212E66:  LDR             R0, =(worldTKList_ptr - 0x212E72)
212E68:  MOV.W           R8, #0
212E6C:  MOV             R1, R6
212E6E:  ADD             R0, PC; worldTKList_ptr
212E70:  LDR             R0, [R0]; worldTKList
212E72:  LDR             R0, [R0]
212E74:  ADD             R0, R4
212E76:  STR             R0, [SP,#0xB0+var_64]
212E78:  MOVS            R0, #7
212E7A:  STR.W           R8, [R4,#1]
212E7E:  STRB.W          R8, [R4,#7]
212E82:  STRH.W          R8, [R4,#5]
212E86:  STRB            R0, [R4]
212E88:  MOVS            R0, #1
212E8A:  STRB            R0, [R4,#3]
212E8C:  MOV             R0, R4
212E8E:  BLX             j__Z21_rpWorldRegisterWorldP7RpWorldj; _rpWorldRegisterWorld(RpWorld *,uint)
212E92:  MOVS            R0, #2
212E94:  ADD             R3, SP, #0xB0+var_70
212E96:  STRD.W          R9, R0, [R4,#8]
212E9A:  MOV             R0, R5; int
212E9C:  VLDR            S0, [SP,#0xB0+var_5C]
212EA0:  MOVS            R1, #8
212EA2:  VLDR            S2, [SP,#0xB0+var_5C+4]
212EA6:  MOVS            R2, #0
212EA8:  VLDR            S4, [SP,#0xB0+var_54]
212EAC:  VNEG.F32        S0, S0
212EB0:  VNEG.F32        S2, S2
212EB4:  STRD.W          R8, R10, [R4,#0x1C]
212EB8:  VNEG.F32        S4, S4
212EBC:  STR.W           R8, [R4,#0x6C]
212EC0:  VSTR            S0, [R4,#0x44]
212EC4:  VSTR            S2, [R4,#0x48]
212EC8:  VSTR            S4, [R4,#0x4C]
212ECC:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
212ED0:  CMP             R0, #0
212ED2:  BEQ             loc_212F5E
212ED4:  LDR             R0, [SP,#0xB0+var_70]
212ED6:  MOVW            R1, #0x2004
212EDA:  SUB.W           R0, R0, #0x34000
212EDE:  CMP             R0, R1
212EE0:  BCS.W           loc_212DAA
212EE4:  ADD.W           R10, R4, #0x10
212EE8:  MOV             R0, R5
212EEA:  MOV             R1, R10
212EEC:  BLX             j__Z25_rpMaterialListStreamReadP8RwStreamP14RpMaterialList; _rpMaterialListStreamRead(RwStream *,RpMaterialList *)
212EF0:  CBZ             R0, loc_212F6A
212EF2:  LDR             R0, [SP,#0xB0+var_60]
212EF4:  ADD             R3, SP, #0xB0+var_70
212EF6:  CBZ             R0, loc_212F76
212EF8:  MOV             R0, R5; int
212EFA:  MOVS            R1, #9
212EFC:  MOVS            R2, #0
212EFE:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
212F02:  LDR.W           R8, [SP,#0xB0+var_AC]
212F06:  CMP             R0, #0
212F08:  BEQ             loc_212FB2
212F0A:  LDR             R0, [SP,#0xB0+var_70]
212F0C:  MOVW            R1, #0x2004
212F10:  SUB.W           R0, R0, #0x34000
212F14:  CMP             R0, R1
212F16:  BCC             loc_212FBE
212F18:  MOVS            R0, #0
212F1A:  STR             R0, [SP,#0xB0+var_A8]
212F1C:  MOV             R0, R11; int
212F1E:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
212F22:  STR             R0, [SP,#0xB0+var_A4]
212F24:  ADD             R0, SP, #0xB0+var_A8
212F26:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
212F2A:  MOV             R0, R4
212F2C:  BLX             j__Z23_rpWorldUnregisterWorldP7RpWorld; _rpWorldUnregisterWorld(RpWorld *)
212F30:  LDR             R0, =(RwEngineInstance_ptr - 0x212F36)
212F32:  ADD             R0, PC; RwEngineInstance_ptr
212F34:  B               loc_2130E0
212F36:  MOVS.W          R0, R9,LSL#24
212F3A:  ITE PL
212F3C:  UBFXPL.W        R10, R9, #2, #1
212F40:  MOVMI.W         R10, #2
212F44:  MOVS.W          R0, R9,LSL#7
212F48:  BPL.W           loc_212E12
212F4C:  B               loc_212E44
212F4E:  ADD.W           R0, R11, #0xF; int
212F52:  MOVS            R4, #0
212F54:  MOV             R1, R6
212F56:  STR             R4, [SP,#0xB0+var_A8]
212F58:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
212F5C:  B               loc_212DB4
212F5E:  MOV             R0, R4
212F60:  BLX             j__Z23_rpWorldUnregisterWorldP7RpWorld; _rpWorldUnregisterWorld(RpWorld *)
212F64:  LDR             R0, =(RwEngineInstance_ptr - 0x212F6A)
212F66:  ADD             R0, PC; RwEngineInstance_ptr
212F68:  B               loc_2130E0
212F6A:  MOV             R0, R4
212F6C:  BLX             j__Z23_rpWorldUnregisterWorldP7RpWorld; _rpWorldUnregisterWorld(RpWorld *)
212F70:  LDR             R0, =(RwEngineInstance_ptr - 0x212F76)
212F72:  ADD             R0, PC; RwEngineInstance_ptr
212F74:  B               loc_2130E0
212F76:  MOV             R0, R5; int
212F78:  MOVS            R1, #0xA
212F7A:  MOVS            R2, #0
212F7C:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
212F80:  LDR.W           R8, [SP,#0xB0+var_AC]
212F84:  CBZ             R0, loc_212FDC
212F86:  LDR             R0, [SP,#0xB0+var_70]
212F88:  MOVW            R1, #0x2004
212F8C:  SUB.W           R0, R0, #0x34000
212F90:  CMP             R0, R1
212F92:  BCC             loc_212FE8
212F94:  MOVS            R0, #0
212F96:  STR             R0, [SP,#0xB0+var_A8]
212F98:  MOV             R0, R11; int
212F9A:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
212F9E:  STR             R0, [SP,#0xB0+var_A4]
212FA0:  ADD             R0, SP, #0xB0+var_A8
212FA2:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
212FA6:  MOV             R0, R4
212FA8:  BLX             j__Z23_rpWorldUnregisterWorldP7RpWorld; _rpWorldUnregisterWorld(RpWorld *)
212FAC:  LDR             R0, =(RwEngineInstance_ptr - 0x212FB2)
212FAE:  ADD             R0, PC; RwEngineInstance_ptr
212FB0:  B               loc_2130E0
212FB2:  MOV             R0, R4
212FB4:  BLX             j__Z23_rpWorldUnregisterWorldP7RpWorld; _rpWorldUnregisterWorld(RpWorld *)
212FB8:  LDR             R0, =(RwEngineInstance_ptr - 0x212FBE)
212FBA:  ADD             R0, PC; RwEngineInstance_ptr
212FBC:  B               loc_2130E0
212FBE:  ADD             R1, SP, #0xB0+var_64
212FC0:  MOV             R0, R5
212FC2:  MOV             R2, R4
212FC4:  MOV             R3, R9
212FC6:  BL              sub_213144
212FCA:  CMP             R0, #0
212FCC:  STR             R0, [R4,#0x1C]
212FCE:  BNE             loc_212FFA
212FD0:  MOV             R0, R4
212FD2:  BLX             j__Z23_rpWorldUnregisterWorldP7RpWorld; _rpWorldUnregisterWorld(RpWorld *)
212FD6:  LDR             R0, =(RwEngineInstance_ptr - 0x212FDC)
212FD8:  ADD             R0, PC; RwEngineInstance_ptr
212FDA:  B               loc_2130E0
212FDC:  MOV             R0, R4
212FDE:  BLX             j__Z23_rpWorldUnregisterWorldP7RpWorld; _rpWorldUnregisterWorld(RpWorld *)
212FE2:  LDR             R0, =(RwEngineInstance_ptr - 0x212FE8)
212FE4:  ADD             R0, PC; RwEngineInstance_ptr
212FE6:  B               loc_2130E0
212FE8:  ADD             R1, SP, #0xB0+var_64
212FEA:  MOV             R0, R5
212FEC:  MOV             R2, R4
212FEE:  MOV             R3, R9
212FF0:  BL              sub_213508
212FF4:  CMP             R0, #0
212FF6:  STR             R0, [R4,#0x1C]
212FF8:  BEQ             loc_2130D6
212FFA:  ADD.W           R1, R4, #0x2C ; ','
212FFE:  ADD.W           R3, R4, #0x34 ; '4'
213002:  ADD.W           R6, R4, #0x3C ; '<'
213006:  MOVS            R2, #0
213008:  MOVW            R0, #:lower16:(stru_33FF8.st_size+1)
21300C:  STRD.W          R2, R1, [R4,#0x24]
213010:  STRD.W          R1, R1, [R4,#0x2C]
213014:  MOVT            R0, #:upper16:(stru_33FF8.st_size+1)
213018:  STRD.W          R3, R3, [R4,#0x34]
21301C:  ADD.W           R1, R4, #0x50 ; 'P'
213020:  STRD.W          R6, R6, [R4,#0x3C]
213024:  ADDS            R0, #2
213026:  LDR             R2, [SP,#0xB0+var_6C]
213028:  CMP             R2, R0
21302A:  BCS             loc_213034
21302C:  MOV             R0, R4
21302E:  BLX             j__Z16_rpWorldFindBBoxP7RpWorldP6RwBBox; _rpWorldFindBBox(RpWorld *,RwBBox *)
213032:  B               loc_213044
213034:  VLD1.32         {D16-D17}, [R8]!
213038:  VLDR            D18, [R8]
21303C:  VST1.32         {D16-D17}, [R1]!
213040:  VSTR            D18, [R1]
213044:  MOV             R0, R4
213046:  BLX             j__Z32_rpWorldSetupSectorBoundingBoxesP7RpWorld; _rpWorldSetupSectorBoundingBoxes(RpWorld *)
21304A:  MOV             R0, R4
21304C:  MOVS            R1, #0
21304E:  MOV.W           R8, #0
213052:  BLX             j__Z30RpWorldSetSectorRenderCallBackP7RpWorldPFP13RpWorldSectorS2_E; RpWorldSetSectorRenderCallBack(RpWorld *,RpWorldSector * (*)(RpWorldSector *))
213056:  LDR             R2, [R4,#0x14]
213058:  CMP             R2, #1
21305A:  BLT             loc_213076
21305C:  MOVS            R6, #0
21305E:  LDR.W           R0, [R10]
213062:  LDR.W           R0, [R0,R6,LSL#2]
213066:  LDR             R1, [R0]
213068:  CBZ             R1, loc_213070
21306A:  BLX             j__Z20RpMaterialSetTextureP10RpMaterialP9RwTexture; RpMaterialSetTexture(RpMaterial *,RwTexture *)
21306E:  LDR             R2, [R4,#0x14]
213070:  ADDS            R6, #1
213072:  CMP             R6, R2
213074:  BLT             loc_21305E
213076:  LDR             R0, =(worldTKList_ptr - 0x21307E)
213078:  MOV             R1, R4
21307A:  ADD             R0, PC; worldTKList_ptr
21307C:  LDR             R6, [R0]; worldTKList
21307E:  MOV             R0, R6
213080:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
213084:  LDR             R0, =(dword_6BD52C - 0x21308E)
213086:  MOV             R2, R4
213088:  LDR             R1, =(dword_6BD530 - 0x213090)
21308A:  ADD             R0, PC; dword_6BD52C
21308C:  ADD             R1, PC; dword_6BD530
21308E:  STR.W           R8, [R0]
213092:  MOV             R0, R6; int
213094:  STR.W           R8, [R1]
213098:  MOV             R1, R5; int
21309A:  BLX             j__Z31_rwPluginRegistryReadDataChunksPK16RwPluginRegistryP8RwStreamPv; _rwPluginRegistryReadDataChunks(RwPluginRegistry const*,RwStream *,void *)
21309E:  CBZ             R0, loc_2130CA
2130A0:  LDR             R0, =(dword_6BD52C - 0x2130A6)
2130A2:  ADD             R0, PC; dword_6BD52C
2130A4:  LDR             R1, [R0]
2130A6:  CBZ             R1, loc_2130BA
2130A8:  LDR             R0, =(dword_6BD530 - 0x2130B0)
2130AA:  LDR             R2, =(worldTKList_ptr - 0x2130B2)
2130AC:  ADD             R0, PC; dword_6BD530
2130AE:  ADD             R2, PC; worldTKList_ptr
2130B0:  LDR             R3, [R0]
2130B2:  LDR             R0, [R2]; worldTKList
2130B4:  MOV             R2, R4
2130B6:  BLX             j__Z29_rwPluginRegistryInvokeRightsPK16RwPluginRegistryjPvj; _rwPluginRegistryInvokeRights(RwPluginRegistry const*,uint,void *,uint)
2130BA:  MOV             R0, R4
2130BC:  BLX             j__Z13RpWorldUnlockP7RpWorld; RpWorldUnlock(RpWorld *)
2130C0:  CBNZ            R0, loc_2130EE
2130C2:  MOV             R0, R4
2130C4:  BLX             j__Z14RpWorldDestroyP7RpWorld; RpWorldDestroy(RpWorld *)
2130C8:  B               loc_2130EC
2130CA:  MOV             R0, R4
2130CC:  BLX             j__Z23_rpWorldUnregisterWorldP7RpWorld; _rpWorldUnregisterWorld(RpWorld *)
2130D0:  LDR             R0, =(RwEngineInstance_ptr - 0x2130D6)
2130D2:  ADD             R0, PC; RwEngineInstance_ptr
2130D4:  B               loc_2130E0
2130D6:  MOV             R0, R4
2130D8:  BLX             j__Z23_rpWorldUnregisterWorldP7RpWorld; _rpWorldUnregisterWorld(RpWorld *)
2130DC:  LDR             R0, =(RwEngineInstance_ptr - 0x2130E2)
2130DE:  ADD             R0, PC; RwEngineInstance_ptr
2130E0:  LDR             R0, [R0]; RwEngineInstance
2130E2:  LDR             R0, [R0]
2130E4:  LDR.W           R1, [R0,#0x130]
2130E8:  MOV             R0, R4
2130EA:  BLX             R1
2130EC:  MOVS            R4, #0
2130EE:  MOV             R0, R4
2130F0:  ADD             SP, SP, #0x94
2130F2:  POP.W           {R8-R11}
2130F6:  POP             {R4-R7,PC}
