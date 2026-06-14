; =========================================================
; Game Engine Function: _ZN10MobileMenu6RenderEv
; Address            : 0x299B64 - 0x29A4C8
; =========================================================

299B64:  PUSH            {R4-R7,LR}
299B66:  ADD             R7, SP, #0xC
299B68:  PUSH.W          {R8-R11}
299B6C:  SUB             SP, SP, #4
299B6E:  VPUSH           {D8-D11}
299B72:  SUB             SP, SP, #0x38
299B74:  MOV             R10, R0
299B76:  LDR.W           R0, [R10,#0x24]
299B7A:  CMP             R0, #0
299B7C:  ITT EQ
299B7E:  LDREQ.W         R0, [R10,#0x2C]
299B82:  CMPEQ           R0, #0
299B84:  BEQ.W           loc_29A4BA
299B88:  BLX             j__Z21emu_IsAltRenderTargetv; emu_IsAltRenderTarget(void)
299B8C:  CMP             R0, #0
299B8E:  IT NE
299B90:  BLXNE           j__Z24emu_FlushAltRenderTargetv; emu_FlushAltRenderTarget(void)
299B94:  ADD             R5, SP, #0x78+var_50
299B96:  MOV.W           R8, #0
299B9A:  MOVS            R1, #0; unsigned __int8
299B9C:  MOVS            R2, #0; unsigned __int8
299B9E:  MOV             R0, R5; this
299BA0:  MOVS            R3, #0; unsigned __int8
299BA2:  STR.W           R8, [SP,#0x78+var_78]; unsigned __int8
299BA6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
299BAA:  ADDS            R0, R5, #4; this
299BAC:  MOVS            R1, #0; unsigned __int8
299BAE:  MOVS            R2, #0; unsigned __int8
299BB0:  MOVS            R3, #0; unsigned __int8
299BB2:  STR.W           R8, [SP,#0x78+var_78]; unsigned __int8
299BB6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
299BBA:  ADD.W           R0, R5, #8; this
299BBE:  MOVS            R6, #0xFF
299BC0:  MOVS            R1, #0; unsigned __int8
299BC2:  MOVS            R2, #0; unsigned __int8
299BC4:  MOVS            R3, #0; unsigned __int8
299BC6:  STR             R6, [SP,#0x78+var_78]; unsigned __int8
299BC8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
299BCC:  ADD.W           R0, R5, #0xC; this
299BD0:  MOVS            R1, #0; unsigned __int8
299BD2:  MOVS            R2, #0; unsigned __int8
299BD4:  MOVS            R3, #0; unsigned __int8
299BD6:  STR             R6, [SP,#0x78+var_78]; unsigned __int8
299BD8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
299BDC:  ADD             R5, SP, #0x78+var_60
299BDE:  MOVS            R1, #0; unsigned __int8
299BE0:  MOVS            R2, #0; unsigned __int8
299BE2:  MOVS            R3, #0; unsigned __int8
299BE4:  MOV             R0, R5; this
299BE6:  STR             R6, [SP,#0x78+var_78]; unsigned __int8
299BE8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
299BEC:  ADDS            R0, R5, #4; this
299BEE:  MOVS            R1, #0; unsigned __int8
299BF0:  MOVS            R2, #0; unsigned __int8
299BF2:  MOVS            R3, #0; unsigned __int8
299BF4:  STR             R6, [SP,#0x78+var_78]; unsigned __int8
299BF6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
299BFA:  ADD.W           R0, R5, #8; this
299BFE:  MOVS            R1, #0; unsigned __int8
299C00:  MOVS            R2, #0; unsigned __int8
299C02:  MOVS            R3, #0; unsigned __int8
299C04:  STR             R6, [SP,#0x78+var_78]; unsigned __int8
299C06:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
299C0A:  ADD.W           R0, R5, #0xC; this
299C0E:  MOVS            R1, #0; unsigned __int8
299C10:  MOVS            R2, #0; unsigned __int8
299C12:  MOVS            R3, #0; unsigned __int8
299C14:  STR             R6, [SP,#0x78+var_78]; unsigned __int8
299C16:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
299C1A:  LDR.W           R0, [R10,#0x24]; this
299C1E:  CMP             R0, #0
299C20:  BEQ.W           loc_299F90
299C24:  LDR.W           R1, [R10,#0x28]
299C28:  ADD.W           R0, R1, R0,LSL#2
299C2C:  LDR.W           R0, [R0,#-4]
299C30:  LDR             R1, [R0]
299C32:  LDR             R1, [R1,#0x2C]
299C34:  BLX             R1
299C36:  CMP             R0, #1
299C38:  BNE.W           loc_299F90
299C3C:  MOVS            R0, #1; bool
299C3E:  BLX             j__Z18Menu_IsPlayingGameb; Menu_IsPlayingGame(bool)
299C42:  CMP             R0, #1
299C44:  BNE.W           loc_299F90
299C48:  LDR.W           R0, =(gMobileMenu_ptr - 0x299C50)
299C4C:  ADD             R0, PC; gMobileMenu_ptr
299C4E:  LDR             R0, [R0]; gMobileMenu
299C50:  LDRB.W          R0, [R0,#(word_6E00C0+1 - 0x6E006C)]
299C54:  CMP             R0, #0
299C56:  BNE.W           loc_299F90
299C5A:  BLX             j__Z14Menu_MapRenderv; Menu_MapRender(void)
299C5E:  BLX             j__ZN10MobileMenu15PrepareToRenderEv; MobileMenu::PrepareToRender(void)
299C62:  LDR.W           R0, =(mapModeOpacity_ptr - 0x299C6E)
299C66:  VMOV.F32        S2, #1.0
299C6A:  ADD             R0, PC; mapModeOpacity_ptr
299C6C:  LDR             R0, [R0]; mapModeOpacity
299C6E:  VLDR            S0, [R0]
299C72:  VCMPE.F32       S0, S2
299C76:  VMRS            APSR_nzcv, FPSCR
299C7A:  BGE.W           loc_299F42
299C7E:  LDRB.W          R0, [SP,#0x78+var_4D]
299C82:  VSUB.F32        S0, S2, S0
299C86:  LDRB.W          R1, [SP,#0x78+var_49]
299C8A:  MOV.W           R8, #0
299C8E:  VMOV            S4, R0
299C92:  VCVT.F32.U32    S4, S4
299C96:  VMUL.F32        S2, S0, S4
299C9A:  VMOV            S4, R1
299C9E:  VCVT.U32.F32    S2, S2
299CA2:  VMOV            R0, S2
299CA6:  STRB.W          R0, [SP,#0x78+var_4D]
299CAA:  LDRB.W          R0, [SP,#0x78+var_5D]
299CAE:  VMOV            S2, R0
299CB2:  VCVT.F32.U32    S2, S2
299CB6:  VCVT.F32.U32    S4, S4
299CBA:  VMUL.F32        S2, S0, S2
299CBE:  VMUL.F32        S4, S0, S4
299CC2:  VCVT.U32.F32    S2, S2
299CC6:  LDRB.W          R1, [SP,#0x78+var_41]
299CCA:  VMOV            S6, R1
299CCE:  VMOV            R0, S2
299CD2:  STRB.W          R0, [SP,#0x78+var_5D]
299CD6:  LDRB.W          R0, [SP,#0x78+var_45]
299CDA:  VMOV            S2, R0
299CDE:  VCVT.F32.U32    S2, S2
299CE2:  VCVT.F32.U32    S6, S6
299CE6:  VCVT.U32.F32    S4, S4
299CEA:  VMUL.F32        S2, S0, S2
299CEE:  VMUL.F32        S6, S0, S6
299CF2:  VMOV            R0, S4
299CF6:  STRB.W          R0, [SP,#0x78+var_49]
299CFA:  LDRB.W          R0, [SP,#0x78+var_59]
299CFE:  VMOV            S4, R0
299D02:  VCVT.F32.U32    S4, S4
299D06:  VCVT.U32.F32    S2, S2
299D0A:  VCVT.U32.F32    S6, S6
299D0E:  LDRB.W          R1, [SP,#0x78+var_51]
299D12:  VMUL.F32        S4, S0, S4
299D16:  VMOV            R0, S2
299D1A:  STRB.W          R0, [SP,#0x78+var_45]
299D1E:  VMOV            R0, S6
299D22:  VMOV            S6, R1
299D26:  MOVS            R1, #0
299D28:  STRB.W          R0, [SP,#0x78+var_41]
299D2C:  LDRB.W          R0, [SP,#0x78+var_55]
299D30:  VMOV            S2, R0
299D34:  LDR.W           R0, =(RsGlobal_ptr - 0x299D40)
299D38:  VCVT.F32.U32    S2, S2
299D3C:  ADD             R0, PC; RsGlobal_ptr
299D3E:  VCVT.F32.U32    S6, S6
299D42:  LDR.W           R9, [R0]; RsGlobal
299D46:  VLDR            S8, [R9,#8]
299D4A:  VMUL.F32        S2, S0, S2
299D4E:  VMUL.F32        S0, S0, S6
299D52:  VLDR            S6, [R9,#4]
299D56:  VCVT.U32.F32    S4, S4
299D5A:  VCVT.F32.S32    S20, S8
299D5E:  VCVT.F32.S32    S18, S6
299D62:  VMOV            R0, S4
299D66:  STRB.W          R0, [SP,#0x78+var_59]
299D6A:  VCVT.U32.F32    S2, S2
299D6E:  VCVT.U32.F32    S0, S0
299D72:  VMOV            R0, S2
299D76:  STRB.W          R0, [SP,#0x78+var_55]
299D7A:  VMOV            R0, S0
299D7E:  STRB.W          R0, [SP,#0x78+var_51]
299D82:  MOVS            R0, #1
299D84:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
299D88:  LDR.W           R0, =(maVertices_ptr - 0x299D98)
299D8C:  MOV.W           R6, #0x3F800000
299D90:  VLDR            S16, =0.85
299D94:  ADD             R0, PC; maVertices_ptr
299D96:  LDRB.W          R1, [SP,#0x78+var_4F]
299D9A:  VMUL.F32        S0, S20, S16
299D9E:  LDRB.W          R2, [SP,#0x78+var_4E]
299DA2:  LDR             R5, [R0]; maVertices
299DA4:  LDRB.W          R0, [SP,#0x78+var_50]
299DA8:  LDRB.W          R3, [SP,#0x78+var_4D]
299DAC:  STRB            R0, [R5,#(byte_6E0148 - 0x6E0138)]
299DAE:  STRD.W          R8, R8, [R5]
299DB2:  STRD.W          R6, R6, [R5,#(dword_6E0140 - 0x6E0138)]
299DB6:  STRD.W          R8, R8, [R5,#(dword_6E014C - 0x6E0138)]
299DBA:  VSTR            S18, [R5,#0x1C]
299DBE:  STRD.W          R8, R6, [R5,#(dword_6E0158 - 0x6E0138)]
299DC2:  STR             R6, [R5,#(dword_6E0160 - 0x6E0138)]
299DC4:  STRD.W          R6, R8, [R5,#(dword_6E0168 - 0x6E0138)]
299DC8:  LDRB.W          R0, [SP,#0x78+var_4C]
299DCC:  STRB            R1, [R5,#(byte_6E0149 - 0x6E0138)]
299DCE:  MOV             R1, R5
299DD0:  STRB            R2, [R5,#(byte_6E014A - 0x6E0138)]
299DD2:  MOVS            R2, #4
299DD4:  STRB            R3, [R5,#(byte_6E014B - 0x6E0138)]
299DD6:  STRB.W          R0, [R5,#(byte_6E0164 - 0x6E0138)]
299DDA:  LDRB.W          R0, [SP,#0x78+var_4B]
299DDE:  STRB.W          R0, [R5,#(byte_6E0165 - 0x6E0138)]
299DE2:  LDRB.W          R0, [SP,#0x78+var_4A]
299DE6:  STRB.W          R0, [R5,#(byte_6E0166 - 0x6E0138)]
299DEA:  LDRB.W          R0, [SP,#0x78+var_49]
299DEE:  STRB.W          R0, [R5,#(byte_6E0167 - 0x6E0138)]
299DF2:  VSTR            S0, [R5,#0x3C]
299DF6:  STRD.W          R6, R6, [R5,#(dword_6E0178 - 0x6E0138)]
299DFA:  STRD.W          R8, R6, [R5,#(dword_6E0184 - 0x6E0138)]
299DFE:  LDRB.W          R0, [SP,#0x78+var_48]
299E02:  STR.W           R8, [R5,#(dword_6E0170 - 0x6E0138)]
299E06:  STRB.W          R0, [R5,#(byte_6E0180 - 0x6E0138)]
299E0A:  LDRB.W          R0, [SP,#0x78+var_47]
299E0E:  STRB.W          R0, [R5,#(byte_6E0181 - 0x6E0138)]
299E12:  LDRB.W          R0, [SP,#0x78+var_46]
299E16:  STRB.W          R0, [R5,#(byte_6E0182 - 0x6E0138)]
299E1A:  LDRB.W          R0, [SP,#0x78+var_45]
299E1E:  STRB.W          R0, [R5,#(byte_6E0183 - 0x6E0138)]
299E22:  STRD.W          R6, R6, [R5,#(dword_6E0194 - 0x6E0138)]
299E26:  STRD.W          R6, R6, [R5,#(dword_6E01A0 - 0x6E0138)]
299E2A:  LDRB.W          R0, [SP,#0x78+var_44]
299E2E:  VSTR            S18, [R5,#0x54]
299E32:  VSTR            S0, [R5,#0x58]
299E36:  STRB.W          R0, [R5,#(byte_6E019C - 0x6E0138)]
299E3A:  LDRB.W          R0, [SP,#0x78+var_43]
299E3E:  STRB.W          R0, [R5,#(byte_6E019D - 0x6E0138)]
299E42:  LDRB.W          R0, [SP,#0x78+var_42]
299E46:  STRB.W          R0, [R5,#(byte_6E019E - 0x6E0138)]
299E4A:  LDRB.W          R0, [SP,#0x78+var_41]
299E4E:  STRB.W          R0, [R5,#(byte_6E019F - 0x6E0138)]
299E52:  MOVS            R0, #4
299E54:  BLX             j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
299E58:  VLDR            S0, [R9,#4]
299E5C:  MOVS            R0, #1
299E5E:  VLDR            S2, [R9,#8]
299E62:  MOVS            R1, #0
299E64:  VCVT.F32.S32    S18, S0
299E68:  VCVT.F32.S32    S20, S2
299E6C:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
299E70:  VMUL.F32        S0, S20, S16
299E74:  LDRB.W          R0, [SP,#0x78+var_60]
299E78:  LDRB.W          R1, [SP,#0x78+var_5F]
299E7C:  LDRB.W          R2, [SP,#0x78+var_5E]
299E80:  LDRB.W          R3, [SP,#0x78+var_5D]
299E84:  STR.W           R8, [R5]
299E88:  STRD.W          R6, R6, [R5,#(dword_6E0140 - 0x6E0138)]
299E8C:  STRD.W          R8, R8, [R5,#(dword_6E014C - 0x6E0138)]
299E90:  STRD.W          R6, R6, [R5,#(dword_6E015C - 0x6E0138)]
299E94:  STRD.W          R6, R8, [R5,#(dword_6E0168 - 0x6E0138)]
299E98:  STRB            R0, [R5,#(byte_6E0148 - 0x6E0138)]
299E9A:  LDRB.W          R0, [SP,#0x78+var_5C]
299E9E:  STRB            R1, [R5,#(byte_6E0149 - 0x6E0138)]
299EA0:  MOV             R1, R5
299EA2:  STRB            R2, [R5,#(byte_6E014A - 0x6E0138)]
299EA4:  MOVS            R2, #4
299EA6:  STRB            R3, [R5,#(byte_6E014B - 0x6E0138)]
299EA8:  VSTR            S18, [R5,#0x1C]
299EAC:  VSTR            S0, [R5,#0x20]
299EB0:  VSTR            S0, [R5,#4]
299EB4:  STRB.W          R0, [R5,#(byte_6E0164 - 0x6E0138)]
299EB8:  LDRB.W          R0, [SP,#0x78+var_5B]
299EBC:  STRB.W          R0, [R5,#(byte_6E0165 - 0x6E0138)]
299EC0:  LDRB.W          R0, [SP,#0x78+var_5A]
299EC4:  STRB.W          R0, [R5,#(byte_6E0166 - 0x6E0138)]
299EC8:  LDRB.W          R0, [SP,#0x78+var_59]
299ECC:  VSTR            S20, [R5,#0x3C]
299ED0:  STRD.W          R6, R6, [R5,#(dword_6E0178 - 0x6E0138)]
299ED4:  STRD.W          R8, R6, [R5,#(dword_6E0184 - 0x6E0138)]
299ED8:  STR.W           R8, [R5,#(dword_6E0170 - 0x6E0138)]
299EDC:  STRB.W          R0, [R5,#(byte_6E0167 - 0x6E0138)]
299EE0:  LDRB.W          R0, [SP,#0x78+var_58]
299EE4:  STRB.W          R0, [R5,#(byte_6E0180 - 0x6E0138)]
299EE8:  LDRB.W          R0, [SP,#0x78+var_57]
299EEC:  STRB.W          R0, [R5,#(byte_6E0181 - 0x6E0138)]
299EF0:  LDRB.W          R0, [SP,#0x78+var_56]
299EF4:  STRB.W          R0, [R5,#(byte_6E0182 - 0x6E0138)]
299EF8:  LDRB.W          R0, [SP,#0x78+var_55]
299EFC:  STRD.W          R6, R6, [R5,#(dword_6E0194 - 0x6E0138)]
299F00:  STRD.W          R6, R6, [R5,#(dword_6E01A0 - 0x6E0138)]
299F04:  VSTR            S18, [R5,#0x54]
299F08:  VSTR            S20, [R5,#0x58]
299F0C:  STRB.W          R0, [R5,#(byte_6E0183 - 0x6E0138)]
299F10:  LDRB.W          R0, [SP,#0x78+var_54]
299F14:  STRB.W          R0, [R5,#(byte_6E019C - 0x6E0138)]
299F18:  LDRB.W          R0, [SP,#0x78+var_53]
299F1C:  STRB.W          R0, [R5,#(byte_6E019D - 0x6E0138)]
299F20:  LDRB.W          R0, [SP,#0x78+var_52]
299F24:  STRB.W          R0, [R5,#(byte_6E019E - 0x6E0138)]
299F28:  LDRB.W          R0, [SP,#0x78+var_51]
299F2C:  STRB.W          R0, [R5,#(byte_6E019F - 0x6E0138)]
299F30:  MOVS            R0, #4
299F32:  BLX             j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
299F36:  LDR.W           R0, =(mapModeOpacity_ptr - 0x299F3E)
299F3A:  ADD             R0, PC; mapModeOpacity_ptr
299F3C:  LDR             R0, [R0]; mapModeOpacity
299F3E:  VLDR            S0, [R0]
299F42:  VCMPE.F32       S0, #0.0
299F46:  VMRS            APSR_nzcv, FPSCR
299F4A:  BLE.W           loc_29A1D0
299F4E:  LDRD.W          R0, R1, [R10,#0x24]
299F52:  ADD.W           R0, R1, R0,LSL#2
299F56:  LDR.W           R0, [R0,#-4]
299F5A:  LDR             R4, [R0,#8]
299F5C:  VSTR            S0, [R0,#8]
299F60:  LDRD.W          R0, R1, [R10,#0x24]
299F64:  ADD.W           R0, R1, R0,LSL#2
299F68:  LDR.W           R0, [R0,#-4]
299F6C:  LDR             R1, [R0]
299F6E:  LDR             R2, [R1,#0x28]
299F70:  MOVS            R1, #1
299F72:  BLX             R2
299F74:  LDRD.W          R0, R1, [R10,#0x24]
299F78:  ADD.W           R0, R1, R0,LSL#2
299F7C:  LDR.W           R0, [R0,#-4]
299F80:  STR             R4, [R0,#8]
299F82:  B               loc_29A1D0
299F84:  DCFS 0.85
299F88:  DCFS 35.0
299F8C:  DCFS 50.0
299F90:  BLX             j__ZN10MobileMenu15PrepareToRenderEv; MobileMenu::PrepareToRender(void)
299F94:  VLDR            S0, [R10,#8]
299F98:  ADD             R0, SP, #0x78+var_64; this
299F9A:  VLDR            S4, [R10,#0x10]
299F9E:  VLDR            S2, [R10,#0xC]
299FA2:  VLDR            S6, [R10,#0x14]
299FA6:  VSUB.F32        S0, S4, S0
299FAA:  VLDR            S8, [R10,#0x18]
299FAE:  VLDR            S10, [R10,#0x1C]
299FB2:  VSUB.F32        S2, S6, S2
299FB6:  VSUB.F32        S4, S4, S8
299FBA:  LDR.W           R5, [R10,#0x30]
299FBE:  VSUB.F32        S6, S6, S10
299FC2:  VMOV.F32        S8, #1.0
299FC6:  VMUL.F32        S0, S0, S0
299FCA:  VMUL.F32        S2, S2, S2
299FCE:  VMUL.F32        S4, S4, S4
299FD2:  VMUL.F32        S6, S6, S6
299FD6:  VADD.F32        S0, S0, S2
299FDA:  VADD.F32        S2, S4, S6
299FDE:  VLDR            S6, =35.0
299FE2:  VMOV.F32        S4, #25.0
299FE6:  VSQRT.F32       S0, S0
299FEA:  VSQRT.F32       S2, S2
299FEE:  VMUL.F32        S0, S0, S4
299FF2:  VMUL.F32        S2, S2, S6
299FF6:  VMIN.F32        D0, D0, D4
299FFA:  VMIN.F32        D1, D1, D4
299FFE:  VMUL.F32        S0, S2, S0
29A002:  VLDR            S2, =50.0
29A006:  VMUL.F32        S0, S0, S2
29A00A:  VCVT.U32.F32    S0, S0
29A00E:  STR             R6, [SP,#0x78+var_78]; unsigned __int8
29A010:  VMOV            R1, S0; unsigned __int8
29A014:  MOV             R2, R1; unsigned __int8
29A016:  MOV             R3, R1; unsigned __int8
29A018:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29A01C:  LDR.W           R0, =(RsGlobal_ptr - 0x29A028)
29A020:  VLDR            S16, [R10]
29A024:  ADD             R0, PC; RsGlobal_ptr
29A026:  VLDR            S18, [R10,#4]
29A02A:  LDR.W           R9, [R0]; RsGlobal
29A02E:  MOVS            R0, #1
29A030:  VLDR            S2, [R9,#8]
29A034:  VLDR            S0, [R9,#4]
29A038:  LDRD.W          R11, R4, [R10,#0x10]
29A03C:  VCVT.F32.S32    S20, S2
29A040:  LDR             R1, [R5]
29A042:  VCVT.F32.S32    S22, S0
29A046:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
29A04A:  VMOV            S0, R11
29A04E:  LDR.W           R0, =(maVertices_ptr - 0x29A062)
29A052:  VMOV            S2, R4
29A056:  LDRB.W          R3, [SP,#0x78+var_64]
29A05A:  VADD.F32        S0, S16, S0
29A05E:  ADD             R0, PC; maVertices_ptr
29A060:  VADD.F32        S2, S18, S2
29A064:  LDRB.W          R1, [SP,#0x78+var_62]
29A068:  LDR             R5, [R0]; maVertices
29A06A:  MOV.W           R6, #0x3F800000
29A06E:  LDRB.W          R0, [SP,#0x78+var_63]
29A072:  LDRB.W          R2, [SP,#0x78+var_61]
29A076:  STRD.W          R8, R8, [R5]
29A07A:  STRD.W          R6, R6, [R5,#(dword_6E0140 - 0x6E0138)]
29A07E:  STRD.W          R11, R4, [R5,#(dword_6E014C - 0x6E0138)]
29A082:  STRB            R3, [R5,#(byte_6E0148 - 0x6E0138)]
29A084:  STRB            R0, [R5,#(byte_6E0149 - 0x6E0138)]
29A086:  STRB            R1, [R5,#(byte_6E014A - 0x6E0138)]
29A088:  STRB            R2, [R5,#(byte_6E014B - 0x6E0138)]
29A08A:  STRD.W          R8, R6, [R5,#(dword_6E0158 - 0x6E0138)]
29A08E:  STR             R6, [R5,#(dword_6E0160 - 0x6E0138)]
29A090:  STR             R4, [R5,#(dword_6E016C - 0x6E0138)]
29A092:  STRB.W          R3, [R5,#(byte_6E0164 - 0x6E0138)]
29A096:  STRB.W          R0, [R5,#(byte_6E0165 - 0x6E0138)]
29A09A:  STRB.W          R1, [R5,#(byte_6E0166 - 0x6E0138)]
29A09E:  STRB.W          R2, [R5,#(byte_6E0167 - 0x6E0138)]
29A0A2:  VSTR            S22, [R5,#0x1C]
29A0A6:  VSTR            S0, [R5,#0x30]
29A0AA:  STR.W           R11, [R5,#(dword_6E0184 - 0x6E0138)]
29A0AE:  VSTR            S20, [R5,#0x3C]
29A0B2:  STRD.W          R6, R6, [R5,#(dword_6E0178 - 0x6E0138)]
29A0B6:  VSTR            S2, [R5,#0x50]
29A0BA:  STRB.W          R3, [R5,#(byte_6E0180 - 0x6E0138)]
29A0BE:  STRB.W          R0, [R5,#(byte_6E0181 - 0x6E0138)]
29A0C2:  STRB.W          R1, [R5,#(byte_6E0182 - 0x6E0138)]
29A0C6:  STRB.W          R2, [R5,#(byte_6E0183 - 0x6E0138)]
29A0CA:  STR.W           R8, [R5,#(dword_6E0170 - 0x6E0138)]
29A0CE:  STRB.W          R3, [R5,#(byte_6E019C - 0x6E0138)]
29A0D2:  VSTR            S20, [R5,#0x58]
29A0D6:  STRD.W          R6, R6, [R5,#(dword_6E0194 - 0x6E0138)]
29A0DA:  VSTR            S0, [R5,#0x68]
29A0DE:  VSTR            S2, [R5,#0x6C]
29A0E2:  STRB.W          R0, [R5,#(byte_6E019D - 0x6E0138)]
29A0E6:  MOVS            R0, #4
29A0E8:  STRB.W          R1, [R5,#(byte_6E019E - 0x6E0138)]
29A0EC:  MOV             R1, R5
29A0EE:  STRB.W          R2, [R5,#(byte_6E019F - 0x6E0138)]
29A0F2:  MOVS            R2, #4
29A0F4:  VSTR            S22, [R5,#0x54]
29A0F8:  BLX             j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
29A0FC:  VLDR            S0, [R9,#4]
29A100:  MOVS            R0, #1
29A102:  VLDR            S2, [R9,#8]
29A106:  MOVS            R1, #0
29A108:  VCVT.F32.S32    S16, S2
29A10C:  VCVT.F32.S32    S18, S0
29A110:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
29A114:  LDRB.W          R0, [SP,#0x78+var_50]
29A118:  LDRB.W          R1, [SP,#0x78+var_4F]
29A11C:  LDRB.W          R2, [SP,#0x78+var_4E]
29A120:  LDRB.W          R3, [SP,#0x78+var_4D]
29A124:  STRD.W          R8, R8, [R5]
29A128:  STRD.W          R6, R6, [R5,#(dword_6E0140 - 0x6E0138)]
29A12C:  STRD.W          R8, R8, [R5,#(dword_6E014C - 0x6E0138)]
29A130:  STRD.W          R8, R6, [R5,#(dword_6E0158 - 0x6E0138)]
29A134:  STR             R6, [R5,#(dword_6E0160 - 0x6E0138)]
29A136:  STRD.W          R6, R8, [R5,#(dword_6E0168 - 0x6E0138)]
29A13A:  STRB            R0, [R5,#(byte_6E0148 - 0x6E0138)]
29A13C:  LDRB.W          R0, [SP,#0x78+var_4C]
29A140:  STRB            R1, [R5,#(byte_6E0149 - 0x6E0138)]
29A142:  MOV             R1, R5
29A144:  STRB            R2, [R5,#(byte_6E014A - 0x6E0138)]
29A146:  MOVS            R2, #4
29A148:  STRB            R3, [R5,#(byte_6E014B - 0x6E0138)]
29A14A:  VSTR            S18, [R5,#0x1C]
29A14E:  STRB.W          R0, [R5,#(byte_6E0164 - 0x6E0138)]
29A152:  LDRB.W          R0, [SP,#0x78+var_4B]
29A156:  STRB.W          R0, [R5,#(byte_6E0165 - 0x6E0138)]
29A15A:  LDRB.W          R0, [SP,#0x78+var_4A]
29A15E:  STRB.W          R0, [R5,#(byte_6E0166 - 0x6E0138)]
29A162:  LDRB.W          R0, [SP,#0x78+var_49]
29A166:  STRB.W          R0, [R5,#(byte_6E0167 - 0x6E0138)]
29A16A:  VSTR            S16, [R5,#0x3C]
29A16E:  STRD.W          R6, R6, [R5,#(dword_6E0178 - 0x6E0138)]
29A172:  STRD.W          R8, R6, [R5,#(dword_6E0184 - 0x6E0138)]
29A176:  LDRB.W          R0, [SP,#0x78+var_48]
29A17A:  STR.W           R8, [R5,#(dword_6E0170 - 0x6E0138)]
29A17E:  STRB.W          R0, [R5,#(byte_6E0180 - 0x6E0138)]
29A182:  LDRB.W          R0, [SP,#0x78+var_47]
29A186:  STRB.W          R0, [R5,#(byte_6E0181 - 0x6E0138)]
29A18A:  LDRB.W          R0, [SP,#0x78+var_46]
29A18E:  STRB.W          R0, [R5,#(byte_6E0182 - 0x6E0138)]
29A192:  LDRB.W          R0, [SP,#0x78+var_45]
29A196:  STRB.W          R0, [R5,#(byte_6E0183 - 0x6E0138)]
29A19A:  STRD.W          R6, R6, [R5,#(dword_6E0194 - 0x6E0138)]
29A19E:  STRD.W          R6, R6, [R5,#(dword_6E01A0 - 0x6E0138)]
29A1A2:  LDRB.W          R0, [SP,#0x78+var_44]
29A1A6:  VSTR            S18, [R5,#0x54]
29A1AA:  VSTR            S16, [R5,#0x58]
29A1AE:  STRB.W          R0, [R5,#(byte_6E019C - 0x6E0138)]
29A1B2:  LDRB.W          R0, [SP,#0x78+var_43]
29A1B6:  STRB.W          R0, [R5,#(byte_6E019D - 0x6E0138)]
29A1BA:  LDRB.W          R0, [SP,#0x78+var_42]
29A1BE:  STRB.W          R0, [R5,#(byte_6E019E - 0x6E0138)]
29A1C2:  LDRB.W          R0, [SP,#0x78+var_41]
29A1C6:  STRB.W          R0, [R5,#(byte_6E019F - 0x6E0138)]
29A1CA:  MOVS            R0, #4
29A1CC:  BLX             j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
29A1D0:  LDR             R0, =(_ZN14CAdjustableHUD11m_pInstanceE_ptr - 0x29A1D6)
29A1D2:  ADD             R0, PC; _ZN14CAdjustableHUD11m_pInstanceE_ptr
29A1D4:  LDR             R0, [R0]; CAdjustableHUD::m_pInstance ...
29A1D6:  LDR             R0, [R0]; CAdjustableHUD::m_pInstance
29A1D8:  CMP             R0, #0
29A1DA:  BEQ.W           loc_29A488
29A1DE:  LDR             R0, =(RsGlobal_ptr - 0x29A1E4)
29A1E0:  ADD             R0, PC; RsGlobal_ptr
29A1E2:  LDR.W           R9, [R0]; RsGlobal
29A1E6:  LDR             R0, =(_ZN14CAdjustableHUD11m_pInstanceE_ptr - 0x29A1EC)
29A1E8:  ADD             R0, PC; _ZN14CAdjustableHUD11m_pInstanceE_ptr ; this
29A1EA:  VLDR            S0, [R9,#4]
29A1EE:  VLDR            S2, [R9,#8]
29A1F2:  LDR             R4, [R0]; CAdjustableHUD::m_pInstance ...
29A1F4:  VCVT.F32.S32    S16, S0
29A1F8:  STR             R4, [SP,#0x78+var_74]
29A1FA:  VCVT.F32.S32    S18, S2
29A1FE:  BLX             j__ZN14CAdjustableHUD16GetTopAreaHeightEv; CAdjustableHUD::GetTopAreaHeight(void)
29A202:  MOV             R5, R0
29A204:  LDR             R0, [R4]; CAdjustableHUD::m_pInstance
29A206:  VLDR            S0, [R9,#8]
29A20A:  ADD.W           R1, R10, #0x44 ; 'D'
29A20E:  MOVS            R2, #0x80; unsigned __int8
29A210:  MOVS            R3, #0x80; unsigned __int8
29A212:  LDR             R0, [R0]
29A214:  VCVT.F32.S32    S20, S0
29A218:  CMP             R0, #1
29A21A:  MOV.W           R0, #0xFF
29A21E:  IT EQ
29A220:  ADDEQ.W         R1, R10, #0x40 ; '@'
29A224:  LDR.W           R11, [R1]
29A228:  MOVS            R1, #0x80; unsigned __int8
29A22A:  STR             R0, [SP,#0x78+var_78]; unsigned __int8
29A22C:  ADD             R0, SP, #0x78+var_68; this
29A22E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29A232:  LDR.W           R1, [R11]
29A236:  MOVS            R0, #1
29A238:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
29A23C:  VLDR            S0, =-427.0
29A240:  VMOV.F32        S6, #0.5
29A244:  VLDR            S2, =427.0
29A248:  MOVW            R8, #0xA3D7
29A24C:  VMUL.F32        S0, S18, S0
29A250:  VLDR            S4, =480.0
29A254:  VMUL.F32        S2, S18, S2
29A258:  LDR             R0, =(maVertices_ptr - 0x29A266)
29A25A:  MOV.W           R10, #0
29A25E:  LDRB.W          R1, [SP,#0x78+var_67]
29A262:  ADD             R0, PC; maVertices_ptr
29A264:  LDRB.W          R2, [SP,#0x78+var_66]
29A268:  LDRB.W          R3, [SP,#0x78+var_65]
29A26C:  MOV.W           R6, #0x3F800000
29A270:  LDR             R4, [R0]; maVertices
29A272:  MOVT            R8, #0x3E70
29A276:  LDRB.W          R0, [SP,#0x78+var_68]
29A27A:  VDIV.F32        S0, S0, S4
29A27E:  STRD.W          R10, R6, [R4,#(dword_6E013C - 0x6E0138)]
29A282:  STR             R6, [R4,#(dword_6E0144 - 0x6E0138)]
29A284:  STRD.W          R10, R10, [R4,#(dword_6E014C - 0x6E0138)]
29A288:  STRB            R0, [R4,#(byte_6E0148 - 0x6E0138)]
29A28A:  STRB            R1, [R4,#(byte_6E0149 - 0x6E0138)]
29A28C:  STRB            R2, [R4,#(byte_6E014A - 0x6E0138)]
29A28E:  STRB            R3, [R4,#(byte_6E014B - 0x6E0138)]
29A290:  STRD.W          R10, R6, [R4,#(dword_6E0158 - 0x6E0138)]
29A294:  STR             R6, [R4,#(dword_6E0160 - 0x6E0138)]
29A296:  STRD.W          R6, R10, [R4,#(dword_6E0168 - 0x6E0138)]
29A29A:  STRB.W          R0, [R4,#(byte_6E0164 - 0x6E0138)]
29A29E:  STRB.W          R1, [R4,#(byte_6E0165 - 0x6E0138)]
29A2A2:  STRB.W          R2, [R4,#(byte_6E0166 - 0x6E0138)]
29A2A6:  STRB.W          R3, [R4,#(byte_6E0167 - 0x6E0138)]
29A2AA:  VDIV.F32        S2, S2, S4
29A2AE:  VMUL.F32        S4, S16, S6
29A2B2:  VADD.F32        S18, S4, S0
29A2B6:  VADD.F32        S16, S4, S2
29A2BA:  VSTR            S18, [R4]
29A2BE:  VSTR            S16, [R4,#0x1C]
29A2C2:  VSTR            S18, [R4,#0x38]
29A2C6:  STRB.W          R0, [R4,#(byte_6E0180 - 0x6E0138)]
29A2CA:  STRB.W          R1, [R4,#(byte_6E0181 - 0x6E0138)]
29A2CE:  STRB.W          R2, [R4,#(byte_6E0182 - 0x6E0138)]
29A2D2:  STRB.W          R3, [R4,#(byte_6E0183 - 0x6E0138)]
29A2D6:  STRB.W          R0, [R4,#(byte_6E019C - 0x6E0138)]
29A2DA:  MOVS            R0, #4
29A2DC:  STRB.W          R1, [R4,#(byte_6E019D - 0x6E0138)]
29A2E0:  MOV             R1, R4
29A2E2:  STRB.W          R2, [R4,#(byte_6E019E - 0x6E0138)]
29A2E6:  MOVS            R2, #4
29A2E8:  STRB.W          R3, [R4,#(byte_6E019F - 0x6E0138)]
29A2EC:  STRD.W          R5, R6, [R4,#(dword_6E0174 - 0x6E0138)]
29A2F0:  STR             R6, [R4,#(dword_6E017C - 0x6E0138)]
29A2F2:  STRD.W          R10, R8, [R4,#(dword_6E0184 - 0x6E0138)]
29A2F6:  STRD.W          R6, R8, [R4,#(dword_6E01A0 - 0x6E0138)]
29A2FA:  STRD.W          R5, R6, [R4,#(dword_6E0190 - 0x6E0138)]
29A2FE:  STR             R6, [R4,#(dword_6E0198 - 0x6E0138)]
29A300:  VSTR            S16, [R4,#0x54]
29A304:  BLX             j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
29A308:  MOVS            R0, #0xFF
29A30A:  MOVS            R1, #0xFF; unsigned __int8
29A30C:  STR             R0, [SP,#0x78+var_78]; unsigned __int8
29A30E:  ADD             R0, SP, #0x78+var_6C; this
29A310:  MOVS            R2, #0xFF; unsigned __int8
29A312:  MOVS            R3, #0xFF; unsigned __int8
29A314:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29A318:  LDR.W           R1, [R11]
29A31C:  MOVS            R0, #1
29A31E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
29A322:  VLDR            S0, =-0.067
29A326:  STR             R5, [R4,#(dword_6E013C - 0x6E0138)]
29A328:  VMUL.F32        S0, S20, S0
29A32C:  STR             R5, [R4,#(dword_6E0158 - 0x6E0138)]
29A32E:  MOVW            R5, #0xD917
29A332:  LDRB.W          R0, [SP,#0x78+var_6C]
29A336:  LDRB.W          R1, [SP,#0x78+var_6B]
29A33A:  MOVT            R5, #0x3F6E
29A33E:  LDRB.W          R2, [SP,#0x78+var_6A]
29A342:  LDRB.W          R3, [SP,#0x78+var_69]
29A346:  STR.W           R8, [R4,#(dword_6E0150 - 0x6E0138)]
29A34A:  STR.W           R8, [R4,#(dword_6E016C - 0x6E0138)]
29A34E:  VADD.F32        S20, S20, S0
29A352:  VSTR            S18, [R4]
29A356:  STRD.W          R6, R6, [R4,#(dword_6E0140 - 0x6E0138)]
29A35A:  STR.W           R10, [R4,#(dword_6E014C - 0x6E0138)]
29A35E:  VSTR            S16, [R4,#0x1C]
29A362:  STRB            R0, [R4,#(byte_6E0148 - 0x6E0138)]
29A364:  STRB            R1, [R4,#(byte_6E0149 - 0x6E0138)]
29A366:  STRB            R2, [R4,#(byte_6E014A - 0x6E0138)]
29A368:  STRB            R3, [R4,#(byte_6E014B - 0x6E0138)]
29A36A:  STRD.W          R6, R6, [R4,#(dword_6E015C - 0x6E0138)]
29A36E:  STR             R6, [R4,#(dword_6E0168 - 0x6E0138)]
29A370:  STRB.W          R0, [R4,#(byte_6E0164 - 0x6E0138)]
29A374:  STRB.W          R1, [R4,#(byte_6E0165 - 0x6E0138)]
29A378:  STRB.W          R2, [R4,#(byte_6E0166 - 0x6E0138)]
29A37C:  STRB.W          R3, [R4,#(byte_6E0167 - 0x6E0138)]
29A380:  VSTR            S18, [R4,#0x38]
29A384:  VSTR            S20, [R4,#0x3C]
29A388:  STRD.W          R6, R6, [R4,#(dword_6E0178 - 0x6E0138)]
29A38C:  STRD.W          R10, R5, [R4,#(dword_6E0184 - 0x6E0138)]
29A390:  STRB.W          R0, [R4,#(byte_6E0180 - 0x6E0138)]
29A394:  STRB.W          R1, [R4,#(byte_6E0181 - 0x6E0138)]
29A398:  STRB.W          R2, [R4,#(byte_6E0182 - 0x6E0138)]
29A39C:  STRB.W          R3, [R4,#(byte_6E0183 - 0x6E0138)]
29A3A0:  STRB.W          R0, [R4,#(byte_6E019C - 0x6E0138)]
29A3A4:  MOVS            R0, #4
29A3A6:  STRB.W          R1, [R4,#(byte_6E019D - 0x6E0138)]
29A3AA:  MOV             R1, R4
29A3AC:  STRB.W          R2, [R4,#(byte_6E019E - 0x6E0138)]
29A3B0:  MOVS            R2, #4
29A3B2:  STRB.W          R3, [R4,#(byte_6E019F - 0x6E0138)]
29A3B6:  STRD.W          R6, R6, [R4,#(dword_6E0194 - 0x6E0138)]
29A3BA:  STRD.W          R6, R5, [R4,#(dword_6E01A0 - 0x6E0138)]
29A3BE:  VSTR            S16, [R4,#0x54]
29A3C2:  VSTR            S20, [R4,#0x58]
29A3C6:  BLX             j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
29A3CA:  MOVS            R0, #0xFF
29A3CC:  MOVS            R1, #0x80; unsigned __int8
29A3CE:  STR             R0, [SP,#0x78+var_78]; unsigned __int8
29A3D0:  ADD             R0, SP, #0x78+var_70; this
29A3D2:  MOVS            R2, #0x80; unsigned __int8
29A3D4:  MOVS            R3, #0x80; unsigned __int8
29A3D6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29A3DA:  LDR.W           R1, [R11]
29A3DE:  MOVS            R0, #1
29A3E0:  VLDR            S0, [R9,#8]
29A3E4:  VCVT.F32.S32    S22, S0
29A3E8:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
29A3EC:  LDRB.W          R0, [SP,#0x78+var_70]
29A3F0:  LDRB.W          R1, [SP,#0x78+var_6F]
29A3F4:  LDRB.W          R2, [SP,#0x78+var_6E]
29A3F8:  LDRB.W          R3, [SP,#0x78+var_6D]
29A3FC:  STR             R5, [R4,#(dword_6E016C - 0x6E0138)]
29A3FE:  VSTR            S18, [R4]
29A402:  VSTR            S20, [R4,#4]
29A406:  STRD.W          R6, R6, [R4,#(dword_6E0140 - 0x6E0138)]
29A40A:  STRD.W          R10, R5, [R4,#(dword_6E014C - 0x6E0138)]
29A40E:  STRB            R0, [R4,#(byte_6E0148 - 0x6E0138)]
29A410:  STRB            R1, [R4,#(byte_6E0149 - 0x6E0138)]
29A412:  STRB            R2, [R4,#(byte_6E014A - 0x6E0138)]
29A414:  STRB            R3, [R4,#(byte_6E014B - 0x6E0138)]
29A416:  VSTR            S16, [R4,#0x1C]
29A41A:  VSTR            S20, [R4,#0x20]
29A41E:  STRD.W          R6, R6, [R4,#(dword_6E015C - 0x6E0138)]
29A422:  STR             R6, [R4,#(dword_6E0168 - 0x6E0138)]
29A424:  STRB.W          R0, [R4,#(byte_6E0164 - 0x6E0138)]
29A428:  STRB.W          R1, [R4,#(byte_6E0165 - 0x6E0138)]
29A42C:  STRB.W          R2, [R4,#(byte_6E0166 - 0x6E0138)]
29A430:  STRB.W          R3, [R4,#(byte_6E0167 - 0x6E0138)]
29A434:  VSTR            S18, [R4,#0x38]
29A438:  STRD.W          R6, R6, [R4,#(dword_6E0178 - 0x6E0138)]
29A43C:  STRD.W          R10, R6, [R4,#(dword_6E0184 - 0x6E0138)]
29A440:  STRB.W          R0, [R4,#(byte_6E0180 - 0x6E0138)]
29A444:  STRB.W          R1, [R4,#(byte_6E0181 - 0x6E0138)]
29A448:  STRB.W          R2, [R4,#(byte_6E0182 - 0x6E0138)]
29A44C:  STRB.W          R3, [R4,#(byte_6E0183 - 0x6E0138)]
29A450:  VSTR            S22, [R4,#0x3C]
29A454:  STRD.W          R6, R6, [R4,#(dword_6E0194 - 0x6E0138)]
29A458:  STRD.W          R6, R6, [R4,#(dword_6E01A0 - 0x6E0138)]
29A45C:  STRB.W          R0, [R4,#(byte_6E019C - 0x6E0138)]
29A460:  MOVS            R0, #4
29A462:  STRB.W          R1, [R4,#(byte_6E019D - 0x6E0138)]
29A466:  MOV             R1, R4
29A468:  STRB.W          R2, [R4,#(byte_6E019E - 0x6E0138)]
29A46C:  MOVS            R2, #4
29A46E:  STRB.W          R3, [R4,#(byte_6E019F - 0x6E0138)]
29A472:  VSTR            S16, [R4,#0x54]
29A476:  VSTR            S22, [R4,#0x58]
29A47A:  BLX             j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
29A47E:  LDR             R0, [SP,#0x78+var_74]
29A480:  LDR             R0, [R0]; this
29A482:  BLX             j__ZN14CAdjustableHUD4DrawEv; CAdjustableHUD::Draw(void)
29A486:  B               loc_29A4BA
29A488:  LDR.W           R0, [R10,#0x24]
29A48C:  CBZ             R0, loc_29A4B2
29A48E:  LDR.W           R2, [R10,#0x28]
29A492:  SUBS            R1, R0, #1
29A494:  LDRB.W          R3, [R10,#0x6D]
29A498:  LDR.W           R0, [R2,R1,LSL#2]
29A49C:  CBZ             R3, loc_29A4AC
29A49E:  VLDR            S0, [R0,#8]
29A4A2:  VCMPE.F32       S0, #0.0
29A4A6:  VMRS            APSR_nzcv, FPSCR
29A4AA:  BLE             loc_29A4B2
29A4AC:  LDR             R2, [R0]
29A4AE:  LDR             R2, [R2,#0xC]
29A4B0:  BLX             R2
29A4B2:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
29A4B6:  BLX             j__ZN7CWidget17DrawTitleSafeAreaEv; CWidget::DrawTitleSafeArea(void)
29A4BA:  ADD             SP, SP, #0x38 ; '8'
29A4BC:  VPOP            {D8-D11}
29A4C0:  ADD             SP, SP, #4
29A4C2:  POP.W           {R8-R11}
29A4C6:  POP             {R4-R7,PC}
