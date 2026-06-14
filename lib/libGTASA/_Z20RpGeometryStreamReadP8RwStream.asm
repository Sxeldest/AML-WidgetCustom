; =========================================================
; Game Engine Function: _Z20RpGeometryStreamReadP8RwStream
; Address            : 0x2164C8 - 0x21674C
; =========================================================

2164C8:  PUSH            {R4-R7,LR}
2164CA:  ADD             R7, SP, #0xC
2164CC:  PUSH.W          {R8-R11}
2164D0:  SUB             SP, SP, #0x44
2164D2:  ADD             R3, SP, #0x60+var_3C
2164D4:  MOVS            R1, #1
2164D6:  MOVS            R2, #0
2164D8:  MOV             R9, R0
2164DA:  MOVS            R5, #0
2164DC:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
2164E0:  CMP             R0, #0
2164E2:  BEQ.W           loc_216742
2164E6:  LDR             R4, [SP,#0x60+var_3C]
2164E8:  MOVS            R0, #0x80000004; int
2164EE:  MOVW            R1, #0x2004
2164F2:  SUB.W           R2, R4, #0x34000
2164F6:  CMP             R2, R1
2164F8:  BCC             loc_21650C
2164FA:  MOVS            R5, #0
2164FC:  STR             R5, [SP,#0x60+var_58]
2164FE:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
216502:  STR             R0, [SP,#0x60+var_54]
216504:  ADD             R0, SP, #0x60+var_58
216506:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
21650A:  B               loc_216742
21650C:  ADD             R1, SP, #0x60+var_2C; void *
21650E:  MOV             R0, R9; int
216510:  MOVS            R2, #0x10; size_t
216512:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
216516:  CMP.W           R4, #0x34000
21651A:  BHI             loc_216546
21651C:  CMP             R0, #0x10
21651E:  BNE.W           loc_216740
216522:  ADD             R1, SP, #0x60+var_38; void *
216524:  MOV             R0, R9; int
216526:  MOVS            R2, #0xC; size_t
216528:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
21652C:  CMP             R0, #0xC
21652E:  BNE.W           loc_216740
216532:  ADD             R5, SP, #0x60+var_38
216534:  MOVS            R1, #0xC; unsigned int
216536:  MOV             R0, R5; void *
216538:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
21653C:  MOV             R0, R5; void *
21653E:  MOVS            R1, #0xC; unsigned int
216540:  BLX             j__Z18RwMemRealToFloat32Pvj; RwMemRealToFloat32(void *,uint)
216544:  B               loc_21654C
216546:  CMP             R0, #0x10
216548:  BNE.W           loc_216740
21654C:  ADD             R0, SP, #0x60+var_2C; void *
21654E:  MOVS            R1, #0x10; unsigned int
216550:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
216554:  LDRD.W          R2, R1, [SP,#0x60+var_2C]; unsigned int
216558:  LDR             R0, [SP,#0x60+var_24]; int
21655A:  BLX             j__Z16RpGeometryCreateiij; RpGeometryCreate(int,int,uint)
21655E:  MOV             R10, R0
216560:  CMP.W           R10, #0
216564:  BEQ.W           loc_216740
216568:  LDR             R0, [SP,#0x60+var_20]
21656A:  CMP             R0, #2
21656C:  BLT             loc_21657E
21656E:  SUBS            R1, R0, #1
216570:  MOV             R0, R10
216572:  BLX             j__Z25RpGeometryAddMorphTargetsP10RpGeometryi; RpGeometryAddMorphTargets(RpGeometry *,int)
216576:  CMP.W           R0, #0xFFFFFFFF
21657A:  BLE.W           loc_21673A
21657E:  LDRB.W          R0, [R10,#0xB]
216582:  LSLS            R0, R0, #0x1F
216584:  BNE             loc_216626
216586:  LDR.W           R4, [R10,#0x14]
21658A:  CMP             R4, #0
21658C:  BEQ             loc_216626
21658E:  LDRB.W          R0, [SP,#0x60+var_2C]
216592:  LSLS            R0, R0, #0x1C
216594:  BPL             loc_2165B6
216596:  LDR.W           R1, [R10,#0x30]; void *
21659A:  LSLS            R5, R4, #2
21659C:  MOV             R0, R9; int
21659E:  MOV             R2, R5; size_t
2165A0:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
2165A4:  CMP.W           R0, R4,LSL#2
2165A8:  BNE.W           loc_21673A
2165AC:  LDR.W           R0, [R10,#0x30]; void *
2165B0:  MOV             R1, R5; unsigned int
2165B2:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
2165B6:  LDR.W           R0, [R10,#0x1C]
2165BA:  CMP             R0, #1
2165BC:  BLT             loc_2165E4
2165BE:  LDR.W           R0, [R10,#0x14]
2165C2:  MOVS            R4, #0
2165C4:  LSLS            R5, R0, #3
2165C6:  ADD.W           R0, R10, R4,LSL#2
2165CA:  MOV             R2, R5
2165CC:  LDR             R1, [R0,#0x34]
2165CE:  MOV             R0, R9
2165D0:  BLX             j__Z16RwStreamReadRealP8RwStreamPfj; RwStreamReadReal(RwStream *,float *,uint)
2165D4:  CMP             R0, #0
2165D6:  BEQ.W           loc_21673A
2165DA:  LDR.W           R0, [R10,#0x1C]
2165DE:  ADDS            R4, #1
2165E0:  CMP             R4, R0
2165E2:  BLT             loc_2165C6
2165E4:  LDR.W           R6, [R10,#0x10]
2165E8:  CBZ             R6, loc_216626
2165EA:  LDR.W           R5, [R10,#0x2C]
2165EE:  LSLS            R4, R6, #3
2165F0:  MOV             R0, R9; int
2165F2:  MOV             R2, R4; size_t
2165F4:  MOV             R1, R5; void *
2165F6:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
2165FA:  CMP.W           R0, R6,LSL#3
2165FE:  BNE.W           loc_21673A
216602:  MOV             R0, R5; void *
216604:  MOV             R1, R4; unsigned int
216606:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
21660A:  LDRD.W          R0, R1, [R5]
21660E:  SUBS            R6, #1
216610:  STRH            R0, [R5,#2]
216612:  STRH            R1, [R5,#6]
216614:  MOV.W           R0, R0,LSR#16
216618:  STRH            R0, [R5]
21661A:  MOV.W           R0, R1,LSR#16
21661E:  STRH            R0, [R5,#4]
216620:  ADD.W           R5, R5, #8
216624:  BNE             loc_21660A
216626:  LDR.W           R0, [R10,#0x18]
21662A:  CMP             R0, #1
21662C:  BLT             loc_2166C4
21662E:  ADD.W           R11, SP, #0x60+var_58
216632:  MOVS            R6, #0
216634:  MOVS            R5, #0
216636:  ADD.W           R0, R11, #0xC
21663A:  STR             R0, [SP,#0x60+var_5C]
21663C:  MOV             R0, R9; int
21663E:  MOV             R1, R11; void *
216640:  MOVS            R2, #0x18; size_t
216642:  LDR.W           R4, [R10,#0x60]
216646:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
21664A:  CMP             R0, #0x18
21664C:  BNE             loc_21673A
21664E:  MOV             R0, R11; void *
216650:  MOVS            R1, #0x18; unsigned int
216652:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
216656:  MOV             R0, R11; void *
216658:  MOVS            R1, #0xC; unsigned int
21665A:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
21665E:  LDR             R0, [SP,#0x60+var_5C]; void *
216660:  MOVS            R1, #4; unsigned int
216662:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
216666:  MOV             R0, R11
216668:  ADD.W           R8, R4, R6
21666C:  VLD1.64         {D16-D17}, [R0]!
216670:  ADD.W           R1, R8, #4
216674:  VST1.32         {D16-D17}, [R1]
216678:  LDR             R0, [R0]
21667A:  CBZ             R0, loc_21669C
21667C:  LDR.W           R0, [R10,#0x14]
216680:  LDR             R2, [SP,#0x60+var_44]
216682:  LDR.W           R1, [R8,#0x14]
216686:  ADD.W           R0, R0, R0,LSL#1
21668A:  CBZ             R2, loc_216690
21668C:  LSLS            R2, R0, #3
21668E:  B               loc_2166AE
216690:  LSLS            R2, R0, #2
216692:  MOV             R0, R9
216694:  BLX             j__Z16RwStreamReadRealP8RwStreamPfj; RwStreamReadReal(RwStream *,float *,uint)
216698:  CMP             R0, #0
21669A:  BEQ             loc_21673A
21669C:  LDR             R0, [SP,#0x60+var_44]
21669E:  CBZ             R0, loc_2166B8
2166A0:  LDR.W           R0, [R10,#0x14]
2166A4:  LDR.W           R1, [R8,#0x18]
2166A8:  ADD.W           R0, R0, R0,LSL#1
2166AC:  LSLS            R2, R0, #2
2166AE:  MOV             R0, R9
2166B0:  BLX             j__Z16RwStreamReadRealP8RwStreamPfj; RwStreamReadReal(RwStream *,float *,uint)
2166B4:  CMP             R0, #0
2166B6:  BEQ             loc_21673A
2166B8:  LDR.W           R0, [R10,#0x18]
2166BC:  ADDS            R5, #1
2166BE:  ADDS            R6, #0x1C
2166C0:  CMP             R5, R0
2166C2:  BLT             loc_21663C
2166C4:  ADD             R3, SP, #0x60+var_3C
2166C6:  MOV             R0, R9; int
2166C8:  MOVS            R1, #8
2166CA:  MOVS            R2, #0
2166CC:  MOVS            R5, #0
2166CE:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
2166D2:  CBZ             R0, loc_216742
2166D4:  LDR             R0, [SP,#0x60+var_3C]
2166D6:  MOVW            R2, #0x2004
2166DA:  SUB.W           R1, R0, #0x34000
2166DE:  CMP             R1, R2
2166E0:  BCC             loc_2166F4
2166E2:  MOV             R0, R10
2166E4:  BLX             j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
2166E8:  MOVS            R0, #4
2166EA:  MOVS            R5, #0
2166EC:  STR             R5, [SP,#0x60+var_58]
2166EE:  MOVT            R0, #0x8000
2166F2:  B               loc_2164FE
2166F4:  MOV             R4, #0x34001
2166FC:  CMP             R0, R4
2166FE:  ITT CC
216700:  ADDCC.W         R0, SP, #0x60+var_38
216704:  BLXCC           j__Z38_rpMaterialSetDefaultSurfacePropertiesPK19RwSurfaceProperties; _rpMaterialSetDefaultSurfaceProperties(RwSurfaceProperties const*)
216708:  ADD.W           R1, R10, #0x20 ; ' '
21670C:  MOV             R0, R9
21670E:  BLX             j__Z25_rpMaterialListStreamReadP8RwStreamP14RpMaterialList; _rpMaterialListStreamRead(RwStream *,RpMaterialList *)
216712:  CBZ             R0, loc_21673A
216714:  LDR             R0, [SP,#0x60+var_3C]
216716:  CMP             R0, R4
216718:  ITT CC
21671A:  MOVCC           R0, #0
21671C:  BLXCC           j__Z38_rpMaterialSetDefaultSurfacePropertiesPK19RwSurfaceProperties; _rpMaterialSetDefaultSurfaceProperties(RwSurfaceProperties const*)
216720:  LDR             R0, =(dword_683B78 - 0x21672A)
216722:  MOV             R1, R9; int
216724:  MOV             R2, R10
216726:  ADD             R0, PC; dword_683B78 ; int
216728:  BLX             j__Z31_rwPluginRegistryReadDataChunksPK16RwPluginRegistryP8RwStreamPv; _rwPluginRegistryReadDataChunks(RwPluginRegistry const*,RwStream *,void *)
21672C:  CBZ             R0, loc_21673A
21672E:  MOV             R0, R10
216730:  BLX             j__Z16RpGeometryUnlockP10RpGeometry; RpGeometryUnlock(RpGeometry *)
216734:  CBZ             R0, loc_21673A
216736:  MOV             R5, R10
216738:  B               loc_216742
21673A:  MOV             R0, R10
21673C:  BLX             j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
216740:  MOVS            R5, #0
216742:  MOV             R0, R5
216744:  ADD             SP, SP, #0x44 ; 'D'
216746:  POP.W           {R8-R11}
21674A:  POP             {R4-R7,PC}
