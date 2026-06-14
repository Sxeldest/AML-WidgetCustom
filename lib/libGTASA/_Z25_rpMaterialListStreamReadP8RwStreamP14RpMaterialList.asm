; =========================================================
; Game Engine Function: _Z25_rpMaterialListStreamReadP8RwStreamP14RpMaterialList
; Address            : 0x217B48 - 0x217DF4
; =========================================================

217B48:  PUSH            {R4-R7,LR}
217B4A:  ADD             R7, SP, #0xC
217B4C:  PUSH.W          {R8-R11}
217B50:  SUB             SP, SP, #0x14
217B52:  ADD             R2, SP, #0x30+var_2C
217B54:  MOV             R11, R1
217B56:  MOV             R3, SP
217B58:  MOVS            R1, #1
217B5A:  MOV             R6, R0
217B5C:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
217B60:  CMP             R0, #0
217B62:  BEQ             loc_217C62
217B64:  LDR             R0, [SP,#0x30+var_30]
217B66:  MOV             R8, #0x80000004
217B6E:  MOVW            R1, #0x2003
217B72:  SUB.W           R0, R0, #0x34000
217B76:  CMP             R0, R1
217B78:  BHI             loc_217C66
217B7A:  ADD             R1, SP, #0x30+var_28
217B7C:  MOV             R0, R6
217B7E:  MOVS            R2, #4
217B80:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
217B84:  MOVS            R5, #0
217B86:  CMP             R0, #0
217B88:  BEQ.W           loc_217D26
217B8C:  STRD.W          R5, R5, [R11]
217B90:  STR.W           R5, [R11,#8]
217B94:  LDR             R4, [SP,#0x30+var_28]
217B96:  CMP             R4, #0
217B98:  BEQ             loc_217C7A
217B9A:  CMP             R4, #1
217B9C:  BLT             loc_217BC2
217B9E:  LDR             R0, =(RwEngineInstance_ptr - 0x217BA8)
217BA0:  MOV.W           R9, R4,LSL#2
217BA4:  ADD             R0, PC; RwEngineInstance_ptr
217BA6:  LDR             R0, [R0]; RwEngineInstance
217BA8:  LDR             R0, [R0]
217BAA:  LDR.W           R1, [R0,#0x12C]
217BAE:  MOV             R0, R9
217BB0:  BLX             R1
217BB2:  CMP             R0, #0
217BB4:  BEQ.W           loc_217CCC
217BB8:  STR.W           R4, [R11,#8]
217BBC:  STR.W           R0, [R11]
217BC0:  LDR             R4, [SP,#0x30+var_28]
217BC2:  LDR             R0, =(RwEngineInstance_ptr - 0x217BC8)
217BC4:  ADD             R0, PC; RwEngineInstance_ptr
217BC6:  LDR             R0, [R0]; RwEngineInstance
217BC8:  LDR             R0, [R0]
217BCA:  LDR.W           R1, [R0,#0x12C]
217BCE:  LSLS            R0, R4, #2
217BD0:  BLX             R1
217BD2:  MOV             R9, R0
217BD4:  LDR             R0, [SP,#0x30+var_28]
217BD6:  MOV             R1, R9
217BD8:  LSLS            R2, R0, #2
217BDA:  MOV             R0, R6
217BDC:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
217BE0:  CMP             R0, #0
217BE2:  BEQ             loc_217C7E
217BE4:  LDR             R0, [SP,#0x30+var_28]
217BE6:  CMP             R0, #1
217BE8:  BLT             loc_217C4E
217BEA:  MOVS            R4, #0
217BEC:  MOV             R10, SP
217BEE:  LDR.W           R0, [R9,R4,LSL#2]
217BF2:  CMP.W           R0, #0xFFFFFFFF
217BF6:  BLE             loc_217C08
217BF8:  LDR.W           R1, [R11]
217BFC:  LDR.W           R5, [R1,R0,LSL#2]
217C00:  LDRH            R0, [R5,#0x18]
217C02:  ADDS            R0, #1
217C04:  STRH            R0, [R5,#0x18]
217C06:  B               loc_217C38
217C08:  MOV             R0, R6; int
217C0A:  MOVS            R1, #7
217C0C:  MOVS            R2, #0
217C0E:  MOV             R3, R10
217C10:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
217C14:  CMP             R0, #0
217C16:  BEQ.W           loc_217D30
217C1A:  LDR             R0, [SP,#0x30+var_30]
217C1C:  MOVW            R1, #0x2003
217C20:  SUB.W           R0, R0, #0x34000
217C24:  CMP             R0, R1
217C26:  BHI.W           loc_217D6A
217C2A:  MOV             R0, R6
217C2C:  BLX             j__Z20RpMaterialStreamReadP8RwStream; RpMaterialStreamRead(RwStream *)
217C30:  MOV             R5, R0
217C32:  CMP             R5, #0
217C34:  BEQ.W           loc_217DB8
217C38:  MOV             R0, R11
217C3A:  MOV             R1, R5
217C3C:  BLX             j__Z29_rpMaterialListAppendMaterialP14RpMaterialListP10RpMaterial; _rpMaterialListAppendMaterial(RpMaterialList *,RpMaterial *)
217C40:  MOV             R0, R5
217C42:  BLX             j__Z17RpMaterialDestroyP10RpMaterial; RpMaterialDestroy(RpMaterial *)
217C46:  LDR             R0, [SP,#0x30+var_28]
217C48:  ADDS            R4, #1
217C4A:  CMP             R4, R0
217C4C:  BLT             loc_217BEE
217C4E:  LDR             R0, =(RwEngineInstance_ptr - 0x217C54)
217C50:  ADD             R0, PC; RwEngineInstance_ptr
217C52:  LDR             R0, [R0]; RwEngineInstance
217C54:  LDR             R0, [R0]
217C56:  LDR.W           R1, [R0,#0x130]
217C5A:  MOV             R0, R9
217C5C:  BLX             R1
217C5E:  MOV             R5, R11
217C60:  B               loc_217D26
217C62:  MOVS            R5, #0
217C64:  B               loc_217D26
217C66:  MOVS            R5, #0
217C68:  MOV             R0, R8; int
217C6A:  STR             R5, [SP,#0x30+var_24]
217C6C:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
217C70:  STR             R0, [SP,#0x30+var_20]
217C72:  ADD             R0, SP, #0x30+var_24
217C74:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
217C78:  B               loc_217D26
217C7A:  MOV             R5, R11
217C7C:  B               loc_217D26
217C7E:  LDR             R0, =(RwEngineInstance_ptr - 0x217C84)
217C80:  ADD             R0, PC; RwEngineInstance_ptr
217C82:  LDR             R0, [R0]; RwEngineInstance
217C84:  LDR             R0, [R0]
217C86:  LDR.W           R1, [R0,#0x130]
217C8A:  MOV             R0, R9
217C8C:  BLX             R1
217C8E:  LDR.W           R8, [R11]
217C92:  CMP.W           R8, #0
217C96:  BEQ             loc_217CC8
217C98:  LDR.W           R4, [R11,#4]
217C9C:  CMP             R4, #1
217C9E:  BLT             loc_217CB2
217CA0:  MOVS            R6, #0
217CA2:  MOV             R5, R8
217CA4:  LDR             R0, [R5]
217CA6:  BLX             j__Z17RpMaterialDestroyP10RpMaterial; RpMaterialDestroy(RpMaterial *)
217CAA:  STR.W           R6, [R5],#4
217CAE:  SUBS            R4, #1
217CB0:  BNE             loc_217CA4
217CB2:  LDR             R0, =(RwEngineInstance_ptr - 0x217CB8)
217CB4:  ADD             R0, PC; RwEngineInstance_ptr
217CB6:  LDR             R0, [R0]; RwEngineInstance
217CB8:  LDR             R0, [R0]
217CBA:  LDR.W           R1, [R0,#0x130]
217CBE:  MOV             R0, R8
217CC0:  BLX             R1
217CC2:  MOVS            R0, #0
217CC4:  STR.W           R0, [R11]
217CC8:  MOVS            R5, #0
217CCA:  B               loc_217D1E
217CCC:  ADD.W           R0, R8, #0xF; int
217CD0:  MOVS            R5, #0
217CD2:  MOV             R1, R9
217CD4:  STR             R5, [SP,#0x30+var_24]
217CD6:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
217CDA:  STR             R0, [SP,#0x30+var_20]
217CDC:  ADD             R0, SP, #0x30+var_24
217CDE:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
217CE2:  LDR.W           R8, [R11]
217CE6:  CMP.W           R8, #0
217CEA:  BEQ             loc_217D1E
217CEC:  LDR.W           R4, [R11,#4]
217CF0:  CMP             R4, #1
217CF2:  BLT             loc_217D08
217CF4:  MOV.W           R9, #0
217CF8:  MOV             R6, R8
217CFA:  LDR             R0, [R6]
217CFC:  BLX             j__Z17RpMaterialDestroyP10RpMaterial; RpMaterialDestroy(RpMaterial *)
217D00:  STR.W           R9, [R6],#4
217D04:  SUBS            R4, #1
217D06:  BNE             loc_217CFA
217D08:  LDR             R0, =(RwEngineInstance_ptr - 0x217D0E)
217D0A:  ADD             R0, PC; RwEngineInstance_ptr
217D0C:  LDR             R0, [R0]; RwEngineInstance
217D0E:  LDR             R0, [R0]
217D10:  LDR.W           R1, [R0,#0x130]
217D14:  MOV             R0, R8
217D16:  BLX             R1
217D18:  MOVS            R0, #0
217D1A:  STR.W           R0, [R11]
217D1E:  STR.W           R5, [R11,#4]
217D22:  STR.W           R5, [R11,#8]
217D26:  MOV             R0, R5
217D28:  ADD             SP, SP, #0x14
217D2A:  POP.W           {R8-R11}
217D2E:  POP             {R4-R7,PC}
217D30:  LDR             R0, =(RwEngineInstance_ptr - 0x217D36)
217D32:  ADD             R0, PC; RwEngineInstance_ptr
217D34:  LDR             R0, [R0]; RwEngineInstance
217D36:  LDR             R0, [R0]
217D38:  LDR.W           R1, [R0,#0x130]
217D3C:  MOV             R0, R9
217D3E:  BLX             R1
217D40:  LDR.W           R8, [R11]
217D44:  CMP.W           R8, #0
217D48:  BEQ             loc_217CC8
217D4A:  LDR.W           R4, [R11,#4]
217D4E:  CMP             R4, #1
217D50:  BLT             loc_217D64
217D52:  MOVS            R6, #0
217D54:  MOV             R5, R8
217D56:  LDR             R0, [R5]
217D58:  BLX             j__Z17RpMaterialDestroyP10RpMaterial; RpMaterialDestroy(RpMaterial *)
217D5C:  STR.W           R6, [R5],#4
217D60:  SUBS            R4, #1
217D62:  BNE             loc_217D56
217D64:  LDR             R0, =(RwEngineInstance_ptr - 0x217D6A)
217D66:  ADD             R0, PC; RwEngineInstance_ptr
217D68:  B               loc_217CB6
217D6A:  MOVS            R5, #0
217D6C:  MOV             R0, R8; int
217D6E:  STR             R5, [SP,#0x30+var_24]
217D70:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
217D74:  STR             R0, [SP,#0x30+var_20]
217D76:  ADD             R0, SP, #0x30+var_24
217D78:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
217D7C:  LDR             R0, =(RwEngineInstance_ptr - 0x217D82)
217D7E:  ADD             R0, PC; RwEngineInstance_ptr
217D80:  LDR             R0, [R0]; RwEngineInstance
217D82:  LDR             R0, [R0]
217D84:  LDR.W           R1, [R0,#0x130]
217D88:  MOV             R0, R9
217D8A:  BLX             R1
217D8C:  LDR.W           R8, [R11]
217D90:  CMP.W           R8, #0
217D94:  BEQ             loc_217D1E
217D96:  LDR.W           R4, [R11,#4]
217D9A:  CMP             R4, #1
217D9C:  BLT             loc_217DB2
217D9E:  MOV.W           R9, #0
217DA2:  MOV             R6, R8
217DA4:  LDR             R0, [R6]
217DA6:  BLX             j__Z17RpMaterialDestroyP10RpMaterial; RpMaterialDestroy(RpMaterial *)
217DAA:  STR.W           R9, [R6],#4
217DAE:  SUBS            R4, #1
217DB0:  BNE             loc_217DA4
217DB2:  LDR             R0, =(RwEngineInstance_ptr - 0x217DB8)
217DB4:  ADD             R0, PC; RwEngineInstance_ptr
217DB6:  B               loc_217D0C
217DB8:  LDR             R0, =(RwEngineInstance_ptr - 0x217DBE)
217DBA:  ADD             R0, PC; RwEngineInstance_ptr
217DBC:  LDR             R0, [R0]; RwEngineInstance
217DBE:  LDR             R0, [R0]
217DC0:  LDR.W           R1, [R0,#0x130]
217DC4:  MOV             R0, R9
217DC6:  BLX             R1
217DC8:  LDR.W           R8, [R11]
217DCC:  CMP.W           R8, #0
217DD0:  BEQ.W           loc_217CC8
217DD4:  LDR.W           R4, [R11,#4]
217DD8:  CMP             R4, #1
217DDA:  BLT             loc_217DEE
217DDC:  MOVS            R6, #0
217DDE:  MOV             R5, R8
217DE0:  LDR             R0, [R5]
217DE2:  BLX             j__Z17RpMaterialDestroyP10RpMaterial; RpMaterialDestroy(RpMaterial *)
217DE6:  STR.W           R6, [R5],#4
217DEA:  SUBS            R4, #1
217DEC:  BNE             loc_217DE0
217DEE:  LDR             R0, =(RwEngineInstance_ptr - 0x217DF4)
217DF0:  ADD             R0, PC; RwEngineInstance_ptr
217DF2:  B               loc_217CB6
