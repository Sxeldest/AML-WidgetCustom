; =========================================================
; Game Engine Function: _ZN9ES2Shader9SetActiveEv
; Address            : 0x1CCB00 - 0x1CCB2C
; =========================================================

1CCB00:  PUSH            {R4,R6,R7,LR}
1CCB02:  ADD             R7, SP, #8
1CCB04:  MOV             R4, R0
1CCB06:  BLX             j__Z14RQ_CheckThreadv; RQ_CheckThread(void)
1CCB0A:  LDR             R0, =(_ZN9ES2Shader12activeShaderE_ptr - 0x1CCB10)
1CCB0C:  ADD             R0, PC; _ZN9ES2Shader12activeShaderE_ptr
1CCB0E:  LDR             R0, [R0]; ES2Shader::activeShader ...
1CCB10:  LDR             R0, [R0]; ES2Shader::activeShader
1CCB12:  CMP             R0, R4
1CCB14:  IT EQ
1CCB16:  POPEQ           {R4,R6,R7,PC}
1CCB18:  LDR             R0, =(_ZN9ES2Shader12activeShaderE_ptr - 0x1CCB1E)
1CCB1A:  ADD             R0, PC; _ZN9ES2Shader12activeShaderE_ptr
1CCB1C:  LDR             R0, [R0]; ES2Shader::activeShader ...
1CCB1E:  STR             R4, [R0]; ES2Shader::activeShader
1CCB20:  LDR.W           R0, [R4,#0x3E8]
1CCB24:  POP.W           {R4,R6,R7,LR}
1CCB28:  B.W             j_glUseProgram
