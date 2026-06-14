; =========================================================
; Game Engine Function: _Z20RpClumpStreamGetSizeP7RpClump
; Address            : 0x214880 - 0x2149AE
; =========================================================

214880:  PUSH            {R4-R7,LR}
214882:  ADD             R7, SP, #0xC
214884:  PUSH.W          {R8-R10}
214888:  SUB             SP, SP, #0x10
21488A:  MOV             R9, R0
21488C:  ADD             R0, SP, #0x28+var_20
21488E:  LDR.W           R1, [R9,#4]
214892:  BLX             j__Z22_rwFrameListInitializeP11rwFrameListP7RwFrame; _rwFrameListInitialize(rwFrameList *,RwFrame *)
214896:  MOVS            R6, #0
214898:  CMP             R0, #0
21489A:  BEQ.W           loc_2149A4
21489E:  ADD             R5, SP, #0x28+var_20
2148A0:  MOV             R0, R5
2148A2:  BLX             j__Z25_rwFrameListStreamGetSizePK11rwFrameList; _rwFrameListStreamGetSize(rwFrameList const*)
2148A6:  MOV             R8, R0
2148A8:  MOV             R0, R5
2148AA:  BLX             j__Z24_rwFrameListDeinitializeP11rwFrameList; _rwFrameListDeinitialize(rwFrameList *)
2148AE:  MOV             R0, SP
2148B0:  MOV             R1, R9
2148B2:  STR             R6, [SP,#0x28+var_24]
2148B4:  BL              sub_2149C4
2148B8:  CMP             R0, #0
2148BA:  BEQ             loc_2149A4
2148BC:  LDR             R0, [SP,#0x28+var_24]
2148BE:  CMP             R0, #1
2148C0:  BLT             loc_2148E0
2148C2:  MOVS            R4, #0
2148C4:  MOVS            R5, #0x10
2148C6:  LDR             R0, [SP,#0x28+var_28]
2148C8:  LDR.W           R0, [R0,R4,LSL#2]
2148CC:  BLX             j__Z23RpGeometryStreamGetSizePK10RpGeometry; RpGeometryStreamGetSize(RpGeometry const*)
2148D0:  ADDS            R1, R5, R0
2148D2:  LDR             R0, [SP,#0x28+var_24]
2148D4:  ADDS            R4, #1
2148D6:  ADD.W           R5, R1, #0xC
2148DA:  CMP             R4, R0
2148DC:  BLT             loc_2148C6
2148DE:  B               loc_2148E2
2148E0:  MOVS            R5, #0x10
2148E2:  ADD.W           R1, R8, R5
2148E6:  CMP             R0, #0
2148E8:  ADD.W           R6, R1, #0x30 ; '0'
2148EC:  BEQ             loc_214916
2148EE:  CMP             R0, #1
2148F0:  BLT             loc_214906
2148F2:  MOVS            R4, #0
2148F4:  LDR             R0, [SP,#0x28+var_28]
2148F6:  LDR.W           R0, [R0,R4,LSL#2]
2148FA:  BLX             j__Z17RpGeometryDestroyP10RpGeometry; RpGeometryDestroy(RpGeometry *)
2148FE:  LDR             R0, [SP,#0x28+var_24]
214900:  ADDS            R4, #1
214902:  CMP             R4, R0
214904:  BLT             loc_2148F4
214906:  LDR             R0, =(RwEngineInstance_ptr - 0x21490C)
214908:  ADD             R0, PC; RwEngineInstance_ptr
21490A:  LDR             R0, [R0]; RwEngineInstance
21490C:  LDR             R1, [R0]
21490E:  LDR             R0, [SP,#0x28+var_28]
214910:  LDR.W           R1, [R1,#0x130]
214914:  BLX             R1
214916:  MOV             R4, R9
214918:  LDR.W           R1, [R4,#8]!
21491C:  CMP             R1, R4
21491E:  BEQ             loc_21493C
214920:  LDR.W           R8, =(dword_683B48 - 0x214928)
214924:  ADD             R8, PC; dword_683B48
214926:  LDR.W           R5, [R1],#-0x40
21492A:  MOV             R0, R8
21492C:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
214930:  ADD             R0, R6
214932:  CMP             R5, R4
214934:  ADD.W           R6, R0, #0x34 ; '4'
214938:  MOV             R1, R5
21493A:  BNE             loc_214926
21493C:  MOV             R10, R9
21493E:  LDR.W           R8, =(dword_6BD594 - 0x21494A)
214942:  LDR.W           R0, [R10,#0x10]!
214946:  ADD             R8, PC; dword_6BD594
214948:  CMP             R0, R10
21494A:  BEQ             loc_214968
21494C:  LDR.W           R1, [R8]
214950:  LDR             R4, [R0]
214952:  SUBS            R0, R0, R1
214954:  SUBS            R5, R0, #4
214956:  MOV             R0, R5
214958:  BLX             j__Z20RpLightStreamGetSizePK7RpLight; RpLightStreamGetSize(RpLight const*)
21495C:  ADD             R0, R6
21495E:  CMP             R5, #0
214960:  ADD.W           R6, R0, #0x1C
214964:  MOV             R0, R4
214966:  BNE             loc_214948
214968:  MOV             R10, R9
21496A:  LDR.W           R8, =(dword_6BD590 - 0x214976)
21496E:  LDR.W           R0, [R10,#0x18]!
214972:  ADD             R8, PC; dword_6BD590
214974:  CMP             R0, R10
214976:  BEQ             loc_214994
214978:  LDR.W           R1, [R8]
21497C:  LDR             R4, [R0]
21497E:  SUBS            R0, R0, R1
214980:  SUBS            R5, R0, #4
214982:  MOV             R0, R5
214984:  BLX             j__Z21RwCameraStreamGetSizePK8RwCamera; RwCameraStreamGetSize(RwCamera const*)
214988:  ADD             R0, R6
21498A:  CMP             R5, #0
21498C:  ADD.W           R6, R0, #0x1C
214990:  MOV             R0, R4
214992:  BNE             loc_214974
214994:  LDR             R0, =(dword_683B60 - 0x21499C)
214996:  MOV             R1, R9
214998:  ADD             R0, PC; dword_683B60
21499A:  BLX             j__Z24_rwPluginRegistryGetSizePK16RwPluginRegistryPKv; _rwPluginRegistryGetSize(RwPluginRegistry const*,void const*)
21499E:  ADD             R0, R6
2149A0:  ADD.W           R6, R0, #0xC
2149A4:  MOV             R0, R6
2149A6:  ADD             SP, SP, #0x10
2149A8:  POP.W           {R8-R10}
2149AC:  POP             {R4-R7,PC}
