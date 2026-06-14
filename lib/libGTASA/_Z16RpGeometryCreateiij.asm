; =========================================================
; Game Engine Function: _Z16RpGeometryCreateiij
; Address            : 0x215AC0 - 0x215C72
; =========================================================

215AC0:  PUSH            {R4-R7,LR}
215AC2:  ADD             R7, SP, #0xC
215AC4:  PUSH.W          {R8-R11}
215AC8:  SUB             SP, SP, #0x14
215ACA:  MOV             R11, R0
215ACC:  MOVS            R0, #0
215ACE:  MOV             R10, R2
215AD0:  MOV             R9, R1
215AD2:  CMP.W           R0, R11,LSR#16
215AD6:  BNE             loc_215AEE
215AD8:  CMP.W           R9, #0xFFFFFFFF
215ADC:  BLE             loc_215AEE
215ADE:  LDR             R0, =(dword_683B78 - 0x215AE8)
215AE0:  ANDS.W          R1, R10, #0xFF0000
215AE4:  ADD             R0, PC; dword_683B78
215AE6:  LDR             R0, [R0]
215AE8:  BEQ             loc_215B0A
215AEA:  LSRS            R6, R1, #0x10
215AEC:  B               loc_215B16
215AEE:  MOVS            R4, #0
215AF0:  CMP.W           R11, #0x10000
215AF4:  BLT.W           loc_215C68
215AF8:  MOVS            R0, #6; int
215AFA:  STR             R4, [SP,#0x30+var_24]
215AFC:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
215B00:  STR             R0, [SP,#0x30+var_20]
215B02:  ADD             R0, SP, #0x30+var_24
215B04:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
215B08:  B               loc_215C68
215B0A:  MOVS.W          R1, R10,LSL#24
215B0E:  ITE PL
215B10:  UBFXPL.W        R6, R10, #2, #1
215B14:  MOVMI           R6, #2
215B16:  CMP             R6, #0
215B18:  MOV             R8, R6
215B1A:  IT NE
215B1C:  MOVNE.W         R8, #0x80
215B20:  CMP             R6, #1
215B22:  IT EQ
215B24:  MOVEQ.W         R8, #4
215B28:  ANDS.W          R4, R10, #0x1000000
215B2C:  BNE             loc_215B48
215B2E:  MOVS.W          R1, R10,LSL#28
215B32:  IT MI
215B34:  ADDMI.W         R0, R0, R11,LSL#2
215B38:  CMP             R6, #0
215B3A:  ITT NE
215B3C:  MULNE.W         R1, R11, R6
215B40:  ADDNE.W         R0, R0, R1,LSL#3
215B44:  ADD.W           R0, R0, R9,LSL#3
215B48:  LDR             R1, =(RwEngineInstance_ptr - 0x215B4E)
215B4A:  ADD             R1, PC; RwEngineInstance_ptr
215B4C:  LDR             R1, [R1]; RwEngineInstance
215B4E:  LDR             R1, [R1]
215B50:  LDR.W           R1, [R1,#0x12C]
215B54:  BLX             R1
215B56:  MOV             R5, R0
215B58:  CMP             R5, #0
215B5A:  BEQ.W           loc_215C66
215B5E:  ADD.W           R0, R5, #0x20 ; ' '
215B62:  STR             R4, [SP,#0x30+var_28]
215B64:  STR             R0, [SP,#0x30+var_2C]
215B66:  BLX             j__Z25_rpMaterialListInitializeP14RpMaterialList; _rpMaterialListInitialize(RpMaterialList *)
215B6A:  MOVS            R4, #0
215B6C:  CMP             R0, #0
215B6E:  BEQ             loc_215C68
215B70:  MOVS            R0, #8
215B72:  STR             R4, [R5,#0x18]
215B74:  STRB            R0, [R5]
215B76:  MOVS            R0, #1
215B78:  STRH            R4, [R5,#0xC]
215B7A:  VMOV.I32        Q8, #0
215B7E:  STRB            R4, [R5,#7]
215B80:  STRH.W          R4, [R5,#5]
215B84:  STR             R6, [R5,#0x1C]
215B86:  STR.W           R4, [R5,#1]
215B8A:  STRH            R0, [R5,#0xE]
215B8C:  MOV             R0, #0xF000F7B
215B94:  STRD.W          R4, R4, [R5,#0x4C]
215B98:  AND.W           R0, R0, R10
215B9C:  STRD.W          R4, R4, [R5,#0x54]
215BA0:  ORR.W           R0, R0, R8
215BA4:  STRD.W          R4, R4, [R5,#0x5C]
215BA8:  STRD.W          R9, R11, [R5,#0x10]
215BAC:  STR             R0, [R5,#8]
215BAE:  ADD.W           R0, R5, #0x3C ; '<'
215BB2:  VST1.32         {D16-D17}, [R0]
215BB6:  ADD.W           R0, R5, #0x2C ; ','
215BBA:  VST1.32         {D16-D17}, [R0]
215BBE:  LDR             R1, [SP,#0x30+var_28]
215BC0:  CBNZ            R1, loc_215C34
215BC2:  LDR             R1, =(dword_683B78 - 0x215BCC)
215BC4:  CMP.W           R11, #0
215BC8:  ADD             R1, PC; dword_683B78
215BCA:  LDR             R1, [R1]
215BCC:  ADD.W           R3, R5, R1
215BD0:  BEQ             loc_215BDE
215BD2:  ANDS.W          R1, R10, #8
215BD6:  ITT NE
215BD8:  STRNE           R3, [R5,#0x30]
215BDA:  ADDNE.W         R3, R3, R11,LSL#2
215BDE:  CMP.W           R11, #0
215BE2:  IT NE
215BE4:  CMPNE           R6, #0
215BE6:  BEQ             loc_215C06
215BE8:  MUL.W           R1, R6, R11
215BEC:  ADD.W           R2, R5, #0x34 ; '4'
215BF0:  MOV.W           R4, R11,LSL#3
215BF4:  MOV.W           R12, R1,LSL#3
215BF8:  MOV             R1, R3
215BFA:  STR.W           R1, [R2],#4
215BFE:  ADD             R1, R4
215C00:  SUBS            R6, #1
215C02:  BNE             loc_215BFA
215C04:  ADD             R3, R12
215C06:  CMP.W           R9, #0
215C0A:  BEQ             loc_215C34
215C0C:  CMP.W           R9, #1
215C10:  STR             R3, [R0]
215C12:  BLT             loc_215C34
215C14:  MOVW            R2, #0xFFFF
215C18:  CMP.W           R9, #1
215C1C:  STRH            R2, [R3,#6]
215C1E:  BEQ             loc_215C34
215C20:  SUB.W           R1, R9, #1
215C24:  MOVS            R3, #0
215C26:  LDR             R6, [R0]
215C28:  ADD.W           R6, R6, R3,LSL#3
215C2C:  ADDS            R3, #1
215C2E:  CMP             R1, R3
215C30:  STRH            R2, [R6,#0xE]
215C32:  BNE             loc_215C26
215C34:  MOV             R0, R5
215C36:  MOVS            R1, #1
215C38:  BLX             j__Z25RpGeometryAddMorphTargetsP10RpGeometryi; RpGeometryAddMorphTargets(RpGeometry *,int)
215C3C:  CMP.W           R0, #0xFFFFFFFF
215C40:  BLE             loc_215C50
215C42:  LDR             R0, =(dword_683B78 - 0x215C4A)
215C44:  MOV             R1, R5
215C46:  ADD             R0, PC; dword_683B78
215C48:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
215C4C:  MOV             R4, R5
215C4E:  B               loc_215C68
215C50:  LDR             R0, [SP,#0x30+var_2C]
215C52:  BLX             j__Z27_rpMaterialListDeinitializeP14RpMaterialList; _rpMaterialListDeinitialize(RpMaterialList *)
215C56:  LDR             R0, =(RwEngineInstance_ptr - 0x215C5C)
215C58:  ADD             R0, PC; RwEngineInstance_ptr
215C5A:  LDR             R0, [R0]; RwEngineInstance
215C5C:  LDR             R0, [R0]
215C5E:  LDR.W           R1, [R0,#0x130]
215C62:  MOV             R0, R5
215C64:  BLX             R1
215C66:  MOVS            R4, #0
215C68:  MOV             R0, R4
215C6A:  ADD             SP, SP, #0x14
215C6C:  POP.W           {R8-R11}
215C70:  POP             {R4-R7,PC}
