; =========================================================
; Game Engine Function: _ZN6CRadar14ShowRadarTraceEffjhhhh
; Address            : 0x442DCC - 0x442F50
; =========================================================

442DCC:  PUSH            {R4-R7,LR}
442DCE:  ADD             R7, SP, #0xC
442DD0:  PUSH.W          {R8,R9,R11}
442DD4:  VPUSH           {D8-D11}
442DD8:  SUB             SP, SP, #0x18
442DDA:  MOV             R5, R2
442DDC:  LDR             R2, =(gMobileMenu_ptr - 0x442DE8)
442DDE:  LDR             R6, [R7,#arg_8]
442DE0:  VMOV            S16, R0
442DE4:  ADD             R2, PC; gMobileMenu_ptr
442DE6:  LDRD.W          R9, R8, [R7,#arg_0]
442DEA:  VMOV            S18, R1
442DEE:  MOV             R4, R3
442DF0:  LDR             R2, [R2]; gMobileMenu
442DF2:  LDRB.W          R0, [R2,#(byte_6E00D8 - 0x6E006C)]
442DF6:  CMP             R0, #0
442DF8:  BEQ             loc_442EBC
442DFA:  LDR             R0, =(RsGlobal_ptr - 0x442E04)
442DFC:  VLDR            S22, =448.0
442E00:  ADD             R0, PC; RsGlobal_ptr
442E02:  LDR             R0, [R0]; RsGlobal
442E04:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
442E06:  VMOV            S0, R0; this
442E0A:  VCVT.F32.S32    S0, S0
442E0E:  VDIV.F32        S0, S0, S22
442E12:  VMUL.F32        S20, S0, S18
442E16:  VMUL.F32        S16, S0, S16
442E1A:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
442E1E:  CMP             R0, #1
442E20:  BNE             loc_442E28
442E22:  VMOV.F32        S18, S20
442E26:  B               loc_442EBC
442E28:  LDR             R0, =(gMobileMenu_ptr - 0x442E2E)
442E2A:  ADD             R0, PC; gMobileMenu_ptr
442E2C:  LDR             R0, [R0]; gMobileMenu
442E2E:  LDR             R1, [R0,#(dword_6E0090 - 0x6E006C)]
442E30:  CMP             R1, #0
442E32:  ITT EQ
442E34:  LDREQ           R0, [R0,#(dword_6E0098 - 0x6E006C)]
442E36:  CMPEQ           R0, #0
442E38:  BNE             loc_442E40
442E3A:  VLDR            S0, =140.0
442E3E:  B               loc_442E52
442E40:  LDR             R0, =(gMobileMenu_ptr - 0x442E46)
442E42:  ADD             R0, PC; gMobileMenu_ptr
442E44:  LDR             R0, [R0]; gMobileMenu
442E46:  VLDR            S0, [R0,#0x58]
442E4A:  VCVT.S32.F32    S0, S0
442E4E:  VCVT.F32.S32    S0, S0
442E52:  LDR             R0, =(RsGlobal_ptr - 0x442E5C)
442E54:  VLDR            S6, =640.0
442E58:  ADD             R0, PC; RsGlobal_ptr
442E5A:  LDR             R0, [R0]; RsGlobal
442E5C:  VLDR            S4, [R0,#8]
442E60:  VLDR            S2, [R0,#4]
442E64:  VCVT.F32.S32    S4, S4
442E68:  LDR             R0, =(gMobileMenu_ptr - 0x442E72)
442E6A:  VCVT.F32.S32    S2, S2
442E6E:  ADD             R0, PC; gMobileMenu_ptr
442E70:  LDR             R0, [R0]; gMobileMenu
442E72:  VDIV.F32        S4, S4, S22
442E76:  VDIV.F32        S2, S2, S6
442E7A:  VLDR            S8, [R0,#0x60]
442E7E:  VLDR            S6, [R0,#0x5C]
442E82:  VADD.F32        S10, S0, S8
442E86:  VSUB.F32        S8, S8, S0
442E8A:  VSUB.F32        S12, S6, S0
442E8E:  VADD.F32        S0, S0, S6
442E92:  VMUL.F32        S18, S10, S4
442E96:  VMUL.F32        S4, S8, S4
442E9A:  VMUL.F32        S6, S12, S2
442E9E:  VMUL.F32        S2, S0, S2
442EA2:  VMAX.F32        D0, D10, D2
442EA6:  VMAX.F32        D16, D8, D3
442EAA:  VCMPE.F32       S0, S18
442EAE:  VMRS            APSR_nzcv, FPSCR
442EB2:  VMIN.F32        D8, D16, D1
442EB6:  IT LE
442EB8:  VMOVLE.F32      S18, S0
442EBC:  MOVS            R0, #1
442EBE:  MOVS            R1, #0
442EC0:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
442EC4:  VMOV            S0, R5
442EC8:  ADD             R5, SP, #0x50+var_4C
442ECA:  VMOV.F32        S2, #-1.0
442ECE:  MOVS            R1, #0; unsigned __int8
442ED0:  VCVT.F32.U32    S0, S0
442ED4:  MOV             R0, R5; this
442ED6:  VMOV.F32        S4, #1.0
442EDA:  MOVS            R2, #0; unsigned __int8
442EDC:  MOVS            R3, #0; unsigned __int8
442EDE:  STR             R6, [SP,#0x50+var_50]; unsigned __int8
442EE0:  VSUB.F32        S20, S18, S0
442EE4:  VSUB.F32        S22, S16, S0
442EE8:  VADD.F32        S16, S16, S0
442EEC:  VADD.F32        S18, S18, S0
442EF0:  VADD.F32        S0, S20, S2
442EF4:  VADD.F32        S2, S22, S2
442EF8:  VADD.F32        S6, S16, S4
442EFC:  VADD.F32        S4, S18, S4
442F00:  VSTR            S0, [SP,#0x50+var_3C]
442F04:  VSTR            S2, [SP,#0x50+var_48]
442F08:  VSTR            S6, [SP,#0x50+var_40]
442F0C:  VSTR            S4, [SP,#0x50+var_44]
442F10:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
442F14:  ADD             R0, SP, #0x50+var_48
442F16:  MOV             R1, R5
442F18:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
442F1C:  ADD             R5, SP, #0x50+var_4C
442F1E:  MOV             R1, R4; unsigned __int8
442F20:  MOV             R2, R9; unsigned __int8
442F22:  MOV             R3, R8; unsigned __int8
442F24:  MOV             R0, R5; this
442F26:  VSTR            S20, [SP,#0x50+var_3C]
442F2A:  VSTR            S22, [SP,#0x50+var_48]
442F2E:  VSTR            S16, [SP,#0x50+var_40]
442F32:  VSTR            S18, [SP,#0x50+var_44]
442F36:  STR             R6, [SP,#0x50+var_50]; unsigned __int8
442F38:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
442F3C:  ADD             R0, SP, #0x50+var_48
442F3E:  MOV             R1, R5
442F40:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
442F44:  ADD             SP, SP, #0x18
442F46:  VPOP            {D8-D11}
442F4A:  POP.W           {R8,R9,R11}
442F4E:  POP             {R4-R7,PC}
