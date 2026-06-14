; =========================================================
; Game Engine Function: _ZN7CSprite20RenderOneXLUSprite2DEffffRK6RwRGBAsh
; Address            : 0x5C80C0 - 0x5C81E4
; =========================================================

5C80C0:  PUSH            {R4-R7,LR}
5C80C2:  ADD             R7, SP, #0xC
5C80C4:  PUSH.W          {R8,R9,R11}
5C80C8:  SUB             SP, SP, #0x18
5C80CA:  LDRD.W          R6, R12, [R7,#arg_0]
5C80CE:  VMOV            S0, R2
5C80D2:  LDR.W           R9, =(_ZN7CSprite21m_fRecipNearClipPlaneE_ptr - 0x5C80F0)
5C80D6:  VMOV            S6, R0
5C80DA:  VMOV            S2, R3
5C80DE:  LDR.W           R8, =(_ZN7CSprite16m_f2DNearScreenZE_ptr - 0x5C8104)
5C80E2:  LDRB            R5, [R6,#1]
5C80E4:  VMOV            S4, R1
5C80E8:  LDRB.W          LR, [R6]
5C80EC:  ADD             R9, PC; _ZN7CSprite21m_fRecipNearClipPlaneE_ptr
5C80EE:  LDRB            R6, [R6,#2]
5C80F0:  VADD.F32        S8, S4, S2
5C80F4:  VADD.F32        S10, S6, S0
5C80F8:  SMULBB.W        R2, R5, R12
5C80FC:  VSUB.F32        S2, S4, S2
5C8100:  ADD             R8, PC; _ZN7CSprite16m_f2DNearScreenZE_ptr
5C8102:  VSUB.F32        S0, S6, S0
5C8106:  SMULBB.W        R5, R6, R12
5C810A:  SMULBB.W        R6, LR, R12
5C810E:  LDR.W           R1, [R9]; CSprite::m_fRecipNearClipPlane ...
5C8112:  LDR             R4, =(dword_A7C1F4 - 0x5C8120)
5C8114:  LDR.W           R0, [R8]; CSprite::m_f2DNearScreenZ ...
5C8118:  LSRS            R2, R2, #8
5C811A:  LDR             R3, [R1]; CSprite::m_fRecipNearClipPlane
5C811C:  ADD             R4, PC; dword_A7C1F4
5C811E:  MOV.W           LR, R5,LSR#8
5C8122:  LDR.W           R12, [R7,#arg_8]
5C8126:  LDR             R1, [R0]; CSprite::m_f2DNearScreenZ
5C8128:  LSRS            R0, R6, #8
5C812A:  MOVS            R5, #0
5C812C:  MOV.W           R6, #0x3F800000
5C8130:  STRD.W          R5, R5, [R4,#(dword_A7C208 - 0xA7C1F4)]
5C8134:  STRB.W          R12, [R4,#(byte_A7C207 - 0xA7C1F4)]
5C8138:  STRD.W          R6, R5, [R4,#(dword_A7C224 - 0xA7C1F4)]
5C813C:  STRB.W          R12, [R4,#(byte_A7C223 - 0xA7C1F4)]
5C8140:  STRD.W          R1, R3, [R4,#(dword_A7C1FC - 0xA7C1F4)]
5C8144:  STRD.W          R1, R3, [R4,#(dword_A7C218 - 0xA7C1F4)]
5C8148:  VSTR            S0, [R4]
5C814C:  VSTR            S2, [R4,#4]
5C8150:  VSTR            S10, [R4,#0x1C]
5C8154:  VSTR            S2, [R4,#0x20]
5C8158:  STRB            R0, [R4,#(byte_A7C204 - 0xA7C1F4)]
5C815A:  STRB            R2, [R4,#(byte_A7C205 - 0xA7C1F4)]
5C815C:  STRB.W          LR, [R4,#(byte_A7C206 - 0xA7C1F4)]
5C8160:  STRB.W          R0, [R4,#(byte_A7C220 - 0xA7C1F4)]
5C8164:  STRB.W          R2, [R4,#(byte_A7C221 - 0xA7C1F4)]
5C8168:  STRB.W          LR, [R4,#(byte_A7C222 - 0xA7C1F4)]
5C816C:  STRD.W          R1, R3, [R4,#(dword_A7C234 - 0xA7C1F4)]
5C8170:  STRD.W          R6, R6, [R4,#(dword_A7C240 - 0xA7C1F4)]
5C8174:  STRB.W          R0, [R4,#(byte_A7C23C - 0xA7C1F4)]
5C8178:  STRB.W          R2, [R4,#(byte_A7C23D - 0xA7C1F4)]
5C817C:  STRB.W          LR, [R4,#(byte_A7C23E - 0xA7C1F4)]
5C8180:  STRB.W          R12, [R4,#(byte_A7C23F - 0xA7C1F4)]
5C8184:  VSTR            S10, [R4,#0x38]
5C8188:  VSTR            S8, [R4,#0x3C]
5C818C:  STRD.W          R1, R3, [R4,#(dword_A7C250 - 0xA7C1F4)]
5C8190:  MOVS            R1, #0
5C8192:  STRD.W          R5, R6, [R4,#(dword_A7C25C - 0xA7C1F4)]
5C8196:  MOVS            R5, #6
5C8198:  STRB.W          R0, [R4,#(byte_A7C258 - 0xA7C1F4)]
5C819C:  MOVS            R0, #6
5C819E:  STRB.W          R2, [R4,#(byte_A7C259 - 0xA7C1F4)]
5C81A2:  STRB.W          LR, [R4,#(byte_A7C25A - 0xA7C1F4)]
5C81A6:  STRB.W          R12, [R4,#(byte_A7C25B - 0xA7C1F4)]
5C81AA:  VSTR            S0, [R4,#0x54]
5C81AE:  VSTR            S8, [R4,#0x58]
5C81B2:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C81B6:  LDR             R0, =(unk_61FCB0 - 0x5C81C2)
5C81B8:  ADD             R3, SP, #0x30+var_28
5C81BA:  MOV             R1, R4
5C81BC:  MOVS            R2, #4
5C81BE:  ADD             R0, PC; unk_61FCB0
5C81C0:  STR             R5, [SP,#0x30+var_30]
5C81C2:  VLDR            D16, [R0]
5C81C6:  LDR             R0, [R0,#(dword_61FCB8 - 0x61FCB0)]
5C81C8:  STR             R0, [SP,#0x30+var_20]
5C81CA:  MOVS            R0, #3
5C81CC:  VSTR            D16, [SP,#0x30+var_28]
5C81D0:  BLX.W           j__Z35RwIm2DRenderIndexedPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexiPti; RwIm2DRenderIndexedPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int,ushort *,int)
5C81D4:  MOVS            R0, #6
5C81D6:  MOVS            R1, #1
5C81D8:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C81DC:  ADD             SP, SP, #0x18
5C81DE:  POP.W           {R8,R9,R11}
5C81E2:  POP             {R4-R7,PC}
