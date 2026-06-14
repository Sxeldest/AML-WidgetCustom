; =========================================================
; Game Engine Function: _ZN4CHud13DrawSubtitlesEv
; Address            : 0x438D40 - 0x4391FE
; =========================================================

438D40:  PUSH            {R4-R7,LR}
438D42:  ADD             R7, SP, #0xC
438D44:  PUSH.W          {R8-R10}
438D48:  VPUSH           {D8-D11}
438D4C:  SUB             SP, SP, #0x10
438D4E:  LDR.W           R0, =(_ZN4CHud9m_MessageE_ptr - 0x438D56)
438D52:  ADD             R0, PC; _ZN4CHud9m_MessageE_ptr
438D54:  LDR             R0, [R0]; CHud::m_Message ...
438D56:  LDRH            R0, [R0]; CHud::m_Message
438D58:  CMP             R0, #0
438D5A:  BEQ.W           loc_4391F2
438D5E:  LDR.W           R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x438D66)
438D62:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
438D64:  LDR             R0, [R0]; CHud::m_BigMessage ...
438D66:  LDRH.W          R0, [R0,#(word_99116C - 0x990F6C)]; this
438D6A:  CBZ             R0, loc_438D76
438D6C:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
438D70:  CMP             R0, #1
438D72:  BNE.W           loc_4391F2
438D76:  LDR.W           R0, =(_ZN4CHud14m_VehicleStateE_ptr - 0x438D7E)
438D7A:  ADD             R0, PC; _ZN4CHud14m_VehicleStateE_ptr
438D7C:  LDR             R0, [R0]; CHud::m_VehicleState ...
438D7E:  LDR             R0, [R0]; CHud::m_VehicleState
438D80:  CBZ             R0, loc_438D8E
438D82:  LDR.W           R0, =(_ZN4CHud14m_VehicleStateE_ptr - 0x438D8C)
438D86:  MOVS            R1, #3
438D88:  ADD             R0, PC; _ZN4CHud14m_VehicleStateE_ptr
438D8A:  LDR             R0, [R0]; CHud::m_VehicleState ...
438D8C:  STR             R1, [R0]; CHud::m_VehicleState
438D8E:  LDR.W           R0, =(_ZN4CHud11m_ZoneStateE_ptr - 0x438D96)
438D92:  ADD             R0, PC; _ZN4CHud11m_ZoneStateE_ptr
438D94:  LDR             R0, [R0]; CHud::m_ZoneState ...
438D96:  LDR             R0, [R0]; CHud::m_ZoneState
438D98:  CBZ             R0, loc_438DA6
438D9A:  LDR.W           R0, =(_ZN4CHud11m_ZoneStateE_ptr - 0x438DA4)
438D9E:  MOVS            R1, #3
438DA0:  ADD             R0, PC; _ZN4CHud11m_ZoneStateE_ptr
438DA2:  LDR             R0, [R0]; CHud::m_ZoneState ...
438DA4:  STR             R1, [R0]; CHud::m_ZoneState
438DA6:  MOVS            R0, #0; this
438DA8:  MOVS            R1, #0; unsigned __int8
438DAA:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
438DAE:  MOVS            R0, #0x80
438DB0:  MOVS            R1, #0; unsigned __int8
438DB2:  STR             R0, [SP,#0x48+var_48]; unsigned __int8
438DB4:  ADD             R0, SP, #0x48+var_3C; this
438DB6:  MOVS            R2, #0; unsigned __int8
438DB8:  MOVS            R3, #0; unsigned __int8
438DBA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
438DBE:  BLX             j__ZN5CFont18SetBackgroundColorE5CRGBA; CFont::SetBackgroundColor(CRGBA)
438DC2:  MOVS            R0, #0; this
438DC4:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
438DC8:  MOVS            R0, #(stderr+1); this
438DCA:  MOVS            R4, #1
438DCC:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
438DD0:  MOVS            R0, #0; this
438DD2:  BLX             j__ZN5CFont21SetDropShadowPositionEa; CFont::SetDropShadowPosition(signed char)
438DD6:  MOVS            R0, #(stderr+1); this
438DD8:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
438DDC:  ADD             R0, SP, #0x48+var_40; this
438DDE:  MOVS            R5, #0xFF
438DE0:  MOVS            R1, #0xE1; unsigned __int8
438DE2:  MOVS            R2, #0xE1; unsigned __int8
438DE4:  MOVS            R3, #0xE1; unsigned __int8
438DE6:  STR             R5, [SP,#0x48+var_48]; unsigned __int8
438DE8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
438DEC:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
438DF0:  MOVS            R0, #(stderr+2); this
438DF2:  BLX             j__ZN5CFont21SetDropShadowPositionEa; CFont::SetDropShadowPosition(signed char)
438DF6:  ADD             R0, SP, #0x48+var_44; this
438DF8:  MOVS            R1, #0; unsigned __int8
438DFA:  MOVS            R2, #0; unsigned __int8
438DFC:  MOVS            R3, #0; unsigned __int8
438DFE:  STR             R5, [SP,#0x48+var_48]; unsigned __int8
438E00:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
438E04:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
438E08:  MOVS            R0, #(stderr+1); this
438E0A:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
438E0E:  LDR.W           R0, =(TheCamera_ptr - 0x438E16)
438E12:  ADD             R0, PC; TheCamera_ptr
438E14:  LDR             R0, [R0]; TheCamera
438E16:  LDRB.W          R0, [R0,#(byte_951FE3 - 0x951FA8)]
438E1A:  CMP             R0, #0
438E1C:  BEQ.W           loc_438F50
438E20:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x438E2C)
438E24:  LDR.W           R1, =(byte_992048 - 0x438E2E)
438E28:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
438E2A:  ADD             R1, PC; byte_992048 ; float
438E2C:  LDR             R0, [R0]; MobileSettings::settings ...
438E2E:  STRB            R4, [R1]
438E30:  LDR.W           R0, [R0,#(dword_6E06FC - 0x6E03F4)]
438E34:  CMP             R0, #0
438E36:  BEQ.W           loc_4391EC
438E3A:  LDR.W           R0, =(RsGlobal_ptr - 0x438E46)
438E3E:  VLDR            S2, =640.0
438E42:  ADD             R0, PC; RsGlobal_ptr
438E44:  VLDR            S16, =0.0
438E48:  VLDR            S6, =40.0
438E4C:  LDR             R5, [R0]; RsGlobal
438E4E:  LDR             R0, [R5,#(dword_9FC900 - 0x9FC8FC)]
438E50:  VMOV            S0, R0
438E54:  VCVT.F32.S32    S0, S0
438E58:  VDIV.F32        S2, S0, S2
438E5C:  VMUL.F32        S4, S0, S16
438E60:  VMUL.F32        S2, S2, S6
438E64:  VADD.F32        S4, S4, S4
438E68:  VMAX.F32        D1, D1, D2
438E6C:  VSUB.F32        S0, S0, S2
438E70:  VMOV            R0, S0; this
438E74:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
438E78:  BLX             j__Z13OS_SystemFormv; OS_SystemForm(void)
438E7C:  VLDR            S0, [R5,#8]
438E80:  ADR             R1, dword_439230
438E82:  VLDR            S2, =448.0
438E86:  CMP             R0, #1
438E88:  VCVT.F32.S32    S0, S0
438E8C:  IT EQ
438E8E:  ADDEQ           R1, #4; float
438E90:  VDIV.F32        S0, S0, S2
438E94:  VLDR            S2, [R1]
438E98:  VMUL.F32        S0, S2, S0
438E9C:  VMOV            R0, S0; this
438EA0:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
438EA4:  LDR             R0, =(TheCamera_ptr - 0x438EAC)
438EA6:  LDR             R6, [R5,#(dword_9FC904 - 0x9FC8FC)]
438EA8:  ADD             R0, PC; TheCamera_ptr
438EAA:  LDR             R4, [R0]; TheCamera
438EAC:  MOV             R0, R4; this
438EAE:  BLX             j__ZN7CCamera20GetCutsceneBarHeightEv; CCamera::GetCutsceneBarHeight(void)
438EB2:  VLDR            S0, [R5,#8]
438EB6:  MOV             R10, R0
438EB8:  MOV             R0, R4; this
438EBA:  VCVT.F32.S32    S18, S0
438EBE:  BLX             j__ZN7CCamera20GetCutsceneBarHeightEv; CCamera::GetCutsceneBarHeight(void)
438EC2:  VLDR            S0, [R5,#8]
438EC6:  MOV             R8, R0
438EC8:  MOVS            R0, #0; this
438ECA:  VMOV            S20, R6
438ECE:  VCVT.F32.S32    S22, S0
438ED2:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
438ED6:  VMUL.F32        S6, S18, S16
438EDA:  VLDR            S0, [R5,#4]
438EDE:  VCVT.F32.S32    S2, S20
438EE2:  MOV             R9, R0
438EE4:  VMOV            S4, R10
438EE8:  LDR             R1, =(_ZN4CHud9m_MessageE_ptr - 0x438EF6)
438EEA:  VMOV.F32        S20, #0.5
438EEE:  VCVT.F32.S32    S0, S0
438EF2:  ADD             R1, PC; _ZN4CHud9m_MessageE_ptr
438EF4:  VMAX.F32        D2, D2, D3
438EF8:  LDR             R2, [R1]; float
438EFA:  VSUB.F32        S18, S2, S4
438EFE:  VMUL.F32        S0, S0, S20
438F02:  VMOV            R4, S18
438F06:  VMOV            R0, S0; this
438F0A:  MOV             R1, R4; float
438F0C:  BLX             j__ZN5CFont14GetNumberLinesEffPt; CFont::GetNumberLines(float,float,ushort *)
438F10:  VMOV            S2, R0
438F14:  VMUL.F32        S0, S22, S16
438F18:  VCVT.F32.S32    S2, S2
438F1C:  VLDR            S4, [R5,#4]
438F20:  VMOV            S6, R8
438F24:  VCVT.F32.S32    S4, S4
438F28:  VMOV            S8, R9
438F2C:  VSUB.F32        S0, S6, S0
438F30:  VMUL.F32        S2, S8, S2
438F34:  VMUL.F32        S16, S4, S20
438F38:  VCMPE.F32       S0, S2
438F3C:  VMRS            APSR_nzcv, FPSCR
438F40:  BLE             loc_439024
438F42:  LDR             R1, =(_ZN4CHud9m_MessageE_ptr - 0x438F4C)
438F44:  VMOV            R0, S16
438F48:  ADD             R1, PC; _ZN4CHud9m_MessageE_ptr
438F4A:  LDR             R2, [R1]; CHud::m_Message ...
438F4C:  MOV             R1, R4
438F4E:  B               loc_4391E8
438F50:  LDR             R0, =(byte_992048 - 0x438F56)
438F52:  ADD             R0, PC; byte_992048
438F54:  LDRB            R0, [R0]
438F56:  CMP             R0, #1
438F58:  BNE             loc_438F64
438F5A:  LDR             R0, =(_ZN4CHud9m_MessageE_ptr - 0x438F62)
438F5C:  MOVS            R1, #0
438F5E:  ADD             R0, PC; _ZN4CHud9m_MessageE_ptr
438F60:  LDR             R0, [R0]; CHud::m_Message ...
438F62:  STRH            R1, [R0]; CHud::m_Message
438F64:  LDR             R0, =(RsGlobal_ptr - 0x438F70)
438F66:  MOVS            R2, #0
438F68:  VLDR            S16, =448.0
438F6C:  ADD             R0, PC; RsGlobal_ptr
438F6E:  VLDR            S2, =1.22
438F72:  LDR             R1, =(byte_992048 - 0x438F7A)
438F74:  LDR             R0, [R0]; RsGlobal
438F76:  ADD             R1, PC; byte_992048 ; float
438F78:  VLDR            S0, [R0,#8]
438F7C:  VCVT.F32.S32    S0, S0
438F80:  STRB            R2, [R1]
438F82:  VDIV.F32        S0, S0, S16
438F86:  VMUL.F32        S0, S0, S2
438F8A:  VMOV            R0, S0; this
438F8E:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
438F92:  LDR             R0, =(_ZN11CTheScripts21bUseMessageFormattingE_ptr - 0x438F98)
438F94:  ADD             R0, PC; _ZN11CTheScripts21bUseMessageFormattingE_ptr
438F96:  LDR             R0, [R0]; CTheScripts::bUseMessageFormatting ...
438F98:  LDRB            R0, [R0]; CTheScripts::bUseMessageFormatting
438F9A:  CMP             R0, #0
438F9C:  BEQ             loc_439080
438F9E:  LDR             R0, =(RsGlobal_ptr - 0x438FA8)
438FA0:  VLDR            S18, =640.0
438FA4:  ADD             R0, PC; RsGlobal_ptr
438FA6:  LDR             R4, [R0]; RsGlobal
438FA8:  LDR             R0, =(_ZN11CTheScripts12MessageWidthE_ptr - 0x438FB2)
438FAA:  VLDR            S0, [R4,#4]
438FAE:  ADD             R0, PC; _ZN11CTheScripts12MessageWidthE_ptr
438FB0:  VCVT.F32.S32    S0, S0
438FB4:  LDR             R0, [R0]; CTheScripts::MessageWidth ...
438FB6:  LDRH            R0, [R0]; CTheScripts::MessageWidth
438FB8:  VMOV            S2, R0
438FBC:  VDIV.F32        S0, S0, S18
438FC0:  VCVT.F32.U32    S2, S2
438FC4:  VMUL.F32        S0, S0, S2
438FC8:  VMOV            R0, S0; this
438FCC:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
438FD0:  VLDR            S2, [R4,#8]
438FD4:  VMOV.F32        S8, #-2.0
438FD8:  VLDR            S0, [R4,#4]
438FDC:  VCVT.F32.S32    S2, S2
438FE0:  LDR             R0, =(_ZN11CTheScripts13MessageCentreE_ptr - 0x438FEE)
438FE2:  VCVT.F32.S32    S0, S0
438FE6:  VLDR            S6, =-105.0
438FEA:  ADD             R0, PC; _ZN11CTheScripts13MessageCentreE_ptr
438FEC:  LDR             R2, =(_ZN4CHud9m_MessageE_ptr - 0x438FF4)
438FEE:  LDR             R0, [R0]; CTheScripts::MessageCentre ...
438FF0:  ADD             R2, PC; _ZN4CHud9m_MessageE_ptr
438FF2:  LDR             R2, [R2]; CHud::m_Message ...
438FF4:  VDIV.F32        S4, S2, S16
438FF8:  LDRH            R0, [R0]; CTheScripts::MessageCentre
438FFA:  VDIV.F32        S0, S0, S18
438FFE:  VMUL.F32        S6, S4, S6
439002:  VMOV            S10, R0
439006:  VMUL.F32        S4, S4, S8
43900A:  VCVT.F32.U32    S10, S10
43900E:  VADD.F32        S2, S2, S6
439012:  VMUL.F32        S0, S0, S10
439016:  VADD.F32        S2, S2, S4
43901A:  VMOV            R0, S0
43901E:  VMOV            R1, S2
439022:  B               loc_4391E8
439024:  MOVS            R0, #0; this
439026:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
43902A:  MOV             R5, R0
43902C:  LDR             R0, =(RsGlobal_ptr - 0x439034)
43902E:  LDR             R1, =(_ZN4CHud9m_MessageE_ptr - 0x439036)
439030:  ADD             R0, PC; RsGlobal_ptr
439032:  ADD             R1, PC; _ZN4CHud9m_MessageE_ptr
439034:  LDR             R0, [R0]; RsGlobal
439036:  LDR             R6, [R1]; CHud::m_Message ...
439038:  MOV             R1, R4; float
43903A:  VLDR            S0, [R0,#4]
43903E:  MOV             R2, R6; float
439040:  VCVT.F32.S32    S0, S0
439044:  VMUL.F32        S0, S0, S20
439048:  VMOV            R0, S0; this
43904C:  BLX             j__ZN5CFont14GetNumberLinesEffPt; CFont::GetNumberLines(float,float,ushort *)
439050:  VMOV            S0, R0
439054:  MOV             R2, R6
439056:  VMOV            S2, R5
43905A:  VCVT.F32.S32    S0, S0
43905E:  VMOV            R0, S16
439062:  VMUL.F32        S0, S2, S0
439066:  VLDR            S2, =-1.1
43906A:  VMUL.F32        S0, S0, S2
43906E:  VADD.F32        S0, S18, S0
439072:  B               loc_4391E4
439074:  DCFS 640.0
439078:  DCFS 0.0
43907C:  DCFS 40.0
439080:  LDR             R0, =(RsGlobal_ptr - 0x43908A)
439082:  VLDR            S2, =-640.0
439086:  ADD             R0, PC; RsGlobal_ptr
439088:  VLDR            S4, =280.0
43908C:  LDR             R0, [R0]; RsGlobal
43908E:  LDR             R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
439090:  VMOV            S0, R0
439094:  VCVT.F32.S32    S0, S0
439098:  VDIV.F32        S2, S0, S2
43909C:  VMUL.F32        S2, S2, S4
4390A0:  VADD.F32        S0, S0, S2
4390A4:  VMOV            R0, S0; this
4390A8:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
4390AC:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x4390B2)
4390AE:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
4390B0:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
4390B2:  LDR.W           R0, [R0,#(dword_6F3A64 - 0x6F3794)]; this
4390B6:  CBZ             R0, loc_4390FC
4390B8:  BLX             j__ZN7CWidget10GetEnabledEv; CWidget::GetEnabled(void)
4390BC:  CMP             R0, #1
4390BE:  BNE             loc_4390FC
4390C0:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x4390C6)
4390C2:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
4390C4:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
4390C6:  LDR.W           R0, [R0,#(dword_6F3A64 - 0x6F3794)]
4390CA:  VLDR            S0, [R0,#0x20]
4390CE:  VLDR            S2, [R0,#0x28]
4390D2:  LDR             R0, =(RsGlobal_ptr - 0x4390DC)
4390D4:  VSUB.F32        S0, S2, S0
4390D8:  ADD             R0, PC; RsGlobal_ptr
4390DA:  VMOV.F32        S2, #-2.5
4390DE:  LDR             R0, [R0]; RsGlobal
4390E0:  VLDR            S4, [R0,#4]
4390E4:  VABS.F32        S0, S0
4390E8:  VCVT.F32.S32    S4, S4
4390EC:  VMUL.F32        S0, S0, S2
4390F0:  VADD.F32        S0, S4, S0
4390F4:  VMOV            R0, S0; this
4390F8:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
4390FC:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x439102)
4390FE:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
439100:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
439102:  LDR.W           R0, [R0,#(dword_6F3A04 - 0x6F3794)]; this
439106:  CBZ             R0, loc_43914C
439108:  BLX             j__ZN7CWidget10GetEnabledEv; CWidget::GetEnabled(void)
43910C:  CMP             R0, #1
43910E:  BNE             loc_43914C
439110:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x439116)
439112:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
439114:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
439116:  LDR.W           R0, [R0,#(dword_6F3A04 - 0x6F3794)]
43911A:  VLDR            S0, [R0,#0x20]
43911E:  VLDR            S2, [R0,#0x28]
439122:  LDR             R0, =(RsGlobal_ptr - 0x43912C)
439124:  VSUB.F32        S0, S2, S0
439128:  ADD             R0, PC; RsGlobal_ptr
43912A:  VMOV.F32        S2, #-2.5
43912E:  LDR             R0, [R0]; RsGlobal
439130:  VLDR            S4, [R0,#4]
439134:  VABS.F32        S0, S0
439138:  VCVT.F32.S32    S4, S4
43913C:  VMUL.F32        S0, S0, S2
439140:  VADD.F32        S0, S4, S0
439144:  VMOV            R0, S0; this
439148:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
43914C:  LDR             R0, =(RsGlobal_ptr - 0x439152)
43914E:  ADD             R0, PC; RsGlobal_ptr
439150:  LDR             R6, [R0]; RsGlobal
439152:  LDR             R0, [R6,#(dword_9FC904 - 0x9FC8FC)]
439154:  VMOV            S0, R0
439158:  VCVT.F32.S32    S0, S0
43915C:  VDIV.F32        S0, S0, S16
439160:  VMOV            R0, S0; this
439164:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
439168:  MOVS            R0, #0; this
43916A:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
43916E:  MOV             R5, R0
439170:  LDR             R0, [R6,#(dword_9FC900 - 0x9FC8FC)]
439172:  LDR             R1, =(_ZN4CHud9m_MessageE_ptr - 0x43917C)
439174:  ADD.W           R0, R0, R0,LSR#31
439178:  ADD             R1, PC; _ZN4CHud9m_MessageE_ptr
43917A:  ASRS            R0, R0, #1
43917C:  LDR             R4, [R1]; CHud::m_Message ...
43917E:  VMOV            S0, R0
439182:  MOVS            R1, #0; float
439184:  VCVT.F32.S32    S0, S0
439188:  MOV             R2, R4; float
43918A:  VMOV            R0, S0; this
43918E:  BLX             j__ZN5CFont14GetNumberLinesEffPt; CFont::GetNumberLines(float,float,ushort *)
439192:  LDR             R1, [R6,#(dword_9FC904 - 0x9FC8FC)]
439194:  VMOV            S2, R0
439198:  VMOV            S4, R5
43919C:  MOV             R2, R4; CFont *
43919E:  VMOV.F32        S8, #0.5
4391A2:  VMOV            S0, R1
4391A6:  VCVT.F32.S32    S0, S0
4391AA:  VCVT.F32.S32    S2, S2
4391AE:  VLDR            S6, [R6,#4]
4391B2:  VDIV.F32        S0, S0, S16
4391B6:  VMUL.F32        S2, S4, S2
4391BA:  VMOV.F32        S4, #-25.0
4391BE:  VCVT.S32.F32    S2, S2
4391C2:  VCVT.F32.S32    S6, S6
4391C6:  VMUL.F32        S0, S0, S4
4391CA:  VMOV            R0, S2
4391CE:  VMUL.F32        S4, S6, S8
4391D2:  SUBS            R0, R1, R0
4391D4:  VMOV            S2, R0
4391D8:  VMOV            R0, S4; this
4391DC:  VCVT.F32.S32    S2, S2
4391E0:  VADD.F32        S0, S2, S0
4391E4:  VMOV            R1, S0; float
4391E8:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
4391EC:  MOVS            R0, #0; this
4391EE:  BLX             j__ZN5CFont21SetDropShadowPositionEa; CFont::SetDropShadowPosition(signed char)
4391F2:  ADD             SP, SP, #0x10
4391F4:  VPOP            {D8-D11}
4391F8:  POP.W           {R8-R10}
4391FC:  POP             {R4-R7,PC}
