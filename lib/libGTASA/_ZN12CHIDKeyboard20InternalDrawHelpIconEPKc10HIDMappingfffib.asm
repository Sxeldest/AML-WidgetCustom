; =========================================================
; Game Engine Function: _ZN12CHIDKeyboard20InternalDrawHelpIconEPKc10HIDMappingfffib
; Address            : 0x294D20 - 0x294E50
; =========================================================

294D20:  PUSH            {R4-R7,LR}
294D22:  ADD             R7, SP, #0xC
294D24:  PUSH.W          {R8-R11}
294D28:  SUB             SP, SP, #4
294D2A:  VPUSH           {D8-D11}
294D2E:  SUB             SP, SP, #0x40
294D30:  MOV             R4, R0
294D32:  MOV             R11, R2
294D34:  MOV             R6, R4
294D36:  MOV             R2, R1
294D38:  LDR.W           R0, [R6,#0x10]!
294D3C:  CMP             R0, #0
294D3E:  BEQ.W           loc_294E42
294D42:  LDRD.W          R10, R9, [R7,#arg_8]
294D46:  VMOV            S18, R3
294D4A:  LDR             R0, [R4]
294D4C:  MOV             R1, R4
294D4E:  MOV             R3, R11
294D50:  VLDR            S20, [R7,#arg_4]
294D54:  VLDR            S22, [R7,#arg_0]
294D58:  LDR             R5, [R0,#0x54]
294D5A:  ADD             R0, SP, #0x80+var_50
294D5C:  STR.W           R9, [SP,#0x80+var_80]
294D60:  BLX             R5
294D62:  ADD.W           R8, SP, #0x80+var_54
294D66:  UXTB.W          R0, R10
294D6A:  STR             R0, [SP,#0x80+var_80]; float
294D6C:  MOVS            R1, #0xC0; unsigned __int8
294D6E:  MOV             R0, R8; this
294D70:  MOVS            R2, #0xC0; unsigned __int8
294D72:  MOVS            R3, #0xC0; unsigned __int8
294D74:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
294D78:  VLDR            S0, =0.8
294D7C:  VADD.F32        S4, S22, S20
294D80:  VLDR            S6, [SP,#0x80+var_50]
294D84:  ADD             R1, SP, #0x80+var_64; int
294D86:  VMUL.F32        S16, S20, S0
294D8A:  MOV             R0, R6; int
294D8C:  VMOV.F32        S0, #0.5
294D90:  MOV             R2, R8; int
294D92:  VMOV            R3, S6; int
294D96:  VSUB.F32        S2, S20, S16
294D9A:  VMUL.F32        S0, S2, S0
294D9E:  VADD.F32        S2, S18, S20
294DA2:  VADD.F32        S18, S0, S18
294DA6:  VADD.F32        S20, S0, S22
294DAA:  VSUB.F32        S2, S2, S0
294DAE:  VSUB.F32        S0, S4, S0
294DB2:  VLDR            S4, [SP,#0x80+var_44]
294DB6:  VSTR            S4, [SP,#0x80+var_80]
294DBA:  VSTR            S18, [SP,#0x80+var_64]
294DBE:  VSTR            S20, [SP,#0x80+var_58]
294DC2:  VSTR            S2, [SP,#0x80+var_5C]
294DC6:  VLDR            S2, [SP,#0x80+var_48]
294DCA:  VSTR            S0, [SP,#0x80+var_60]
294DCE:  VLDR            S0, [SP,#0x80+var_4C]
294DD2:  VSTR            S2, [SP,#0x80+var_7C]
294DD6:  VSTR            S4, [SP,#0x80+var_78]
294DDA:  VSTR            S6, [SP,#0x80+var_74]
294DDE:  VSTR            S0, [SP,#0x80+var_70]
294DE2:  VSTR            S2, [SP,#0x80+var_6C]
294DE6:  VSTR            S0, [SP,#0x80+var_68]
294DEA:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBAffffffff; CSprite2d::Draw(CRect const&,CRGBA const&,float,float,float,float,float,float,float,float)
294DEE:  VLDR            S2, [SP,#0x80+var_44]
294DF2:  MOVS            R1, #0
294DF4:  VLDR            S0, [SP,#0x80+var_50]
294DF8:  MOVS            R0, #0
294DFA:  VCMP.F32        S2, #0.0
294DFE:  VMRS            APSR_nzcv, FPSCR
294E02:  VCMP.F32        S0, #0.0
294E06:  IT EQ
294E08:  MOVEQ           R1, #1
294E0A:  VMRS            APSR_nzcv, FPSCR
294E0E:  IT EQ
294E10:  MOVEQ           R0, #1
294E12:  TST             R0, R1
294E14:  BEQ             loc_294E42
294E16:  LDR             R0, [R4,#0x14]
294E18:  CMP             R0, #0x63 ; 'c'
294E1A:  BGT             loc_294E42
294E1C:  ADD.W           R0, R0, R0,LSL#1
294E20:  ADD.W           R0, R4, R0,LSL#3
294E24:  STR.W           R11, [R0,#0x18]
294E28:  VSTR            S18, [R0,#0x1C]
294E2C:  VSTR            S20, [R0,#0x20]
294E30:  VSTR            S16, [R0,#0x24]
294E34:  STR.W           R10, [R0,#0x28]
294E38:  STRB.W          R9, [R0,#0x2C]
294E3C:  LDR             R0, [R4,#0x14]
294E3E:  ADDS            R0, #1
294E40:  STR             R0, [R4,#0x14]
294E42:  ADD             SP, SP, #0x40 ; '@'
294E44:  VPOP            {D8-D11}
294E48:  ADD             SP, SP, #4
294E4A:  POP.W           {R8-R11}
294E4E:  POP             {R4-R7,PC}
