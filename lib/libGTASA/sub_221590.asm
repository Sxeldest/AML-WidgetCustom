; =========================================================
; Game Engine Function: sub_221590
; Address            : 0x221590 - 0x2216F2
; =========================================================

221590:  PUSH            {R4-R7,LR}
221592:  ADD             R7, SP, #0xC
221594:  PUSH.W          {R8-R11}
221598:  SUB             SP, SP, #0x14
22159A:  MOV             R6, R0
22159C:  MOV             R8, R3
22159E:  LDR             R5, [R6,#0x18]
2215A0:  MOV             R4, R1
2215A2:  CMP.W           R8, #0
2215A6:  LDR.W           R9, [R5,#8]
2215AA:  LDR.W           R11, [R5,#0x1C]
2215AE:  STR.W           R9, [R4,#4]
2215B2:  BEQ             loc_2215BE
2215B4:  LDRH            R0, [R5,#0xC]
2215B6:  BFC.W           R0, #0xC, #0x14
2215BA:  CMP             R0, #0
2215BC:  BEQ             loc_2216B6
2215BE:  LDRB            R0, [R5,#0xB]
2215C0:  LSLS            R0, R0, #0x1F
2215C2:  BNE             loc_2215DE
2215C4:  CMP.W           R8, #0
2215C8:  BEQ             loc_2215D4
2215CA:  LDR             R0, [R4,#0x14]; unsigned int
2215CC:  CMP             R0, #0
2215CE:  IT NE
2215D0:  BLXNE           j__Z16emu_ArraysDeletej; emu_ArraysDelete(uint)
2215D4:  CMP.W           R8, #0
2215D8:  BEQ             loc_2215E4
2215DA:  LDR             R0, [R4,#0x10]
2215DC:  B               loc_221618
2215DE:  LDR             R0, [R5,#0x54]
2215E0:  STR             R0, [R4,#0x1C]
2215E2:  B               loc_2216B6
2215E4:  LDR             R0, =(RwHackNoCompressedTexCoords_ptr - 0x2215F4)
2215E6:  MOVS            R1, #0x18
2215E8:  TST.W           R9, #0x10
2215EC:  MOV.W           R3, #3
2215F0:  ADD             R0, PC; RwHackNoCompressedTexCoords_ptr
2215F2:  IT EQ
2215F4:  MOVEQ           R1, #0xC
2215F6:  TST.W           R9, #8
2215FA:  LDR             R2, [R4,#0xC]
2215FC:  LDR             R0, [R0]; RwHackNoCompressedTexCoords
2215FE:  LDRB            R0, [R0]
221600:  IT NE
221602:  ADDNE           R1, #4
221604:  CMP             R0, #0
221606:  IT EQ
221608:  MOVEQ           R3, #2
22160A:  LSL.W           R0, R11, R3
22160E:  ADD             R1, R0
221610:  STR             R1, [R4,#8]
221612:  MUL.W           R0, R1, R2; byte_count
221616:  STR             R0, [R4,#0x10]
221618:  BLX             malloc
22161C:  MOV             R10, R0
22161E:  MOVS            R0, #0
221620:  STRD.W          R11, R8, [SP,#0x30+var_30]
221624:  MOV             R1, R6
221626:  STRD.W          R10, R0, [SP,#0x30+var_28]
22162A:  MOV             R2, R5
22162C:  STR             R0, [SP,#0x30+var_20]
22162E:  MOV             R0, R4
221630:  MOV             R3, R9
221632:  BLX             j__Z42_rxOpenGLAllInOneAtomicInstanceVertexArrayP24RxOpenGLMeshInstanceDataPK8RpAtomicPK10RpGeometry14RpGeometryFlagiiPhP6RwRGBASA_; _rxOpenGLAllInOneAtomicInstanceVertexArray(RxOpenGLMeshInstanceData *,RpAtomic const*,RpGeometry const*,RpGeometryFlag,int,int,uchar *,RwRGBA *,RwRGBA *)
221636:  BLX             j__Z15emu_ArraysResetv; emu_ArraysReset(void)
22163A:  LDR             R0, [R4,#0x2C]; void *
22163C:  CMP             R0, #0
22163E:  ITTT NE
221640:  LDRNE           R2, [R4,#0x28]; unsigned int
221642:  MOVWNE          R1, #0x1403; unsigned int
221646:  BLXNE           j__Z17emu_ArraysIndicesPvjj; emu_ArraysIndices(void *,uint,uint)
22164A:  LDRD.W          R3, R2, [R4,#8]; unsigned int
22164E:  MOV             R0, R10; void *
221650:  LDR             R1, [R4,#0x10]; size_t
221652:  BLX             j__Z16emu_ArraysVertexPvjjj; emu_ArraysVertex(void *,uint,uint,uint)
221656:  MOVS            R0, #0
221658:  MOVS            R1, #3; int
22165A:  STR             R0, [SP,#0x30+var_30]; int
22165C:  MOVS            R0, #0; unsigned int
22165E:  MOVW            R2, #0x1406; unsigned int
221662:  MOVS            R3, #0; unsigned __int8
221664:  BLX             j__Z22emu_ArraysVertexAttribjijhi; emu_ArraysVertexAttrib(uint,int,uint,uchar,int)
221668:  MOVS.W          R0, R9,LSL#27
22166C:  MOV.W           R5, #0xC
221670:  BMI             loc_2216C0
221672:  MOVS.W          R0, R9,LSL#28
221676:  BMI             loc_2216D8
221678:  CMP.W           R11, #1
22167C:  BLT             loc_2216A0
22167E:  LDR             R0, =(RwHackNoCompressedTexCoords_ptr - 0x22168A)
221680:  MOVS            R1, #2; int
221682:  STR             R5, [SP,#0x30+var_30]; int
221684:  MOVS            R3, #0; unsigned __int8
221686:  ADD             R0, PC; RwHackNoCompressedTexCoords_ptr
221688:  LDR             R0, [R0]; RwHackNoCompressedTexCoords
22168A:  LDRB            R0, [R0]
22168C:  CMP             R0, #0
22168E:  MOV.W           R0, #1; unsigned int
221692:  ITE EQ
221694:  MOVWEQ          R2, #0x1403
221698:  MOVWNE          R2, #0x1406; unsigned int
22169C:  BLX             j__Z22emu_ArraysVertexAttribjijhi; emu_ArraysVertexAttrib(uint,int,uint,uchar,int)
2216A0:  CMP.W           R8, #0
2216A4:  MOV.W           R1, #1; unsigned __int8
2216A8:  IT NE
2216AA:  MOVNE.W         R8, #1
2216AE:  MOV             R0, R8; unsigned __int8
2216B0:  BLX             j__Z15emu_ArraysStorehh; emu_ArraysStore(uchar,uchar)
2216B4:  STR             R0, [R4,#0x14]
2216B6:  MOVS            R0, #1
2216B8:  ADD             SP, SP, #0x14
2216BA:  POP.W           {R8-R11}
2216BE:  POP             {R4-R7,PC}
2216C0:  MOVS            R0, #2; unsigned int
2216C2:  MOVS            R1, #3; int
2216C4:  MOVW            R2, #0x1406; unsigned int
2216C8:  MOVS            R3, #0; unsigned __int8
2216CA:  STR             R5, [SP,#0x30+var_30]; int
2216CC:  BLX             j__Z22emu_ArraysVertexAttribjijhi; emu_ArraysVertexAttrib(uint,int,uint,uchar,int)
2216D0:  MOVS            R5, #0x18
2216D2:  MOVS.W          R0, R9,LSL#28
2216D6:  BPL             loc_221678
2216D8:  MOVS            R0, #3; unsigned int
2216DA:  MOVS            R1, #4; int
2216DC:  MOVW            R2, #0x1401; unsigned int
2216E0:  MOVS            R3, #1; unsigned __int8
2216E2:  STR             R5, [SP,#0x30+var_30]; int
2216E4:  BLX             j__Z22emu_ArraysVertexAttribjijhi; emu_ArraysVertexAttrib(uint,int,uint,uchar,int)
2216E8:  ADDS            R5, #4
2216EA:  CMP.W           R11, #1
2216EE:  BGE             loc_22167E
2216F0:  B               loc_2216A0
