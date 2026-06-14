; =========================================================
; Game Engine Function: _ZN17CWidgetPlayerInfo8DrawAmmoEP4CPed5CRectf
; Address            : 0x2BDC48 - 0x2BDF00
; =========================================================

2BDC48:  PUSH            {R4-R7,LR}
2BDC4A:  ADD             R7, SP, #0xC
2BDC4C:  PUSH.W          {R8-R11}
2BDC50:  SUB             SP, SP, #4
2BDC52:  VPUSH           {D8-D10}
2BDC56:  SUB             SP, SP, #0x10
2BDC58:  MOV             R5, R1
2BDC5A:  MOV             R6, R0
2BDC5C:  LDRSB.W         R0, [R5,#0x71C]
2BDC60:  MOV             R8, R3
2BDC62:  VLDR            S0, =9999.0
2BDC66:  MOV             R9, R2
2BDC68:  RSB.W           R0, R0, R0,LSL#3
2BDC6C:  ADD.W           R0, R5, R0,LSL#2
2BDC70:  LDR.W           R1, [R0,#0x5AC]
2BDC74:  LDR.W           R4, [R0,#0x5B0]
2BDC78:  SUBS            R0, R4, R1
2BDC7A:  VMOV            S2, R0; this
2BDC7E:  VCVT.F32.S32    S2, S2
2BDC82:  VMIN.F32        D1, D1, D0
2BDC86:  VCMP.F32        S2, S0
2BDC8A:  VMRS            APSR_nzcv, FPSCR
2BDC8E:  BEQ             loc_2BDCE0; jumptable 002BDCAC cases 0,10-15,40,46
2BDC90:  BLX             j__ZN7CDarkel13FrenzyOnGoingEv; CDarkel::FrenzyOnGoing(void)
2BDC94:  CMP             R0, #0
2BDC96:  BNE             loc_2BDCE0; jumptable 002BDCAC cases 0,10-15,40,46
2BDC98:  LDRSB.W         R0, [R5,#0x71C]
2BDC9C:  RSB.W           R0, R0, R0,LSL#3
2BDCA0:  ADD.W           R0, R5, R0,LSL#2
2BDCA4:  LDR.W           R0, [R0,#0x5A4]
2BDCA8:  CMP             R0, #0x2E ; '.'; switch 47 cases
2BDCAA:  BHI             def_2BDCAC; jumptable 002BDCAC default case, cases 1-9,16-39,41-45
2BDCAC:  TBB.W           [PC,R0]; switch jump
2BDCB0:  DCB 0x18; jump table for switch statement
2BDCB1:  DCB 0x1F
2BDCB2:  DCB 0x1F
2BDCB3:  DCB 0x1F
2BDCB4:  DCB 0x1F
2BDCB5:  DCB 0x1F
2BDCB6:  DCB 0x1F
2BDCB7:  DCB 0x1F
2BDCB8:  DCB 0x1F
2BDCB9:  DCB 0x1F
2BDCBA:  DCB 0x18
2BDCBB:  DCB 0x18
2BDCBC:  DCB 0x18
2BDCBD:  DCB 0x18
2BDCBE:  DCB 0x18
2BDCBF:  DCB 0x18
2BDCC0:  DCB 0x1F
2BDCC1:  DCB 0x1F
2BDCC2:  DCB 0x1F
2BDCC3:  DCB 0x1F
2BDCC4:  DCB 0x1F
2BDCC5:  DCB 0x1F
2BDCC6:  DCB 0x1F
2BDCC7:  DCB 0x1F
2BDCC8:  DCB 0x1F
2BDCC9:  DCB 0x1F
2BDCCA:  DCB 0x1F
2BDCCB:  DCB 0x1F
2BDCCC:  DCB 0x1F
2BDCCD:  DCB 0x1F
2BDCCE:  DCB 0x1F
2BDCCF:  DCB 0x1F
2BDCD0:  DCB 0x1F
2BDCD1:  DCB 0x1F
2BDCD2:  DCB 0x1F
2BDCD3:  DCB 0x1F
2BDCD4:  DCB 0x1F
2BDCD5:  DCB 0x1F
2BDCD6:  DCB 0x1F
2BDCD7:  DCB 0x1F
2BDCD8:  DCB 0x18
2BDCD9:  DCB 0x1F
2BDCDA:  DCB 0x1F
2BDCDB:  DCB 0x1F
2BDCDC:  DCB 0x1F
2BDCDD:  DCB 0x1F
2BDCDE:  DCB 0x18
2BDCDF:  ALIGN 2
2BDCE0:  ADD             SP, SP, #0x10; jumptable 002BDCAC cases 0,10-15,40,46
2BDCE2:  VPOP            {D8-D10}
2BDCE6:  ADD             SP, SP, #4
2BDCE8:  POP.W           {R8-R11}
2BDCEC:  POP             {R4-R7,PC}
2BDCEE:  MOVS            R1, #1; jumptable 002BDCAC default case, cases 1-9,16-39,41-45
2BDCF0:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
2BDCF4:  LDR             R0, [R0]
2BDCF6:  CMP             R0, #5
2BDCF8:  BEQ             loc_2BDCE0; jumptable 002BDCAC cases 0,10-15,40,46
2BDCFA:  LDRSB.W         R0, [R5,#0x71C]
2BDCFE:  MOVS            R1, #1
2BDD00:  RSB.W           R0, R0, R0,LSL#3
2BDD04:  ADD.W           R0, R5, R0,LSL#2
2BDD08:  LDR.W           R0, [R0,#0x5A4]
2BDD0C:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
2BDD10:  LDR             R0, [R0,#0x14]
2BDD12:  CMP             R0, #2
2BDD14:  BLT             loc_2BDCE0; jumptable 002BDCAC cases 0,10-15,40,46
2BDD16:  LDRSB.W         R0, [R5,#0x71C]
2BDD1A:  VLDR            S16, [R7,#arg_8]
2BDD1E:  RSB.W           R0, R0, R0,LSL#3
2BDD22:  ADD.W           R0, R5, R0,LSL#2
2BDD26:  LDR.W           R10, [R0,#0x5A4]
2BDD2A:  MOV             R0, R5; this
2BDD2C:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
2BDD30:  MOV             R1, R0
2BDD32:  MOV             R0, R10
2BDD34:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
2BDD38:  LDRH            R0, [R0,#0x20]
2BDD3A:  MOVW            R1, #0x3E5
2BDD3E:  SUBS            R0, #2
2BDD40:  UXTH            R0, R0
2BDD42:  CMP             R0, R1
2BDD44:  BHI             loc_2BDD86
2BDD46:  LDRSB.W         R0, [R5,#0x71C]
2BDD4A:  RSB.W           R0, R0, R0,LSL#3
2BDD4E:  ADD.W           R0, R5, R0,LSL#2
2BDD52:  LDR.W           R3, [R0,#0x5AC]
2BDD56:  LDR.W           R1, [R0,#0x5A4]
2BDD5A:  SUBS            R2, R4, R3
2BDD5C:  CMP             R1, #0x25 ; '%'
2BDD5E:  BNE             loc_2BDD96
2BDD60:  MOV             R0, #0x66666667
2BDD68:  SMMUL.W         R1, R2, R0
2BDD6C:  LDR             R2, =(gString_ptr - 0x2BDD76)
2BDD6E:  SMMUL.W         R3, R3, R0
2BDD72:  ADD             R2, PC; gString_ptr
2BDD74:  LDR             R0, [R2]; gString
2BDD76:  ASRS            R2, R1, #2
2BDD78:  ADD.W           R2, R2, R1,LSR#31
2BDD7C:  ASRS            R1, R3, #2
2BDD7E:  ADD.W           R3, R1, R3,LSR#31
2BDD82:  ADR             R1, aDD; "%d-%d"
2BDD84:  B               loc_2BDD9E
2BDD86:  LDR             R0, =(gString_ptr - 0x2BDD90)
2BDD88:  ADR             R1, dword_2BDF10
2BDD8A:  MOV             R2, R4
2BDD8C:  ADD             R0, PC; gString_ptr
2BDD8E:  LDR             R0, [R0]; gString
2BDD90:  BL              sub_5E6BC0
2BDD94:  B               loc_2BDDA2
2BDD96:  LDR             R0, =(gString_ptr - 0x2BDD9E)
2BDD98:  ADR             R1, aDD; "%d-%d"
2BDD9A:  ADD             R0, PC; gString_ptr
2BDD9C:  LDR             R0, [R0]; gString
2BDD9E:  BL              sub_5E6BC0
2BDDA2:  LDR             R1, =(gGxtString_ptr - 0x2BDDAA)
2BDDA4:  LDR             R0, =(gString_ptr - 0x2BDDB0)
2BDDA6:  ADD             R1, PC; gGxtString_ptr
2BDDA8:  LDR.W           R11, [R7,#arg_0]
2BDDAC:  ADD             R0, PC; gString_ptr
2BDDAE:  LDR.W           R10, [R1]; gGxtString
2BDDB2:  LDR             R0, [R0]; gString ; char *
2BDDB4:  MOV             R1, R10; unsigned __int16 *
2BDDB6:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2BDDBA:  MOVS            R0, #0; this
2BDDBC:  MOVS            R1, #0; unsigned __int8
2BDDBE:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
2BDDC2:  MOVS            R0, #0; this
2BDDC4:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2BDDC8:  LDR             R0, =(RsGlobal_ptr - 0x2BDDD2)
2BDDCA:  VLDR            S2, =640.0
2BDDCE:  ADD             R0, PC; RsGlobal_ptr
2BDDD0:  LDR             R0, [R0]; RsGlobal
2BDDD2:  LDR             R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
2BDDD4:  VMOV            S0, R0
2BDDD8:  VCVT.F32.S32    S0, S0
2BDDDC:  VDIV.F32        S0, S0, S2
2BDDE0:  VMUL.F32        S0, S0, S2
2BDDE4:  VMOV            R0, S0; this
2BDDE8:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
2BDDEC:  MOVS            R0, #(stderr+1); this
2BDDEE:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
2BDDF2:  LDR             R0, =(_ZN5CFont18UsingEFIGSLanguageE_ptr - 0x2BDDF8)
2BDDF4:  ADD             R0, PC; _ZN5CFont18UsingEFIGSLanguageE_ptr
2BDDF6:  LDR             R0, [R0]; CFont::UsingEFIGSLanguage ...
2BDDF8:  LDRB            R1, [R0]; unsigned __int8
2BDDFA:  MOVS            R0, #6
2BDDFC:  CMP             R1, #0
2BDDFE:  IT NE
2BDE00:  MOVNE           R0, #(stderr+1); this
2BDE02:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
2BDE06:  MOVS            R0, #(stderr+1); this
2BDE08:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
2BDE0C:  VCVT.U32.F32    S0, S16
2BDE10:  LDR             R0, =(HudColour_ptr - 0x2BDE1A)
2BDE12:  ADD             R4, SP, #0x48+var_3C
2BDE14:  MOVS            R2, #3; unsigned __int8
2BDE16:  ADD             R0, PC; HudColour_ptr
2BDE18:  LDR             R1, [R0]; HudColour ; unsigned __int8
2BDE1A:  MOV             R0, R4; this
2BDE1C:  VMOV            R5, S0
2BDE20:  MOV             R3, R5
2BDE22:  BLX             j__ZN11CHudColours6GetRGBEhh; CHudColours::GetRGB(uchar,uchar)
2BDE26:  MOV             R0, R4
2BDE28:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2BDE2C:  ADD             R0, SP, #0x48+var_40; this
2BDE2E:  MOVS            R1, #0; unsigned __int8
2BDE30:  MOVS            R2, #0; unsigned __int8
2BDE32:  MOVS            R3, #0; unsigned __int8
2BDE34:  STR             R5, [SP,#0x48+var_48]; unsigned __int8
2BDE36:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BDE3A:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
2BDE3E:  VLDR            S0, [R6,#0x20]
2BDE42:  VLDR            S2, [R6,#0x28]
2BDE46:  VLDR            D17, =0.0055
2BDE4A:  VSUB.F32        S0, S2, S0
2BDE4E:  VABS.F32        S0, S0
2BDE52:  VCVT.F64.F32    D16, S0
2BDE56:  VMUL.F64        D16, D16, D17
2BDE5A:  VCVT.F32.F64    S16, D16
2BDE5E:  VMOV            R0, S16; this
2BDE62:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BDE66:  MOV             R0, R10; this
2BDE68:  MOVS            R1, #(stderr+1); unsigned __int16 *
2BDE6A:  MOVS            R2, #0; unsigned __int8
2BDE6C:  VLDR            S18, [R6,#0x20]
2BDE70:  VLDR            S20, [R6,#0x28]
2BDE74:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
2BDE78:  VSUB.F32        S0, S20, S18
2BDE7C:  VLDR            S2, =0.425
2BDE80:  VABS.F32        S0, S0
2BDE84:  VMUL.F32        S0, S0, S2
2BDE88:  VMOV            S2, R0
2BDE8C:  VCMPE.F32       S2, S0
2BDE90:  VMRS            APSR_nzcv, FPSCR
2BDE94:  BLE             loc_2BDEA6
2BDE96:  VDIV.F32        S0, S0, S2
2BDE9A:  VMUL.F32        S0, S0, S16
2BDE9E:  VMOV            R0, S0; this
2BDEA2:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BDEA6:  VMOV            S0, R9
2BDEAA:  LDR             R0, [R7,#arg_4]
2BDEAC:  VMOV            S2, R11
2BDEB0:  LDR             R2, =(gGxtString_ptr - 0x2BDEBA)
2BDEB2:  VMOV.F64        D17, #0.5
2BDEB6:  ADD             R2, PC; gGxtString_ptr
2BDEB8:  LDR             R2, [R2]; gGxtString ; CFont *
2BDEBA:  VSUB.F32        S2, S2, S0
2BDEBE:  VMOV            S4, R8
2BDEC2:  VABS.F32        S2, S2
2BDEC6:  VCVT.F64.F32    D16, S2
2BDECA:  VMOV            S2, R0
2BDECE:  VMUL.F64        D16, D16, D17
2BDED2:  VSUB.F32        S4, S4, S2
2BDED6:  VCVT.F64.F32    D17, S0
2BDEDA:  VADD.F64        D16, D16, D17
2BDEDE:  VABS.F32        S0, S4
2BDEE2:  VLDR            S4, =0.9
2BDEE6:  VMUL.F32        S0, S0, S4
2BDEEA:  VADD.F32        S0, S0, S2
2BDEEE:  VCVT.F32.F64    S2, D16
2BDEF2:  VMOV            R1, S0; float
2BDEF6:  VMOV            R0, S2; this
2BDEFA:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2BDEFE:  B               loc_2BDCE0; jumptable 002BDCAC cases 0,10-15,40,46
