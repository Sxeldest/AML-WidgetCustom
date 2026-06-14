; =========================================================
; Game Engine Function: sub_1C47BE
; Address            : 0x1C47BE - 0x1C4844
; =========================================================

1C47BE:  PUSH            {R4-R7,LR}
1C47C0:  ADD             R7, SP, #0xC
1C47C2:  PUSH.W          {R11}
1C47C6:  MOV             R4, R0
1C47C8:  LDR             R0, [R3]; float *
1C47CA:  MOV             R6, R2
1C47CC:  MOV             R5, R1
1C47CE:  CBZ             R0, loc_1C47F6
1C47D0:  LDRB            R1, [R0,#0xE]
1C47D2:  LSLS            R1, R1, #0x1E
1C47D4:  BMI             loc_1C47F6
1C47D6:  MOVS            R1, #1; unsigned __int8
1C47D8:  BLX             j__Z27emu_SetTextureMatrixEnabledPfh; emu_SetTextureMatrixEnabled(float *,uchar)
1C47DC:  TST.W           R6, #0x84
1C47E0:  IT NE
1C47E2:  CMPNE           R5, #0
1C47E4:  BEQ             loc_1C4826
1C47E6:  LDR             R1, [R5]
1C47E8:  MOVS            R0, #1
1C47EA:  BLX             j__Z31_rwOpenGLSetRenderStateNoExtras13RwRenderStatePv; _rwOpenGLSetRenderStateNoExtras(RwRenderState,void *)
1C47EE:  LDRB.W          R1, [R5,#0x50]
1C47F2:  MOVS            R0, #9
1C47F4:  B               loc_1C482A
1C47F6:  TST.W           R6, #0x84
1C47FA:  IT NE
1C47FC:  CMPNE           R5, #0
1C47FE:  BEQ             loc_1C4810
1C4800:  LDR             R1, [R5]
1C4802:  MOVS            R0, #1
1C4804:  BLX             j__Z31_rwOpenGLSetRenderStateNoExtras13RwRenderStatePv; _rwOpenGLSetRenderStateNoExtras(RwRenderState,void *)
1C4808:  LDRB.W          R1, [R5,#0x50]
1C480C:  MOVS            R0, #9
1C480E:  B               loc_1C4814
1C4810:  MOVS            R0, #1
1C4812:  MOVS            R1, #0
1C4814:  BLX             j__Z23_rwOpenGLSetRenderState13RwRenderStatePv; _rwOpenGLSetRenderState(RwRenderState,void *)
1C4818:  MOV             R0, R4; this
1C481A:  POP.W           {R11}
1C481E:  POP.W           {R4-R7,LR}
1C4822:  B.W             j_j__ZN24RxOpenGLMeshInstanceData10DrawStoredEv; j_RxOpenGLMeshInstanceData::DrawStored(void)
1C4826:  MOVS            R0, #1
1C4828:  MOVS            R1, #0
1C482A:  BLX             j__Z23_rwOpenGLSetRenderState13RwRenderStatePv; _rwOpenGLSetRenderState(RwRenderState,void *)
1C482E:  MOV             R0, R4; this
1C4830:  BLX             j__ZN24RxOpenGLMeshInstanceData10DrawStoredEv; RxOpenGLMeshInstanceData::DrawStored(void)
1C4834:  MOVS            R0, #0; float *
1C4836:  MOVS            R1, #0; unsigned __int8
1C4838:  POP.W           {R11}
1C483C:  POP.W           {R4-R7,LR}
1C4840:  B.W             sub_19E134
