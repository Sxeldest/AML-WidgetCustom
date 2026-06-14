; =========================================================
; Game Engine Function: _Z30_rpMatFXOpenGLAllInOneRenderCBP10RwResEntryPvhj
; Address            : 0x1C48FC - 0x1C4A64
; =========================================================

1C48FC:  PUSH            {R4-R7,LR}
1C48FE:  ADD             R7, SP, #0xC
1C4900:  PUSH.W          {R8-R11}
1C4904:  SUB             SP, SP, #0x2C
1C4906:  LDRH            R5, [R0,#0x1A]
1C4908:  MOV             R9, R3
1C490A:  CMP             R5, #0
1C490C:  BEQ.W           loc_1C4A5C
1C4910:  ADD.W           R4, R0, #0x4C ; 'L'
1C4914:  AND.W           R0, R9, #0x84
1C4918:  STR             R0, [SP,#0x48+var_20]
1C491A:  AND.W           R0, R9, #8
1C491E:  STR             R0, [SP,#0x48+var_24]
1C4920:  LDR             R0, =(_rwOpenGLLightingEnabled_ptr - 0x1C4926)
1C4922:  ADD             R0, PC; _rwOpenGLLightingEnabled_ptr
1C4924:  LDR.W           R8, [R0]; _rwOpenGLLightingEnabled
1C4928:  LDR             R0, =(_rwOpenGLColorMaterialEnabled_ptr - 0x1C492E)
1C492A:  ADD             R0, PC; _rwOpenGLColorMaterialEnabled_ptr
1C492C:  LDR             R0, [R0]; _rwOpenGLColorMaterialEnabled
1C492E:  STR             R0, [SP,#0x48+var_28]
1C4930:  LDR             R0, =(_rwOpenGLOpaqueBlack_ptr - 0x1C4936)
1C4932:  ADD             R0, PC; _rwOpenGLOpaqueBlack_ptr
1C4934:  LDR             R0, [R0]; _rwOpenGLOpaqueBlack
1C4936:  STR             R0, [SP,#0x48+var_30]
1C4938:  LDR             R0, =(_rwOpenGLColorMaterialEnabled_ptr - 0x1C493E)
1C493A:  ADD             R0, PC; _rwOpenGLColorMaterialEnabled_ptr
1C493C:  LDR             R0, [R0]; _rwOpenGLColorMaterialEnabled
1C493E:  STR             R0, [SP,#0x48+var_2C]
1C4940:  LDR             R0, =(MatFXMaterialDataOffset_ptr - 0x1C4946)
1C4942:  ADD             R0, PC; MatFXMaterialDataOffset_ptr
1C4944:  LDR.W           R11, [R0]; MatFXMaterialDataOffset
1C4948:  LDR             R0, =(_rpMatFXOpenGLBumpMapRender_ptr - 0x1C494E)
1C494A:  ADD             R0, PC; _rpMatFXOpenGLBumpMapRender_ptr
1C494C:  LDR             R0, [R0]; _rpMatFXOpenGLBumpMapRender
1C494E:  STR             R0, [SP,#0x48+var_34]
1C4950:  LDR             R0, =(_rpMatFXOpenGLEnvMapRender_ptr - 0x1C4956)
1C4952:  ADD             R0, PC; _rpMatFXOpenGLEnvMapRender_ptr
1C4954:  LDR             R0, [R0]; _rpMatFXOpenGLEnvMapRender
1C4956:  STR             R0, [SP,#0x48+var_38]
1C4958:  LDR             R0, =(_rpMatFXOpenGLBumpMapRender_ptr - 0x1C495E)
1C495A:  ADD             R0, PC; _rpMatFXOpenGLBumpMapRender_ptr
1C495C:  LDR             R0, [R0]; _rpMatFXOpenGLBumpMapRender
1C495E:  STR             R0, [SP,#0x48+var_3C]
1C4960:  LDR             R0, =(_rpMatFXOpenGLDualRender_ptr - 0x1C4966)
1C4962:  ADD             R0, PC; _rpMatFXOpenGLDualRender_ptr
1C4964:  LDR             R0, [R0]; _rpMatFXOpenGLDualRender
1C4966:  STR             R0, [SP,#0x48+var_40]
1C4968:  LDR             R0, =(_rpMatFXOpenGLUVAnimRender_ptr - 0x1C496E)
1C496A:  ADD             R0, PC; _rpMatFXOpenGLUVAnimRender_ptr
1C496C:  LDR             R0, [R0]; _rpMatFXOpenGLUVAnimRender
1C496E:  STR             R0, [SP,#0x48+var_44]
1C4970:  LDRD.W          R0, R1, [R4]
1C4974:  SUBS            R5, #1
1C4976:  CMP             R1, #0
1C4978:  LDRB            R0, [R0,#7]
1C497A:  IT EQ
1C497C:  CMPEQ           R0, #0xFF
1C497E:  BEQ             loc_1C498A
1C4980:  CMP             R0, #0
1C4982:  BEQ             loc_1C4A54
1C4984:  MOVS            R0, #0xC
1C4986:  MOVS            R1, #1
1C4988:  B               loc_1C498E
1C498A:  MOVS            R0, #0xC
1C498C:  MOVS            R1, #0
1C498E:  BLX             j__Z23_rwOpenGLSetRenderState13RwRenderStatePv; _rwOpenGLSetRenderState(RwRenderState,void *)
1C4992:  LDR.W           R0, [R8]
1C4996:  SUB.W           R6, R4, #0x30 ; '0'
1C499A:  CBZ             R0, loc_1C49A6
1C499C:  LDR             R0, [R4]
1C499E:  MOV             R1, R9
1C49A0:  BLX             j__Z36_rwOpenGLLightsSetMaterialPropertiesPK10RpMaterialj; _rwOpenGLLightsSetMaterialProperties(RpMaterial const*,uint)
1C49A4:  B               loc_1C49C6
1C49A6:  LDR             R0, [SP,#0x48+var_28]
1C49A8:  LDR             R0, [R0]
1C49AA:  CBZ             R0, loc_1C49BA
1C49AC:  MOVW            R0, #0xB57; unsigned int
1C49B0:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
1C49B4:  LDR             R1, [SP,#0x48+var_2C]
1C49B6:  MOVS            R0, #0
1C49B8:  STR             R0, [R1]
1C49BA:  LDR             R0, [SP,#0x48+var_24]
1C49BC:  CMP             R0, #0
1C49BE:  ITT EQ
1C49C0:  LDREQ           R0, [SP,#0x48+var_30]; float *
1C49C2:  BLXEQ           j__Z14emu_glColor4fvPKf; emu_glColor4fv(float const*)
1C49C6:  LDR             R0, [R4]
1C49C8:  LDR.W           R1, [R11]
1C49CC:  LDR             R2, [R0,R1]
1C49CE:  CBZ             R2, def_1C49D8; jumptable 001C49D8 default case
1C49D0:  LDR             R2, [R2,#0x30]
1C49D2:  SUBS            R2, #1; switch 5 cases
1C49D4:  CMP             R2, #4
1C49D6:  BHI             def_1C49D8; jumptable 001C49D8 default case
1C49D8:  TBB.W           [PC,R2]; switch jump
1C49DC:  DCB 3; jump table for switch statement
1C49DD:  DCB 0x23
1C49DE:  DCB 0x27
1C49DF:  DCB 0x30
1C49E0:  DCB 0x34
1C49E1:  ALIGN 2
1C49E2:  LDR             R3, [R0,R1]; jumptable 001C49D8 case 1
1C49E4:  LDR             R1, [R0]
1C49E6:  LDR             R0, [SP,#0x48+var_34]
1C49E8:  LDR.W           R12, [R0]
1C49EC:  MOVS            R0, #0
1C49EE:  B               loc_1C4A38
1C49F0:  LDR             R1, [SP,#0x48+var_20]; jumptable 001C49D8 default case
1C49F2:  CMP             R1, #0
1C49F4:  ITT NE
1C49F6:  LDRNE.W         R10, [R0]
1C49FA:  CMPNE.W         R10, #0
1C49FE:  BEQ             loc_1C4A12
1C4A00:  LDR.W           R1, [R10]
1C4A04:  MOVS            R0, #1
1C4A06:  BLX             j__Z31_rwOpenGLSetRenderStateNoExtras13RwRenderStatePv; _rwOpenGLSetRenderStateNoExtras(RwRenderState,void *)
1C4A0A:  LDRB.W          R1, [R10,#0x50]
1C4A0E:  MOVS            R0, #9
1C4A10:  B               loc_1C4A16
1C4A12:  MOVS            R0, #1
1C4A14:  MOVS            R1, #0
1C4A16:  BLX             j__Z23_rwOpenGLSetRenderState13RwRenderStatePv; _rwOpenGLSetRenderState(RwRenderState,void *)
1C4A1A:  MOV             R0, R6; this
1C4A1C:  BLX             j__ZN24RxOpenGLMeshInstanceData10DrawStoredEv; RxOpenGLMeshInstanceData::DrawStored(void)
1C4A20:  B               loc_1C4A54
1C4A22:  LDR             R3, [R0,R1]; jumptable 001C49D8 case 2
1C4A24:  LDR             R1, [R0]
1C4A26:  LDR             R0, [SP,#0x48+var_38]
1C4A28:  B               loc_1C4A4A
1C4A2A:  LDR             R3, [R0,R1]; jumptable 001C49D8 case 3
1C4A2C:  LDR             R1, [R0]
1C4A2E:  LDR             R0, [SP,#0x48+var_3C]
1C4A30:  LDR.W           R12, [R0]
1C4A34:  ADD.W           R0, R3, #0x18
1C4A38:  STR             R0, [SP,#0x48+var_48]
1C4A3A:  B               loc_1C4A4E
1C4A3C:  LDR             R3, [R0,R1]; jumptable 001C49D8 case 4
1C4A3E:  LDR             R1, [R0]
1C4A40:  LDR             R0, [SP,#0x48+var_40]
1C4A42:  B               loc_1C4A4A
1C4A44:  LDR             R3, [R0,R1]; jumptable 001C49D8 case 5
1C4A46:  LDR             R1, [R0]
1C4A48:  LDR             R0, [SP,#0x48+var_44]
1C4A4A:  LDR.W           R12, [R0]
1C4A4E:  MOV             R0, R6
1C4A50:  MOV             R2, R9
1C4A52:  BLX             R12
1C4A54:  ADDS            R4, #0x38 ; '8'
1C4A56:  LSLS            R0, R5, #0x10
1C4A58:  BNE.W           loc_1C4970
1C4A5C:  ADD             SP, SP, #0x2C ; ','
1C4A5E:  POP.W           {R8-R11}
1C4A62:  POP             {R4-R7,PC}
