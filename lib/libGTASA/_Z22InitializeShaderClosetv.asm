; =========================================================
; Game Engine Function: _Z22InitializeShaderClosetv
; Address            : 0x1C0800 - 0x1C082E
; =========================================================

1C0800:  PUSH            {R7,LR}
1C0802:  MOV             R7, SP
1C0804:  LDR             R0, =(_ZN9EmuShader12ShaderClosetE_ptr - 0x1C080E)
1C0806:  MOV.W           R1, #0x400
1C080A:  ADD             R0, PC; _ZN9EmuShader12ShaderClosetE_ptr
1C080C:  LDR             R0, [R0]; EmuShader::ShaderCloset ...
1C080E:  BLX             j___aeabi_memclr8_0
1C0812:  LDR             R0, =(ShaderClosetInitialized_ptr - 0x1C081C)
1C0814:  MOVS            R2, #1
1C0816:  LDR             R1, =(curAssignedShader_ptr - 0x1C081E)
1C0818:  ADD             R0, PC; ShaderClosetInitialized_ptr
1C081A:  ADD             R1, PC; curAssignedShader_ptr
1C081C:  LDR             R0, [R0]; ShaderClosetInitialized
1C081E:  LDR             R1, [R1]; curAssignedShader
1C0820:  STRB            R2, [R0]
1C0822:  MOVS            R0, #0
1C0824:  STR             R0, [R1]
1C0826:  POP.W           {R7,LR}
1C082A:  B.W             j_j__Z15InitShaderCachev; j_InitShaderCache(void)
