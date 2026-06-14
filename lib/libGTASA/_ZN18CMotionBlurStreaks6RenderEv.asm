; =========================================================
; Game Engine Function: _ZN18CMotionBlurStreaks6RenderEv
; Address            : 0x5C0B58 - 0x5C0BFC
; =========================================================

5C0B58:  PUSH            {R4-R7,LR}
5C0B5A:  ADD             R7, SP, #0xC
5C0B5C:  PUSH.W          {R8}
5C0B60:  LDR             R0, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5C0B68)
5C0B62:  MOVS            R5, #0
5C0B64:  ADD             R0, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5C0B66:  LDR             R6, [R0]; CMotionBlurStreaks::aStreaks ...
5C0B68:  LDR             R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x5C0B6E)
5C0B6A:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
5C0B6C:  LDR.W           R8, [R0]; CTimeCycle::m_CurrentColours ...
5C0B70:  MOVS            R0, #0
5C0B72:  LDR             R1, [R6,R5]
5C0B74:  CBZ             R1, loc_5C0BD2
5C0B76:  ADDS            R4, R6, R5
5C0B78:  LSLS            R0, R0, #0x1F
5C0B7A:  BNE             loc_5C0BCA
5C0B7C:  MOVS            R0, #8
5C0B7E:  MOVS            R1, #0
5C0B80:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0B84:  MOVS            R0, #0xC
5C0B86:  MOVS            R1, #1
5C0B88:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0B8C:  MOVS            R0, #0xE
5C0B8E:  MOVS            R1, #1
5C0B90:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0B94:  LDRH.W          R0, [R8,#(dword_966576 - 0x96654C)]
5C0B98:  LDRH.W          R1, [R8,#(dword_966576+2 - 0x96654C)]
5C0B9C:  LDRH.W          R2, [R8,#(word_96657A - 0x96654C)]
5C0BA0:  LSLS            R0, R0, #0x10
5C0BA2:  ORR.W           R0, R0, R1,LSL#8
5C0BA6:  ORRS            R0, R2
5C0BA8:  ORR.W           R1, R0, #0xFF000000
5C0BAC:  MOVS            R0, #0xF
5C0BAE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0BB2:  MOVS            R0, #0xA
5C0BB4:  MOVS            R1, #5
5C0BB6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0BBA:  MOVS            R0, #0xB
5C0BBC:  MOVS            R1, #6
5C0BBE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0BC2:  MOVS            R0, #1
5C0BC4:  MOVS            R1, #0
5C0BC6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0BCA:  MOV             R0, R4; this
5C0BCC:  BLX.W           j__ZN27CRegisteredMotionBlurStreak6RenderEv; CRegisteredMotionBlurStreak::Render(void)
5C0BD0:  MOVS            R0, #1
5C0BD2:  ADDS            R5, #0x54 ; 'T'
5C0BD4:  CMP.W           R5, #0x150
5C0BD8:  BNE             loc_5C0B72
5C0BDA:  LSLS            R0, R0, #0x1F
5C0BDC:  ITT EQ
5C0BDE:  POPEQ.W         {R8}
5C0BE2:  POPEQ           {R4-R7,PC}
5C0BE4:  MOVS            R0, #8
5C0BE6:  MOVS            R1, #1
5C0BE8:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0BEC:  MOVS            R0, #0xC
5C0BEE:  MOVS            R1, #0
5C0BF0:  POP.W           {R8}
5C0BF4:  POP.W           {R4-R7,LR}
5C0BF8:  B.W             sub_192888
