; =========================================================
; Game Engine Function: _ZN12CMenuManager14DrawBackgroundEv
; Address            : 0x42EC2C - 0x42F010
; =========================================================

42EC2C:  PUSH            {R4-R7,LR}
42EC2E:  ADD             R7, SP, #0xC
42EC30:  PUSH.W          {R11}
42EC34:  VPUSH           {D8-D11}
42EC38:  SUB.W           SP, SP, #0x210
42EC3C:  MOV             R4, R0
42EC3E:  LDRB.W          R0, [R4,#0x120]
42EC42:  CMP             R0, #0
42EC44:  BEQ.W           loc_42F002
42EC48:  LDR.W           R0, =(RsGlobal_ptr - 0x42EC56)
42EC4C:  ADD             R5, SP, #0x240+var_34
42EC4E:  MOVS            R2, #0; unsigned __int8
42EC50:  MOVS            R3, #0; unsigned __int8
42EC52:  ADD             R0, PC; RsGlobal_ptr
42EC54:  LDR             R0, [R0]; RsGlobal
42EC56:  LDRD.W          R1, R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
42EC5A:  ADDS            R0, #5
42EC5C:  ADDS            R1, #5
42EC5E:  VMOV            S2, R0
42EC62:  MOVS            R0, #0
42EC64:  VMOV            S0, R1
42EC68:  MOVT            R0, #0xC0A0
42EC6C:  MOVS            R1, #0; unsigned __int8
42EC6E:  VCVT.F32.S32    S0, S0
42EC72:  VCVT.F32.S32    S2, S2
42EC76:  STR             R0, [SP,#0x240+var_234]
42EC78:  STR             R0, [SP,#0x240+var_228]
42EC7A:  MOVS            R0, #0xFF
42EC7C:  STR             R0, [SP,#0x240+var_240]; unsigned __int8
42EC7E:  MOV             R0, R5; this
42EC80:  VSTR            S0, [SP,#0x240+var_22C]
42EC84:  VSTR            S2, [SP,#0x240+var_230]
42EC88:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
42EC8C:  ADD             R0, SP, #0x240+var_234
42EC8E:  MOV             R1, R5
42EC90:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
42EC94:  LDRB.W          R0, [R4,#0x121]
42EC98:  CMP             R0, #0x22 ; '"'
42EC9A:  BNE             loc_42ED3E
42EC9C:  ADD             R5, SP, #0x240+var_234
42EC9E:  ADR             R0, aV101; "v1.01"
42ECA0:  MOV             R1, R5; unsigned __int16 *
42ECA2:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
42ECA6:  LDR             R0, =(RsGlobal_ptr - 0x42ECB0)
42ECA8:  VLDR            S2, =0.0011161
42ECAC:  ADD             R0, PC; RsGlobal_ptr
42ECAE:  LDR             R6, [R0]; RsGlobal
42ECB0:  LDR             R0, [R6,#(dword_9FC904 - 0x9FC8FC)]
42ECB2:  CMP.W           R0, #0x1C0
42ECB6:  VMOV            S0, R0
42ECBA:  VCVT.F32.S32    S0, S0
42ECBE:  VMUL.F32        S0, S0, S2
42ECC2:  VMOV.F32        S2, #0.5
42ECC6:  IT EQ
42ECC8:  VMOVEQ.F32      S0, S2
42ECCC:  VMOV            R0, S0; this
42ECD0:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
42ECD4:  MOVS            R0, #0x64 ; 'd'
42ECD6:  MOVS            R1, #0xFF; unsigned __int8
42ECD8:  STR             R0, [SP,#0x240+var_240]; unsigned __int8
42ECDA:  ADD             R0, SP, #0x240+var_238; this
42ECDC:  MOVS            R2, #0xFF; unsigned __int8
42ECDE:  MOVS            R3, #0xFF; unsigned __int8
42ECE0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
42ECE4:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
42ECE8:  LDRD.W          R0, R1, [R6,#(dword_9FC900 - 0x9FC8FC)]
42ECEC:  VMOV.F32        S8, #10.0
42ECF0:  VMOV            S0, R1
42ECF4:  VLDR            S2, =0.022321
42ECF8:  CMP.W           R1, #0x1C0
42ECFC:  VLDR            S6, =0.92188
42ED00:  VCVT.F32.S32    S0, S0
42ED04:  MOV             R2, R5; float
42ED06:  VMOV            S4, R0
42ED0A:  VCVT.F32.S32    S4, S4
42ED0E:  VMUL.F32        S2, S0, S2
42ED12:  IT EQ
42ED14:  VMOVEQ.F32      S2, S8
42ED18:  CMP.W           R0, #0x280
42ED1C:  VSUB.F32        S0, S0, S2
42ED20:  VMUL.F32        S4, S4, S6
42ED24:  VLDR            S6, =590.0
42ED28:  IT EQ
42ED2A:  VMOVEQ.F32      S4, S6
42ED2E:  VMOV            R0, S4; this
42ED32:  VMOV            R1, S0; float
42ED36:  BLX             j__ZN5CFont21PrintStringFromBottomEffPt; CFont::PrintStringFromBottom(float,float,ushort *)
42ED3A:  LDRB.W          R0, [R4,#0x121]
42ED3E:  CMP             R0, #0x2C ; ','
42ED40:  BEQ             loc_42ED50
42ED42:  SXTB            R0, R0
42ED44:  CMP             R0, #0x27 ; '''
42ED46:  BNE             loc_42ED58
42ED48:  MOV             R0, R4; this
42ED4A:  BLX             j__ZN12CMenuManager25DrawControllerSetupScreenEv; CMenuManager::DrawControllerSetupScreen(void)
42ED4E:  B               loc_42ED60
42ED50:  MOV             R0, R4; this
42ED52:  BLX             j__ZN12CMenuManager18DrawQuitGameScreenEv; CMenuManager::DrawQuitGameScreen(void)
42ED56:  B               loc_42ED60
42ED58:  MOV             R0, R4; this
42ED5A:  MOVS            R1, #1; unsigned __int8
42ED5C:  BLX             j__ZN12CMenuManager17DrawStandardMenusEh; CMenuManager::DrawStandardMenus(uchar)
42ED60:  MOVW            R0, #0x1AAD
42ED64:  LDRB            R1, [R4,R0]
42ED66:  CBZ             R1, loc_42EDCC
42ED68:  ADDS            R5, R4, R0
42ED6A:  LDR             R0, =(byte_990BE4 - 0x42ED70)
42ED6C:  ADD             R0, PC; byte_990BE4
42ED6E:  LDRB            R0, [R0]
42ED70:  DMB.W           ISH
42ED74:  TST.W           R0, #1
42ED78:  BNE             loc_42ED9A
42ED7A:  LDR             R0, =(byte_990BE4 - 0x42ED80)
42ED7C:  ADD             R0, PC; byte_990BE4 ; __guard *
42ED7E:  BLX             j___cxa_guard_acquire
42ED82:  CBZ             R0, loc_42ED9A
42ED84:  LDR             R0, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x42ED8C)
42ED86:  LDR             R1, =(dword_990BE0 - 0x42ED8E)
42ED88:  ADD             R0, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
42ED8A:  ADD             R1, PC; dword_990BE0
42ED8C:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode ...
42ED8E:  LDR             R2, [R0]; CTimer::m_snTimeInMillisecondsPauseMode
42ED90:  LDR             R0, =(byte_990BE4 - 0x42ED98)
42ED92:  STR             R2, [R1]
42ED94:  ADD             R0, PC; byte_990BE4 ; __guard *
42ED96:  BLX             j___cxa_guard_release
42ED9A:  LDR             R0, =(byte_990BE8 - 0x42EDA0)
42ED9C:  ADD             R0, PC; byte_990BE8
42ED9E:  LDRB            R0, [R0]
42EDA0:  CMP             R0, #1
42EDA2:  BNE             loc_42EDBA
42EDA4:  LDR             R0, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x42EDAE)
42EDA6:  MOVS            R3, #0
42EDA8:  LDR             R1, =(byte_990BE8 - 0x42EDB2)
42EDAA:  ADD             R0, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
42EDAC:  LDR             R2, =(dword_990BE0 - 0x42EDB6)
42EDAE:  ADD             R1, PC; byte_990BE8
42EDB0:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode ...
42EDB2:  ADD             R2, PC; dword_990BE0
42EDB4:  STRB            R3, [R1]
42EDB6:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode
42EDB8:  STR             R0, [R2]
42EDBA:  LDRSB.W         R0, [R5]
42EDBE:  CMP             R0, #2
42EDC0:  BEQ             loc_42EE3A
42EDC2:  CMP             R0, #1
42EDC4:  ITE NE
42EDC6:  ADRNE           R1, aFecEri; "FEC_ERI"
42EDC8:  ADREQ           R1, aFecEr3; "FEC_ER3"
42EDCA:  B               loc_42EE3C
42EDCC:  MOVW            R0, #0x1AAE
42EDD0:  LDRB            R0, [R4,R0]
42EDD2:  CMP             R0, #0
42EDD4:  BEQ.W           loc_42F002
42EDD8:  LDR             R0, =(byte_990BEC - 0x42EDDE)
42EDDA:  ADD             R0, PC; byte_990BEC
42EDDC:  LDRB            R0, [R0]
42EDDE:  DMB.W           ISH
42EDE2:  TST.W           R0, #1
42EDE6:  BNE             loc_42EDFA
42EDE8:  LDR             R0, =(byte_990BEC - 0x42EDEE)
42EDEA:  ADD             R0, PC; byte_990BEC ; __guard *
42EDEC:  BLX             j___cxa_guard_acquire
42EDF0:  CBZ             R0, loc_42EDFA
42EDF2:  LDR             R0, =(byte_990BEC - 0x42EDF8)
42EDF4:  ADD             R0, PC; byte_990BEC ; __guard *
42EDF6:  BLX             j___cxa_guard_release
42EDFA:  ADR             R1, aFeaSmp; "FEA_SMP"
42EDFC:  MOV             R0, R4; this
42EDFE:  MOVS            R2, #0; bool
42EE00:  MOVS            R3, #0; bool
42EE02:  BLX             j__ZN12CMenuManager13MessageScreenEPcbb; CMenuManager::MessageScreen(char *,bool,bool)
42EE06:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x42EE0C)
42EE08:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
42EE0A:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
42EE0C:  LDRB            R0, [R0]; CTimer::m_FrameCounter
42EE0E:  LSLS            R0, R0, #0x1D
42EE10:  BPL             loc_42EEA2
42EE12:  LDR             R0, =(byte_990BF4 - 0x42EE1E)
42EE14:  MOV.W           R3, #0xFFFFFFFF
42EE18:  LDR             R1, =(dword_6AB460 - 0x42EE20)
42EE1A:  ADD             R0, PC; byte_990BF4
42EE1C:  ADD             R1, PC; dword_6AB460
42EE1E:  LDRB            R0, [R0]
42EE20:  LDR             R2, [R1]
42EE22:  CMP             R0, #0
42EE24:  IT NE
42EE26:  MOVNE           R3, #1
42EE28:  SUBS            R0, R2, R3
42EE2A:  STR             R0, [R1]
42EE2C:  CMP.W           R0, #0x172
42EE30:  BLT             loc_42EE94
42EE32:  LDR             R0, =(byte_990BF4 - 0x42EE3A)
42EE34:  MOVS            R1, #1
42EE36:  ADD             R0, PC; byte_990BF4
42EE38:  B               loc_42EEA0
42EE3A:  ADR             R1, aFecEr2; "FEC_ER2"
42EE3C:  MOV             R0, R4; this
42EE3E:  MOVS            R2, #0; bool
42EE40:  MOVS            R3, #0; bool
42EE42:  BLX             j__ZN12CMenuManager13MessageScreenEPcbb; CMenuManager::MessageScreen(char *,bool,bool)
42EE46:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
42EE4A:  LDR             R0, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x42EE52)
42EE4C:  LDR             R1, =(dword_990BE0 - 0x42EE54)
42EE4E:  ADD             R0, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
42EE50:  ADD             R1, PC; dword_990BE0
42EE52:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode ...
42EE54:  LDR             R1, [R1]
42EE56:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode
42EE58:  SUBS            R0, R0, R1
42EE5A:  MOVW            R1, #0x1B58; int
42EE5E:  CMP             R0, R1
42EE60:  BLS             loc_42EE6C
42EE62:  LDR             R0, =(byte_990BE8 - 0x42EE6C)
42EE64:  MOVS            R1, #0
42EE66:  STRB            R1, [R5]
42EE68:  ADD             R0, PC; byte_990BE8
42EE6A:  B               loc_42EFFE
42EE6C:  MOVS            R0, #0; this
42EE6E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
42EE72:  BLX             j__ZN4CPad17GetEscapeJustDownEv; CPad::GetEscapeJustDown(void)
42EE76:  CMP             R0, #1
42EE78:  BNE.W           loc_42F002
42EE7C:  LDR             R0, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x42EE84)
42EE7E:  LDR             R1, =(dword_990BE0 - 0x42EE86)
42EE80:  ADD             R0, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
42EE82:  ADD             R1, PC; dword_990BE0
42EE84:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode ...
42EE86:  LDR             R1, [R1]
42EE88:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode
42EE8A:  SUBS            R0, R0, R1
42EE8C:  CMP.W           R0, #0x3E8
42EE90:  BHI             loc_42EE62
42EE92:  B               loc_42F002
42EE94:  CMP.W           R0, #0x10E
42EE98:  BGT             loc_42EEA2
42EE9A:  LDR             R0, =(byte_990BF4 - 0x42EEA2)
42EE9C:  MOVS            R1, #0
42EE9E:  ADD             R0, PC; byte_990BF4
42EEA0:  STRB            R1, [R0]
42EEA2:  LDR             R0, =(RsGlobal_ptr - 0x42EEB2)
42EEA4:  VMOV.F32        S0, #0.42188
42EEA8:  VLDR            S6, =0.58594
42EEAC:  ADD             R5, SP, #0x240+var_34
42EEAE:  ADD             R0, PC; RsGlobal_ptr
42EEB0:  VLDR            S20, =0.54688
42EEB4:  VLDR            S22, =245.0
42EEB8:  MOVS            R2, #0x32 ; '2'; unsigned __int8
42EEBA:  LDR             R6, [R0]; RsGlobal
42EEBC:  MOVS            R3, #0x32 ; '2'; unsigned __int8
42EEBE:  VLDR            S16, =0.55804
42EEC2:  LDRD.W          R0, R1, [R6,#(dword_9FC900 - 0x9FC8FC)]
42EEC6:  VMOV            S4, R1
42EECA:  VLDR            S18, =250.0
42EECE:  CMP.W           R0, #0x280
42EED2:  VMOV            S2, R0
42EED6:  VCVT.F32.S32    S2, S2
42EEDA:  VCVT.F32.S32    S4, S4
42EEDE:  VMUL.F32        S0, S2, S0
42EEE2:  VMUL.F32        S2, S2, S6
42EEE6:  VLDR            S6, =270.0
42EEEA:  VMUL.F32        S8, S4, S20
42EEEE:  IT EQ
42EEF0:  VMOVEQ.F32      S0, S6
42EEF4:  CMP.W           R1, #0x1C0
42EEF8:  VLDR            S6, =375.0
42EEFC:  IT EQ
42EEFE:  VMOVEQ.F32      S8, S22
42EF02:  CMP.W           R0, #0x280
42EF06:  VMUL.F32        S4, S4, S16
42EF0A:  IT EQ
42EF0C:  VMOVEQ.F32      S2, S6
42EF10:  CMP.W           R1, #0x1C0
42EF14:  MOV.W           R0, #0xFF
42EF18:  IT EQ
42EF1A:  VMOVEQ.F32      S4, S18
42EF1E:  STR             R0, [SP,#0x240+var_240]; unsigned __int8
42EF20:  MOV             R0, R5; this
42EF22:  MOVS            R1, #0x32 ; '2'; unsigned __int8
42EF24:  VSTR            S0, [SP,#0x240+var_234]
42EF28:  VSTR            S8, [SP,#0x240+var_228]
42EF2C:  VSTR            S2, [SP,#0x240+var_22C]
42EF30:  VSTR            S4, [SP,#0x240+var_230]
42EF34:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
42EF38:  ADD             R0, SP, #0x240+var_234
42EF3A:  MOV             R1, R5
42EF3C:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
42EF40:  LDR             R0, =(dword_6AB460 - 0x42EF46)
42EF42:  ADD             R0, PC; dword_6AB460
42EF44:  LDR             R2, [R0]
42EF46:  VMOV            S0, R2
42EF4A:  VCVT.F32.S32    S0, S0
42EF4E:  LDR             R0, [R6,#(dword_9FC900 - 0x9FC8FC)]
42EF50:  CMP.W           R0, #0x280
42EF54:  BEQ             loc_42EF6A
42EF56:  VLDR            S2, =640.0
42EF5A:  VDIV.F32        S0, S0, S2
42EF5E:  VMOV            S2, R0
42EF62:  VCVT.F32.S32    S2, S2
42EF66:  VMUL.F32        S0, S0, S2
42EF6A:  LDR             R1, =(RsGlobal_ptr - 0x42EF72)
42EF6C:  ADDS            R2, #5
42EF6E:  ADD             R1, PC; RsGlobal_ptr
42EF70:  VMOV            S6, R2
42EF74:  LDR             R1, [R1]; RsGlobal
42EF76:  LDR             R1, [R1,#(dword_9FC904 - 0x9FC8FC)]
42EF78:  CMP.W           R1, #0x1C0
42EF7C:  VMOV            S2, R1
42EF80:  VCVT.F32.S32    S4, S2
42EF84:  VCVT.F32.S32    S6, S6
42EF88:  VMUL.F32        S2, S4, S20
42EF8C:  IT EQ
42EF8E:  VMOVEQ.F32      S2, S22
42EF92:  CMP.W           R0, #0x280
42EF96:  BEQ             loc_42EFAC
42EF98:  VLDR            S8, =640.0
42EF9C:  VDIV.F32        S6, S6, S8
42EFA0:  VMOV            S8, R0
42EFA4:  VCVT.F32.S32    S8, S8
42EFA8:  VMUL.F32        S6, S6, S8
42EFAC:  ADD             R5, SP, #0x240+var_34
42EFAE:  CMP.W           R1, #0x1C0
42EFB2:  VMUL.F32        S4, S4, S16
42EFB6:  MOV.W           R0, #0xFF
42EFBA:  IT EQ
42EFBC:  VMOVEQ.F32      S4, S18
42EFC0:  STR             R0, [SP,#0x240+var_240]; unsigned __int8
42EFC2:  MOV             R0, R5; this
42EFC4:  MOVS            R1, #0xE1; unsigned __int8
42EFC6:  MOVS            R2, #0xE1; unsigned __int8
42EFC8:  MOVS            R3, #0xE1; unsigned __int8
42EFCA:  VSTR            S2, [SP,#0x240+var_228]
42EFCE:  VSTR            S0, [SP,#0x240+var_234]
42EFD2:  VSTR            S6, [SP,#0x240+var_22C]
42EFD6:  VSTR            S4, [SP,#0x240+var_230]
42EFDA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
42EFDE:  ADD             R0, SP, #0x240+var_234
42EFE0:  MOV             R1, R5
42EFE2:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
42EFE6:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
42EFEA:  MOV             R0, R4; this
42EFEC:  BLX             j__ZN12CMenuManager15ResetHelperTextEv; CMenuManager::ResetHelperText(void)
42EFF0:  LDR             R0, =(byte_990BF0 - 0x42EFF6)
42EFF2:  ADD             R0, PC; byte_990BF0
42EFF4:  LDRB            R0, [R0]
42EFF6:  CMP             R0, #0
42EFF8:  BNE             loc_42F002
42EFFA:  LDR             R0, =(byte_990BF0 - 0x42F000)
42EFFC:  ADD             R0, PC; byte_990BF0
42EFFE:  MOVS            R1, #1
42F000:  STRB            R1, [R0]
42F002:  ADD.W           SP, SP, #0x210
42F006:  VPOP            {D8-D11}
42F00A:  POP.W           {R11}
42F00E:  POP             {R4-R7,PC}
