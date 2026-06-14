; =========================================================
; Game Engine Function: _Z14Menu_MapRenderv
; Address            : 0x2AAC90 - 0x2ABBFE
; =========================================================

2AAC90:  PUSH            {R4-R7,LR}
2AAC92:  ADD             R7, SP, #0xC
2AAC94:  PUSH.W          {R8-R11}
2AAC98:  SUB             SP, SP, #4
2AAC9A:  VPUSH           {D8-D15}
2AAC9E:  SUB             SP, SP, #0x68
2AACA0:  MOV             R4, SP
2AACA2:  BFC.W           R4, #0, #4
2AACA6:  MOV             SP, R4
2AACA8:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AACB0)
2AACAC:  ADD             R0, PC; gMobileMenu_ptr
2AACAE:  LDR             R4, [R0]; gMobileMenu
2AACB0:  MOVS            R0, #(stderr+1); this
2AACB2:  STRB.W          R0, [R4,#(byte_6E00D8 - 0x6E006C)]
2AACB6:  BLX             j__ZN6CRadar15InitFrontEndMapEv; CRadar::InitFrontEndMap(void)
2AACBA:  VMOV.F32        S0, #5.0
2AACBE:  VLDR            S16, [R4,#0x58]
2AACC2:  LDR.W           R0, =(RsGlobal_ptr - 0x2AACD6)
2AACC6:  VMOV.F32        S22, #6.0
2AACCA:  LDR.W           R1, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AACD8)
2AACCE:  VMOV.F32        S20, S16
2AACD2:  ADD             R0, PC; RsGlobal_ptr
2AACD4:  ADD             R1, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2AACD6:  LDR             R0, [R0]; RsGlobal
2AACD8:  LDR             R1, [R1]; CTouchInterface::m_pWidgets ...
2AACDA:  VDIV.F32        S18, S16, S0
2AACDE:  LDRD.W          R4, R5, [R0,#(dword_9FC900 - 0x9FC8FC)]
2AACE2:  LDR.W           R0, [R1,#(dword_6F39EC - 0x6F3794)]
2AACE6:  MOV             R1, R5
2AACE8:  MOV             R2, R4
2AACEA:  CBZ             R0, loc_2AAD28
2AACEC:  VMOV            S0, R4
2AACF0:  MOVS            R1, #0
2AACF2:  VMOV            S2, R5
2AACF6:  VCVT.F32.S32    S0, S0
2AACFA:  VCVT.F32.S32    S2, S2
2AACFE:  STR             R1, [SP,#0xC8+var_6C]
2AAD00:  STR             R1, [SP,#0xC8+var_78]
2AAD02:  ADD             R1, SP, #0xC8+var_78
2AAD04:  VSTR            S0, [SP,#0xC8+var_70]
2AAD08:  VSTR            S2, [SP,#0xC8+var_74]
2AAD0C:  BLX             j__ZN7CWidget13SetScreenRectERK5CRect; CWidget::SetScreenRect(CRect const&)
2AAD10:  LDR.W           R0, =(RsGlobal_ptr - 0x2AAD1C)
2AAD14:  LDR.W           R1, =(gMobileMenu_ptr - 0x2AAD1E)
2AAD18:  ADD             R0, PC; RsGlobal_ptr
2AAD1A:  ADD             R1, PC; gMobileMenu_ptr
2AAD1C:  LDR             R0, [R0]; RsGlobal
2AAD1E:  LDR             R3, [R1]; gMobileMenu
2AAD20:  LDRD.W          R2, R1, [R0,#(dword_9FC900 - 0x9FC8FC)]
2AAD24:  VLDR            S20, [R3,#0x58]
2AAD28:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AAD3C)
2AAD2C:  VMOV            S0, R2
2AAD30:  VMOV            S2, R1
2AAD34:  STRD.W          R5, R4, [SP,#0xC8+var_A8]
2AAD38:  ADD             R0, PC; gMobileMenu_ptr
2AAD3A:  VCVT.F32.S32    S0, S0
2AAD3E:  VCVT.F32.S32    S26, S2
2AAD42:  ADD             R4, SP, #0xC8+var_7C
2AAD44:  LDR             R0, [R0]; gMobileMenu
2AAD46:  VDIV.F32        S22, S16, S22
2AAD4A:  MOV.W           R10, #0
2AAD4E:  MOVS            R1, #0; unsigned __int8
2AAD50:  MOVS            R2, #0; unsigned __int8
2AAD52:  MOVS            R3, #0; unsigned __int8
2AAD54:  STR.W           R10, [SP,#0xC8+var_6C]
2AAD58:  STR.W           R10, [SP,#0xC8+var_78]
2AAD5C:  VLDR            S24, [R0,#0x5C]
2AAD60:  VLDR            S16, [R0,#0x60]
2AAD64:  MOVS            R0, #0xFF
2AAD66:  STR             R0, [SP,#0xC8+var_C8]; unsigned __int8
2AAD68:  MOV             R0, R4; this
2AAD6A:  VSTR            S0, [SP,#0xC8+var_70]
2AAD6E:  VSTR            S26, [SP,#0xC8+var_74]
2AAD72:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AAD76:  ADD.W           R9, SP, #0xC8+var_78
2AAD7A:  MOV             R1, R4
2AAD7C:  MOV             R0, R9
2AAD7E:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
2AAD82:  MOVS            R0, #0xA
2AAD84:  MOVS            R1, #2
2AAD86:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
2AAD8A:  MOVS            R0, #0xB
2AAD8C:  MOVS            R1, #2
2AAD8E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
2AAD92:  MOVW            R0, #0xBE2; unsigned int
2AAD96:  BLX             j__Z12emu_glEnablej; emu_glEnable(uint)
2AAD9A:  VSUB.F32        S0, S16, S20
2AAD9E:  VLDR            S16, =448.0
2AADA2:  VSUB.F32        S2, S24, S20
2AADA6:  LDR.W           R0, =(_ZN9CTheZones12ZonesVisitedE_ptr - 0x2AADB4)
2AADAA:  VDIV.F32        S24, S18, S16
2AADAE:  ADD             R6, SP, #0xC8+var_80
2AADB0:  ADD             R0, PC; _ZN9CTheZones12ZonesVisitedE_ptr
2AADB2:  MOVS            R5, #0xFF
2AADB4:  LDR.W           R8, [R0]; CTheZones::ZonesVisited ...
2AADB8:  LDR.W           R0, =(RsGlobal_ptr - 0x2AADC0)
2AADBC:  ADD             R0, PC; RsGlobal_ptr
2AADBE:  LDR             R0, [R0]; RsGlobal
2AADC0:  STR             R0, [SP,#0xC8+var_9C]
2AADC2:  VDIV.F32        S0, S0, S16
2AADC6:  VDIV.F32        S2, S2, S16
2AADCA:  VMUL.F32        S18, S0, S26
2AADCE:  VMUL.F32        S20, S2, S26
2AADD2:  VMOV.F32        S26, #0.125
2AADD6:  B               loc_2AADE0
2AADD8:  DCFS 448.0
2AADDC:  DCFS 0.0
2AADE0:  VMOV            S0, R10
2AADE4:  ADD.W           R10, R10, #1
2AADE8:  VCVT.F32.S32    S28, S0
2AADEC:  STR.W           R10, [SP,#0xC8+var_A0]
2AADF0:  VMOV            S0, R10
2AADF4:  MOV.W           R10, #0
2AADF8:  VCVT.F32.S32    S30, S0
2AADFC:  MOV             R0, R4; this
2AADFE:  MOVS            R1, #0xFF; unsigned __int8
2AAE00:  MOVS            R2, #0xFF; unsigned __int8
2AAE02:  MOVS            R3, #0xFF; unsigned __int8
2AAE04:  STR             R5, [SP,#0xC8+var_C8]; unsigned __int8
2AAE06:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AAE0A:  MOV             R0, R6; this
2AAE0C:  MOVS            R1, #0; unsigned __int8
2AAE0E:  MOVS            R2, #0; unsigned __int8
2AAE10:  MOVS            R3, #0; unsigned __int8
2AAE12:  STR             R5, [SP,#0xC8+var_C8]; unsigned __int8
2AAE14:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AAE18:  LDR             R0, [SP,#0xC8+var_9C]
2AAE1A:  ADD.W           R11, R10, #1
2AAE1E:  VMOV            S4, R10
2AAE22:  VMOV            S2, R11
2AAE26:  VLDR            S0, [R0,#8]
2AAE2A:  VCVT.F32.S32    S0, S0
2AAE2E:  VCVT.F32.S32    S2, S2
2AAE32:  VCVT.F32.S32    S4, S4
2AAE36:  LDRB.W          R0, [R8,R10]
2AAE3A:  CMP             R0, #2
2AAE3C:  BEQ.W           loc_2AAF80
2AAE40:  VMUL.F32        S23, S24, S0
2AAE44:  MOV             R0, R9
2AAE46:  MOV             R1, R4
2AAE48:  VMUL.F32        S0, S23, S2
2AAE4C:  VMUL.F32        S2, S23, S4
2AAE50:  VMUL.F32        S4, S23, S30
2AAE54:  VMUL.F32        S6, S23, S28
2AAE58:  VADD.F32        S17, S18, S0
2AAE5C:  VADD.F32        S29, S18, S2
2AAE60:  VADD.F32        S19, S20, S4
2AAE64:  VADD.F32        S21, S20, S6
2AAE68:  VSTR            S29, [SP,#0xC8+var_6C]
2AAE6C:  VSTR            S21, [SP,#0xC8+var_78]
2AAE70:  VSTR            S19, [SP,#0xC8+var_70]
2AAE74:  VSTR            S17, [SP,#0xC8+var_74]
2AAE78:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
2AAE7C:  VMUL.F32        S25, S23, S26
2AAE80:  MOV             R0, R9
2AAE82:  MOV             R1, R6
2AAE84:  MOV             R2, R4
2AAE86:  MOV             R3, R6
2AAE88:  VSTR            S21, [SP,#0xC8+var_70]
2AAE8C:  VSTR            S29, [SP,#0xC8+var_74]
2AAE90:  STR             R6, [SP,#0xC8+var_C8]
2AAE92:  VSUB.F32        S31, S29, S25
2AAE96:  VSUB.F32        S23, S21, S25
2AAE9A:  VSTR            S31, [SP,#0xC8+var_6C]
2AAE9E:  VSTR            S23, [SP,#0xC8+var_78]
2AAEA2:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
2AAEA6:  MOV             R0, R9
2AAEA8:  MOV             R1, R4
2AAEAA:  MOV             R2, R4
2AAEAC:  MOV             R3, R6
2AAEAE:  VSTR            S31, [SP,#0xC8+var_6C]
2AAEB2:  VSTR            S21, [SP,#0xC8+var_78]
2AAEB6:  VSTR            S19, [SP,#0xC8+var_70]
2AAEBA:  VSTR            S29, [SP,#0xC8+var_74]
2AAEBE:  STR             R6, [SP,#0xC8+var_C8]
2AAEC0:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
2AAEC4:  VADD.F32        S27, S25, S19
2AAEC8:  MOV             R0, R9
2AAECA:  MOV             R1, R6
2AAECC:  MOV             R2, R4
2AAECE:  MOV             R3, R6
2AAED0:  VSTR            S31, [SP,#0xC8+var_6C]
2AAED4:  STR             R6, [SP,#0xC8+var_C8]
2AAED6:  VSTR            S27, [SP,#0xC8+var_78]
2AAEDA:  VSTR            S19, [SP,#0xC8+var_70]
2AAEDE:  VSTR            S29, [SP,#0xC8+var_74]
2AAEE2:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
2AAEE6:  MOV             R0, R9
2AAEE8:  MOV             R1, R6
2AAEEA:  MOV             R2, R4
2AAEEC:  MOV             R3, R6
2AAEEE:  VSTR            S29, [SP,#0xC8+var_6C]
2AAEF2:  VSTR            S23, [SP,#0xC8+var_78]
2AAEF6:  VSTR            S21, [SP,#0xC8+var_70]
2AAEFA:  VSTR            S17, [SP,#0xC8+var_74]
2AAEFE:  STR             R4, [SP,#0xC8+var_C8]
2AAF00:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
2AAF04:  MOV             R0, R9
2AAF06:  MOV             R1, R4
2AAF08:  MOV             R2, R6
2AAF0A:  MOV             R3, R4
2AAF0C:  VSTR            S29, [SP,#0xC8+var_6C]
2AAF10:  VSTR            S19, [SP,#0xC8+var_78]
2AAF14:  VSTR            S27, [SP,#0xC8+var_70]
2AAF18:  VSTR            S17, [SP,#0xC8+var_74]
2AAF1C:  STR             R6, [SP,#0xC8+var_C8]
2AAF1E:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
2AAF22:  VADD.F32        S25, S25, S17
2AAF26:  MOV             R0, R9
2AAF28:  MOV             R1, R6
2AAF2A:  MOV             R2, R6
2AAF2C:  MOV             R3, R4
2AAF2E:  VSTR            S17, [SP,#0xC8+var_6C]
2AAF32:  VSTR            S21, [SP,#0xC8+var_78]
2AAF36:  VSTR            S23, [SP,#0xC8+var_70]
2AAF3A:  STR             R6, [SP,#0xC8+var_C8]
2AAF3C:  VSTR            S25, [SP,#0xC8+var_74]
2AAF40:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
2AAF44:  MOV             R0, R9
2AAF46:  MOV             R1, R6
2AAF48:  MOV             R2, R6
2AAF4A:  MOV             R3, R4
2AAF4C:  VSTR            S17, [SP,#0xC8+var_6C]
2AAF50:  VSTR            S21, [SP,#0xC8+var_78]
2AAF54:  VSTR            S19, [SP,#0xC8+var_70]
2AAF58:  VSTR            S25, [SP,#0xC8+var_74]
2AAF5C:  STR             R4, [SP,#0xC8+var_C8]
2AAF5E:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
2AAF62:  MOV             R0, R9
2AAF64:  MOV             R1, R6
2AAF66:  MOV             R2, R6
2AAF68:  MOV             R3, R4
2AAF6A:  VSTR            S17, [SP,#0xC8+var_6C]
2AAF6E:  VSTR            S19, [SP,#0xC8+var_78]
2AAF72:  VSTR            S27, [SP,#0xC8+var_70]
2AAF76:  VSTR            S25, [SP,#0xC8+var_74]
2AAF7A:  STR             R6, [SP,#0xC8+var_C8]
2AAF7C:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
2AAF80:  CMP.W           R11, #0xA
2AAF84:  MOV             R10, R11
2AAF86:  BNE.W           loc_2AADFC
2AAF8A:  LDR.W           R10, [SP,#0xC8+var_A0]
2AAF8E:  ADD.W           R8, R8, #0xA
2AAF92:  CMP.W           R10, #0xA
2AAF96:  BNE.W           loc_2AADE0
2AAF9A:  MOVS            R0, #0xA
2AAF9C:  MOVS            R1, #9
2AAF9E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
2AAFA2:  MOVS            R0, #0xB
2AAFA4:  MOVS            R1, #1
2AAFA6:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
2AAFAA:  LDR.W           R0, =(RsGlobal_ptr - 0x2AAFBC)
2AAFAE:  ADD             R5, SP, #0xC8+var_7C
2AAFB0:  MOV.W           R9, #0
2AAFB4:  MOV.W           R8, #0xFF
2AAFB8:  ADD             R0, PC; RsGlobal_ptr
2AAFBA:  MOVS            R1, #0x60 ; '`'; unsigned __int8
2AAFBC:  MOVS            R2, #0x60 ; '`'; unsigned __int8
2AAFBE:  MOVS            R3, #0x60 ; '`'; unsigned __int8
2AAFC0:  LDR             R6, [R0]; RsGlobal
2AAFC2:  MOV             R0, R5; this
2AAFC4:  VLDR            S0, [R6,#4]
2AAFC8:  VLDR            S2, [R6,#8]
2AAFCC:  VCVT.F32.S32    S0, S0
2AAFD0:  VCVT.F32.S32    S2, S2
2AAFD4:  STR.W           R9, [SP,#0xC8+var_78]
2AAFD8:  STR.W           R9, [SP,#0xC8+var_6C]
2AAFDC:  STR.W           R8, [SP,#0xC8+var_C8]; unsigned __int8
2AAFE0:  VSTR            S0, [SP,#0xC8+var_70]
2AAFE4:  VSTR            S2, [SP,#0xC8+var_74]
2AAFE8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AAFEC:  ADD             R0, SP, #0xC8+var_78
2AAFEE:  MOV             R1, R5
2AAFF0:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
2AAFF4:  MOVS            R0, #0xA
2AAFF6:  MOVS            R1, #2
2AAFF8:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
2AAFFC:  MOVS            R0, #0xB
2AAFFE:  MOVS            R1, #2
2AB000:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
2AB004:  VLDR            S0, [R6,#4]
2AB008:  ADD             R5, SP, #0xC8+var_7C
2AB00A:  VLDR            S2, [R6,#8]
2AB00E:  MOVS            R1, #0xA0; unsigned __int8
2AB010:  VCVT.F32.S32    S0, S0
2AB014:  MOV             R0, R5; this
2AB016:  VCVT.F32.S32    S2, S2
2AB01A:  MOVS            R2, #0xA0; unsigned __int8
2AB01C:  MOVS            R3, #0xA0; unsigned __int8
2AB01E:  STR.W           R9, [SP,#0xC8+var_78]
2AB022:  STR.W           R9, [SP,#0xC8+var_6C]
2AB026:  STR.W           R8, [SP,#0xC8+var_C8]; unsigned __int8
2AB02A:  VSTR            S0, [SP,#0xC8+var_70]
2AB02E:  VSTR            S2, [SP,#0xC8+var_74]
2AB032:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AB036:  ADD             R0, SP, #0xC8+var_78
2AB038:  MOV             R1, R5
2AB03A:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
2AB03E:  MOVS            R0, #0xA
2AB040:  MOVS            R1, #9
2AB042:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
2AB046:  MOVS            R0, #0xB
2AB048:  MOVS            R1, #1
2AB04A:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
2AB04E:  VDIV.F32        S26, S22, S16
2AB052:  ADD             R5, SP, #0xC8+var_7C
2AB054:  MOVS            R1, #0x6F ; 'o'; unsigned __int8
2AB056:  MOVS            R2, #0x89; unsigned __int8
2AB058:  MOV             R0, R5; this
2AB05A:  MOVS            R3, #0xAA; unsigned __int8
2AB05C:  VLDR            S0, [R6,#8]
2AB060:  VMOV.F32        S22, #12.0
2AB064:  VCVT.F32.S32    S0, S0
2AB068:  STR.W           R9, [SP,#0xC8+var_78]
2AB06C:  VSTR            S18, [SP,#0xC8+var_6C]
2AB070:  VSTR            S20, [SP,#0xC8+var_70]
2AB074:  STR.W           R8, [SP,#0xC8+var_C8]; unsigned __int8
2AB078:  VMUL.F32        S0, S26, S0
2AB07C:  VMUL.F32        S0, S0, S22
2AB080:  VADD.F32        S0, S18, S0
2AB084:  VSTR            S0, [SP,#0xC8+var_74]
2AB088:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AB08C:  ADD             R0, SP, #0xC8+var_78
2AB08E:  MOV             R1, R5
2AB090:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
2AB094:  VLDR            S0, [R6,#8]
2AB098:  VMOV.F32        S24, #24.0
2AB09C:  ADD             R5, SP, #0xC8+var_7C
2AB09E:  MOVS            R1, #0x6F ; 'o'; unsigned __int8
2AB0A0:  VCVT.F32.S32    S0, S0
2AB0A4:  MOVS            R2, #0x89; unsigned __int8
2AB0A6:  MOV             R0, R5; this
2AB0A8:  MOVS            R3, #0xAA; unsigned __int8
2AB0AA:  VSTR            S18, [SP,#0xC8+var_6C]
2AB0AE:  STR.W           R8, [SP,#0xC8+var_C8]; unsigned __int8
2AB0B2:  VMUL.F32        S0, S26, S0
2AB0B6:  VMUL.F32        S2, S0, S22
2AB0BA:  VMUL.F32        S0, S0, S24
2AB0BE:  VADD.F32        S4, S20, S2
2AB0C2:  VADD.F32        S0, S20, S0
2AB0C6:  VADD.F32        S2, S18, S2
2AB0CA:  VSTR            S4, [SP,#0xC8+var_78]
2AB0CE:  VSTR            S0, [SP,#0xC8+var_70]
2AB0D2:  VSTR            S2, [SP,#0xC8+var_74]
2AB0D6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AB0DA:  ADD             R0, SP, #0xC8+var_78
2AB0DC:  MOV             R1, R5
2AB0DE:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
2AB0E2:  VLDR            S0, [R6,#8]
2AB0E6:  ADD             R5, SP, #0xC8+var_7C
2AB0E8:  MOVS            R1, #0x6F ; 'o'; unsigned __int8
2AB0EA:  MOVS            R2, #0x89; unsigned __int8
2AB0EC:  VCVT.F32.S32    S0, S0
2AB0F0:  MOV             R0, R5; this
2AB0F2:  MOVS            R3, #0xAA; unsigned __int8
2AB0F4:  STR.W           R9, [SP,#0xC8+var_78]
2AB0F8:  STR.W           R9, [SP,#0xC8+var_6C]
2AB0FC:  VSTR            S18, [SP,#0xC8+var_74]
2AB100:  STR.W           R8, [SP,#0xC8+var_C8]; unsigned __int8
2AB104:  VMUL.F32        S0, S26, S0
2AB108:  VMUL.F32        S0, S0, S24
2AB10C:  VADD.F32        S0, S20, S0
2AB110:  VSTR            S0, [SP,#0xC8+var_70]
2AB114:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AB118:  ADD             R0, SP, #0xC8+var_78
2AB11A:  MOV             R1, R5
2AB11C:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
2AB120:  VLDR            S0, [R6,#8]
2AB124:  ADD             R5, SP, #0xC8+var_7C
2AB126:  MOVS            R1, #0x6F ; 'o'; unsigned __int8
2AB128:  MOVS            R2, #0x89; unsigned __int8
2AB12A:  VCVT.F32.S32    S0, S0
2AB12E:  MOV             R0, R5; this
2AB130:  MOVS            R3, #0xAA; unsigned __int8
2AB132:  STR.W           R9, [SP,#0xC8+var_78]
2AB136:  STR.W           R8, [SP,#0xC8+var_C8]; int
2AB13A:  VMUL.F32        S0, S26, S0
2AB13E:  VMUL.F32        S2, S0, S22
2AB142:  VMUL.F32        S0, S0, S24
2AB146:  VADD.F32        S2, S18, S2
2AB14A:  VADD.F32        S4, S20, S0
2AB14E:  VADD.F32        S0, S18, S0
2AB152:  VSTR            S2, [SP,#0xC8+var_6C]
2AB156:  VSTR            S4, [SP,#0xC8+var_70]
2AB15A:  VSTR            S0, [SP,#0xC8+var_74]
2AB15E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AB162:  ADD             R0, SP, #0xC8+var_78
2AB164:  MOV             R1, R5
2AB166:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
2AB16A:  LDR             R0, [SP,#0xC8+var_A8]
2AB16C:  MOV.W           R8, #0x3F800000
2AB170:  VLDR            S28, =0.0
2AB174:  VMOV            S0, R0
2AB178:  VCVT.F32.S32    S24, S0
2AB17C:  LDR             R0, [SP,#0xC8+var_A4]
2AB17E:  VMOV            S0, R0
2AB182:  LDR.W           R0, =(RsGlobal_ptr - 0x2AB18E)
2AB186:  VCVT.F32.S32    S22, S0
2AB18A:  ADD             R0, PC; RsGlobal_ptr
2AB18C:  LDR             R6, [R0]; RsGlobal
2AB18E:  VMOV            S0, R9
2AB192:  ADD.W           R4, R9, #1
2AB196:  MOVS            R5, #0
2AB198:  VCVT.F32.S32    S30, S0
2AB19C:  VMOV            S0, R4
2AB1A0:  VCVT.F32.S32    S17, S0
2AB1A4:  VLDR            S0, [R6,#8]
2AB1A8:  VCVT.F32.S32    S0, S0
2AB1AC:  VMUL.F32        S4, S26, S0
2AB1B0:  VMUL.F32        S0, S4, S30
2AB1B4:  VSUB.F32        S6, S28, S4
2AB1B8:  VADD.F32        S0, S20, S0
2AB1BC:  VCMPE.F32       S0, S6
2AB1C0:  VMRS            APSR_nzcv, FPSCR
2AB1C4:  BLE             loc_2AB232
2AB1C6:  VMOV            S2, R5
2AB1CA:  VCVT.F32.S32    S2, S2
2AB1CE:  VMUL.F32        S2, S4, S2
2AB1D2:  VADD.F32        S2, S18, S2
2AB1D6:  VCMPE.F32       S2, S6
2AB1DA:  VMRS            APSR_nzcv, FPSCR
2AB1DE:  BLE             loc_2AB232
2AB1E0:  VMUL.F32        S6, S4, S17
2AB1E4:  VADD.F32        S8, S4, S22
2AB1E8:  VADD.F32        S6, S20, S6
2AB1EC:  VCMPE.F32       S6, S8
2AB1F0:  VMRS            APSR_nzcv, FPSCR
2AB1F4:  BGE             loc_2AB232
2AB1F6:  ADDS            R0, R5, #1
2AB1F8:  VADD.F32        S10, S4, S24
2AB1FC:  VMOV            S8, R0
2AB200:  VCVT.F32.S32    S8, S8
2AB204:  VMUL.F32        S8, S4, S8
2AB208:  VADD.F32        S4, S18, S8
2AB20C:  VCMPE.F32       S4, S10
2AB210:  VMRS            APSR_nzcv, FPSCR
2AB214:  BGE             loc_2AB232
2AB216:  VMOV            R2, S0; int
2AB21A:  MOV             R0, R9; int
2AB21C:  VMOV            R3, S4; int
2AB220:  MOV             R1, R5; int
2AB222:  STR.W           R8, [SP,#0xC8+var_C0]; float
2AB226:  VSTR            S6, [SP,#0xC8+var_C8]
2AB22A:  VSTR            S2, [SP,#0xC8+var_C4]
2AB22E:  BLX             j__ZN6CRadar19DrawRadarSectionMapEii5CRectf; CRadar::DrawRadarSectionMap(int,int,CRect,float)
2AB232:  ADDS            R5, #1
2AB234:  CMP             R5, #0xC
2AB236:  BNE             loc_2AB1A4
2AB238:  CMP             R4, #0xC
2AB23A:  MOV             R9, R4
2AB23C:  BNE             loc_2AB18E
2AB23E:  MOVS            R0, #0xA
2AB240:  MOVS            R1, #5
2AB242:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
2AB246:  MOVS            R0, #0xB
2AB248:  MOVS            R1, #6
2AB24A:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
2AB24E:  MOVS            R0, #(stderr+1); this
2AB250:  BLX             j__ZN6CRadar20DrawRadarGangOverlayEb; CRadar::DrawRadarGangOverlay(bool)
2AB254:  LDR.W           R0, =(_ZN11CTheScripts23HideAllFrontEndMapBlipsE_ptr - 0x2AB260)
2AB258:  LDR.W           R1, =(_ZN11CTheScripts18bPlayerIsOffTheMapE_ptr - 0x2AB262)
2AB25C:  ADD             R0, PC; _ZN11CTheScripts23HideAllFrontEndMapBlipsE_ptr
2AB25E:  ADD             R1, PC; _ZN11CTheScripts18bPlayerIsOffTheMapE_ptr
2AB260:  LDR             R0, [R0]; CTheScripts::HideAllFrontEndMapBlips ...
2AB262:  LDR             R1, [R1]; CTheScripts::bPlayerIsOffTheMap ...
2AB264:  LDRB            R0, [R0]; CTheScripts::HideAllFrontEndMapBlips
2AB266:  LDRB            R1, [R1]; CTheScripts::bPlayerIsOffTheMap
2AB268:  ORRS            R0, R1
2AB26A:  LSLS            R0, R0, #0x18
2AB26C:  BNE             loc_2AB284
2AB26E:  LDR.W           R0, =(mapScroll_ptr - 0x2AB27A)
2AB272:  MOV.W           R1, #0x3F800000; y
2AB276:  ADD             R0, PC; mapScroll_ptr
2AB278:  LDR             R0, [R0]; mapScroll
2AB27A:  LDR             R0, [R0]; x
2AB27C:  BLX             fmodf
2AB280:  BLX             j__ZN6CRadar9DrawBlipsEf; CRadar::DrawBlips(float)
2AB284:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AB290)
2AB288:  LDR.W           R3, =(_ZN12CUserDisplay9PlaceNameE_ptr - 0x2AB292)
2AB28C:  ADD             R0, PC; gMobileMenu_ptr
2AB28E:  ADD             R3, PC; _ZN12CUserDisplay9PlaceNameE_ptr
2AB290:  LDR             R5, [R0]; gMobileMenu
2AB292:  LDR             R0, [R3]; CUserDisplay::PlaceName ...
2AB294:  LDRD.W          R1, R2, [R5,#(dword_6E00D0 - 0x6E006C)]
2AB298:  NOP
2AB29A:  MOVS            R0, #0
2AB29C:  MOV             R9, R0
2AB29E:  LDR.W           R0, =(RsGlobal_ptr - 0x2AB2AC)
2AB2A2:  MOVS            R6, #0
2AB2A4:  VLDR            S4, =0.7
2AB2A8:  ADD             R0, PC; RsGlobal_ptr
2AB2AA:  VLDR            S20, =255.0
2AB2AE:  ADD.W           R8, SP, #0xC8+var_7C
2AB2B2:  MOVS            R1, #0; unsigned __int8
2AB2B4:  LDR             R0, [R0]; RsGlobal
2AB2B6:  MOVS            R2, #0; unsigned __int8
2AB2B8:  MOVS            R3, #0; unsigned __int8
2AB2BA:  VLDR            S0, [R0,#4]
2AB2BE:  VLDR            S2, [R0,#8]
2AB2C2:  LDR.W           R0, =(mapModeOpacity_ptr - 0x2AB2D2)
2AB2C6:  VCVT.F32.S32    S2, S2
2AB2CA:  VCVT.F32.S32    S0, S0
2AB2CE:  ADD             R0, PC; mapModeOpacity_ptr
2AB2D0:  STR             R6, [SP,#0xC8+var_78]
2AB2D2:  LDR             R4, [R0]; mapModeOpacity
2AB2D4:  VMUL.F32        S4, S2, S4
2AB2D8:  VSTR            S0, [SP,#0xC8+var_70]
2AB2DC:  VLDR            S0, [R4]
2AB2E0:  VSTR            S2, [SP,#0xC8+var_74]
2AB2E4:  VMUL.F32        S0, S0, S20
2AB2E8:  VSTR            S4, [SP,#0xC8+var_6C]
2AB2EC:  VCVT.U32.F32    S0, S0
2AB2F0:  VMOV            R0, S0
2AB2F4:  STR             R0, [SP,#0xC8+var_C8]; unsigned __int8
2AB2F6:  MOV             R0, R8; this
2AB2F8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AB2FC:  VLDR            S0, [R4]
2AB300:  ADD.W           R10, SP, #0xC8+var_80
2AB304:  MOVS            R1, #0; unsigned __int8
2AB306:  MOVS            R2, #0; unsigned __int8
2AB308:  VMUL.F32        S0, S0, S20
2AB30C:  MOVS            R3, #0; unsigned __int8
2AB30E:  VCVT.U32.F32    S0, S0
2AB312:  VMOV            R0, S0
2AB316:  STR             R0, [SP,#0xC8+var_C8]; unsigned __int8
2AB318:  MOV             R0, R10; this
2AB31A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AB31E:  ADD             R4, SP, #0xC8+var_84
2AB320:  MOVS            R1, #0; unsigned __int8
2AB322:  MOVS            R2, #0; unsigned __int8
2AB324:  MOVS            R3, #0; unsigned __int8
2AB326:  MOV             R0, R4; this
2AB328:  STR             R6, [SP,#0xC8+var_C8]; unsigned __int8
2AB32A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AB32E:  ADD             R0, SP, #0xC8+var_88; this
2AB330:  MOVS            R1, #0; unsigned __int8
2AB332:  MOVS            R2, #0; unsigned __int8
2AB334:  MOVS            R3, #0; unsigned __int8
2AB336:  STR             R6, [SP,#0xC8+var_C8]; unsigned __int8
2AB338:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AB33C:  STR             R0, [SP,#0xC8+var_C8]
2AB33E:  ADD             R0, SP, #0xC8+var_78
2AB340:  MOV             R1, R8
2AB342:  MOV             R2, R10
2AB344:  MOV             R3, R4
2AB346:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
2AB34A:  LDRB.W          R0, [R5,#(byte_6E00DB - 0x6E006C)]
2AB34E:  CBNZ            R0, loc_2AB36E
2AB350:  LDR.W           R0, =(lastDevice_ptr - 0x2AB35C)
2AB354:  LDR.W           R1, =(gMobileMenu_ptr - 0x2AB35E)
2AB358:  ADD             R0, PC; lastDevice_ptr
2AB35A:  ADD             R1, PC; gMobileMenu_ptr
2AB35C:  LDR             R0, [R0]; lastDevice
2AB35E:  LDR             R1, [R1]; gMobileMenu
2AB360:  LDR             R0, [R0]
2AB362:  ADD.W           R0, R1, R0,LSL#2
2AB366:  LDR.W           R0, [R0,#0x90]
2AB36A:  CMP             R0, #3
2AB36C:  BNE             loc_2AB43A
2AB36E:  LDR.W           R0, =(_ZN9CTheZones13ZonesRevealedE_ptr - 0x2AB376)
2AB372:  ADD             R0, PC; _ZN9CTheZones13ZonesRevealedE_ptr
2AB374:  LDR             R0, [R0]; CTheZones::ZonesRevealed ...
2AB376:  LDR             R0, [R0]; CTheZones::ZonesRevealed
2AB378:  CMP             R0, #0x4F ; 'O'
2AB37A:  BHI             loc_2AB390
2AB37C:  LDR.W           R0, =(gMobileMenu_ptr - 0x2AB384)
2AB380:  ADD             R0, PC; gMobileMenu_ptr
2AB382:  LDR             R1, [R0]; gMobileMenu
2AB384:  LDRD.W          R0, R1, [R1,#(dword_6E00D0 - 0x6E006C)]; float
2AB388:  BLX             j__ZN9CTheZones30GetCurrentZoneLockedOrUnlockedEff; CTheZones::GetCurrentZoneLockedOrUnlocked(float,float)
2AB38C:  CMP             R0, #0
2AB38E:  BEQ             loc_2AB43A
2AB390:  MOVS            R0, #(stderr+3); this
2AB392:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
2AB396:  MOVS            R0, #0x44200000; this
2AB39C:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
2AB3A0:  ADD             R0, SP, #0xC8+var_8C; this
2AB3A2:  MOVS            R5, #0xFF
2AB3A4:  MOVS            R1, #0; unsigned __int8
2AB3A6:  MOVS            R2, #0; unsigned __int8
2AB3A8:  MOVS            R3, #0; unsigned __int8
2AB3AA:  STR             R5, [SP,#0xC8+var_C8]; unsigned __int8
2AB3AC:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AB3B0:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
2AB3B4:  LDR.W           R0, =(RsGlobal_ptr - 0x2AB3C0)
2AB3B8:  VLDR            S2, =0.0017857
2AB3BC:  ADD             R0, PC; RsGlobal_ptr
2AB3BE:  LDR             R4, [R0]; RsGlobal
2AB3C0:  LDR             R0, [R4,#(dword_9FC904 - 0x9FC8FC)]
2AB3C2:  VMOV            S0, R0
2AB3C6:  VCVT.F32.S32    S0, S0
2AB3CA:  VMUL.F32        S0, S0, S2
2AB3CE:  VMOV            R0, S0; this
2AB3D2:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2AB3D6:  ADD             R0, SP, #0xC8+var_90; this
2AB3D8:  MOVS            R1, #0xF0; unsigned __int8
2AB3DA:  MOVS            R2, #0xF0; unsigned __int8
2AB3DC:  MOVS            R3, #0xF0; unsigned __int8
2AB3DE:  STR             R5, [SP,#0xC8+var_C8]; unsigned __int8
2AB3E0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AB3E4:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2AB3E8:  MOVS            R0, #(stderr+2); this
2AB3EA:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
2AB3EE:  MOVS            R0, #(stderr+2); this
2AB3F0:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2AB3F4:  VLDR            S0, [R4,#4]
2AB3F8:  MOV             R2, R9
2AB3FA:  VLDR            S2, [R4,#8]
2AB3FE:  VLDR            S4, =-0.20089
2AB402:  VCVT.F32.S32    S2, S2
2AB406:  VLDR            S6, =-0.0
2AB40A:  VCVT.F32.S32    S0, S0
2AB40E:  VLDR            S8, =-0.040179
2AB412:  VMUL.F32        S4, S2, S4
2AB416:  VMUL.F32        S2, S2, S8
2AB41A:  VMUL.F32        S6, S0, S6
2AB41E:  VADD.F32        S4, S24, S4
2AB422:  VADD.F32        S2, S22, S2
2AB426:  VADD.F32        S0, S0, S6
2AB42A:  VMOV            R1, S4
2AB42E:  VMIN.F32        D0, D1, D0
2AB432:  VMOV            R0, S0
2AB436:  NOP
2AB438:  NOP
2AB43A:  LDR.W           R1, =(mapModeOpacity_ptr - 0x2AB446)
2AB43E:  LDR.W           R0, =(RsGlobal_ptr - 0x2AB448)
2AB442:  ADD             R1, PC; mapModeOpacity_ptr
2AB444:  ADD             R0, PC; RsGlobal_ptr
2AB446:  LDR             R1, [R1]; mapModeOpacity ; float
2AB448:  LDR             R0, [R0]; RsGlobal
2AB44A:  VLDR            S0, [R1]
2AB44E:  LDR             R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
2AB450:  VCMP.F32        S0, #0.0
2AB454:  VMRS            APSR_nzcv, FPSCR
2AB458:  BEQ.W           loc_2ABA70
2AB45C:  SUBS            R0, #0x28 ; '('
2AB45E:  VMOV            S0, R0
2AB462:  VCVT.F32.S32    S0, S0
2AB466:  VMOV            R0, S0; this
2AB46A:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
2AB46E:  MOVS            R0, #0x42A80000; this
2AB474:  BLX             j__ZN5CFont19SetRightJustifyWrapEf; CFont::SetRightJustifyWrap(float)
2AB478:  MOVS            R0, #(stderr+1); this
2AB47A:  BLX             j__ZN5CFont21SetDropShadowPositionEa; CFont::SetDropShadowPosition(signed char)
2AB47E:  LDR.W           R0, =(mapModeOpacity_ptr - 0x2AB48C)
2AB482:  MOVS            R1, #0; unsigned __int8
2AB484:  MOVS            R2, #0; unsigned __int8
2AB486:  MOVS            R3, #0; unsigned __int8
2AB488:  ADD             R0, PC; mapModeOpacity_ptr
2AB48A:  LDR             R4, [R0]; mapModeOpacity
2AB48C:  VLDR            S0, [R4]
2AB490:  VMUL.F32        S0, S0, S20
2AB494:  VCVT.U32.F32    S0, S0
2AB498:  VMOV            R0, S0
2AB49C:  STR             R0, [SP,#0xC8+var_C8]; unsigned __int8
2AB49E:  ADD             R0, SP, #0xC8+var_94; this
2AB4A0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AB4A4:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
2AB4A8:  MOVS            R0, #(stderr+1); this
2AB4AA:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2AB4AE:  MOVS            R0, #(stderr+2); this
2AB4B0:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
2AB4B4:  LDR.W           R0, =(RsGlobal_ptr - 0x2AB4C0)
2AB4B8:  VLDR            S18, =0.0012277
2AB4BC:  ADD             R0, PC; RsGlobal_ptr
2AB4BE:  LDR             R5, [R0]; RsGlobal
2AB4C0:  LDR             R0, [R5,#(dword_9FC904 - 0x9FC8FC)]
2AB4C2:  VMOV            S0, R0
2AB4C6:  VCVT.F32.S32    S0, S0
2AB4CA:  VMUL.F32        S0, S0, S18
2AB4CE:  VMOV            R0, S0; this
2AB4D2:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2AB4D6:  VLDR            S0, [R4]
2AB4DA:  MOVS            R1, #0xAC; unsigned __int8
2AB4DC:  MOVS            R2, #0xCB; unsigned __int8
2AB4DE:  MOVS            R3, #0xF1; unsigned __int8
2AB4E0:  VMUL.F32        S0, S0, S20
2AB4E4:  VCVT.U32.F32    S0, S0
2AB4E8:  VMOV            R0, S0
2AB4EC:  STR             R0, [SP,#0xC8+var_C8]; unsigned __int8
2AB4EE:  ADD             R0, SP, #0xC8+var_98; this
2AB4F0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AB4F4:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2AB4F8:  LDRD.W          R0, R1, [R5,#(dword_9FC900 - 0x9FC8FC)]
2AB4FC:  VMOV.I32        D18, #0
2AB500:  VMOV            S4, R1
2AB504:  VLDR            S22, =1.8
2AB508:  VLDR            D10, =0.05
2AB50C:  MOVW            R3, #0xAAAB
2AB510:  VMOV            S2, R0
2AB514:  LDR.W           R1, =(_ZN6CRadar16MapLegendCounterE_ptr - 0x2AB528)
2AB518:  VCVT.F32.S32    S0, S4
2AB51C:  MOVT            R3, #0xAAAA
2AB520:  VCVT.F32.S32    S2, S2
2AB524:  ADD             R1, PC; _ZN6CRadar16MapLegendCounterE_ptr
2AB526:  VCVT.F64.S32    D16, S4
2AB52A:  MOV.W           R9, #4
2AB52E:  LDR             R1, [R1]; CRadar::MapLegendCounter ...
2AB530:  VDIV.F32        S4, S2, S0
2AB534:  VCMPE.F32       S4, S22
2AB538:  VMRS            APSR_nzcv, FPSCR
2AB53C:  VCMPE.F32       S4, S22
2AB540:  VMUL.F64        D19, D16, D10
2AB544:  VMOV.I32        D17, #0
2AB548:  IT GT
2AB54A:  VMOVGT.F64      D18, D19
2AB54E:  VMRS            APSR_nzcv, FPSCR
2AB552:  VADD.F64        D19, D19, D19
2AB556:  MOVS            R1, #0
2AB558:  ADD.W           R2, R1, #2
2AB55C:  UMULL.W         R3, R6, R2, R3
2AB560:  IT GT
2AB562:  VMOVGT.F64      D17, D19
2AB566:  CMP             R2, #0xE
2AB568:  IT HI
2AB56A:  MOVHI.W         R9, R6,LSR#1
2AB56E:  CMP             R1, #0
2AB570:  BEQ.W           loc_2ABA70
2AB574:  VLDR            S24, =-640.0
2AB578:  VMOV.F32        S26, #16.0
2AB57C:  VLDR            S4, =0.022321
2AB580:  VMOV.F32        S19, #3.0
2AB584:  VDIV.F32        S2, S2, S24
2AB588:  LDR.W           R0, =(_ZN6CRadar13MapLegendListE_ptr - 0x2AB592)
2AB58C:  MOVS            R6, #0
2AB58E:  ADD             R0, PC; _ZN6CRadar13MapLegendListE_ptr
2AB590:  LDR             R0, [R0]; CRadar::MapLegendList ...
2AB592:  VMUL.F32        S2, S2, S26
2AB596:  VLDR            S28, =0.96205
2AB59A:  VSUB.F64        D16, D16, D18
2AB59E:  VCVT.F64.F32    D18, S2
2AB5A2:  VMUL.F32        S2, S0, S4
2AB5A6:  VLDR            S30, =0.27902
2AB5AA:  VMUL.F32        S0, S0, S28
2AB5AE:  VLDR            S17, =640.0
2AB5B2:  VADD.F64        D16, D16, D18
2AB5B6:  VCVT.F64.F32    D19, S2
2AB5BA:  VCMPE.F64       D17, D19
2AB5BE:  VMRS            APSR_nzcv, FPSCR
2AB5C2:  VMOV.F32        S23, #20.0
2AB5C6:  VCVT.F64.F32    D18, S0
2AB5CA:  VCMPE.F64       D16, D18
2AB5CE:  VLDR            S25, =0.33482
2AB5D2:  IT LT
2AB5D4:  VMOVLT.F64      D17, D19
2AB5D8:  VMRS            APSR_nzcv, FPSCR
2AB5DC:  VCVT.S32.F64    S0, D17
2AB5E0:  VMOV            R10, S0
2AB5E4:  IT GT
2AB5E6:  VMOVGT.F64      D16, D18
2AB5EA:  STR             R0, [SP,#0xC8+var_9C]
2AB5EC:  LDR.W           R0, =(RsGlobal_ptr - 0x2AB5F4)
2AB5F0:  ADD             R0, PC; RsGlobal_ptr
2AB5F2:  LDR.W           R8, [R0]; RsGlobal
2AB5F6:  LDR.W           R0, =(RsGlobal_ptr - 0x2AB5FE)
2AB5FA:  ADD             R0, PC; RsGlobal_ptr
2AB5FC:  LDR             R0, [R0]; RsGlobal
2AB5FE:  STR             R0, [SP,#0xC8+var_AC]
2AB600:  LDR.W           R0, =(RsGlobal_ptr - 0x2AB608)
2AB604:  ADD             R0, PC; RsGlobal_ptr
2AB606:  LDR             R0, [R0]; RsGlobal
2AB608:  STR             R0, [SP,#0xC8+var_A0]
2AB60A:  LDR.W           R0, =(_ZN6CRadar13MapLegendListE_ptr - 0x2AB612)
2AB60E:  ADD             R0, PC; _ZN6CRadar13MapLegendListE_ptr
2AB610:  LDR.W           R11, [R0]; CRadar::MapLegendList ...
2AB614:  LDR.W           R0, =(RsGlobal_ptr - 0x2AB61C)
2AB618:  ADD             R0, PC; RsGlobal_ptr
2AB61A:  LDR             R0, [R0]; RsGlobal
2AB61C:  STR             R0, [SP,#0xC8+var_B0]
2AB61E:  LDR.W           R0, =(_ZN6CRadar16MapLegendCounterE_ptr - 0x2AB626)
2AB622:  ADD             R0, PC; _ZN6CRadar16MapLegendCounterE_ptr
2AB624:  LDR             R0, [R0]; CRadar::MapLegendCounter ...
2AB626:  STR             R0, [SP,#0xC8+var_B4]
2AB628:  LDR.W           R0, =(RsGlobal_ptr - 0x2AB630)
2AB62C:  ADD             R0, PC; RsGlobal_ptr
2AB62E:  LDR             R0, [R0]; RsGlobal
2AB630:  STR             R0, [SP,#0xC8+var_A4]
2AB632:  LDR.W           R0, =(_ZN6CRadar16MapLegendCounterE_ptr - 0x2AB63A)
2AB636:  ADD             R0, PC; _ZN6CRadar16MapLegendCounterE_ptr
2AB638:  LDR             R0, [R0]; CRadar::MapLegendCounter ...
2AB63A:  STR             R0, [SP,#0xC8+var_A8]
2AB63C:  VCVT.S32.F64    S0, D16
2AB640:  VMOV            R5, S0
2AB644:  VMOV            S2, R10
2AB648:  VCVT.F32.S32    S27, S2
2AB64C:  LDR             R0, [SP,#0xC8+var_9C]
2AB64E:  MOVS            R4, #0
2AB650:  LDRSH.W         R0, [R0,R6,LSL#1]
2AB654:  ADDS            R0, #5
2AB656:  CMP             R0, #0x44 ; 'D'; switch 69 cases
2AB658:  BHI.W           def_2AB664; jumptable 002AB664 default case, cases 5-7,9,61
2AB65C:  ADR.W           R2, jpt_2AB664
2AB660:  ADR.W           R1, aLg02; "LG_02"
2AB664:  TBH.W           [R2,R0,LSL#1]; switch jump
2AB668:  DCFS 0.7
2AB66C:  DCFS 255.0
2AB670:  DCW 0x68; jump table for switch statement
2AB672:  DCW 0x6B
2AB674:  DCW 0x6E
2AB676:  DCW 0x71
2AB678:  DCW 0x74
2AB67A:  DCW 0x14C
2AB67C:  DCW 0x14C
2AB67E:  DCW 0x14C
2AB680:  DCW 0x77
2AB682:  DCW 0x14C
2AB684:  DCW 0x145
2AB686:  DCW 0x7B
2AB688:  DCW 0x7F
2AB68A:  DCW 0x83
2AB68C:  DCW 0x87
2AB68E:  DCW 0x8B
2AB690:  DCW 0x8F
2AB692:  DCW 0x92
2AB694:  DCW 0x96
2AB696:  DCW 0x9A
2AB698:  DCW 0x9E
2AB69A:  DCW 0xA2
2AB69C:  DCW 0xA6
2AB69E:  DCW 0xA9
2AB6A0:  DCW 0xAD
2AB6A2:  DCW 0xB1
2AB6A4:  DCW 0xB5
2AB6A6:  DCW 0xB9
2AB6A8:  DCW 0xBD
2AB6AA:  DCW 0xC1
2AB6AC:  DCW 0xC5
2AB6AE:  DCW 0xC9
2AB6B0:  DCW 0xCD
2AB6B2:  DCW 0xD1
2AB6B4:  DCW 0xD5
2AB6B6:  DCW 0xD9
2AB6B8:  DCW 0xDD
2AB6BA:  DCW 0xE1
2AB6BC:  DCW 0xE5
2AB6BE:  DCW 0xE9
2AB6C0:  DCW 0xED
2AB6C2:  DCW 0xF1
2AB6C4:  DCW 0xF5
2AB6C6:  DCW 0xF8
2AB6C8:  DCW 0xFC
2AB6CA:  DCW 0x100
2AB6CC:  DCW 0x103
2AB6CE:  DCW 0x106
2AB6D0:  DCW 0x109
2AB6D2:  DCW 0x10C
2AB6D4:  DCW 0x10F
2AB6D6:  DCW 0x112
2AB6D8:  DCW 0x115
2AB6DA:  DCW 0x118
2AB6DC:  DCW 0x11B
2AB6DE:  DCW 0x11E
2AB6E0:  DCW 0x121
2AB6E2:  DCW 0x124
2AB6E4:  DCW 0x127
2AB6E6:  DCW 0x12A
2AB6E8:  DCW 0x12D
2AB6EA:  DCW 0x14C
2AB6EC:  DCW 0x130
2AB6EE:  DCW 0x133
2AB6F0:  DCW 0x136
2AB6F2:  DCW 0x139
2AB6F4:  DCW 0x13C
2AB6F6:  DCW 0x13F
2AB6F8:  DCW 0x142
2AB6FA:  ALIGN 4
2AB6FC:  DCFS 0.0017857
2AB700:  DCFS -0.20089
2AB704:  DCFS -0.0
2AB708:  DCFS -0.040179
2AB70C:  DCFS 0.0012277
2AB710:  DCFS 1.8
2AB714:  ALIGN 8
2AB718:  DCFD 0.05
2AB720:  DCFS -640.0
2AB724:  DCFS 0.022321
2AB728:  DCFS 0.96205
2AB72C:  DCFS 0.27902
2AB730:  DCFS 640.0
2AB734:  DCFS 0.33482
2AB738:  ADR.W           R1, aLg56; jumptable 002AB664 case 0
2AB73C:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB73E:  ADR.W           R1, aLg55; jumptable 002AB664 case 1
2AB742:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB744:  ADR.W           R1, aLg54; jumptable 002AB664 case 2
2AB748:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB74A:  ADR.W           R1, aLg50; jumptable 002AB664 case 3
2AB74E:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB750:  ADR.W           R1, aLg49; jumptable 002AB664 case 4
2AB754:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB756:  LDR.W           R1, =(aLg01 - 0x2AB75E); jumptable 002AB664 case 8
2AB75A:  ADD             R1, PC; "LG_01"
2AB75C:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB75E:  LDR.W           R1, =(aLg03 - 0x2AB766); jumptable 002AB664 case 11
2AB762:  ADD             R1, PC; "LG_03"
2AB764:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB766:  LDR.W           R1, =(aLg04 - 0x2AB76E); jumptable 002AB664 case 12
2AB76A:  ADD             R1, PC; "LG_04"
2AB76C:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB76E:  LDR.W           R1, =(aLg05 - 0x2AB776); jumptable 002AB664 case 13
2AB772:  ADD             R1, PC; "LG_05"
2AB774:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB776:  LDR.W           R1, =(aLg06 - 0x2AB77E); jumptable 002AB664 case 14
2AB77A:  ADD             R1, PC; "LG_06"
2AB77C:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB77E:  LDR.W           R1, =(aLg07 - 0x2AB786); jumptable 002AB664 case 15
2AB782:  ADD             R1, PC; "LG_07"
2AB784:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB786:  ADR.W           R1, aLg66; jumptable 002AB664 case 16
2AB78A:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB78C:  LDR.W           R1, =(aLg09 - 0x2AB794); jumptable 002AB664 case 17
2AB790:  ADD             R1, PC; "LG_09"
2AB792:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB794:  LDR.W           R1, =(aLg10 - 0x2AB79C); jumptable 002AB664 case 18
2AB798:  ADD             R1, PC; "LG_10"
2AB79A:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB79C:  LDR.W           R1, =(aLg11 - 0x2AB7A4); jumptable 002AB664 case 19
2AB7A0:  ADD             R1, PC; "LG_11"
2AB7A2:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB7A4:  LDR.W           R1, =(aLg12 - 0x2AB7AC); jumptable 002AB664 case 20
2AB7A8:  ADD             R1, PC; "LG_12"
2AB7AA:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB7AC:  LDR.W           R1, =(aLg13 - 0x2AB7B4); jumptable 002AB664 case 21
2AB7B0:  ADD             R1, PC; "LG_13"
2AB7B2:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB7B4:  ADR.W           R1, aLg67; jumptable 002AB664 case 22
2AB7B8:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB7BA:  LDR.W           R1, =(aLg15 - 0x2AB7C2); jumptable 002AB664 case 23
2AB7BE:  ADD             R1, PC; "LG_15"
2AB7C0:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB7C2:  LDR.W           R1, =(aLg16 - 0x2AB7CA); jumptable 002AB664 case 24
2AB7C6:  ADD             R1, PC; "LG_16"
2AB7C8:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB7CA:  LDR.W           R1, =(aLg17 - 0x2AB7D2); jumptable 002AB664 case 25
2AB7CE:  ADD             R1, PC; "LG_17"
2AB7D0:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB7D2:  LDR.W           R1, =(aLg18 - 0x2AB7DA); jumptable 002AB664 case 26
2AB7D6:  ADD             R1, PC; "LG_18"
2AB7D8:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB7DA:  LDR.W           R1, =(aLg19 - 0x2AB7E2); jumptable 002AB664 case 27
2AB7DE:  ADD             R1, PC; "LG_19"
2AB7E0:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB7E2:  LDR.W           R1, =(aLg20 - 0x2AB7EA); jumptable 002AB664 case 28
2AB7E6:  ADD             R1, PC; "LG_20"
2AB7E8:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB7EA:  LDR.W           R1, =(aLg21 - 0x2AB7F2); jumptable 002AB664 case 29
2AB7EE:  ADD             R1, PC; "LG_21"
2AB7F0:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB7F2:  LDR.W           R1, =(aLg22 - 0x2AB7FA); jumptable 002AB664 case 30
2AB7F6:  ADD             R1, PC; "LG_22"
2AB7F8:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB7FA:  LDR.W           R1, =(aLg23 - 0x2AB802); jumptable 002AB664 case 31
2AB7FE:  ADD             R1, PC; "LG_23"
2AB800:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB802:  LDR.W           R1, =(aLg24 - 0x2AB80A); jumptable 002AB664 case 32
2AB806:  ADD             R1, PC; "LG_24"
2AB808:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB80A:  LDR.W           R1, =(aLg25 - 0x2AB812); jumptable 002AB664 case 33
2AB80E:  ADD             R1, PC; "LG_25"
2AB810:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB812:  LDR.W           R1, =(aLg26 - 0x2AB81A); jumptable 002AB664 case 34
2AB816:  ADD             R1, PC; "LG_26"
2AB818:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB81A:  LDR.W           R1, =(aLg27 - 0x2AB822); jumptable 002AB664 case 35
2AB81E:  ADD             R1, PC; "LG_27"
2AB820:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB822:  LDR.W           R1, =(aLg28 - 0x2AB82A); jumptable 002AB664 case 36
2AB826:  ADD             R1, PC; "LG_28"
2AB828:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB82A:  LDR.W           R1, =(aLg29 - 0x2AB832); jumptable 002AB664 case 37
2AB82E:  ADD             R1, PC; "LG_29"
2AB830:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB832:  LDR.W           R1, =(aLg30 - 0x2AB83A); jumptable 002AB664 case 38
2AB836:  ADD             R1, PC; "LG_30"
2AB838:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB83A:  LDR.W           R1, =(aLg31 - 0x2AB842); jumptable 002AB664 case 39
2AB83E:  ADD             R1, PC; "LG_31"
2AB840:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB842:  LDR.W           R1, =(aLg32 - 0x2AB84A); jumptable 002AB664 case 40
2AB846:  ADD             R1, PC; "LG_32"
2AB848:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB84A:  LDR.W           R1, =(aLg33 - 0x2AB852); jumptable 002AB664 case 41
2AB84E:  ADD             R1, PC; "LG_33"
2AB850:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB852:  ADR.W           R1, aLg63; jumptable 002AB664 case 42
2AB856:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB858:  LDR.W           R1, =(aLg35 - 0x2AB860); jumptable 002AB664 case 43
2AB85C:  ADD             R1, PC; "LG_35"
2AB85E:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB860:  LDR.W           R1, =(aLg36 - 0x2AB868); jumptable 002AB664 case 44
2AB864:  ADD             R1, PC; "LG_36"
2AB866:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB868:  ADR.W           R1, aLg37; jumptable 002AB664 case 45
2AB86C:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB86E:  ADR.W           R1, aLg64; jumptable 002AB664 case 46
2AB872:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB874:  ADR.W           R1, aLg39; jumptable 002AB664 case 47
2AB878:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB87A:  ADR.W           R1, aLg40; jumptable 002AB664 case 48
2AB87E:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB880:  ADR.W           R1, aLg41; jumptable 002AB664 case 49
2AB884:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB886:  ADR.W           R1, aLg42; jumptable 002AB664 case 50
2AB88A:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB88C:  ADR.W           R1, aLg43; jumptable 002AB664 case 51
2AB890:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB892:  ADR.W           R1, aLg44; jumptable 002AB664 case 52
2AB896:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB898:  ADR.W           R1, aLg45; jumptable 002AB664 case 53
2AB89C:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB89E:  ADR.W           R1, aLg46; jumptable 002AB664 case 54
2AB8A2:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB8A4:  ADR.W           R1, aLg47; jumptable 002AB664 case 55
2AB8A8:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB8AA:  ADR.W           R1, aLg48; jumptable 002AB664 case 56
2AB8AE:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB8B0:  ADR.W           R1, aLg51; jumptable 002AB664 case 57
2AB8B4:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB8B6:  ADR.W           R1, aLg52; jumptable 002AB664 case 58
2AB8BA:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB8BC:  ADR.W           R1, aLg53; jumptable 002AB664 case 59
2AB8C0:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB8C2:  ADR.W           R1, aLg57; jumptable 002AB664 case 60
2AB8C6:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB8C8:  ADR.W           R1, aLg65; jumptable 002AB664 case 62
2AB8CC:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB8CE:  ADR.W           R1, aLg58; jumptable 002AB664 case 63
2AB8D2:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB8D4:  ADR.W           R1, aLg59; jumptable 002AB664 case 64
2AB8D8:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB8DA:  ADR.W           R1, aLg60; jumptable 002AB664 case 65
2AB8DE:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB8E0:  ADR.W           R1, aLg61; jumptable 002AB664 case 66
2AB8E4:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB8E6:  ADR.W           R1, aLg62; jumptable 002AB664 case 67
2AB8EA:  B               loc_2AB8F2; jumptable 002AB664 case 10
2AB8EC:  LDR.W           R1, =(aLg34 - 0x2AB8F4); jumptable 002AB664 case 68
2AB8F0:  ADD             R1, PC; "LG_34"
2AB8F2:  LDR.W           R0, =(TheText_ptr - 0x2AB8FA); jumptable 002AB664 case 10
2AB8F6:  ADD             R0, PC; TheText_ptr
2AB8F8:  LDR             R0, [R0]; TheText ; this
2AB8FA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2AB8FE:  MOV             R4, R0
2AB900:  LDR.W           R0, [R8,#(dword_9FC904 - 0x9FC8FC)]; jumptable 002AB664 default case, cases 5-7,9,61
2AB904:  VMOV            S0, R0
2AB908:  VCVT.F32.S32    S0, S0
2AB90C:  VMUL.F32        S0, S0, S18
2AB910:  VMOV            R0, S0; this
2AB914:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2AB918:  MOV             R0, R4; this
2AB91A:  MOVS            R1, #(stderr+1); unsigned __int16 *
2AB91C:  MOVS            R2, #0; unsigned __int8
2AB91E:  MOVS            R3, #0; unsigned __int8
2AB920:  BLX             j__ZN5CFont14GetStringWidthEPthhh; CFont::GetStringWidth(ushort *,uchar,uchar,uchar)
2AB924:  LDR.W           R1, [R8,#(dword_9FC904 - 0x9FC8FC)]
2AB928:  VMOV            S0, R1; float
2AB92C:  VCVT.F32.S32    S2, S0
2AB930:  VMOV            S0, R0
2AB934:  VMUL.F32        S4, S2, S30
2AB938:  VCMPE.F32       S0, S4
2AB93C:  VMRS            APSR_nzcv, FPSCR
2AB940:  BLE             loc_2AB95A
2AB942:  VMUL.F32        S2, S2, S18
2AB946:  VMUL.F32        S2, S2, S4
2AB94A:  VDIV.F32        S0, S2, S0
2AB94E:  VMOV            R0, S0; this
2AB952:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2AB956:  LDR             R0, [SP,#0xC8+var_AC]
2AB958:  LDR             R1, [R0,#8]
2AB95A:  VMOV            S0, R1
2AB95E:  MOV             R2, R4; CFont *
2AB960:  VMOV            S4, R5
2AB964:  VCVT.F32.S32    S0, S0
2AB968:  LDR             R0, [SP,#0xC8+var_A0]
2AB96A:  LDR             R0, [R0,#4]
2AB96C:  VMOV            S2, R0
2AB970:  VDIV.F32        S0, S0, S16
2AB974:  VCVT.F32.S32    S2, S2
2AB978:  VCVT.F32.S32    S29, S4
2AB97C:  VMUL.F32        S0, S0, S19
2AB980:  VDIV.F32        S2, S2, S17
2AB984:  VMUL.F32        S2, S2, S23
2AB988:  VADD.F32        S0, S0, S29
2AB98C:  VADD.F32        S2, S2, S27
2AB990:  VMOV            R1, S0; float
2AB994:  VMOV            R0, S2; this
2AB998:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2AB99C:  LDRSH.W         R2, [R11,R6,LSL#1]; int
2AB9A0:  MOV             R0, R10; this
2AB9A2:  MOV             R1, R5; int
2AB9A4:  BLX             j__ZN6CRadar10DrawLegendEiii; CRadar::DrawLegend(int,int,int)
2AB9A8:  ADDS            R6, #1
2AB9AA:  MOV             R1, R9
2AB9AC:  MOV             R0, R6
2AB9AE:  BLX             __aeabi_idivmod
2AB9B2:  CBZ             R1, loc_2AB9F8
2AB9B4:  LDR             R0, [SP,#0xC8+var_A4]
2AB9B6:  LDR             R0, [R0,#4]
2AB9B8:  VMOV            S0, R0
2AB9BC:  VCVT.F32.S32    S0, S0
2AB9C0:  LDR             R1, [SP,#0xC8+var_A8]
2AB9C2:  LDRH            R1, [R1]
2AB9C4:  CMP             R6, R1
2AB9C6:  VDIV.F32        S0, S0, S24
2AB9CA:  VMUL.F32        S0, S0, S26
2AB9CE:  VADD.F32        S0, S29, S0
2AB9D2:  VCVT.S32.F32    S0, S0
2AB9D6:  VMOV            R5, S0
2AB9DA:  BLT.W           loc_2AB64C
2AB9DE:  B               loc_2ABA70
2AB9E0:  DCD gMobileMenu_ptr - 0x2AACB0
2AB9E4:  DCD RsGlobal_ptr - 0x2AACD6
2AB9E8:  DCD _ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2AACD8
2AB9EC:  DCD RsGlobal_ptr - 0x2AAD1C
2AB9F0:  DCD gMobileMenu_ptr - 0x2AAD1E
2AB9F4:  DCD gMobileMenu_ptr - 0x2AAD3C
2AB9F8:  LDR             R1, [SP,#0xC8+var_B0]
2AB9FA:  VMOV.I32        D18, #0
2AB9FE:  LDRD.W          R0, R1, [R1,#4]
2ABA02:  VMOV            S0, R1
2ABA06:  VMOV            S4, R0
2ABA0A:  VCVT.F32.S32    S2, S0
2ABA0E:  VCVT.F32.S32    S4, S4
2ABA12:  VCVT.F64.S32    D16, S0
2ABA16:  VDIV.F32        S0, S4, S2
2ABA1A:  VCMPE.F32       S0, S22
2ABA1E:  VDIV.F32        S4, S4, S24
2ABA22:  VMRS            APSR_nzcv, FPSCR
2ABA26:  VMUL.F32        S0, S4, S26
2ABA2A:  VMUL.F64        D17, D16, D10
2ABA2E:  VMUL.F32        S4, S2, S25
2ABA32:  IT GT
2ABA34:  VMOVGT.F64      D18, D17
2ABA38:  VCVT.F64.F32    D17, S0
2ABA3C:  VSUB.F64        D16, D16, D18
2ABA40:  VMUL.F32        S0, S2, S28
2ABA44:  VADD.F64        D16, D16, D17
2ABA48:  VADD.F32        S2, S4, S27
2ABA4C:  VCVT.F64.F32    D17, S0
2ABA50:  VCMPE.F64       D16, D17
2ABA54:  VCVT.S32.F32    S0, S2
2ABA58:  VMRS            APSR_nzcv, FPSCR
2ABA5C:  LDR             R1, [SP,#0xC8+var_B4]
2ABA5E:  LDRH            R1, [R1]; float
2ABA60:  VMOV            R10, S0
2ABA64:  IT GT
2ABA66:  VMOVGT.F64      D16, D17
2ABA6A:  CMP             R6, R1
2ABA6C:  BLT.W           loc_2AB63C
2ABA70:  SUBS            R0, #0xA
2ABA72:  VMOV            S0, R0
2ABA76:  VCVT.F32.S32    S0, S0
2ABA7A:  VMOV            R0, S0; this
2ABA7E:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
2ABA82:  MOVS            R0, #0x41200000; this
2ABA88:  BLX             j__ZN5CFont19SetRightJustifyWrapEf; CFont::SetRightJustifyWrap(float)
2ABA8C:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
2ABA90:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
2ABA94:  CMP             R0, #1
2ABA96:  BNE.W           loc_2ABBE0
2ABA9A:  LDR             R0, =(gMobileMenu_ptr - 0x2ABAA0)
2ABA9C:  ADD             R0, PC; gMobileMenu_ptr
2ABA9E:  LDR             R0, [R0]; gMobileMenu
2ABAA0:  LDRB.W          R0, [R0,#(byte_6E00D9 - 0x6E006C)]
2ABAA4:  CMP             R0, #0
2ABAA6:  BEQ.W           loc_2ABBE0
2ABAAA:  LDR             R0, =(RsGlobal_ptr - 0x2ABAB8)
2ABAAC:  VMOV.F32        S16, #0.5
2ABAB0:  ADD             R4, SP, #0xC8+var_7C
2ABAB2:  ADD             R6, SP, #0xC8+var_78
2ABAB4:  ADD             R0, PC; RsGlobal_ptr
2ABAB6:  MOV.W           R8, #0xFF
2ABABA:  MOVS            R1, #0; unsigned __int8
2ABABC:  MOVS            R2, #0; unsigned __int8
2ABABE:  LDR             R5, [R0]; RsGlobal
2ABAC0:  ADR             R0, dword_2ABC00
2ABAC2:  VLD1.64         {D10-D11}, [R0@128]
2ABAC6:  ADR             R0, dword_2ABC10
2ABAC8:  MOVS            R3, #0; unsigned __int8
2ABACA:  VLDR            S2, [R5,#8]
2ABACE:  VLDR            S0, [R5,#4]
2ABAD2:  VCVT.F32.S32    S2, S2
2ABAD6:  VLD1.64         {D18-D19}, [R0@128]
2ABADA:  VCVT.F32.S32    S0, S0
2ABADE:  MOV             R0, R4; this
2ABAE0:  STR.W           R8, [SP,#0xC8+var_C8]; unsigned __int8
2ABAE4:  VMUL.F32        S5, S2, S16
2ABAE8:  VMUL.F32        S4, S0, S16
2ABAEC:  VMOV.F32        S6, S4
2ABAF0:  VMOV.F32        S7, S5
2ABAF4:  VADD.F32        Q8, Q1, Q5
2ABAF8:  VADD.F32        Q8, Q8, Q9
2ABAFC:  VST1.64         {D16-D17}, [R6@128]
2ABB00:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2ABB04:  MOV             R0, R6
2ABB06:  MOV             R1, R4
2ABB08:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
2ABB0C:  VLDR            S2, [R5,#8]
2ABB10:  ADD             R4, SP, #0xC8+var_7C
2ABB12:  VLDR            S0, [R5,#4]
2ABB16:  MOVS            R1, #0xFF; unsigned __int8
2ABB18:  VCVT.F32.S32    S2, S2
2ABB1C:  MOV             R0, R4; this
2ABB1E:  VCVT.F32.S32    S0, S0
2ABB22:  MOVS            R2, #0xFF; unsigned __int8
2ABB24:  MOVS            R3, #0xFF; unsigned __int8
2ABB26:  STR.W           R8, [SP,#0xC8+var_C8]; unsigned __int8
2ABB2A:  VMUL.F32        S5, S2, S16
2ABB2E:  VMUL.F32        S4, S0, S16
2ABB32:  VMOV.F32        S6, S4
2ABB36:  VMOV.F32        S7, S5
2ABB3A:  VADD.F32        Q8, Q1, Q5
2ABB3E:  VST1.64         {D16-D17}, [R6@128]
2ABB42:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2ABB46:  MOV             R0, R6
2ABB48:  MOV             R1, R4
2ABB4A:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
2ABB4E:  VLDR            S2, [R5,#8]
2ABB52:  ADR             R0, dword_2ABC20
2ABB54:  VLDR            S0, [R5,#4]
2ABB58:  VMOV.F32        Q9, #-1.0
2ABB5C:  VCVT.F32.S32    S2, S2
2ABB60:  VLD1.64         {D10-D11}, [R0@128]
2ABB64:  VCVT.F32.S32    S0, S0
2ABB68:  ADD             R4, SP, #0xC8+var_7C
2ABB6A:  MOVS            R1, #0; unsigned __int8
2ABB6C:  MOVS            R2, #0; unsigned __int8
2ABB6E:  MOV             R0, R4; this
2ABB70:  MOVS            R3, #0; unsigned __int8
2ABB72:  STR.W           R8, [SP,#0xC8+var_C8]; unsigned __int8
2ABB76:  VMUL.F32        S5, S2, S16
2ABB7A:  VMUL.F32        S4, S0, S16
2ABB7E:  VMOV.F32        S6, S4
2ABB82:  VMOV.F32        S7, S5
2ABB86:  VADD.F32        Q8, Q1, Q5
2ABB8A:  VADD.F32        Q8, Q8, Q9
2ABB8E:  VST1.64         {D16-D17}, [R6@128]
2ABB92:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2ABB96:  MOV             R0, R6
2ABB98:  MOV             R1, R4
2ABB9A:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
2ABB9E:  VLDR            S2, [R5,#8]
2ABBA2:  ADD             R4, SP, #0xC8+var_7C
2ABBA4:  VLDR            S0, [R5,#4]
2ABBA8:  MOVS            R1, #0xFF; unsigned __int8
2ABBAA:  VCVT.F32.S32    S2, S2
2ABBAE:  MOV             R0, R4; this
2ABBB0:  VCVT.F32.S32    S0, S0
2ABBB4:  MOVS            R2, #0xFF; unsigned __int8
2ABBB6:  MOVS            R3, #0xFF; unsigned __int8
2ABBB8:  STR.W           R8, [SP,#0xC8+var_C8]; unsigned __int8
2ABBBC:  VMUL.F32        S5, S2, S16
2ABBC0:  VMUL.F32        S4, S0, S16
2ABBC4:  VMOV.F32        S6, S4
2ABBC8:  VMOV.F32        S7, S5
2ABBCC:  VADD.F32        Q8, Q1, Q5
2ABBD0:  VST1.64         {D16-D17}, [R6@128]
2ABBD4:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2ABBD8:  MOV             R0, R6
2ABBDA:  MOV             R1, R4
2ABBDC:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
2ABBE0:  LDR             R0, =(gMobileMenu_ptr - 0x2ABBEC)
2ABBE2:  SUB.W           R4, R7, #-var_60
2ABBE6:  MOVS            R1, #0
2ABBE8:  ADD             R0, PC; gMobileMenu_ptr
2ABBEA:  LDR             R0, [R0]; gMobileMenu
2ABBEC:  STRB.W          R1, [R0,#(byte_6E00D8 - 0x6E006C)]
2ABBF0:  MOV             SP, R4
2ABBF2:  VPOP            {D8-D15}
2ABBF6:  ADD             SP, SP, #4
2ABBF8:  POP.W           {R8-R11}
2ABBFC:  POP             {R4-R7,PC}
