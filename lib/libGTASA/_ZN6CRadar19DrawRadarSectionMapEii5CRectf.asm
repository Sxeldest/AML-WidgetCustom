; =========================================================
; Game Engine Function: _ZN6CRadar19DrawRadarSectionMapEii5CRectf
; Address            : 0x443B40 - 0x443C04
; =========================================================

443B40:  PUSH            {R4-R7,LR}
443B42:  ADD             R7, SP, #0xC
443B44:  PUSH.W          {R8}
443B48:  VPUSH           {D8}
443B4C:  SUB             SP, SP, #0x28
443B4E:  LDRD.W          R5, R6, [R7,#arg_0]
443B52:  ADD.W           R12, SP, #0x40+var_28
443B56:  CMP             R0, #0xB
443B58:  STM.W           R12, {R2,R3,R5,R6}
443B5C:  IT LS
443B5E:  CMPLS           R1, #0xB
443B60:  BHI             loc_443BF8
443B62:  LDR             R2, =(gRadarTextures_ptr - 0x443B6C)
443B64:  ADD.W           R1, R1, R1,LSL#1
443B68:  ADD             R2, PC; gRadarTextures_ptr
443B6A:  ADD.W           R0, R0, R1,LSL#2
443B6E:  LDR             R2, [R2]; gRadarTextures
443B70:  LDR.W           R4, [R2,R0,LSL#2]
443B74:  CMP             R4, #0
443B76:  BEQ             loc_443BF8
443B78:  MOVS            R0, #0xC
443B7A:  MOVS            R1, #1
443B7C:  VLDR            S16, [R7,#arg_8]
443B80:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
443B84:  LDR             R1, [R4]
443B86:  MOVS            R0, #1
443B88:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
443B8C:  VLDR            S0, =255.0
443B90:  ADD.W           R8, SP, #0x40+var_2C
443B94:  MOVS            R1, #0xFF; unsigned __int8
443B96:  MOVS            R2, #0xFF; unsigned __int8
443B98:  VMUL.F32        S0, S16, S0
443B9C:  MOV             R0, R8; this
443B9E:  MOVS            R3, #0xFF; unsigned __int8
443BA0:  VCVT.U32.F32    S0, S0
443BA4:  VMOV            R4, S0
443BA8:  STR             R4, [SP,#0x40+var_40]; unsigned __int8
443BAA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
443BAE:  ADD             R5, SP, #0x40+var_30
443BB0:  MOVS            R1, #0xFF; unsigned __int8
443BB2:  MOVS            R2, #0xFF; unsigned __int8
443BB4:  MOVS            R3, #0xFF; unsigned __int8
443BB6:  MOV             R0, R5; this
443BB8:  STR             R4, [SP,#0x40+var_40]; unsigned __int8
443BBA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
443BBE:  ADD             R6, SP, #0x40+var_34
443BC0:  MOVS            R1, #0xFF; unsigned __int8
443BC2:  MOVS            R2, #0xFF; unsigned __int8
443BC4:  MOVS            R3, #0xFF; unsigned __int8
443BC6:  MOV             R0, R6; this
443BC8:  STR             R4, [SP,#0x40+var_40]; unsigned __int8
443BCA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
443BCE:  ADD             R0, SP, #0x40+var_38; this
443BD0:  MOVS            R1, #0xFF; unsigned __int8
443BD2:  MOVS            R2, #0xFF; unsigned __int8
443BD4:  MOVS            R3, #0xFF; unsigned __int8
443BD6:  STR             R4, [SP,#0x40+var_40]; unsigned __int8
443BD8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
443BDC:  STR             R0, [SP,#0x40+var_40]
443BDE:  ADD             R0, SP, #0x40+var_28
443BE0:  MOV             R1, R8
443BE2:  MOV             R2, R5
443BE4:  MOV             R3, R6
443BE6:  BLX             j__ZN9CSprite2d11SetVerticesERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::SetVertices(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
443BEA:  LDR             R0, =(_ZN9CSprite2d10maVerticesE_ptr - 0x443BF2)
443BEC:  MOVS            R2, #4
443BEE:  ADD             R0, PC; _ZN9CSprite2d10maVerticesE_ptr
443BF0:  LDR             R1, [R0]; CSprite2d::maVertices ...
443BF2:  MOVS            R0, #4
443BF4:  BLX             j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
443BF8:  ADD             SP, SP, #0x28 ; '('
443BFA:  VPOP            {D8}
443BFE:  POP.W           {R8}
443C02:  POP             {R4-R7,PC}
