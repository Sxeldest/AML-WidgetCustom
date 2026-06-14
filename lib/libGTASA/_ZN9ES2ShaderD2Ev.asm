; =========================================================
; Game Engine Function: _ZN9ES2ShaderD2Ev
; Address            : 0x1CCB34 - 0x1CCB8C
; =========================================================

1CCB34:  PUSH            {R4,R6,R7,LR}; Alternative name is 'ES2Shader::~ES2Shader()'
1CCB36:  ADD             R7, SP, #8
1CCB38:  LDR             R1, =(_ZN9ES2Shader12activeShaderE_ptr - 0x1CCB42)
1CCB3A:  MOV             R4, R0
1CCB3C:  LDR             R0, =(_ZTV9ES2Shader_ptr - 0x1CCB44)
1CCB3E:  ADD             R1, PC; _ZN9ES2Shader12activeShaderE_ptr
1CCB40:  ADD             R0, PC; _ZTV9ES2Shader_ptr
1CCB42:  LDR             R1, [R1]; ES2Shader::activeShader ...
1CCB44:  LDR             R0, [R0]; `vtable for'ES2Shader ...
1CCB46:  ADDS            R0, #8
1CCB48:  STR             R0, [R4]
1CCB4A:  LDR             R0, [R1]; ES2Shader::activeShader
1CCB4C:  CMP             R0, R4
1CCB4E:  BNE             loc_1CCB60
1CCB50:  LDR             R0, =(_ZN9ES2Shader12activeShaderE_ptr - 0x1CCB58)
1CCB52:  MOVS            R1, #0
1CCB54:  ADD             R0, PC; _ZN9ES2Shader12activeShaderE_ptr
1CCB56:  LDR             R0, [R0]; ES2Shader::activeShader ...
1CCB58:  STR             R1, [R0]; ES2Shader::activeShader
1CCB5A:  MOVS            R0, #0
1CCB5C:  BLX             glUseProgram
1CCB60:  LDR.W           R0, [R4,#0x3E8]
1CCB64:  BLX             glDeleteProgram
1CCB68:  LDRB.W          R0, [R4,#0x3DC]
1CCB6C:  CMP             R0, #0
1CCB6E:  ITT NE
1CCB70:  LDRNE.W         R0, [R4,#0x3D8]
1CCB74:  BLXNE           glDeleteShader
1CCB78:  LDRB.W          R0, [R4,#0x3E4]
1CCB7C:  CMP             R0, #0
1CCB7E:  ITT NE
1CCB80:  LDRNE.W         R0, [R4,#0x3E0]
1CCB84:  BLXNE           glDeleteShader
1CCB88:  MOV             R0, R4
1CCB8A:  POP             {R4,R6,R7,PC}
