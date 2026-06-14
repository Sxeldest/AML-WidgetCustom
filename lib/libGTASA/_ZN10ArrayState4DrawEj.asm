; =========================================================
; Game Engine Function: _ZN10ArrayState4DrawEj
; Address            : 0x1BCF14 - 0x1BCF96
; =========================================================

1BCF14:  PUSH            {R4,R5,R7,LR}
1BCF16:  ADD             R7, SP, #8
1BCF18:  MOV             R4, R0
1BCF1A:  LDR             R0, =(sharingGPUResource_ptr - 0x1BCF22)
1BCF1C:  MOV             R5, R1
1BCF1E:  ADD             R0, PC; sharingGPUResource_ptr
1BCF20:  LDR             R0, [R0]; sharingGPUResource
1BCF22:  LDRB            R0, [R0]
1BCF24:  CMP             R0, #0
1BCF26:  IT NE
1BCF28:  POPNE           {R4,R5,R7,PC}
1BCF2A:  LDR             R2, [R4,#8]
1BCF2C:  MOV             R0, R4; this
1BCF2E:  MOV             R1, R4; ArrayState *
1BCF30:  CMP             R2, #0
1BCF32:  IT NE
1BCF34:  MOVNE           R2, #1; bool
1BCF36:  BLX             j__ZN10ArrayState16SetupVertexStateEPS_b; ArrayState::SetupVertexState(ArrayState*,bool)
1BCF3A:  MOV             R0, R4; this
1BCF3C:  BLX             j__ZN10ArrayState14SetupDrawStateEv; ArrayState::SetupDrawState(void)
1BCF40:  LDR             R2, [R4,#8]
1BCF42:  CBZ             R2, loc_1BCF5E
1BCF44:  LDR             R0, =(_ZN9EmuShader17curSelectedShaderE_ptr - 0x1BCF50)
1BCF46:  SUBS            R1, R5, #1
1BCF48:  LDR             R3, [R4,#0x24]
1BCF4A:  CMP             R1, #6
1BCF4C:  ADD             R0, PC; _ZN9EmuShader17curSelectedShaderE_ptr
1BCF4E:  LDR             R0, [R0]; EmuShader::curSelectedShader ...
1BCF50:  LDR             R0, [R0]; EmuShader::curSelectedShader
1BCF52:  BHI             loc_1BCF76
1BCF54:  LDR             R5, =(unk_5E8810 - 0x1BCF5A)
1BCF56:  ADD             R5, PC; unk_5E8810
1BCF58:  LDR.W           R1, [R5,R1,LSL#2]
1BCF5C:  B               loc_1BCF78
1BCF5E:  LDR             R0, =(_ZN9EmuShader17curSelectedShaderE_ptr - 0x1BCF68)
1BCF60:  SUBS            R1, R5, #1
1BCF62:  CMP             R1, #6
1BCF64:  ADD             R0, PC; _ZN9EmuShader17curSelectedShaderE_ptr
1BCF66:  LDR             R0, [R0]; EmuShader::curSelectedShader ...
1BCF68:  LDR             R0, [R0]; EmuShader::curSelectedShader
1BCF6A:  BHI             loc_1BCF88
1BCF6C:  LDR             R2, =(unk_5E8810 - 0x1BCF72)
1BCF6E:  ADD             R2, PC; unk_5E8810
1BCF70:  LDR.W           R1, [R2,R1,LSL#2]
1BCF74:  B               loc_1BCF8A
1BCF76:  MOVS            R1, #0
1BCF78:  CMP             R3, #0
1BCF7A:  ITE NE
1BCF7C:  LDRNE           R3, [R4,#0x2C]
1BCF7E:  MOVEQ           R3, #0
1BCF80:  POP.W           {R4,R5,R7,LR}
1BCF84:  B.W             j_j__Z13RQDrawIndexedP8RQShader10RQDrawModejPv; j_RQDrawIndexed(RQShader *,RQDrawMode,uint,void *)
1BCF88:  MOVS            R1, #0
1BCF8A:  LDR             R3, [R4,#0x18]
1BCF8C:  MOVS            R2, #0
1BCF8E:  POP.W           {R4,R5,R7,LR}
1BCF92:  B.W             j_j__Z16RQDrawNonIndexedP8RQShader10RQDrawModejj; j_RQDrawNonIndexed(RQShader *,RQDrawMode,uint,uint)
