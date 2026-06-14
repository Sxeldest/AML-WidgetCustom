; =========================================================
; Game Engine Function: _ZN19CPedDebugVisualiser15SetRenderStatesEv
; Address            : 0x4ACC82 - 0x4ACD58
; =========================================================

4ACC82:  PUSH            {R4,R6,R7,LR}
4ACC84:  ADD             R7, SP, #8
4ACC86:  SUB             SP, SP, #0x10
4ACC88:  MOVS            R0, #2
4ACC8A:  MOVS            R1, #1
4ACC8C:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4ACC90:  MOVS            R0, #5
4ACC92:  MOVS            R1, #0
4ACC94:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4ACC98:  MOVS            R0, #6
4ACC9A:  MOVS            R1, #0
4ACC9C:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4ACCA0:  MOVS            R0, #8
4ACCA2:  MOVS            R1, #0
4ACCA4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4ACCA8:  MOVS            R0, #6
4ACCAA:  MOVS            R1, #0
4ACCAC:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4ACCB0:  MOVS            R0, #7
4ACCB2:  MOVS            R1, #1
4ACCB4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4ACCB8:  MOVS            R0, #9
4ACCBA:  MOVS            R1, #2
4ACCBC:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4ACCC0:  MOVS            R0, #0xC
4ACCC2:  MOVS            R1, #0
4ACCC4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4ACCC8:  MOVS            R0, #0xA
4ACCCA:  MOVS            R1, #5
4ACCCC:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4ACCD0:  MOVS            R0, #0xB
4ACCD2:  MOVS            R1, #6
4ACCD4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4ACCD8:  MOVS            R0, #0xD
4ACCDA:  MOV.W           R1, #0xFF000000
4ACCDE:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4ACCE2:  MOVS            R0, #0xE
4ACCE4:  MOVS            R1, #0
4ACCE6:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4ACCEA:  MOVS            R0, #0x14
4ACCEC:  MOVS            R1, #1
4ACCEE:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4ACCF2:  MOVS            R0, #0x1D
4ACCF4:  MOVS            R1, #5
4ACCF6:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4ACCFA:  MOVS            R0, #0x1E
4ACCFC:  MOVS            R1, #2
4ACCFE:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
4ACD02:  MOVS            R0, #(stderr+1); this
4ACD04:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
4ACD08:  MOVS            R0, #0; this
4ACD0A:  MOVS            R1, #0; unsigned __int8
4ACD0C:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
4ACD10:  MOVS            R0, #0x44200000; this
4ACD16:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
4ACD1A:  MOVS            R0, #0; this
4ACD1C:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
4ACD20:  MOVS            R0, #(stderr+1); this
4ACD22:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
4ACD26:  MOVS            R0, #0xC8
4ACD28:  MOVS            R1, #0xFF; unsigned __int8
4ACD2A:  STR             R0, [SP,#0x18+var_18]; unsigned __int8
4ACD2C:  ADD             R0, SP, #0x18+var_C; this
4ACD2E:  MOVS            R2, #0xFF; unsigned __int8
4ACD30:  MOVS            R3, #0; unsigned __int8
4ACD32:  MOVS            R4, #0xFF
4ACD34:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4ACD38:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
4ACD3C:  MOVS            R0, #(stderr+1); this
4ACD3E:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
4ACD42:  ADD             R0, SP, #0x18+var_10; this
4ACD44:  MOVS            R1, #0; unsigned __int8
4ACD46:  MOVS            R2, #0; unsigned __int8
4ACD48:  MOVS            R3, #0; unsigned __int8
4ACD4A:  STR             R4, [SP,#0x18+var_18]; unsigned __int8
4ACD4C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4ACD50:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
4ACD54:  ADD             SP, SP, #0x10
4ACD56:  POP             {R4,R6,R7,PC}
