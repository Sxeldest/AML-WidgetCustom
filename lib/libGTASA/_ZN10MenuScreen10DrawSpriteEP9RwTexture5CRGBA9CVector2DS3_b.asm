; =========================================================
; Game Engine Function: _ZN10MenuScreen10DrawSpriteEP9RwTexture5CRGBA9CVector2DS3_b
; Address            : 0x298D34 - 0x298E76
; =========================================================

298D34:  PUSH            {R4-R7,LR}
298D36:  ADD             R7, SP, #0xC
298D38:  PUSH.W          {R8,R9,R11}
298D3C:  VPUSH           {D8-D9}
298D40:  MOV             R9, R3
298D42:  LDRD.W          R6, R4, [R7,#arg_0]
298D46:  LDRD.W          R8, R3, [R7,#arg_8]
298D4A:  CBNZ            R3, loc_298D68
298D4C:  LDRB            R3, [R2,#3]
298D4E:  VMOV            S0, R3
298D52:  VCVT.F32.U32    S0, S0
298D56:  VLDR            S2, [R0,#8]
298D5A:  VMUL.F32        S0, S2, S0
298D5E:  VCVT.U32.F32    S0, S0
298D62:  VMOV            R0, S0
298D66:  STRB            R0, [R2,#3]
298D68:  LDR             R0, =(RsGlobal_ptr - 0x298D70)
298D6A:  LDR             R5, [R2]
298D6C:  ADD             R0, PC; RsGlobal_ptr
298D6E:  LDR             R0, [R0]; RsGlobal
298D70:  VLDR            S0, [R0,#4]
298D74:  VLDR            S2, [R0,#8]
298D78:  MOVS            R0, #1
298D7A:  VCVT.F32.S32    S16, S0
298D7E:  LDR             R1, [R1]
298D80:  VCVT.F32.S32    S18, S2
298D84:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
298D88:  VMOV            S4, R4
298D8C:  VLDR            S0, =-320.0
298D90:  VMOV            S2, R9
298D94:  VLDR            S6, =480.0
298D98:  VMOV            S8, R8
298D9C:  LDR             R0, =(maVertices_ptr - 0x298DAC)
298D9E:  VADD.F32        S2, S2, S0
298DA2:  MOVS            R4, #0
298DA4:  VADD.F32        S0, S4, S0
298DA8:  ADD             R0, PC; maVertices_ptr
298DAA:  VMOV            S4, R6
298DAE:  LSRS            R2, R5, #8
298DB0:  VMUL.F32        S8, S8, S18
298DB4:  LDR             R1, [R0]; maVertices
298DB6:  VMUL.F32        S4, S4, S18
298DBA:  MOV.W           R0, #0x3F800000
298DBE:  VMOV.F32        S10, #0.5
298DC2:  LSRS            R3, R5, #0x10
298DC4:  LSRS            R6, R5, #0x18
298DC6:  STRD.W          R0, R0, [R1,#(dword_6E0140 - 0x6E0138)]
298DCA:  VMUL.F32        S2, S2, S18
298DCE:  STRD.W          R4, R4, [R1,#(dword_6E014C - 0x6E0138)]
298DD2:  VMUL.F32        S0, S0, S18
298DD6:  STRB            R5, [R1,#(byte_6E0148 - 0x6E0138)]
298DD8:  STRB            R2, [R1,#(byte_6E0149 - 0x6E0138)]
298DDA:  STRB            R3, [R1,#(byte_6E014A - 0x6E0138)]
298DDC:  VDIV.F32        S4, S4, S6
298DE0:  STRB            R6, [R1,#(byte_6E014B - 0x6E0138)]
298DE2:  STRB.W          R6, [R1,#(byte_6E0167 - 0x6E0138)]
298DE6:  STRB.W          R3, [R1,#(byte_6E0166 - 0x6E0138)]
298DEA:  STRB.W          R2, [R1,#(byte_6E0165 - 0x6E0138)]
298DEE:  STRB.W          R5, [R1,#(byte_6E0164 - 0x6E0138)]
298DF2:  STRD.W          R0, R4, [R1,#(dword_6E0168 - 0x6E0138)]
298DF6:  STRD.W          R0, R0, [R1,#(dword_6E015C - 0x6E0138)]
298DFA:  VDIV.F32        S2, S2, S6
298DFE:  VDIV.F32        S0, S0, S6
298E02:  VDIV.F32        S6, S8, S6
298E06:  VMUL.F32        S8, S16, S10
298E0A:  VADD.F32        S2, S8, S2
298E0E:  VADD.F32        S0, S8, S0
298E12:  VSTR            S2, [R1]
298E16:  VSTR            S4, [R1,#4]
298E1A:  VSTR            S0, [R1,#0x1C]
298E1E:  VSTR            S4, [R1,#0x20]
298E22:  VSTR            S2, [R1,#0x38]
298E26:  STRD.W          R0, R0, [R1,#(dword_6E0178 - 0x6E0138)]
298E2A:  STRD.W          R4, R0, [R1,#(dword_6E0184 - 0x6E0138)]
298E2E:  STRB.W          R5, [R1,#(byte_6E0180 - 0x6E0138)]
298E32:  STRB.W          R2, [R1,#(byte_6E0181 - 0x6E0138)]
298E36:  STRB.W          R3, [R1,#(byte_6E0182 - 0x6E0138)]
298E3A:  STRB.W          R6, [R1,#(byte_6E0183 - 0x6E0138)]
298E3E:  VSTR            S6, [R1,#0x3C]
298E42:  STRD.W          R0, R0, [R1,#(dword_6E0194 - 0x6E0138)]
298E46:  STRD.W          R0, R0, [R1,#(dword_6E01A0 - 0x6E0138)]
298E4A:  MOVS            R0, #4
298E4C:  STRB.W          R5, [R1,#(byte_6E019C - 0x6E0138)]
298E50:  STRB.W          R2, [R1,#(byte_6E019D - 0x6E0138)]
298E54:  MOVS            R2, #4
298E56:  STRB.W          R3, [R1,#(byte_6E019E - 0x6E0138)]
298E5A:  STRB.W          R6, [R1,#(byte_6E019F - 0x6E0138)]
298E5E:  VSTR            S0, [R1,#0x54]
298E62:  VSTR            S6, [R1,#0x58]
298E66:  VPOP            {D8-D9}
298E6A:  POP.W           {R8,R9,R11}
298E6E:  POP.W           {R4-R7,LR}
298E72:  B.W             j_j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; j_RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
