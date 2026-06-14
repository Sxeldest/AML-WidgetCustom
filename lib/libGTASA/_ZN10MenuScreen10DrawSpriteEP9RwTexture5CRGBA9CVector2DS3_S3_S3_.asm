; =========================================================
; Game Engine Function: _ZN10MenuScreen10DrawSpriteEP9RwTexture5CRGBA9CVector2DS3_S3_S3_
; Address            : 0x298064 - 0x29819E
; =========================================================

298064:  PUSH            {R4,R5,R7,LR}
298066:  ADD             R7, SP, #8
298068:  VPUSH           {D8-D9}
29806C:  MOV             R4, R3
29806E:  LDRB            R3, [R2,#3]
298070:  VMOV            S0, R3
298074:  VCVT.F32.U32    S0, S0
298078:  VLDR            S2, [R0,#8]
29807C:  LDR             R0, =(RsGlobal_ptr - 0x298082)
29807E:  ADD             R0, PC; RsGlobal_ptr
298080:  LDR             R0, [R0]; RsGlobal
298082:  VMUL.F32        S0, S2, S0
298086:  VCVT.U32.F32    S0, S0
29808A:  VMOV            R3, S0
29808E:  STRB            R3, [R2,#3]
298090:  VLDR            S0, [R0,#4]
298094:  VLDR            S2, [R0,#8]
298098:  MOVS            R0, #1
29809A:  LDR             R5, [R2]
29809C:  VCVT.F32.S32    S16, S0
2980A0:  LDR             R1, [R1]
2980A2:  VCVT.F32.S32    S18, S2
2980A6:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
2980AA:  VMOV            S2, R4
2980AE:  VLDR            S0, =-320.0
2980B2:  VLDR            S4, [R7,#arg_4]
2980B6:  MOV.W           R3, #0x3F800000
2980BA:  VADD.F32        S2, S2, S0
2980BE:  VLDR            S6, [R7,#arg_8]
2980C2:  VADD.F32        S0, S4, S0
2980C6:  VLDR            S4, [R7,#arg_0]
2980CA:  VLDR            S8, =480.0
2980CE:  VMUL.F32        S6, S6, S18
2980D2:  VMUL.F32        S4, S4, S18
2980D6:  LDR             R0, =(maVertices_ptr - 0x2980E2)
2980D8:  LDRD.W          R12, LR, [R7,#arg_14]
2980DC:  LSRS            R4, R5, #8
2980DE:  ADD             R0, PC; maVertices_ptr
2980E0:  VMUL.F32        S2, S2, S18
2980E4:  LDR             R1, [R0]; maVertices
2980E6:  VMUL.F32        S0, S0, S18
2980EA:  LDRD.W          R2, R0, [R7,#arg_C]
2980EE:  VDIV.F32        S6, S6, S8
2980F2:  STRD.W          R3, R3, [R1,#(dword_6E0140 - 0x6E0138)]
2980F6:  STRD.W          R2, R0, [R1,#(dword_6E014C - 0x6E0138)]
2980FA:  STRB            R5, [R1,#(byte_6E0148 - 0x6E0138)]
2980FC:  STRB            R4, [R1,#(byte_6E0149 - 0x6E0138)]
2980FE:  STR             R0, [R1,#(dword_6E016C - 0x6E0138)]
298100:  LSRS            R0, R5, #0x10
298102:  STRB            R0, [R1,#(byte_6E014A - 0x6E0138)]
298104:  STR             R2, [R1,#(dword_6E0184 - 0x6E0138)]
298106:  LSRS            R2, R5, #0x18
298108:  STRB            R2, [R1,#(byte_6E014B - 0x6E0138)]
29810A:  STRB.W          R2, [R1,#(byte_6E0167 - 0x6E0138)]
29810E:  STRB.W          R0, [R1,#(byte_6E0166 - 0x6E0138)]
298112:  STRB.W          R4, [R1,#(byte_6E0165 - 0x6E0138)]
298116:  STRB.W          R5, [R1,#(byte_6E0164 - 0x6E0138)]
29811A:  STR.W           R12, [R1,#(dword_6E0168 - 0x6E0138)]
29811E:  STRD.W          R3, R3, [R1,#(dword_6E015C - 0x6E0138)]
298122:  VDIV.F32        S2, S2, S8
298126:  VDIV.F32        S0, S0, S8
29812A:  VDIV.F32        S4, S4, S8
29812E:  VMOV.F32        S8, #0.5
298132:  VMUL.F32        S8, S16, S8
298136:  VADD.F32        S2, S8, S2
29813A:  VADD.F32        S0, S8, S0
29813E:  VSTR            S2, [R1]
298142:  VSTR            S4, [R1,#4]
298146:  VSTR            S0, [R1,#0x1C]
29814A:  VSTR            S4, [R1,#0x20]
29814E:  STRD.W          R3, R3, [R1,#(dword_6E0178 - 0x6E0138)]
298152:  STR.W           LR, [R1,#(dword_6E0188 - 0x6E0138)]
298156:  STRB.W          R5, [R1,#(byte_6E0180 - 0x6E0138)]
29815A:  STRB.W          R4, [R1,#(byte_6E0181 - 0x6E0138)]
29815E:  STRB.W          R0, [R1,#(byte_6E0182 - 0x6E0138)]
298162:  STRB.W          R2, [R1,#(byte_6E0183 - 0x6E0138)]
298166:  VSTR            S2, [R1,#0x38]
29816A:  VSTR            S6, [R1,#0x3C]
29816E:  STRD.W          R3, R3, [R1,#(dword_6E0194 - 0x6E0138)]
298172:  STRD.W          R12, LR, [R1,#(dword_6E01A0 - 0x6E0138)]
298176:  STRB.W          R5, [R1,#(byte_6E019C - 0x6E0138)]
29817A:  STRB.W          R4, [R1,#(byte_6E019D - 0x6E0138)]
29817E:  STRB.W          R0, [R1,#(byte_6E019E - 0x6E0138)]
298182:  MOVS            R0, #4
298184:  STRB.W          R2, [R1,#(byte_6E019F - 0x6E0138)]
298188:  MOVS            R2, #4
29818A:  VSTR            S0, [R1,#0x54]
29818E:  VSTR            S6, [R1,#0x58]
298192:  VPOP            {D8-D9}
298196:  POP.W           {R4,R5,R7,LR}
29819A:  B.W             j_j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; j_RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
