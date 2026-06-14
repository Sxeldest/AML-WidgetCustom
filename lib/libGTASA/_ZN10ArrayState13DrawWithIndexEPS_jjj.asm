; =========================================================
; Game Engine Function: _ZN10ArrayState13DrawWithIndexEPS_jjj
; Address            : 0x1BCFB4 - 0x1BD04E
; =========================================================

1BCFB4:  PUSH            {R4-R7,LR}
1BCFB6:  ADD             R7, SP, #0xC
1BCFB8:  PUSH.W          {R8,R9,R11}
1BCFBC:  MOV             R6, R0
1BCFBE:  LDR             R0, =(sharingGPUResource_ptr - 0x1BCFC8)
1BCFC0:  MOV             R9, R3
1BCFC2:  MOV             R4, R2
1BCFC4:  ADD             R0, PC; sharingGPUResource_ptr
1BCFC6:  MOV             R5, R1
1BCFC8:  LDR             R0, [R0]; sharingGPUResource
1BCFCA:  LDRB            R0, [R0]
1BCFCC:  CMP             R0, #0
1BCFCE:  ITT NE
1BCFD0:  POPNE.W         {R8,R9,R11}
1BCFD4:  POPNE           {R4-R7,PC}
1BCFD6:  MOV             R0, R6; this
1BCFD8:  MOV             R1, R5; ArrayState *
1BCFDA:  MOVS            R2, #1; bool
1BCFDC:  LDR.W           R8, [R7,#arg_0]
1BCFE0:  BLX             j__ZN10ArrayState16SetupVertexStateEPS_b; ArrayState::SetupVertexState(ArrayState*,bool)
1BCFE4:  MOV             R0, R6; this
1BCFE6:  BLX             j__ZN10ArrayState14SetupDrawStateEv; ArrayState::SetupDrawState(void)
1BCFEA:  CBZ             R5, loc_1BD006
1BCFEC:  LDR             R0, =(_ZN9EmuShader17curSelectedShaderE_ptr - 0x1BCFF8)
1BCFEE:  SUBS            R1, R4, #1
1BCFF0:  LDR             R2, [R5,#0x24]
1BCFF2:  CMP             R1, #6
1BCFF4:  ADD             R0, PC; _ZN9EmuShader17curSelectedShaderE_ptr
1BCFF6:  LDR             R0, [R0]; EmuShader::curSelectedShader ...
1BCFF8:  LDR             R0, [R0]; EmuShader::curSelectedShader
1BCFFA:  BHI             loc_1BD01E
1BCFFC:  LDR             R3, =(unk_5E8810 - 0x1BD002)
1BCFFE:  ADD             R3, PC; unk_5E8810
1BD000:  LDR.W           R1, [R3,R1,LSL#2]
1BD004:  B               loc_1BD020
1BD006:  LDR             R0, =(_ZN9EmuShader17curSelectedShaderE_ptr - 0x1BD010)
1BD008:  SUBS            R1, R4, #1
1BD00A:  CMP             R1, #6
1BD00C:  ADD             R0, PC; _ZN9EmuShader17curSelectedShaderE_ptr
1BD00E:  LDR             R0, [R0]; EmuShader::curSelectedShader ...
1BD010:  LDR             R0, [R0]; EmuShader::curSelectedShader
1BD012:  BHI             loc_1BD03C
1BD014:  LDR             R2, =(unk_5E8810 - 0x1BD01A)
1BD016:  ADD             R2, PC; unk_5E8810
1BD018:  LDR.W           R1, [R2,R1,LSL#2]
1BD01C:  B               loc_1BD03E
1BD01E:  MOVS            R1, #0
1BD020:  CMP             R2, #0
1BD022:  ITEE EQ
1BD024:  MOVEQ.W         R3, R9,LSL#1
1BD028:  LDRNE           R2, [R5,#0x2C]
1BD02A:  ADDNE.W         R3, R2, R9,LSL#1
1BD02E:  MOV             R2, R8
1BD030:  POP.W           {R8,R9,R11}
1BD034:  POP.W           {R4-R7,LR}
1BD038:  B.W             j_j__Z13RQDrawIndexedP8RQShader10RQDrawModejPv; j_RQDrawIndexed(RQShader *,RQDrawMode,uint,void *)
1BD03C:  MOVS            R1, #0
1BD03E:  LDR             R3, [R6,#0x18]
1BD040:  MOVS            R2, #0
1BD042:  POP.W           {R8,R9,R11}
1BD046:  POP.W           {R4-R7,LR}
1BD04A:  B.W             j_j__Z16RQDrawNonIndexedP8RQShader10RQDrawModejj; j_RQDrawNonIndexed(RQShader *,RQDrawMode,uint,uint)
