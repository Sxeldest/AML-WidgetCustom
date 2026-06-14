; =========================================================
; Game Engine Function: _ZN9CSprite2d22DrawWithBilinearOffsetERK5CRectRK5CRGBA
; Address            : 0x5C93CC - 0x5C951E
; =========================================================

5C93CC:  PUSH            {R4-R7,LR}
5C93CE:  ADD             R7, SP, #0xC
5C93D0:  PUSH.W          {R8}
5C93D4:  LDR             R6, =(_ZN9CSprite2d11NearScreenZE_ptr - 0x5C93E4)
5C93D6:  MOVW            R8, #0x2000
5C93DA:  LDR             R3, =(_ZN9CSprite2d10maVerticesE_ptr - 0x5C93EA)
5C93DC:  MOVT            R8, #0x3F80
5C93E0:  ADD             R6, PC; _ZN9CSprite2d11NearScreenZE_ptr
5C93E2:  LDR.W           LR, =(_ZN9CSprite2d13RecipNearClipE_ptr - 0x5C93EE)
5C93E6:  ADD             R3, PC; _ZN9CSprite2d10maVerticesE_ptr
5C93E8:  LDR             R4, [R0]
5C93EA:  ADD             LR, PC; _ZN9CSprite2d13RecipNearClipE_ptr
5C93EC:  LDR             R6, [R6]; CSprite2d::NearScreenZ ...
5C93EE:  LDR             R3, [R3]; CSprite2d::maVertices ...
5C93F0:  VMOV.F32        S4, #1.0
5C93F4:  LDR.W           R12, [R4]
5C93F8:  LDR.W           R4, [LR]; CSprite2d::RecipNearClip ...
5C93FC:  LDR             R5, [R1]
5C93FE:  LDR.W           LR, [R6]; CSprite2d::NearScreenZ
5C9402:  MOV.W           R6, #0x3A800000
5C9406:  STR             R5, [R3]; CSprite2d::maVertices
5C9408:  LDR             R5, [R1,#0xC]
5C940A:  LDR             R4, [R4]; CSprite2d::RecipNearClip
5C940C:  STRD.W          R5, LR, [R3,#(dword_A7C268 - 0xA7C264)]
5C9410:  STR             R4, [R3,#(dword_A7C270 - 0xA7C264)]
5C9412:  STRD.W          R6, R6, [R3,#(dword_A7C278 - 0xA7C264)]
5C9416:  LDRB            R5, [R2]
5C9418:  STRB            R5, [R3,#(byte_A7C274 - 0xA7C264)]
5C941A:  LDRB            R5, [R2,#1]
5C941C:  STRB            R5, [R3,#(byte_A7C275 - 0xA7C264)]
5C941E:  LDRB            R5, [R2,#2]
5C9420:  STRB            R5, [R3,#(byte_A7C276 - 0xA7C264)]
5C9422:  LDRB            R5, [R2,#3]
5C9424:  STRB            R5, [R3,#(byte_A7C277 - 0xA7C264)]
5C9426:  LDR             R5, [R1,#8]
5C9428:  STR             R5, [R3,#(dword_A7C280 - 0xA7C264)]
5C942A:  LDR             R5, [R1,#0xC]
5C942C:  STRD.W          R5, LR, [R3,#(dword_A7C284 - 0xA7C264)]
5C9430:  STR             R4, [R3,#(dword_A7C28C - 0xA7C264)]
5C9432:  STRD.W          R8, R6, [R3,#(dword_A7C294 - 0xA7C264)]
5C9436:  LDRB            R5, [R2]
5C9438:  STRB.W          R5, [R3,#(byte_A7C290 - 0xA7C264)]
5C943C:  LDRB            R5, [R2,#1]
5C943E:  STRB.W          R5, [R3,#(byte_A7C291 - 0xA7C264)]
5C9442:  LDRB            R5, [R2,#2]
5C9444:  STRB.W          R5, [R3,#(byte_A7C292 - 0xA7C264)]
5C9448:  LDRB            R5, [R2,#3]
5C944A:  STRB.W          R5, [R3,#(byte_A7C293 - 0xA7C264)]
5C944E:  LDR             R5, [R1]
5C9450:  STR             R5, [R3,#(dword_A7C29C - 0xA7C264)]
5C9452:  LDR             R5, [R1,#4]
5C9454:  STRD.W          R5, LR, [R3,#(dword_A7C2A0 - 0xA7C264)]
5C9458:  STR             R4, [R3,#(dword_A7C2A8 - 0xA7C264)]
5C945A:  STRD.W          R6, R8, [R3,#(dword_A7C2B0 - 0xA7C264)]
5C945E:  LDRB            R5, [R2]
5C9460:  STRB.W          R5, [R3,#(byte_A7C2AC - 0xA7C264)]
5C9464:  LDRB            R5, [R2,#1]
5C9466:  STRB.W          R5, [R3,#(byte_A7C2AD - 0xA7C264)]
5C946A:  LDRB            R5, [R2,#2]
5C946C:  STRB.W          R5, [R3,#(byte_A7C2AE - 0xA7C264)]
5C9470:  LDRB            R5, [R2,#3]
5C9472:  STRB.W          R5, [R3,#(byte_A7C2AF - 0xA7C264)]
5C9476:  LDR             R5, [R1,#8]
5C9478:  STR             R5, [R3,#(dword_A7C2B8 - 0xA7C264)]
5C947A:  LDR             R1, [R1,#4]
5C947C:  STRD.W          R1, LR, [R3,#(dword_A7C2BC - 0xA7C264)]
5C9480:  STR             R4, [R3,#(dword_A7C2C4 - 0xA7C264)]
5C9482:  STRD.W          R8, R8, [R3,#(dword_A7C2CC - 0xA7C264)]
5C9486:  LDRB            R1, [R2]
5C9488:  STRB.W          R1, [R3,#(byte_A7C2C8 - 0xA7C264)]
5C948C:  LDRB            R1, [R2,#1]
5C948E:  STRB.W          R1, [R3,#(byte_A7C2C9 - 0xA7C264)]
5C9492:  LDRB            R1, [R2,#2]
5C9494:  STRB.W          R1, [R3,#(byte_A7C2CA - 0xA7C264)]
5C9498:  LDRB            R1, [R2,#3]
5C949A:  STRB.W          R1, [R3,#(byte_A7C2CB - 0xA7C264)]
5C949E:  VLDR            S0, [R12,#0xC]
5C94A2:  VLDR            S2, [R12,#0x10]
5C94A6:  VLDR            S6, =0.00097656
5C94AA:  VCVT.F32.S32    S2, S2
5C94AE:  VCVT.F32.S32    S0, S0
5C94B2:  VADD.F32        S2, S2, S2
5C94B6:  VADD.F32        S0, S0, S0
5C94BA:  VDIV.F32        S2, S4, S2
5C94BE:  VDIV.F32        S0, S4, S0
5C94C2:  VLDR            S4, =1.001
5C94C6:  VADD.F32        S8, S2, S4
5C94CA:  VADD.F32        S2, S2, S6
5C94CE:  VADD.F32        S6, S0, S6
5C94D2:  VADD.F32        S0, S0, S4
5C94D6:  VSTR            S6, [R3,#0x14]
5C94DA:  VSTR            S2, [R3,#0x18]
5C94DE:  VSTR            S0, [R3,#0x30]
5C94E2:  VSTR            S2, [R3,#0x34]
5C94E6:  VSTR            S6, [R3,#0x4C]
5C94EA:  VSTR            S8, [R3,#0x50]
5C94EE:  VSTR            S0, [R3,#0x68]
5C94F2:  VSTR            S8, [R3,#0x6C]
5C94F6:  LDR             R0, [R0]
5C94F8:  CBZ             R0, loc_5C9500
5C94FA:  LDR             R1, [R0]
5C94FC:  MOVS            R0, #1
5C94FE:  B               loc_5C9504
5C9500:  MOVS            R0, #1
5C9502:  MOVS            R1, #0
5C9504:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C9508:  LDR             R0, =(_ZN9CSprite2d10maVerticesE_ptr - 0x5C9510)
5C950A:  MOVS            R2, #4
5C950C:  ADD             R0, PC; _ZN9CSprite2d10maVerticesE_ptr
5C950E:  LDR             R1, [R0]; CSprite2d::maVertices ...
5C9510:  MOVS            R0, #4
5C9512:  POP.W           {R8}
5C9516:  POP.W           {R4-R7,LR}
5C951A:  B.W             j_j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; j_RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
