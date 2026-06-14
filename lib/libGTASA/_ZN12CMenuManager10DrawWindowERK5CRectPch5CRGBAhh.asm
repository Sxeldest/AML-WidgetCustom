; =========================================================
; Game Engine Function: _ZN12CMenuManager10DrawWindowERK5CRectPch5CRGBAhh
; Address            : 0x432B64 - 0x432C70
; =========================================================

432B64:  PUSH            {R4-R7,LR}
432B66:  ADD             R7, SP, #0xC
432B68:  PUSH.W          {R8}
432B6C:  VPUSH           {D8-D9}
432B70:  SUB             SP, SP, #0x10
432B72:  LDR             R0, [R7,#arg_8]
432B74:  MOV             R5, R1
432B76:  MOV             R6, R3
432B78:  MOV             R4, R2
432B7A:  CMP             R0, #0
432B7C:  ITTT NE
432B7E:  LDRNE           R1, [R7,#arg_0]
432B80:  MOVNE           R0, R5
432B82:  BLXNE           j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
432B86:  CMP             R4, #0
432B88:  ITT NE
432B8A:  LDRBNE          R0, [R4]
432B8C:  CMPNE           R0, #0
432B8E:  BEQ             loc_432C64
432B90:  LDR             R0, [R5,#8]; this
432B92:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
432B96:  RSB.W           R0, R6, #0xE1
432B9A:  MOV.W           R8, #0xFF
432B9E:  STR.W           R8, [SP,#0x30+var_30]; unsigned __int8
432BA2:  UXTB            R1, R0; unsigned __int8
432BA4:  ADD             R0, SP, #0x30+var_24; this
432BA6:  MOV             R2, R1; unsigned __int8
432BA8:  MOV             R3, R1; unsigned __int8
432BAA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
432BAE:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
432BB2:  ADD             R0, SP, #0x30+var_28; this
432BB4:  MOVS            R1, #0; unsigned __int8
432BB6:  MOVS            R2, #0; unsigned __int8
432BB8:  MOVS            R3, #0; unsigned __int8
432BBA:  STR.W           R8, [SP,#0x30+var_30]; unsigned __int8
432BBE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
432BC2:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
432BC6:  MOVS            R0, #(stderr+2); this
432BC8:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
432BCC:  MOVS            R0, #(stderr+1); this
432BCE:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
432BD2:  MOVS            R0, #0; this
432BD4:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
432BD8:  LDR             R0, =(RsGlobal_ptr - 0x432BE2)
432BDA:  VLDR            S16, =448.0
432BDE:  ADD             R0, PC; RsGlobal_ptr
432BE0:  VLDR            S2, =1.4
432BE4:  LDR             R6, [R0]; RsGlobal
432BE6:  LDR             R0, [R6,#(dword_9FC904 - 0x9FC8FC)]
432BE8:  VMOV            S0, R0
432BEC:  VCVT.F32.S32    S0, S0
432BF0:  VDIV.F32        S0, S0, S16
432BF4:  VMUL.F32        S0, S0, S2
432BF8:  VMOV            R0, S0; this
432BFC:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
432C00:  MOVS            R0, #(stderr+1); this
432C02:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
432C06:  VLDR            S0, [R6,#4]
432C0A:  VMOV.F32        S6, #10.0
432C0E:  VLDR            S2, [R6,#8]
432C12:  MOV             R1, R4; CKeyGen *
432C14:  VLDR            S4, =640.0
432C18:  VCVT.F32.S32    S2, S2
432C1C:  LDR             R0, =(TheText_ptr - 0x432C2A)
432C1E:  VCVT.F32.S32    S0, S0
432C22:  VLDR            S8, [R5,#0xC]
432C26:  ADD             R0, PC; TheText_ptr
432C28:  LDR             R0, [R0]; TheText ; this
432C2A:  VDIV.F32        S2, S2, S16
432C2E:  VDIV.F32        S0, S0, S4
432C32:  VMOV.F32        S4, #-16.0
432C36:  VMUL.F32        S0, S0, S6
432C3A:  VLDR            S6, [R5,#4]
432C3E:  VMIN.F32        D3, D4, D3
432C42:  VMUL.F32        S2, S2, S4
432C46:  VLDR            S4, [R5]
432C4A:  VADD.F32        S18, S4, S0
432C4E:  VADD.F32        S16, S6, S2
432C52:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
432C56:  MOV             R2, R0; CFont *
432C58:  VMOV            R1, S16; float
432C5C:  VMOV            R0, S18; this
432C60:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
432C64:  ADD             SP, SP, #0x10
432C66:  VPOP            {D8-D9}
432C6A:  POP.W           {R8}
432C6E:  POP             {R4-R7,PC}
