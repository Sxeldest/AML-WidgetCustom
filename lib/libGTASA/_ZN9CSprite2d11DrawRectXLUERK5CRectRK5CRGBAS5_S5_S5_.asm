; =========================================================
; Game Engine Function: _ZN9CSprite2d11DrawRectXLUERK5CRectRK5CRGBAS5_S5_S5_
; Address            : 0x5CA5D0 - 0x5CA6D8
; =========================================================

5CA5D0:  PUSH            {R4-R7,LR}
5CA5D2:  ADD             R7, SP, #0xC
5CA5D4:  PUSH.W          {R8}
5CA5D8:  LDR             R5, =(_ZN9CSprite2d10maVerticesE_ptr - 0x5CA5E6)
5CA5DA:  MOV.W           R8, #0x3A800000
5CA5DE:  LDR.W           R12, =(_ZN9CSprite2d11NearScreenZE_ptr - 0x5CA5EC)
5CA5E2:  ADD             R5, PC; _ZN9CSprite2d10maVerticesE_ptr
5CA5E4:  LDR.W           LR, =(_ZN9CSprite2d13RecipNearClipE_ptr - 0x5CA5F2)
5CA5E8:  ADD             R12, PC; _ZN9CSprite2d11NearScreenZE_ptr
5CA5EA:  LDR             R6, [R0]
5CA5EC:  LDR             R4, [R5]; CSprite2d::maVertices ...
5CA5EE:  ADD             LR, PC; _ZN9CSprite2d13RecipNearClipE_ptr
5CA5F0:  LDR.W           R5, [R12]; CSprite2d::NearScreenZ ...
5CA5F4:  LDR.W           LR, [LR]; CSprite2d::RecipNearClip ...
5CA5F8:  STR             R6, [R4]; CSprite2d::maVertices
5CA5FA:  ADDS            R6, R4, #4
5CA5FC:  LDR.W           R12, [R5]; CSprite2d::NearScreenZ
5CA600:  LDR             R5, [R0,#0xC]
5CA602:  LDR.W           LR, [LR]; CSprite2d::RecipNearClip
5CA606:  STM.W           R6, {R5,R12,LR}
5CA60A:  ADD.W           R5, R4, #0x20 ; ' '
5CA60E:  STRD.W          R8, R8, [R4,#(dword_A7C278 - 0xA7C264)]
5CA612:  LDRB            R6, [R3]
5CA614:  STRB            R6, [R4,#(byte_A7C274 - 0xA7C264)]
5CA616:  LDRB            R6, [R3,#1]
5CA618:  STRB            R6, [R4,#(byte_A7C275 - 0xA7C264)]
5CA61A:  LDRB            R6, [R3,#2]
5CA61C:  STRB            R6, [R4,#(byte_A7C276 - 0xA7C264)]
5CA61E:  LDRB            R3, [R3,#3]
5CA620:  STRB            R3, [R4,#(byte_A7C277 - 0xA7C264)]
5CA622:  LDR             R3, [R0,#8]
5CA624:  STR             R3, [R4,#(dword_A7C280 - 0xA7C264)]
5CA626:  LDR             R3, [R0,#0xC]
5CA628:  LDR             R6, [R7,#arg_0]
5CA62A:  STM.W           R5, {R3,R12,LR}
5CA62E:  MOV             R3, #0x3F802000
5CA636:  STRD.W          R3, R8, [R4,#(dword_A7C294 - 0xA7C264)]
5CA63A:  LDRB            R5, [R6]
5CA63C:  STRB.W          R5, [R4,#(byte_A7C290 - 0xA7C264)]
5CA640:  LDRB            R5, [R6,#1]
5CA642:  STRB.W          R5, [R4,#(byte_A7C291 - 0xA7C264)]
5CA646:  LDRB            R5, [R6,#2]
5CA648:  STRB.W          R5, [R4,#(byte_A7C292 - 0xA7C264)]
5CA64C:  LDRB            R5, [R6,#3]
5CA64E:  ADD.W           R6, R4, #0x3C ; '<'
5CA652:  STRB.W          R5, [R4,#(byte_A7C293 - 0xA7C264)]
5CA656:  LDR             R5, [R0]
5CA658:  STR             R5, [R4,#(dword_A7C29C - 0xA7C264)]
5CA65A:  LDR             R5, [R0,#4]
5CA65C:  STM.W           R6, {R5,R12,LR}
5CA660:  STRD.W          R8, R3, [R4,#(dword_A7C2B0 - 0xA7C264)]
5CA664:  LDRB            R5, [R1]
5CA666:  STRB.W          R5, [R4,#(byte_A7C2AC - 0xA7C264)]
5CA66A:  LDRB            R5, [R1,#1]
5CA66C:  STRB.W          R5, [R4,#(byte_A7C2AD - 0xA7C264)]
5CA670:  LDRB            R5, [R1,#2]
5CA672:  STRB.W          R5, [R4,#(byte_A7C2AE - 0xA7C264)]
5CA676:  LDRB            R1, [R1,#3]
5CA678:  STRB.W          R1, [R4,#(byte_A7C2AF - 0xA7C264)]
5CA67C:  LDR             R1, [R0,#8]
5CA67E:  STR             R1, [R4,#(dword_A7C2B8 - 0xA7C264)]
5CA680:  ADD.W           R1, R4, #0x58 ; 'X'
5CA684:  LDR             R0, [R0,#4]
5CA686:  STM.W           R1, {R0,R12,LR}
5CA68A:  MOVS            R1, #0
5CA68C:  STRD.W          R3, R3, [R4,#(dword_A7C2CC - 0xA7C264)]
5CA690:  LDRB            R0, [R2]
5CA692:  STRB.W          R0, [R4,#(byte_A7C2C8 - 0xA7C264)]
5CA696:  LDRB            R0, [R2,#1]
5CA698:  STRB.W          R0, [R4,#(byte_A7C2C9 - 0xA7C264)]
5CA69C:  LDRB            R0, [R2,#2]
5CA69E:  STRB.W          R0, [R4,#(byte_A7C2CA - 0xA7C264)]
5CA6A2:  LDRB            R0, [R2,#3]
5CA6A4:  STRB.W          R0, [R4,#(byte_A7C2CB - 0xA7C264)]
5CA6A8:  MOVS            R0, #1
5CA6AA:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CA6AE:  MOVS            R0, #0xC
5CA6B0:  MOVS            R1, #1
5CA6B2:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CA6B6:  MOVS            R0, #0xA
5CA6B8:  MOVS            R1, #5
5CA6BA:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CA6BE:  MOVS            R0, #0xB
5CA6C0:  MOVS            R1, #6
5CA6C2:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5CA6C6:  MOVS            R0, #4
5CA6C8:  MOV             R1, R4
5CA6CA:  MOVS            R2, #4
5CA6CC:  POP.W           {R8}
5CA6D0:  POP.W           {R4-R7,LR}
5CA6D4:  B.W             j_j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; j_RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
