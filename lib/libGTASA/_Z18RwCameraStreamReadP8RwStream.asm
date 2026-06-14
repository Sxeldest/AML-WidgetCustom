; =========================================================
; Game Engine Function: _Z18RwCameraStreamReadP8RwStream
; Address            : 0x1D4848 - 0x1D4936
; =========================================================

1D4848:  PUSH            {R4-R7,LR}
1D484A:  ADD             R7, SP, #0xC
1D484C:  PUSH.W          {R11}
1D4850:  SUB             SP, SP, #0x28
1D4852:  ADD             R2, SP, #0x38+var_34
1D4854:  MOV             R3, SP
1D4856:  MOVS            R1, #1
1D4858:  MOV             R4, R0
1D485A:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
1D485E:  CMP             R0, #0
1D4860:  BEQ             loc_1D4912
1D4862:  LDR             R0, [SP,#0x38+var_38]
1D4864:  MOVW            R1, #0x2003
1D4868:  SUB.W           R0, R0, #0x34000
1D486C:  CMP             R0, R1
1D486E:  BHI             loc_1D4916
1D4870:  ADD             R5, SP, #0x38+var_30
1D4872:  VMOV.I32        Q8, #0
1D4876:  LDR             R2, [SP,#0x38+var_34]; size_t
1D4878:  MOV             R0, R5
1D487A:  MOV             R1, R5; void *
1D487C:  VST1.64         {D16-D17}, [R0]!
1D4880:  VST1.64         {D16-D17}, [R0]
1D4884:  MOV             R0, R4; int
1D4886:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1D488A:  LDR             R1, [SP,#0x38+var_34]
1D488C:  CMP             R0, R1
1D488E:  BNE             loc_1D4912
1D4890:  MOV             R0, R5; void *
1D4892:  MOVS            R1, #0x20 ; ' '; unsigned int
1D4894:  BLX             j__Z13RwMemNative32Pvj; RwMemNative32(void *,uint)
1D4898:  MOV             R0, R5; void *
1D489A:  MOVS            R1, #8; unsigned int
1D489C:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
1D48A0:  ADD.W           R6, R5, #8
1D48A4:  MOVS            R1, #8; unsigned int
1D48A6:  MOV             R0, R6; void *
1D48A8:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
1D48AC:  ADD.W           R0, R5, #0x10; void *
1D48B0:  MOVS            R1, #4; unsigned int
1D48B2:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
1D48B6:  ADD.W           R0, R5, #0x14; void *
1D48BA:  MOVS            R1, #4; unsigned int
1D48BC:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
1D48C0:  ADD.W           R0, R5, #0x18; void *
1D48C4:  MOVS            R1, #4; unsigned int
1D48C6:  BLX             j__Z18RwMemFloat32ToRealPvj; RwMemFloat32ToReal(void *,uint)
1D48CA:  BLX             j__Z14RwCameraCreatev; RwCameraCreate(void)
1D48CE:  MOV             R5, R0
1D48D0:  CBZ             R5, loc_1D4912
1D48D2:  LDR             R0, =(cameraTKList_ptr - 0x1D48DC)
1D48D4:  MOV             R1, R4; int
1D48D6:  MOV             R2, R5
1D48D8:  ADD             R0, PC; cameraTKList_ptr
1D48DA:  LDR             R0, [R0]; cameraTKList ; int
1D48DC:  BLX             j__Z31_rwPluginRegistryReadDataChunksPK16RwPluginRegistryP8RwStreamPv; _rwPluginRegistryReadDataChunks(RwPluginRegistry const*,RwStream *,void *)
1D48E0:  CBZ             R0, loc_1D4912
1D48E2:  ADD             R1, SP, #0x38+var_30
1D48E4:  MOV             R0, R5
1D48E6:  BLX             j__Z21RwCameraSetViewWindowP8RwCameraPK5RwV2d; RwCameraSetViewWindow(RwCamera *,RwV2d const*)
1D48EA:  MOV             R0, R5
1D48EC:  MOV             R1, R6
1D48EE:  BLX             j__Z21RwCameraSetViewOffsetP8RwCameraPK5RwV2d; RwCameraSetViewOffset(RwCamera *,RwV2d const*)
1D48F2:  LDR             R1, [SP,#0x38+var_20]
1D48F4:  MOV             R0, R5
1D48F6:  BLX             j__Z24RwCameraSetNearClipPlaneP8RwCameraf; RwCameraSetNearClipPlane(RwCamera *,float)
1D48FA:  LDR             R1, [SP,#0x38+var_1C]
1D48FC:  MOV             R0, R5
1D48FE:  BLX             j__Z23RwCameraSetFarClipPlaneP8RwCameraf; RwCameraSetFarClipPlane(RwCamera *,float)
1D4902:  LDR             R0, [SP,#0x38+var_18]
1D4904:  STR.W           R0, [R5,#0x88]
1D4908:  MOV             R0, R5
1D490A:  LDR             R1, [SP,#0x38+var_14]
1D490C:  BLX             j__Z21RwCameraSetProjectionP8RwCamera18RwCameraProjection; RwCameraSetProjection(RwCamera *,RwCameraProjection)
1D4910:  B               loc_1D492C
1D4912:  MOVS            R5, #0
1D4914:  B               loc_1D492C
1D4916:  MOVS            R0, #4
1D4918:  MOVS            R5, #0
1D491A:  MOVT            R0, #0x8000; int
1D491E:  STR             R5, [SP,#0x38+var_30]
1D4920:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1D4924:  STR             R0, [SP,#0x38+var_2C]
1D4926:  ADD             R0, SP, #0x38+var_30
1D4928:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1D492C:  MOV             R0, R5
1D492E:  ADD             SP, SP, #0x28 ; '('
1D4930:  POP.W           {R11}
1D4934:  POP             {R4-R7,PC}
