; =========================================================
; Game Engine Function: _ZN9CSprite2d12DrawTriangleEPfS0_RK5CRGBA
; Address            : 0x5C9230 - 0x5C9332
; =========================================================

5C9230:  PUSH            {R4,R5,R7,LR}
5C9232:  ADD             R7, SP, #8
5C9234:  LDR.W           R12, =(_ZN9CSprite2d11NearScreenZE_ptr - 0x5C9244)
5C9238:  VMOV.F32        S0, #1.0
5C923C:  LDR.W           LR, =(_ZN9CSprite2d10maVerticesE_ptr - 0x5C9248)
5C9240:  ADD             R12, PC; _ZN9CSprite2d11NearScreenZE_ptr
5C9242:  LDR             R5, =(_ZN9CSprite2d13RecipNearClipE_ptr - 0x5C9250)
5C9244:  ADD             LR, PC; _ZN9CSprite2d10maVerticesE_ptr
5C9246:  LDR             R4, [R1]
5C9248:  LDR.W           R12, [R12]; CSprite2d::NearScreenZ ...
5C924C:  ADD             R5, PC; _ZN9CSprite2d13RecipNearClipE_ptr
5C924E:  LDR             R5, [R5]; CSprite2d::RecipNearClip ...
5C9250:  VLDR            S2, [R12]
5C9254:  LDR.W           R12, [LR]; CSprite2d::maVertices ...
5C9258:  VADD.F32        S0, S2, S0
5C925C:  LDR.W           LR, [R5]; CSprite2d::RecipNearClip
5C9260:  STR.W           R4, [R12]; CSprite2d::maVertices
5C9264:  LDR             R4, [R1,#4]
5C9266:  STR.W           R4, [R12,#(dword_A7C268 - 0xA7C264)]
5C926A:  STR.W           LR, [R12,#(dword_A7C270 - 0xA7C264)]
5C926E:  VSTR            S0, [R12,#8]
5C9272:  LDR             R4, [R2]
5C9274:  STR.W           R4, [R12,#(dword_A7C278 - 0xA7C264)]
5C9278:  LDR             R4, [R2,#4]
5C927A:  STR.W           R4, [R12,#(dword_A7C27C - 0xA7C264)]
5C927E:  LDRB            R4, [R3]
5C9280:  STRB.W          R4, [R12,#(byte_A7C274 - 0xA7C264)]
5C9284:  LDRB            R4, [R3,#1]
5C9286:  STRB.W          R4, [R12,#(byte_A7C275 - 0xA7C264)]
5C928A:  LDRB            R4, [R3,#2]
5C928C:  STRB.W          R4, [R12,#(byte_A7C276 - 0xA7C264)]
5C9290:  LDRB            R4, [R3,#3]
5C9292:  STRB.W          R4, [R12,#(byte_A7C277 - 0xA7C264)]
5C9296:  LDR             R4, [R1,#8]
5C9298:  STR.W           R4, [R12,#(dword_A7C280 - 0xA7C264)]
5C929C:  LDR             R4, [R1,#0xC]
5C929E:  VSTR            S0, [R12,#0x24]
5C92A2:  STR.W           R4, [R12,#(dword_A7C284 - 0xA7C264)]
5C92A6:  STR.W           LR, [R12,#(dword_A7C28C - 0xA7C264)]
5C92AA:  LDR             R4, [R2,#8]
5C92AC:  STR.W           R4, [R12,#(dword_A7C294 - 0xA7C264)]
5C92B0:  LDR             R4, [R2,#0xC]
5C92B2:  STR.W           R4, [R12,#(dword_A7C298 - 0xA7C264)]
5C92B6:  LDRB            R4, [R3]
5C92B8:  STRB.W          R4, [R12,#(byte_A7C290 - 0xA7C264)]
5C92BC:  LDRB            R4, [R3,#1]
5C92BE:  STRB.W          R4, [R12,#(byte_A7C291 - 0xA7C264)]
5C92C2:  LDRB            R4, [R3,#2]
5C92C4:  STRB.W          R4, [R12,#(byte_A7C292 - 0xA7C264)]
5C92C8:  LDRB            R4, [R3,#3]
5C92CA:  STRB.W          R4, [R12,#(byte_A7C293 - 0xA7C264)]
5C92CE:  LDR             R4, [R1,#0x10]
5C92D0:  STR.W           R4, [R12,#(dword_A7C29C - 0xA7C264)]
5C92D4:  LDR             R1, [R1,#0x14]
5C92D6:  VSTR            S0, [R12,#0x40]
5C92DA:  STR.W           R1, [R12,#(dword_A7C2A0 - 0xA7C264)]
5C92DE:  STR.W           LR, [R12,#(dword_A7C2A8 - 0xA7C264)]
5C92E2:  LDR             R1, [R2,#0x10]
5C92E4:  STR.W           R1, [R12,#(dword_A7C2B0 - 0xA7C264)]
5C92E8:  LDR             R1, [R2,#0x14]
5C92EA:  STR.W           R1, [R12,#(dword_A7C2B4 - 0xA7C264)]
5C92EE:  LDRB            R1, [R3]
5C92F0:  STRB.W          R1, [R12,#(byte_A7C2AC - 0xA7C264)]
5C92F4:  LDRB            R1, [R3,#1]
5C92F6:  STRB.W          R1, [R12,#(byte_A7C2AD - 0xA7C264)]
5C92FA:  LDRB            R1, [R3,#2]
5C92FC:  STRB.W          R1, [R12,#(byte_A7C2AE - 0xA7C264)]
5C9300:  LDRB            R1, [R3,#3]
5C9302:  STRB.W          R1, [R12,#(byte_A7C2AF - 0xA7C264)]
5C9306:  LDR             R0, [R0]
5C9308:  CBZ             R0, loc_5C9310
5C930A:  LDR             R1, [R0]
5C930C:  MOVS            R0, #1
5C930E:  B               loc_5C9314
5C9310:  MOVS            R0, #1
5C9312:  MOVS            R1, #0
5C9314:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C9318:  LDR             R0, =(_ZN9CSprite2d10maVerticesE_ptr - 0x5C9320)
5C931A:  MOVS            R2, #3
5C931C:  ADD             R0, PC; _ZN9CSprite2d10maVerticesE_ptr
5C931E:  LDR             R1, [R0]; CSprite2d::maVertices ...
5C9320:  MOVS            R0, #4
5C9322:  BLX.W           j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
5C9326:  MOVS            R0, #1
5C9328:  MOVS            R1, #0
5C932A:  POP.W           {R4,R5,R7,LR}
5C932E:  B.W             sub_192888
