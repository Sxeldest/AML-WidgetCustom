; =========================================================
; Game Engine Function: _Z27emu_TextureSetDetailTexturePvj
; Address            : 0x1BCBC4 - 0x1BCC24
; =========================================================

1BCBC4:  PUSH            {R4,R5,R7,LR}
1BCBC6:  ADD             R7, SP, #8
1BCBC8:  MOV             R5, R0
1BCBCA:  LDR             R0, =(curShaderStateFlags_ptr - 0x1BCBD4)
1BCBCC:  MOV             R4, R1
1BCBCE:  CMP             R5, #0
1BCBD0:  ADD             R0, PC; curShaderStateFlags_ptr
1BCBD2:  LDR             R0, [R0]; curShaderStateFlags
1BCBD4:  LDR             R0, [R0]
1BCBD6:  BEQ             loc_1BCC16
1BCBD8:  LDR             R1, =(curShaderStateFlags_ptr - 0x1BCBE2)
1BCBDA:  ORR.W           R0, R0, #0x10000
1BCBDE:  ADD             R1, PC; curShaderStateFlags_ptr
1BCBE0:  LDR             R1, [R1]; curShaderStateFlags
1BCBE2:  STR             R0, [R1]
1BCBE4:  MOVS            R1, #1
1BCBE6:  LDR             R0, [R5]
1BCBE8:  LDR             R2, [R0,#0x18]
1BCBEA:  MOV             R0, R5
1BCBEC:  BLX             R2
1BCBEE:  LDR             R0, [R5]
1BCBF0:  MOVS            R1, #0
1BCBF2:  MOVS            R2, #0
1BCBF4:  LDR             R3, [R0,#0xC]
1BCBF6:  MOV             R0, R5
1BCBF8:  BLX             R3
1BCBFA:  VMOV            S2, R4
1BCBFE:  LDR             R0, =(detailTilingFactor_ptr - 0x1BCC0C)
1BCC00:  VMOV.F32        S0, #10.0
1BCC04:  VCVT.F32.U32    S2, S2
1BCC08:  ADD             R0, PC; detailTilingFactor_ptr
1BCC0A:  LDR             R0, [R0]; detailTilingFactor
1BCC0C:  VDIV.F32        S0, S2, S0
1BCC10:  VSTR            S0, [R0]
1BCC14:  POP             {R4,R5,R7,PC}
1BCC16:  LDR             R1, =(curShaderStateFlags_ptr - 0x1BCC20)
1BCC18:  BIC.W           R0, R0, #0x10000
1BCC1C:  ADD             R1, PC; curShaderStateFlags_ptr
1BCC1E:  LDR             R1, [R1]; curShaderStateFlags
1BCC20:  STR             R0, [R1]
1BCC22:  POP             {R4,R5,R7,PC}
