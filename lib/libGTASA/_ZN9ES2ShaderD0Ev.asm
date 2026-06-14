; =========================================================
; Game Engine Function: _ZN9ES2ShaderD0Ev
; Address            : 0x1CCB98 - 0x1CCBF6
; =========================================================

1CCB98:  PUSH            {R4,R6,R7,LR}
1CCB9A:  ADD             R7, SP, #8
1CCB9C:  LDR             R1, =(_ZN9ES2Shader12activeShaderE_ptr - 0x1CCBA6)
1CCB9E:  MOV             R4, R0
1CCBA0:  LDR             R0, =(_ZTV9ES2Shader_ptr - 0x1CCBA8)
1CCBA2:  ADD             R1, PC; _ZN9ES2Shader12activeShaderE_ptr
1CCBA4:  ADD             R0, PC; _ZTV9ES2Shader_ptr
1CCBA6:  LDR             R1, [R1]; ES2Shader::activeShader ...
1CCBA8:  LDR             R0, [R0]; `vtable for'ES2Shader ...
1CCBAA:  ADDS            R0, #8
1CCBAC:  STR             R0, [R4]
1CCBAE:  LDR             R0, [R1]; ES2Shader::activeShader
1CCBB0:  CMP             R0, R4
1CCBB2:  BNE             loc_1CCBC4
1CCBB4:  LDR             R0, =(_ZN9ES2Shader12activeShaderE_ptr - 0x1CCBBC)
1CCBB6:  MOVS            R1, #0
1CCBB8:  ADD             R0, PC; _ZN9ES2Shader12activeShaderE_ptr
1CCBBA:  LDR             R0, [R0]; ES2Shader::activeShader ...
1CCBBC:  STR             R1, [R0]; ES2Shader::activeShader
1CCBBE:  MOVS            R0, #0
1CCBC0:  BLX             glUseProgram
1CCBC4:  LDR.W           R0, [R4,#0x3E8]
1CCBC8:  BLX             glDeleteProgram
1CCBCC:  LDRB.W          R0, [R4,#0x3DC]
1CCBD0:  CMP             R0, #0
1CCBD2:  ITT NE
1CCBD4:  LDRNE.W         R0, [R4,#0x3D8]
1CCBD8:  BLXNE           glDeleteShader
1CCBDC:  LDRB.W          R0, [R4,#0x3E4]
1CCBE0:  CMP             R0, #0
1CCBE2:  ITT NE
1CCBE4:  LDRNE.W         R0, [R4,#0x3E0]
1CCBE8:  BLXNE           glDeleteShader
1CCBEC:  MOV             R0, R4; void *
1CCBEE:  POP.W           {R4,R6,R7,LR}
1CCBF2:  B.W             j__ZdlPv; operator delete(void *)
