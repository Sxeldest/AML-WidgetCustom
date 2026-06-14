; =========================================================
; Game Engine Function: _ZN12CMenuManager19DrawControllerBoundEtb
; Address            : 0x433D74 - 0x4344A0
; =========================================================

433D74:  PUSH            {R4-R7,LR}
433D76:  ADD             R7, SP, #0xC
433D78:  PUSH.W          {R8-R11}
433D7C:  SUB             SP, SP, #4
433D7E:  VPUSH           {D8-D10}
433D82:  SUB             SP, SP, #0x88
433D84:  STR             R2, [SP,#0xC0+var_6C]
433D86:  MOV             R8, R0
433D88:  LDRB.W          R0, [R8,#0x7B]
433D8C:  MOV             R6, R1
433D8E:  CMP             R0, #1
433D90:  BEQ             loc_433DA4
433D92:  CBNZ            R0, loc_433DA8
433D94:  LDRB.W          R0, [R8,#0x94]
433D98:  MOVS            R1, #0xB
433D9A:  CMP             R0, #0
433D9C:  IT EQ
433D9E:  MOVEQ           R1, #0xF
433DA0:  STR             R1, [SP,#0xC0+var_74]
433DA2:  B               loc_433DAC
433DA4:  MOVS            R0, #0xD
433DA6:  B               loc_433DAA
433DA8:  MOVS            R0, #0
433DAA:  STR             R0, [SP,#0xC0+var_74]
433DAC:  VMOV            S0, R6
433DB0:  MOV             R0, R8; this
433DB2:  VCVT.F32.U32    S0, S0
433DB6:  VMOV            R4, S0
433DBA:  MOV             R1, R4; float
433DBC:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
433DC0:  LDRB.W          R1, [R8,#0x7B]
433DC4:  CMP             R1, #1
433DC6:  BEQ             loc_433DDE
433DC8:  CMP             R1, #0
433DCA:  BNE.W           loc_434488
433DCE:  LDRB.W          R1, [R8,#0x94]
433DD2:  MOVS            R2, #0x1C
433DD4:  CMP             R1, #0
433DD6:  IT EQ
433DD8:  MOVEQ           R2, #0x16
433DDA:  STR             R2, [SP,#0xC0+var_78]
433DDC:  B               loc_433DE2
433DDE:  MOVS            R1, #0x19
433DE0:  STR             R1, [SP,#0xC0+var_78]
433DE2:  VMOV            S16, R0
433DE6:  MOV             R0, R8; this
433DE8:  MOV             R1, R4; float
433DEA:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
433DEE:  MOV.W           R0, #0x10000
433DF2:  ADD.W           R1, R0, R6,LSL#16
433DF6:  MOVW            R0, #0x1ACF
433DFA:  ADDS            R5, R6, #1
433DFC:  ADD             R0, R8
433DFE:  STR             R0, [SP,#0xC0+var_70]
433E00:  MOVW            R0, #0x1ACE
433E04:  MOV             R6, R1
433E06:  ADD             R0, R8
433E08:  STR             R0, [SP,#0xC0+var_9C]
433E0A:  MOVW            R0, #0x1AD8
433E0E:  MOV.W           R10, #0
433E12:  ADD             R0, R8
433E14:  STR             R0, [SP,#0xC0+var_A0]
433E16:  MOVW            R0, #0x1AD0
433E1A:  ADD             R0, R8
433E1C:  STR             R0, [SP,#0xC0+var_A4]
433E1E:  MOVW            R0, #0x1ACD
433E22:  ADD             R0, R8
433E24:  STR             R0, [SP,#0xC0+var_98]
433E26:  MOVW            R0, #0x1AAC
433E2A:  ADD             R0, R8
433E2C:  STR             R0, [SP,#0xC0+var_AC]
433E2E:  LDR             R0, [SP,#0xC0+var_74]
433E30:  LSLS            R0, R0, #0x10
433E32:  STR             R0, [SP,#0xC0+var_7C]
433E34:  LDR.W           R0, =(RsGlobal_ptr - 0x433E3C)
433E38:  ADD             R0, PC; RsGlobal_ptr
433E3A:  LDR             R0, [R0]; RsGlobal
433E3C:  STR             R0, [SP,#0xC0+var_80]
433E3E:  LDR.W           R0, =(ControlsManager_ptr - 0x433E46)
433E42:  ADD             R0, PC; ControlsManager_ptr
433E44:  LDR             R0, [R0]; ControlsManager
433E46:  STR             R0, [SP,#0xC0+var_88]
433E48:  LDR.W           R0, =(ControlsManager_ptr - 0x433E50)
433E4C:  ADD             R0, PC; ControlsManager_ptr
433E4E:  LDR             R0, [R0]; ControlsManager
433E50:  STR             R0, [SP,#0xC0+var_8C]
433E52:  LDR.W           R0, =(ControlsManager_ptr - 0x433E5A)
433E56:  ADD             R0, PC; ControlsManager_ptr
433E58:  LDR             R0, [R0]; ControlsManager
433E5A:  STR             R0, [SP,#0xC0+var_90]
433E5C:  LDR.W           R0, =(ControlsManager_ptr - 0x433E64)
433E60:  ADD             R0, PC; ControlsManager_ptr
433E62:  LDR             R0, [R0]; ControlsManager
433E64:  STR             R0, [SP,#0xC0+var_94]
433E66:  LDR.W           R0, =(TheText_ptr - 0x433E6E)
433E6A:  ADD             R0, PC; TheText_ptr
433E6C:  LDR             R0, [R0]; TheText
433E6E:  STR             R0, [SP,#0xC0+var_A8]
433E70:  LDR.W           R0, =(TheText_ptr - 0x433E78)
433E74:  ADD             R0, PC; TheText_ptr
433E76:  LDR             R0, [R0]; TheText
433E78:  STR             R0, [SP,#0xC0+var_BC]
433E7A:  LDR.W           R0, =(TheText_ptr - 0x433E82)
433E7E:  ADD             R0, PC; TheText_ptr
433E80:  LDR             R0, [R0]; TheText
433E82:  STR             R0, [SP,#0xC0+var_B8]
433E84:  LDR.W           R0, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x433E8C)
433E88:  ADD             R0, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
433E8A:  LDR             R0, [R0]; CTimer::m_snTimeInMillisecondsPauseMode ...
433E8C:  STR             R0, [SP,#0xC0+var_B0]
433E8E:  LDR.W           R0, =(TheText_ptr - 0x433E96)
433E92:  ADD             R0, PC; TheText_ptr
433E94:  LDR             R0, [R0]; TheText
433E96:  STR             R0, [SP,#0xC0+var_B4]
433E98:  LDR.W           R0, =(RsGlobal_ptr - 0x433EA0)
433E9C:  ADD             R0, PC; RsGlobal_ptr
433E9E:  LDR             R0, [R0]; RsGlobal
433EA0:  STR             R0, [SP,#0xC0+var_84]
433EA2:  MOVS            R0, #0
433EA4:  STR             R0, [SP,#0xC0+var_68]
433EA6:  B               loc_433FEE
433EA8:  CMP.W           R9, #0
433EAC:  BEQ             loc_433F56
433EAE:  LDR.W           R0, [R8,#0x54]
433EB2:  CMP             R10, R0
433EB4:  BNE.W           loc_43444E
433EB8:  LDR             R0, [SP,#0xC0+var_A4]
433EBA:  LDR             R1, [SP,#0xC0+var_68]
433EBC:  STR             R1, [R0]
433EBE:  LDR             R0, [SP,#0xC0+var_98]
433EC0:  LDRB            R0, [R0]
433EC2:  CMP             R0, #0
433EC4:  BEQ             loc_433F8A
433EC6:  LDR.W           R0, =(dword_990C1C - 0x433ECE)
433ECA:  ADD             R0, PC; dword_990C1C
433ECC:  LDR             R2, [R0]
433ECE:  LDR             R0, [SP,#0xC0+var_B0]
433ED0:  LDR             R1, [R0]
433ED2:  LDR.W           R0, =(byte_990C18 - 0x433EDC)
433ED6:  SUBS            R2, R1, R2
433ED8:  ADD             R0, PC; byte_990C18
433EDA:  CMP             R2, #0x97
433EDC:  LDRB            R0, [R0]
433EDE:  BCC             loc_433EFA
433EE0:  LDR.W           R2, =(dword_990C1C - 0x433EEE)
433EE4:  CMP             R0, #0
433EE6:  MOV.W           R0, #0
433EEA:  ADD             R2, PC; dword_990C1C
433EEC:  STR             R1, [R2]
433EEE:  IT EQ
433EF0:  MOVEQ           R0, #1
433EF2:  LDR.W           R1, =(byte_990C18 - 0x433EFA)
433EF6:  ADD             R1, PC; byte_990C18
433EF8:  STRB            R0, [R1]
433EFA:  CBZ             R0, loc_433F3A
433EFC:  MOVS            R0, #0xFF
433EFE:  MOVS            R1, #0; unsigned __int8
433F00:  STR             R0, [SP,#0xC0+var_C0]; unsigned __int8
433F02:  ADD             R0, SP, #0xC0+var_64; this
433F04:  MOVS            R2, #0; unsigned __int8
433F06:  MOVS            R3, #0; unsigned __int8
433F08:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
433F0C:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
433F10:  LDR.W           R1, =(aFecQue - 0x433F1A); "FEC_QUE"
433F14:  LDR             R0, [SP,#0xC0+var_B4]; this
433F16:  ADD             R1, PC; "FEC_QUE"
433F18:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
433F1C:  MOV             R2, R0; CFont *
433F1E:  LDR             R0, [SP,#0xC0+var_6C]
433F20:  CBNZ            R0, loc_433F3A
433F22:  VMOV            S0, R11
433F26:  VCVT.F32.S32    S0, S0
433F2A:  VCVT.F32.S32    S2, S16
433F2E:  VMOV            R0, S0; this
433F32:  VMOV            R1, S2; float
433F36:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
433F3A:  LDR             R0, [SP,#0xC0+var_9C]
433F3C:  LDRB            R0, [R0]
433F3E:  CMP             R0, #0
433F40:  MOV             R0, R8; this
433F42:  ITE NE
433F44:  ADRNE.W         R1, aFetCig; "FET_CIG"
433F48:  ADREQ.W         R1, aFetRig; "FET_RIG"
433F4C:  BLX             j__ZN12CMenuManager17DisplayHelperTextEPc; CMenuManager::DisplayHelperText(char *)
433F50:  LDR             R0, [SP,#0xC0+var_A0]
433F52:  MOVS            R1, #1
433F54:  B               loc_433F9C
433F56:  LDR             R0, [SP,#0xC0+var_AC]
433F58:  MOVS            R1, #0
433F5A:  STRB            R1, [R0]
433F5C:  LDR.W           R0, [R8,#0x54]
433F60:  CMP             R10, R0
433F62:  BNE             loc_433FA0
433F64:  LDR             R0, [SP,#0xC0+var_98]
433F66:  LDRB            R0, [R0]
433F68:  CMP             R0, #0
433F6A:  BNE             loc_433EAE
433F6C:  MOVS            R0, #0xFF
433F6E:  MOVS            R1, #0xC8; unsigned __int8
433F70:  STR             R0, [SP,#0xC0+var_C0]; unsigned __int8
433F72:  ADD             R0, SP, #0xC0+var_60; this
433F74:  MOVS            R2, #0x32 ; '2'; unsigned __int8
433F76:  MOVS            R3, #0x32 ; '2'; unsigned __int8
433F78:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
433F7C:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
433F80:  LDR             R0, [SP,#0xC0+var_6C]
433F82:  CMP             R0, #0
433F84:  BNE             loc_433EAE
433F86:  LDR             R0, [SP,#0xC0+var_BC]
433F88:  B               loc_433FBE
433F8A:  ADR.W           R1, aFetCig; "FET_CIG"
433F8E:  MOV             R0, R8; this
433F90:  BLX             j__ZN12CMenuManager17DisplayHelperTextEPc; CMenuManager::DisplayHelperText(char *)
433F94:  LDR             R0, [SP,#0xC0+var_A0]
433F96:  MOVS            R1, #0
433F98:  STRB            R1, [R0]
433F9A:  LDR             R0, [SP,#0xC0+var_9C]
433F9C:  STRB            R1, [R0]
433F9E:  B               loc_43444E
433FA0:  MOVS            R0, #0xFF
433FA2:  MOVS            R1, #0xC8; unsigned __int8
433FA4:  STR             R0, [SP,#0xC0+var_C0]; unsigned __int8
433FA6:  ADD             R0, SP, #0xC0+var_5C; this
433FA8:  MOVS            R2, #0x32 ; '2'; unsigned __int8
433FAA:  MOVS            R3, #0x32 ; '2'; unsigned __int8
433FAC:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
433FB0:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
433FB4:  LDR             R0, [SP,#0xC0+var_6C]
433FB6:  CMP             R0, #0
433FB8:  BNE.W           loc_433EAE
433FBC:  LDR             R0, [SP,#0xC0+var_B8]; this
433FBE:  ADR.W           R1, aFecUnb; "FEC_UNB"
433FC2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
433FC6:  VMOV            S0, R11
433FCA:  MOV             R2, R0; CFont *
433FCC:  VCVT.F32.S32    S0, S0
433FD0:  VCVT.F32.S32    S2, S16
433FD4:  VMOV            R0, S0; this
433FD8:  VMOV            R1, S2; float
433FDC:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
433FE0:  B               loc_433EAE
433FE2:  CMP             R0, #0
433FE4:  IT EQ
433FE6:  MOVEQ.W         R1, #0xFFFFFFFF
433FEA:  STR             R1, [SP,#0xC0+var_68]
433FEC:  B               def_43403C; jumptable 0043403C default case, cases 8,9,40,41
433FEE:  MOVS            R1, #0
433FF0:  MOV             R0, R8; this
433FF2:  MOVT            R1, #0x4387; float
433FF6:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
433FFA:  MOV             R4, R0
433FFC:  MOVS            R0, #0xFF
433FFE:  STR             R0, [SP,#0xC0+var_C0]; unsigned __int8
434000:  ADD             R0, SP, #0xC0+var_3C; this
434002:  MOVS            R1, #0xFF; unsigned __int8
434004:  MOVS            R2, #0xFF; unsigned __int8
434006:  MOVS            R3, #0xFF; unsigned __int8
434008:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43400C:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
434010:  VMOV            S0, R4
434014:  VCVT.S32.F32    S16, S16
434018:  VCVT.S32.F32    S18, S0
43401C:  LDRB.W          R0, [R8,#0x7B]
434020:  CMP             R0, #1
434022:  BEQ.W           loc_4340E2
434026:  CMP             R0, #0
434028:  BNE.W           def_43403C; jumptable 0043403C default case, cases 8,9,40,41
43402C:  LDR.W           R0, =(unk_618A9C - 0x434034)
434030:  ADD             R0, PC; unk_618A9C
434032:  LDR.W           R0, [R0,R10,LSL#2]
434036:  CMP             R0, #0x2A ; '*'; switch 43 cases
434038:  BHI.W           def_43403C; jumptable 0043403C default case, cases 8,9,40,41
43403C:  TBH.W           [PC,R0,LSL#1]; switch jump
434040:  DCW 0xA5; jump table for switch statement
434042:  DCW 0xA5
434044:  DCW 0xA5
434046:  DCW 0xA5
434048:  DCW 0xA5
43404A:  DCW 0xA5
43404C:  DCW 0xA5
43404E:  DCW 0xA5
434050:  DCW 0xA6
434052:  DCW 0xA6
434054:  DCW 0x91
434056:  DCW 0x4F
434058:  DCW 0x4D
43405A:  DCW 0x4B
43405C:  DCW 0x49
43405E:  DCW 0x47
434060:  DCW 0x8F
434062:  DCW 0xA3
434064:  DCW 0xA3
434066:  DCW 0xA3
434068:  DCW 0xA3
43406A:  DCW 0xA3
43406C:  DCW 0x83
43406E:  DCW 0x45
434070:  DCW 0x43
434072:  DCW 0xA3
434074:  DCW 0x41
434076:  DCW 0x3F
434078:  DCW 0x3D
43407A:  DCW 0x3B
43407C:  DCW 0xA3
43407E:  DCW 0xA3
434080:  DCW 0xA3
434082:  DCW 0xA3
434084:  DCW 0x39
434086:  DCW 0xA3
434088:  DCW 0x35
43408A:  DCW 0x31
43408C:  DCW 0x2F
43408E:  DCW 0x2D
434090:  DCW 0xA6
434092:  DCW 0xA6
434094:  DCW 0x2B
434096:  MOVS            R0, #0x2C ; ','; jumptable 0043403C case 42
434098:  B               loc_43418A; jumptable 0043403C cases 0-7
43409A:  MOVS            R0, #0x34 ; '4'; jumptable 0043403C case 39
43409C:  B               loc_43418A; jumptable 0043403C cases 0-7
43409E:  MOVS            R0, #0x33 ; '3'; jumptable 0043403C case 38
4340A0:  B               loc_43418A; jumptable 0043403C cases 0-7
4340A2:  LDRB.W          R0, [R8,#0x94]; jumptable 0043403C case 37
4340A6:  MOVS            R1, #0x21 ; '!'
4340A8:  B               loc_433FE2
4340AA:  LDRB.W          R0, [R8,#0x94]; jumptable 0043403C case 36
4340AE:  MOVS            R1, #0x20 ; ' '
4340B0:  B               loc_433FE2
4340B2:  MOVS            R0, #0xE; jumptable 0043403C case 34
4340B4:  B               loc_43418A; jumptable 0043403C cases 0-7
4340B6:  MOVS            R0, #0x11; jumptable 0043403C case 29
4340B8:  B               loc_43418A; jumptable 0043403C cases 0-7
4340BA:  MOVS            R0, #0x10; jumptable 0043403C case 28
4340BC:  B               loc_43418A; jumptable 0043403C cases 0-7
4340BE:  MOVS            R0, #0xF; jumptable 0043403C case 27
4340C0:  B               loc_43418A; jumptable 0043403C cases 0-7
4340C2:  MOVS            R0, #0x2D ; '-'; jumptable 0043403C case 26
4340C4:  B               loc_43418A; jumptable 0043403C cases 0-7
4340C6:  MOVS            R0, #0xD; jumptable 0043403C case 24
4340C8:  B               loc_43418A; jumptable 0043403C cases 0-7
4340CA:  MOVS            R0, #0xC; jumptable 0043403C case 23
4340CC:  B               loc_43418A; jumptable 0043403C cases 0-7
4340CE:  MOVS            R0, #9; jumptable 0043403C case 15
4340D0:  B               loc_43418A; jumptable 0043403C cases 0-7
4340D2:  MOVS            R0, #8; jumptable 0043403C case 14
4340D4:  B               loc_43418A; jumptable 0043403C cases 0-7
4340D6:  MOVS            R0, #0x32 ; '2'; jumptable 0043403C case 13
4340D8:  B               loc_43418A; jumptable 0043403C cases 0-7
4340DA:  MOVS            R0, #0x31 ; '1'; jumptable 0043403C case 12
4340DC:  B               loc_43418A; jumptable 0043403C cases 0-7
4340DE:  MOVS            R0, #0x30 ; '0'; jumptable 0043403C case 11
4340E0:  B               loc_43418A; jumptable 0043403C cases 0-7
4340E2:  LDR.W           R0, =(unk_618B0C - 0x4340EA)
4340E6:  ADD             R0, PC; unk_618B0C
4340E8:  LDR.W           R0, [R0,R10,LSL#2]
4340EC:  CMP             R0, #0x2A ; '*'; switch 43 cases
4340EE:  BHI.W           def_43403C; jumptable 0043403C default case, cases 8,9,40,41
4340F2:  TBB.W           [PC,R0]; switch jump
4340F6:  DCB 0x46; jump table for switch statement
4340F7:  DCB 0x44
4340F8:  DCB 0x48
4340F9:  DCB 0x48
4340FA:  DCB 0x42
4340FB:  DCB 0x40
4340FC:  DCB 0x3E
4340FD:  DCB 0x3C
4340FE:  DCB 0x3A
4340FF:  DCB 0x38
434100:  DCB 0x36
434101:  DCB 0x48
434102:  DCB 0x48
434103:  DCB 0x48
434104:  DCB 0x48
434105:  DCB 0x48
434106:  DCB 0x34
434107:  DCB 0x32
434108:  DCB 0x30
434109:  DCB 0x2E
43410A:  DCB 0x2C
43410B:  DCB 0x2A
43410C:  DCB 0x28
43410D:  DCB 0x48
43410E:  DCB 0x48
43410F:  DCB 0x26
434110:  DCB 0x48
434111:  DCB 0x48
434112:  DCB 0x48
434113:  DCB 0x48
434114:  DCB 0x24
434115:  DCB 0x22
434116:  DCB 0x20
434117:  DCB 0x1E
434118:  DCB 0x1C
434119:  DCB 0x1A
43411A:  DCB 0x18
43411B:  DCB 0x16
43411C:  DCB 0x48
43411D:  DCB 0x48
43411E:  DCB 0x4B
43411F:  DCB 0x4B
434120:  DCB 0x48
434121:  ALIGN 2
434122:  MOVS            R0, #0x23 ; '#'; jumptable 004340F2 case 37
434124:  B               loc_43418A; jumptable 0043403C cases 0-7
434126:  MOVS            R0, #0x22 ; '"'; jumptable 004340F2 case 36
434128:  B               loc_43418A; jumptable 0043403C cases 0-7
43412A:  MOVS            R0, #0x25 ; '%'; jumptable 004340F2 case 35
43412C:  B               loc_43418A; jumptable 0043403C cases 0-7
43412E:  MOVS            R0, #0x24 ; '$'; jumptable 004340F2 case 34
434130:  B               loc_43418A; jumptable 0043403C cases 0-7
434132:  MOVS            R0, #0x28 ; '('; jumptable 004340F2 case 33
434134:  B               loc_43418A; jumptable 0043403C cases 0-7
434136:  MOVS            R0, #0x29 ; ')'; jumptable 004340F2 case 32
434138:  B               loc_43418A; jumptable 0043403C cases 0-7
43413A:  MOVS            R0, #0x27 ; '''; jumptable 004340F2 case 31
43413C:  B               loc_43418A; jumptable 0043403C cases 0-7
43413E:  MOVS            R0, #0x26 ; '&'; jumptable 004340F2 case 30
434140:  B               loc_43418A; jumptable 0043403C cases 0-7
434142:  MOVS            R0, #0x1F; jumptable 004340F2 case 25
434144:  B               loc_43418A; jumptable 0043403C cases 0-7
434146:  MOVS            R0, #0xB; jumptable 0043403C case 22
434148:  B               loc_43418A; jumptable 0043403C cases 0-7
43414A:  MOVS            R0, #0x1E; jumptable 004340F2 case 21
43414C:  B               loc_43418A; jumptable 0043403C cases 0-7
43414E:  MOVS            R0, #0x1D; jumptable 004340F2 case 20
434150:  B               loc_43418A; jumptable 0043403C cases 0-7
434152:  MOVS            R0, #0x1C; jumptable 004340F2 case 19
434154:  B               loc_43418A; jumptable 0043403C cases 0-7
434156:  MOVS            R0, #0x1B; jumptable 004340F2 case 18
434158:  B               loc_43418A; jumptable 0043403C cases 0-7
43415A:  MOVS            R0, #0x1A; jumptable 004340F2 case 17
43415C:  B               loc_43418A; jumptable 0043403C cases 0-7
43415E:  MOVS            R0, #0xA; jumptable 0043403C case 16
434160:  B               loc_43418A; jumptable 0043403C cases 0-7
434162:  MOVS            R0, #0x2F ; '/'; jumptable 0043403C case 10
434164:  B               loc_43418A; jumptable 0043403C cases 0-7
434166:  MOVS            R0, #0x17; jumptable 004340F2 case 9
434168:  B               loc_43418A; jumptable 0043403C cases 0-7
43416A:  MOVS            R0, #0x16; jumptable 004340F2 case 8
43416C:  B               loc_43418A; jumptable 0043403C cases 0-7
43416E:  MOVS            R0, #0x15; jumptable 004340F2 case 7
434170:  B               loc_43418A; jumptable 0043403C cases 0-7
434172:  MOVS            R0, #0x14; jumptable 004340F2 case 6
434174:  B               loc_43418A; jumptable 0043403C cases 0-7
434176:  MOVS            R0, #0x19; jumptable 004340F2 case 5
434178:  B               loc_43418A; jumptable 0043403C cases 0-7
43417A:  MOVS            R0, #0x18; jumptable 004340F2 case 4
43417C:  B               loc_43418A; jumptable 0043403C cases 0-7
43417E:  MOVS            R0, #0x13; jumptable 004340F2 case 1
434180:  B               loc_43418A; jumptable 0043403C cases 0-7
434182:  MOVS            R0, #0x12; jumptable 004340F2 case 0
434184:  B               loc_43418A; jumptable 0043403C cases 0-7
434186:  MOV.W           R0, #0xFFFFFFFF; jumptable 0043403C cases 17-21,25,30-33,35
43418A:  STR             R0, [SP,#0xC0+var_68]; jumptable 0043403C cases 0-7
43418C:  LDR.W           R0, [R8,#0x54]; jumptable 0043403C default case, cases 8,9,40,41
434190:  CMP             R10, R0
434192:  ITT EQ
434194:  LDREQ           R0, [SP,#0xC0+var_6C]
434196:  CMPEQ           R0, #0
434198:  BNE             loc_43423A
43419A:  MOVS            R1, #0
43419C:  MOV             R0, R8; this
43419E:  MOVT            R1, #0x4382; float
4341A2:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
4341A6:  MOV             R4, R0
4341A8:  SXTH            R0, R5
4341AA:  VMOV            S0, R0
4341AE:  MOV             R0, R8; this
4341B0:  VCVT.F32.S32    S0, S0
4341B4:  VMOV            R1, S0; float
4341B8:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
4341BC:  MOV             R11, R0
4341BE:  LDR             R0, [SP,#0xC0+var_84]
4341C0:  MOVS            R1, #0x41A00000; float
4341C6:  VLDR            S0, [R0,#4]
4341CA:  MOV             R0, R8; this
4341CC:  VCVT.F32.S32    S20, S0
4341D0:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
4341D4:  MOVS            R1, #0xA
4341D6:  ADD.W           R1, R1, R6,ASR#16
4341DA:  VMOV            S0, R1
4341DE:  VCVT.F32.S32    S0, S0
4341E2:  VMOV            R1, S0; float
4341E6:  VMOV            S0, R0
4341EA:  MOV             R0, R8; this
4341EC:  VSUB.F32        S20, S20, S0
4341F0:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
4341F4:  STR.W           R11, [SP,#0xC0+var_40]
4341F8:  MOV.W           R9, #0xFF
4341FC:  STRD.W          R4, R0, [SP,#0xC0+var_4C]
434200:  MOV             R4, R5
434202:  MOV             R5, R6
434204:  ADD             R6, SP, #0xC0+var_50
434206:  MOVS            R1, #0xAC; unsigned __int8
434208:  MOVS            R2, #0xCB; unsigned __int8
43420A:  MOV             R0, R6; this
43420C:  MOVS            R3, #0xF1; unsigned __int8
43420E:  VSTR            S20, [SP,#0xC0+var_44]
434212:  STR.W           R9, [SP,#0xC0+var_C0]; unsigned __int8
434216:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43421A:  ADD             R0, SP, #0xC0+var_4C
43421C:  MOV             R1, R6
43421E:  MOV             R6, R5
434220:  MOV             R5, R4
434222:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
434226:  ADD             R0, SP, #0xC0+var_54; this
434228:  MOVS            R1, #0xFF; unsigned __int8
43422A:  MOVS            R2, #0xFF; unsigned __int8
43422C:  MOVS            R3, #0xFF; unsigned __int8
43422E:  STR.W           R9, [SP,#0xC0+var_C0]; unsigned __int8
434232:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
434236:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
43423A:  MOVS            R0, #(stderr+1); this
43423C:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
434240:  MOVW            R1, #0x999A
434244:  MOV             R0, R8; this
434246:  MOVT            R1, #0x3F19; float
43424A:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
43424E:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
434252:  MOVS            R0, #(stderr+1); this
434254:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
434258:  LDR             R0, [SP,#0xC0+var_80]
43425A:  MOVS            R1, #0x42C80000; float
434260:  LDR             R4, [R0,#4]
434262:  MOV             R0, R8; this
434264:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
434268:  VMOV            S0, R4
43426C:  VMOV            S2, R0
434270:  VCVT.F32.S32    S0, S0
434274:  VADD.F32        S0, S2, S0
434278:  VMOV            R0, S0; this
43427C:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
434280:  LDR             R0, [SP,#0xC0+var_68]
434282:  ADDS            R4, R0, #1
434284:  BEQ.W           loc_43443E
434288:  VMOV            R11, S18
43428C:  VCVT.F32.S32    S20, S16
434290:  LDR             R0, [SP,#0xC0+var_70]
434292:  LDRB            R0, [R0]
434294:  CBZ             R0, loc_4342AA
434296:  LDR.W           R0, [R8,#0x54]
43429A:  CMP             R10, R0
43429C:  BNE             loc_4342AA
43429E:  MOV.W           R9, #0
4342A2:  CMP             R4, #0
4342A4:  BNE.W           loc_4343FC
4342A8:  B               loc_43443E
4342AA:  LDR             R0, [SP,#0xC0+var_88]
4342AC:  MOVS            R2, #1
4342AE:  LDR             R1, [SP,#0xC0+var_68]
4342B0:  BLX             j__ZN24CControllerConfigManager39GetControllerSettingTextWithOrderNumberE18e_ControllerAction13eContSetOrder; CControllerConfigManager::GetControllerSettingTextWithOrderNumber(e_ControllerAction,eContSetOrder)
4342B4:  MOV             R2, R0; CFont *
4342B6:  CMP             R2, #0
4342B8:  MOV             R9, R2
4342BA:  IT NE
4342BC:  MOVNE.W         R9, #1
4342C0:  BEQ             loc_4342F2
4342C2:  VCVT.F32.S32    S18, S18
4342C6:  LDR             R0, [SP,#0xC0+var_6C]
4342C8:  CBNZ            R0, loc_4342D6
4342CA:  VMOV            R0, S18; this
4342CE:  VMOV            R1, S20; float
4342D2:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
4342D6:  MOVS            R1, #0
4342D8:  MOV             R0, R8; this
4342DA:  MOVT            R1, #0x4296; float
4342DE:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
4342E2:  VMOV            S0, R0
4342E6:  VADD.F32        S0, S0, S18
4342EA:  VCVT.S32.F32    S0, S0
4342EE:  VMOV            R11, S0
4342F2:  LDR             R0, [SP,#0xC0+var_70]
4342F4:  LDRB            R0, [R0]
4342F6:  CBZ             R0, loc_434300
4342F8:  LDR.W           R0, [R8,#0x54]
4342FC:  CMP             R10, R0
4342FE:  BEQ             loc_4343FA
434300:  LDR             R0, [SP,#0xC0+var_8C]
434302:  MOVS            R2, #2
434304:  LDR             R1, [SP,#0xC0+var_68]
434306:  BLX             j__ZN24CControllerConfigManager39GetControllerSettingTextWithOrderNumberE18e_ControllerAction13eContSetOrder; CControllerConfigManager::GetControllerSettingTextWithOrderNumber(e_ControllerAction,eContSetOrder)
43430A:  MOV             R2, R0; CFont *
43430C:  CMP             R2, #0
43430E:  IT NE
434310:  ADDNE.W         R9, R9, #1
434314:  BEQ             loc_43434A
434316:  VMOV            S0, R11
43431A:  VCVT.F32.S32    S18, S0
43431E:  LDR             R0, [SP,#0xC0+var_6C]
434320:  CBNZ            R0, loc_43432E
434322:  VMOV            R0, S18; this
434326:  VMOV            R1, S20; float
43432A:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
43432E:  MOVS            R1, #0
434330:  MOV             R0, R8; this
434332:  MOVT            R1, #0x4296; float
434336:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
43433A:  VMOV            S0, R0
43433E:  VADD.F32        S0, S0, S18
434342:  VCVT.S32.F32    S0, S0
434346:  VMOV            R11, S0
43434A:  LDR             R0, [SP,#0xC0+var_70]
43434C:  LDRB            R0, [R0]
43434E:  CBZ             R0, loc_434358
434350:  LDR.W           R0, [R8,#0x54]
434354:  CMP             R10, R0
434356:  BEQ             loc_4343FA
434358:  LDR             R0, [SP,#0xC0+var_90]
43435A:  MOVS            R2, #3
43435C:  LDR             R1, [SP,#0xC0+var_68]
43435E:  BLX             j__ZN24CControllerConfigManager39GetControllerSettingTextWithOrderNumberE18e_ControllerAction13eContSetOrder; CControllerConfigManager::GetControllerSettingTextWithOrderNumber(e_ControllerAction,eContSetOrder)
434362:  MOV             R2, R0; CFont *
434364:  CMP             R2, #0
434366:  IT NE
434368:  ADDNE.W         R9, R9, #1
43436C:  BEQ             loc_4343A2
43436E:  VMOV            S0, R11
434372:  VCVT.F32.S32    S18, S0
434376:  LDR             R0, [SP,#0xC0+var_6C]
434378:  CBNZ            R0, loc_434386
43437A:  VMOV            R0, S18; this
43437E:  VMOV            R1, S20; float
434382:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
434386:  MOVS            R1, #0
434388:  MOV             R0, R8; this
43438A:  MOVT            R1, #0x4296; float
43438E:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
434392:  VMOV            S0, R0
434396:  VADD.F32        S0, S0, S18
43439A:  VCVT.S32.F32    S0, S0
43439E:  VMOV            R11, S0
4343A2:  LDR             R0, [SP,#0xC0+var_70]
4343A4:  LDRB            R0, [R0]
4343A6:  CBZ             R0, loc_4343B0
4343A8:  LDR.W           R0, [R8,#0x54]
4343AC:  CMP             R10, R0
4343AE:  BEQ             loc_4343FA
4343B0:  LDR             R0, [SP,#0xC0+var_94]
4343B2:  MOVS            R2, #4
4343B4:  LDR             R1, [SP,#0xC0+var_68]
4343B6:  BLX             j__ZN24CControllerConfigManager39GetControllerSettingTextWithOrderNumberE18e_ControllerAction13eContSetOrder; CControllerConfigManager::GetControllerSettingTextWithOrderNumber(e_ControllerAction,eContSetOrder)
4343BA:  MOV             R2, R0; CFont *
4343BC:  CMP             R2, #0
4343BE:  IT NE
4343C0:  ADDNE.W         R9, R9, #1
4343C4:  BEQ             loc_4343FA
4343C6:  VMOV            S0, R11
4343CA:  VCVT.F32.S32    S18, S0
4343CE:  LDR             R0, [SP,#0xC0+var_6C]
4343D0:  CBNZ            R0, loc_4343DE
4343D2:  VMOV            R0, S18; this
4343D6:  VMOV            R1, S20; float
4343DA:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
4343DE:  MOVS            R1, #0
4343E0:  MOV             R0, R8; this
4343E2:  MOVT            R1, #0x4296; float
4343E6:  BLX             j__ZN12CMenuManager8StretchXEf; CMenuManager::StretchX(float)
4343EA:  VMOV            S0, R0
4343EE:  VADD.F32        S0, S0, S18
4343F2:  VCVT.S32.F32    S0, S0
4343F6:  VMOV            R11, S0
4343FA:  CBZ             R4, loc_43443E
4343FC:  LDR             R0, [SP,#0xC0+var_68]
4343FE:  ADDS            R0, #2
434400:  BNE.W           loc_433EA8
434404:  MOVS            R0, #0xFF
434406:  MOVS            R1, #0; unsigned __int8
434408:  STR             R0, [SP,#0xC0+var_C0]; unsigned __int8
43440A:  ADD             R0, SP, #0xC0+var_58; this
43440C:  MOVS            R2, #0; unsigned __int8
43440E:  MOVS            R3, #0; unsigned __int8
434410:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
434414:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
434418:  LDR             R0, [SP,#0xC0+var_6C]
43441A:  CBNZ            R0, loc_43443E
43441C:  LDR             R0, [SP,#0xC0+var_A8]; this
43441E:  ADR             R1, aFecCmp; "FEC_CMP"
434420:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
434424:  VMOV            S0, R11
434428:  MOV             R2, R0; CFont *
43442A:  VCVT.F32.S32    S0, S0
43442E:  VCVT.F32.S32    S2, S16
434432:  VMOV            R0, S0; this
434436:  VMOV            R1, S2; float
43443A:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
43443E:  LDR.W           R0, [R8,#0x54]
434442:  CMP             R10, R0
434444:  BNE             loc_43444E
434446:  ADR             R1, aFetEig; "FET_EIG"
434448:  MOV             R0, R8; this
43444A:  BLX             j__ZN12CMenuManager17DisplayHelperTextEPc; CMenuManager::DisplayHelperText(char *)
43444E:  LDR             R0, [SP,#0xC0+var_74]
434450:  ADD             R5, R0
434452:  SUBS            R0, R5, #1
434454:  VMOV            S0, R0
434458:  MOV             R0, R8; this
43445A:  VCVT.F32.S32    S0, S0
43445E:  VMOV            R1, S0; float
434462:  BLX             j__ZN12CMenuManager8StretchYEf; CMenuManager::StretchY(float)
434466:  LDR             R1, [SP,#0xC0+var_7C]
434468:  VMOV            S16, R0
43446C:  LDR             R0, [SP,#0xC0+var_78]
43446E:  ADD.W           R10, R10, #1
434472:  ADD             R6, R1
434474:  CMP             R10, R0
434476:  BLT.W           loc_433FEE
43447A:  ADD             SP, SP, #0x88
43447C:  VPOP            {D8-D10}
434480:  ADD             SP, SP, #4
434482:  POP.W           {R8-R11}
434486:  POP             {R4-R7,PC}
434488:  MOV             R0, R8; this
43448A:  MOV             R1, R4; float
43448C:  ADD             SP, SP, #0x88
43448E:  VPOP            {D8-D10}
434492:  ADD             SP, SP, #4
434494:  POP.W           {R8-R11}
434498:  POP.W           {R4-R7,LR}
43449C:  B.W             sub_195BE4
