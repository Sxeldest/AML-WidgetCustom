; =========================================================
; Game Engine Function: _ZN6CRadar20DrawRadarGangOverlayEb
; Address            : 0x443EE0 - 0x4440D8
; =========================================================

443EE0:  PUSH            {R4-R7,LR}
443EE2:  ADD             R7, SP, #0xC
443EE4:  PUSH.W          {R8-R11}
443EE8:  SUB             SP, SP, #4
443EEA:  VPUSH           {D8-D9}
443EEE:  SUB             SP, SP, #0x20
443EF0:  STR             R0, [SP,#0x50+var_3C]
443EF2:  LDR             R0, =(byte_994F10 - 0x443EF8)
443EF4:  ADD             R0, PC; byte_994F10
443EF6:  LDRB            R0, [R0]
443EF8:  DMB.W           ISH
443EFC:  TST.W           R0, #1
443F00:  BNE             loc_443F22
443F02:  LDR             R0, =(byte_994F10 - 0x443F08)
443F04:  ADD             R0, PC; byte_994F10 ; __guard *
443F06:  BLX             j___cxa_guard_acquire
443F0A:  CBZ             R0, loc_443F22
443F0C:  ADR             R0, dword_4440E0
443F0E:  LDR             R1, =(unk_994F00 - 0x443F18)
443F10:  VLD1.64         {D16-D17}, [R0@128]
443F14:  ADD             R1, PC; unk_994F00
443F16:  LDR             R0, =(byte_994F10 - 0x443F20)
443F18:  VST1.64         {D16-D17}, [R1@128]
443F1C:  ADD             R0, PC; byte_994F10 ; __guard *
443F1E:  BLX             j___cxa_guard_release
443F22:  LDR             R0, =(_ZN9CGangWars15bGangWarsActiveE_ptr - 0x443F28)
443F24:  ADD             R0, PC; _ZN9CGangWars15bGangWarsActiveE_ptr
443F26:  LDR             R0, [R0]; CGangWars::bGangWarsActive ...
443F28:  LDRB            R0, [R0]; CGangWars::bGangWarsActive
443F2A:  CMP             R0, #0
443F2C:  BEQ.W           loc_4440CA
443F30:  LDR             R0, =(gMobileMenu_ptr - 0x443F36)
443F32:  ADD             R0, PC; gMobileMenu_ptr
443F34:  LDR             R0, [R0]; gMobileMenu
443F36:  LDR             R1, [R0,#(dword_6E0090 - 0x6E006C)]
443F38:  CMP             R1, #0
443F3A:  ITT EQ
443F3C:  LDREQ           R0, [R0,#(dword_6E0098 - 0x6E006C)]
443F3E:  CMPEQ           R0, #0
443F40:  BNE             loc_443F5E
443F42:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x443F48)
443F44:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
443F46:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
443F48:  LDR.W           R0, [R0,#(dword_6F3A18 - 0x6F3794)]
443F4C:  CBZ             R0, loc_443F5E
443F4E:  LDRB.W          R0, [R0,#0x4C]
443F52:  CMP             R0, #0
443F54:  BEQ.W           loc_4440CA
443F58:  LDR             R0, =(_ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr - 0x443F5E)
443F5A:  ADD             R0, PC; _ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr
443F5C:  B               loc_443F62
443F5E:  LDR             R0, =(_ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr - 0x443F64)
443F60:  ADD             R0, PC; _ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr
443F62:  LDR             R0, [R0]; CTheZones::TotalNumberOfNavigationZones ...
443F64:  LDRH            R0, [R0]; CTheZones::TotalNumberOfNavigationZones
443F66:  CMP             R0, #0
443F68:  BEQ.W           loc_4440CA
443F6C:  LDR             R0, =(_ZN9CTheZones19NavigationZoneArrayE_ptr - 0x443F7A)
443F6E:  VMOV.F32        S18, #0.5
443F72:  LDR             R1, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x443F80)
443F74:  MOVS            R6, #0
443F76:  ADD             R0, PC; _ZN9CTheZones19NavigationZoneArrayE_ptr
443F78:  VLDR            S16, =0.0061359
443F7C:  ADD             R1, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
443F7E:  LDR             R0, [R0]; CTheZones::NavigationZoneArray ...
443F80:  ADD.W           R5, R0, #0x10
443F84:  LDR             R0, =(_ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr - 0x443F8A)
443F86:  ADD             R0, PC; _ZN9CTheZones28TotalNumberOfNavigationZonesE_ptr
443F88:  LDR.W           R8, [R0]; CTheZones::TotalNumberOfNavigationZones ...
443F8C:  LDR             R0, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x443F92)
443F8E:  ADD             R0, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
443F90:  LDR.W           R9, [R0]; CTheZones::ZoneInfoArray ...
443F94:  LDR             R0, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x443F9A)
443F96:  ADD             R0, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
443F98:  LDR.W           R10, [R0]; CTheZones::ZoneInfoArray ...
443F9C:  LDR             R0, =(gMobileMenu_ptr - 0x443FA2)
443F9E:  ADD             R0, PC; gMobileMenu_ptr
443FA0:  LDR             R0, [R0]; gMobileMenu
443FA2:  STR             R0, [SP,#0x50+var_40]
443FA4:  LDR             R0, [R1]; CTimer::m_snTimeInMillisecondsPauseMode ...
443FA6:  STR             R0, [SP,#0x50+var_44]
443FA8:  LDR             R0, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x443FAE)
443FAA:  ADD             R0, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
443FAC:  LDR             R0, [R0]; CTheZones::ZoneInfoArray ...
443FAE:  STR             R0, [SP,#0x50+var_48]
443FB0:  LDR             R0, =(_ZN9CTheZones13ZoneInfoArrayE_ptr - 0x443FB6)
443FB2:  ADD             R0, PC; _ZN9CTheZones13ZoneInfoArrayE_ptr
443FB4:  LDR             R0, [R0]; CTheZones::ZoneInfoArray ...
443FB6:  STR             R0, [SP,#0x50+var_4C]
443FB8:  LDRH            R0, [R5,#0xC]
443FBA:  CMP             R0, #0
443FBC:  BEQ             loc_4440BC
443FBE:  ADD.W           R4, R0, R0,LSL#4
443FC2:  ADD.W           R11, R9, R4
443FC6:  LDRB.W          R0, [R11,#0xF]!
443FCA:  TST.W           R0, #0x60
443FCE:  BEQ             loc_4440BC
443FD0:  ADD.W           R0, R10, R4
443FD4:  BLX             j__ZN9CGangWars26CanPlayerStartAGangWarHereEP9CZoneInfo; CGangWars::CanPlayerStartAGangWarHere(CZoneInfo *)
443FD8:  CMP             R0, #1
443FDA:  BNE             loc_4440BC
443FDC:  LDRSH.W         R0, [R5]
443FE0:  VMOV            S0, R0
443FE4:  LDR             R0, =(unk_994F00 - 0x443FEE)
443FE6:  VCVT.F32.S32    S0, S0
443FEA:  ADD             R0, PC; unk_994F00
443FEC:  MOV             R1, R0
443FEE:  LDRSH.W         R0, [R5,#6]
443FF2:  VSTR            S0, [R1]
443FF6:  VMOV            S0, R0
443FFA:  VCVT.F32.S32    S0, S0
443FFE:  LDRSH.W         R0, [R5,#8]
444002:  VSTR            S0, [R1,#8]
444006:  VMOV            S0, R0
44400A:  VCVT.F32.S32    S0, S0
44400E:  LDRSH.W         R0, [R5,#2]
444012:  VSTR            S0, [R1,#4]
444016:  VMOV            S0, R0
44401A:  VCVT.F32.S32    S0, S0
44401E:  LDRH.W          R0, [R11]
444022:  VSTR            S0, [R1,#0xC]
444026:  UBFX.W          R0, R0, #5, #2
44402A:  CMP             R0, #2
44402C:  BEQ             loc_44404E
44402E:  CMP             R0, #1
444030:  BNE             loc_4440BC
444032:  LDR             R0, [SP,#0x50+var_4C]
444034:  ADD             R0, R4
444036:  ADD             R4, SP, #0x50+var_34
444038:  LDRB            R1, [R0,#0xB]; unsigned __int8
44403A:  LDRB            R2, [R0,#0xC]; unsigned __int8
44403C:  LDRB            R3, [R0,#0xD]; unsigned __int8
44403E:  LDRB            R0, [R0,#0xE]
444040:  STR             R0, [SP,#0x50+var_50]; unsigned __int8
444042:  MOV             R0, R4; this
444044:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
444048:  LDR             R0, =(unk_994F00 - 0x44404E)
44404A:  ADD             R0, PC; unk_994F00
44404C:  B               loc_4440B4
44404E:  LDR             R0, [SP,#0x50+var_40]
444050:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x44405A)
444052:  LDRB.W          R0, [R0,#0x6C]
444056:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
444058:  CMP             R0, #0
44405A:  LDR             R0, [SP,#0x50+var_44]
44405C:  IT EQ
44405E:  LDREQ           R0, [R1]; CTimer::m_snTimeInMilliseconds ...
444060:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
444062:  BFC.W           R0, #0xA, #0x16
444066:  VMOV            S0, R0
44406A:  VCVT.F32.U32    S0, S0
44406E:  VMUL.F32        S0, S0, S16
444072:  VMOV            R0, S0; x
444076:  BLX             sinf
44407A:  VMOV            S0, R0
44407E:  LDR             R0, [SP,#0x50+var_48]
444080:  VMUL.F32        S0, S0, S18
444084:  ADD             R0, R4
444086:  ADD             R4, SP, #0x50+var_38
444088:  LDRB            R1, [R0,#0xE]
44408A:  VMOV            S2, R1
44408E:  VCVT.F32.U32    S2, S2
444092:  LDRB            R1, [R0,#0xB]; unsigned __int8
444094:  VADD.F32        S0, S0, S18
444098:  LDRB            R2, [R0,#0xC]; unsigned __int8
44409A:  LDRB            R3, [R0,#0xD]; unsigned __int8
44409C:  VMUL.F32        S0, S0, S2
4440A0:  VCVT.U32.F32    S0, S0
4440A4:  VMOV            R0, S0
4440A8:  STR             R0, [SP,#0x50+var_50]; unsigned __int8
4440AA:  MOV             R0, R4; this
4440AC:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4440B0:  LDR             R0, =(unk_994F00 - 0x4440B6)
4440B2:  ADD             R0, PC; unk_994F00
4440B4:  LDR             R2, [SP,#0x50+var_3C]
4440B6:  MOV             R1, R4
4440B8:  BLX             j__ZN6CRadar15DrawAreaOnRadarERK5CRectRK5CRGBAb; CRadar::DrawAreaOnRadar(CRect const&,CRGBA const&,bool)
4440BC:  LDRH.W          R0, [R8]; CTheZones::TotalNumberOfNavigationZones
4440C0:  ADDS            R6, #1
4440C2:  ADDS            R5, #0x20 ; ' '
4440C4:  CMP             R6, R0
4440C6:  BLT.W           loc_443FB8
4440CA:  ADD             SP, SP, #0x20 ; ' '
4440CC:  VPOP            {D8-D9}
4440D0:  ADD             SP, SP, #4
4440D2:  POP.W           {R8-R11}
4440D6:  POP             {R4-R7,PC}
