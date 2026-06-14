; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline20CustomPipeInstanceCBEPvP24RxOpenGLMeshInstanceDataii
; Address            : 0x2CB820 - 0x2CB982
; =========================================================

2CB820:  PUSH            {R4-R7,LR}
2CB822:  ADD             R7, SP, #0xC
2CB824:  PUSH.W          {R8-R11}
2CB828:  SUB             SP, SP, #0x14
2CB82A:  MOV             R6, R0
2CB82C:  MOV             R8, R3
2CB82E:  LDR             R5, [R6,#0x18]
2CB830:  MOV             R4, R1
2CB832:  CMP.W           R8, #0
2CB836:  LDR.W           R9, [R5,#8]
2CB83A:  LDR.W           R11, [R5,#0x1C]
2CB83E:  STR.W           R9, [R4,#4]
2CB842:  BEQ             loc_2CB84E
2CB844:  LDRH            R0, [R5,#0xC]
2CB846:  BFC.W           R0, #0xC, #0x14
2CB84A:  CMP             R0, #0
2CB84C:  BEQ             loc_2CB946
2CB84E:  LDRB            R0, [R5,#0xB]
2CB850:  LSLS            R0, R0, #0x1F
2CB852:  BNE             loc_2CB86E
2CB854:  CMP.W           R8, #0
2CB858:  BEQ             loc_2CB864
2CB85A:  LDR             R0, [R4,#0x14]; unsigned int
2CB85C:  CMP             R0, #0
2CB85E:  IT NE
2CB860:  BLXNE           j__Z16emu_ArraysDeletej; emu_ArraysDelete(uint)
2CB864:  CMP.W           R8, #0
2CB868:  BEQ             loc_2CB874
2CB86A:  LDR             R0, [R4,#0x10]
2CB86C:  B               loc_2CB8A8
2CB86E:  LDR             R0, [R5,#0x54]
2CB870:  STR             R0, [R4,#0x1C]
2CB872:  B               loc_2CB946
2CB874:  LDR             R0, =(RwHackNoCompressedTexCoords_ptr - 0x2CB884)
2CB876:  MOVS            R1, #0x18
2CB878:  TST.W           R9, #0x10
2CB87C:  MOV.W           R3, #3
2CB880:  ADD             R0, PC; RwHackNoCompressedTexCoords_ptr
2CB882:  IT EQ
2CB884:  MOVEQ           R1, #0xC
2CB886:  TST.W           R9, #8
2CB88A:  LDR             R2, [R4,#0xC]
2CB88C:  LDR             R0, [R0]; RwHackNoCompressedTexCoords
2CB88E:  LDRB            R0, [R0]
2CB890:  IT NE
2CB892:  ADDNE           R1, #4
2CB894:  CMP             R0, #0
2CB896:  IT EQ
2CB898:  MOVEQ           R3, #2
2CB89A:  LSL.W           R0, R11, R3
2CB89E:  ADD             R1, R0
2CB8A0:  STR             R1, [R4,#8]
2CB8A2:  MUL.W           R0, R1, R2; byte_count
2CB8A6:  STR             R0, [R4,#0x10]
2CB8A8:  BLX             malloc
2CB8AC:  MOV             R10, R0
2CB8AE:  MOVS            R0, #0
2CB8B0:  STRD.W          R11, R8, [SP,#0x30+var_30]
2CB8B4:  MOV             R1, R6
2CB8B6:  STRD.W          R10, R0, [SP,#0x30+var_28]
2CB8BA:  MOV             R2, R5
2CB8BC:  STR             R0, [SP,#0x30+var_20]
2CB8BE:  MOV             R0, R4
2CB8C0:  MOV             R3, R9
2CB8C2:  BLX             j__Z42_rxOpenGLAllInOneAtomicInstanceVertexArrayP24RxOpenGLMeshInstanceDataPK8RpAtomicPK10RpGeometry14RpGeometryFlagiiPhP6RwRGBASA_; _rxOpenGLAllInOneAtomicInstanceVertexArray(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,RpGeometryFlag,int,int,uchar *,RwRGBA *,RwRGBA *)
2CB8C6:  BLX             j__Z15emu_ArraysResetv; emu_ArraysReset(void)
2CB8CA:  LDR             R0, [R4,#0x2C]; void *
2CB8CC:  CMP             R0, #0
2CB8CE:  ITTT NE
2CB8D0:  LDRNE           R2, [R4,#0x28]; unsigned int
2CB8D2:  MOVWNE          R1, #0x1403; unsigned int
2CB8D6:  BLXNE           j__Z17emu_ArraysIndicesPvjj; emu_ArraysIndices(void *,uint,uint)
2CB8DA:  LDRD.W          R3, R2, [R4,#8]; unsigned int
2CB8DE:  MOV             R0, R10; void *
2CB8E0:  LDR             R1, [R4,#0x10]; size_t
2CB8E2:  BLX             j__Z16emu_ArraysVertexPvjjj; emu_ArraysVertex(void *,uint,uint,uint)
2CB8E6:  MOVS            R0, #0
2CB8E8:  MOVS            R1, #3; int
2CB8EA:  STR             R0, [SP,#0x30+var_30]; int
2CB8EC:  MOVS            R0, #0; unsigned int
2CB8EE:  MOVW            R2, #0x1406; unsigned int
2CB8F2:  MOVS            R3, #0; unsigned __int8
2CB8F4:  BLX             j__Z22emu_ArraysVertexAttribjijhi; emu_ArraysVertexAttrib(uint,int,uint,uchar,int)
2CB8F8:  MOVS.W          R0, R9,LSL#27
2CB8FC:  MOV.W           R5, #0xC
2CB900:  BMI             loc_2CB950
2CB902:  MOVS.W          R0, R9,LSL#28
2CB906:  BMI             loc_2CB968
2CB908:  CMP.W           R11, #1
2CB90C:  BLT             loc_2CB930
2CB90E:  LDR             R0, =(RwHackNoCompressedTexCoords_ptr - 0x2CB91A)
2CB910:  MOVS            R1, #2; int
2CB912:  STR             R5, [SP,#0x30+var_30]; int
2CB914:  MOVS            R3, #0; unsigned __int8
2CB916:  ADD             R0, PC; RwHackNoCompressedTexCoords_ptr
2CB918:  LDR             R0, [R0]; RwHackNoCompressedTexCoords
2CB91A:  LDRB            R0, [R0]
2CB91C:  CMP             R0, #0
2CB91E:  MOV.W           R0, #1; unsigned int
2CB922:  ITE EQ
2CB924:  MOVWEQ          R2, #0x1403
2CB928:  MOVWNE          R2, #0x1406; unsigned int
2CB92C:  BLX             j__Z22emu_ArraysVertexAttribjijhi; emu_ArraysVertexAttrib(uint,int,uint,uchar,int)
2CB930:  CMP.W           R8, #0
2CB934:  MOV.W           R1, #1; unsigned __int8
2CB938:  IT NE
2CB93A:  MOVNE.W         R8, #1
2CB93E:  MOV             R0, R8; unsigned __int8
2CB940:  BLX             j__Z15emu_ArraysStorehh; emu_ArraysStore(uchar,uchar)
2CB944:  STR             R0, [R4,#0x14]
2CB946:  MOVS            R0, #1
2CB948:  ADD             SP, SP, #0x14
2CB94A:  POP.W           {R8-R11}
2CB94E:  POP             {R4-R7,PC}
2CB950:  MOVS            R0, #2; unsigned int
2CB952:  MOVS            R1, #3; int
2CB954:  MOVW            R2, #0x1406; unsigned int
2CB958:  MOVS            R3, #0; unsigned __int8
2CB95A:  STR             R5, [SP,#0x30+var_30]; int
2CB95C:  BLX             j__Z22emu_ArraysVertexAttribjijhi; emu_ArraysVertexAttrib(uint,int,uint,uchar,int)
2CB960:  MOVS            R5, #0x18
2CB962:  MOVS.W          R0, R9,LSL#28
2CB966:  BPL             loc_2CB908
2CB968:  MOVS            R0, #3; unsigned int
2CB96A:  MOVS            R1, #4; int
2CB96C:  MOVW            R2, #0x1401; unsigned int
2CB970:  MOVS            R3, #1; unsigned __int8
2CB972:  STR             R5, [SP,#0x30+var_30]; int
2CB974:  BLX             j__Z22emu_ArraysVertexAttribjijhi; emu_ArraysVertexAttrib(uint,int,uint,uchar,int)
2CB978:  ADDS            R5, #4
2CB97A:  CMP.W           R11, #1
2CB97E:  BGE             loc_2CB90E
2CB980:  B               loc_2CB930
