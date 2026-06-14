; =========================================================
; Game Engine Function: sub_265EEC
; Address            : 0x265EEC - 0x2660B8
; =========================================================

265EEC:  PUSH            {R4-R7,LR}
265EEE:  ADD             R7, SP, #0xC
265EF0:  PUSH.W          {R8}
265EF4:  SUB             SP, SP, #8
265EF6:  MOV             R6, R1
265EF8:  MOV             R5, R0
265EFA:  CBZ             R6, loc_265F0C
265EFC:  LDR             R1, =(aOpensl_0 - 0x265F04); "OpenSL"
265EFE:  MOV             R0, R6; char *
265F00:  ADD             R1, PC; "OpenSL"
265F02:  BLX             strcmp
265F06:  CMP             R0, #0
265F08:  BNE             loc_265FB0
265F0A:  B               loc_265F10
265F0C:  LDR             R6, =(aOpensl_0 - 0x265F12); "OpenSL"
265F0E:  ADD             R6, PC; "OpenSL"
265F10:  MOVS            R0, #1; item_count
265F12:  MOVS            R1, #0x1C; item_size
265F14:  BLX             calloc
265F18:  MOV             R4, R0
265F1A:  CBZ             R4, loc_265F4A
265F1C:  MOVS            R0, #0
265F1E:  MOVS            R1, #0
265F20:  STRD.W          R0, R0, [SP,#0x18+var_18]
265F24:  MOV             R0, R4
265F26:  MOVS            R2, #0
265F28:  MOVS            R3, #0
265F2A:  BLX             slCreateEngine
265F2E:  CBZ             R0, loc_265F50
265F30:  LDR             R1, =(LogLevel_ptr - 0x265F36)
265F32:  ADD             R1, PC; LogLevel_ptr
265F34:  LDR             R1, [R1]; LogLevel
265F36:  LDR             R1, [R1]
265F38:  CBZ             R1, loc_265F50
265F3A:  SUBS            R0, #1
265F3C:  CMP             R0, #0xF
265F3E:  BHI             loc_265F78
265F40:  LDR             R1, =(off_661DF0 - 0x265F46); "Preconditions violated" ...
265F42:  ADD             R1, PC; off_661DF0
265F44:  LDR.W           R1, [R1,R0,LSL#2]
265F48:  B               loc_265F7C
265F4A:  MOVW            R0, #0xA005
265F4E:  B               loc_265FB4
265F50:  CBNZ            R0, loc_265F8E
265F52:  LDR             R0, [R4]
265F54:  LDR             R1, [R0]
265F56:  LDR             R2, [R1]
265F58:  MOVS            R1, #0
265F5A:  BLX             R2
265F5C:  CBZ             R0, loc_265FBC
265F5E:  LDR             R1, =(LogLevel_ptr - 0x265F64)
265F60:  ADD             R1, PC; LogLevel_ptr
265F62:  LDR             R1, [R1]; LogLevel
265F64:  LDR             R1, [R1]
265F66:  CBZ             R1, loc_265FBC
265F68:  SUBS            R0, #1
265F6A:  CMP             R0, #0xF
265F6C:  BHI             loc_265FF0
265F6E:  LDR             R1, =(off_661DF0 - 0x265F74); "Preconditions violated" ...
265F70:  ADD             R1, PC; off_661DF0
265F72:  LDR.W           R1, [R1,R0,LSL#2]
265F76:  B               loc_265FF4
265F78:  LDR             R1, =(aUnknownErrorCo - 0x265F7E); "Unknown error code"
265F7A:  ADD             R1, PC; "Unknown error code"
265F7C:  LDR             R0, =(aEe - 0x265F88); "(EE)"
265F7E:  ADR             R3, aSlcreateengine_0; "slCreateEngine"
265F80:  LDR             R2, =(aCProjectsOswra_34+0x60 - 0x265F8A); "%s: %s\n"
265F82:  STR             R1, [SP,#0x18+var_18]
265F84:  ADD             R0, PC; "(EE)"
265F86:  ADD             R2, PC; "%s: %s\n"
265F88:  ADR             R1, aOpenslOpenPlay; "opensl_open_playback"
265F8A:  BLX             j_al_print
265F8E:  LDR             R0, [R4,#8]
265F90:  CMP             R0, #0
265F92:  ITTT NE
265F94:  LDRNE           R1, [R0]
265F96:  LDRNE           R1, [R1,#0x18]
265F98:  BLXNE           R1
265F9A:  LDR             R0, [R4]
265F9C:  MOVS            R1, #0
265F9E:  STR             R1, [R4,#8]
265FA0:  CMP             R0, #0
265FA2:  ITTT NE
265FA4:  LDRNE           R1, [R0]
265FA6:  LDRNE           R1, [R1,#0x18]
265FA8:  BLXNE           R1
265FAA:  MOV             R0, R4; p
265FAC:  BLX             free
265FB0:  MOVW            R0, #0xA004
265FB4:  ADD             SP, SP, #8
265FB6:  POP.W           {R8}
265FBA:  POP             {R4-R7,PC}
265FBC:  CMP             R0, #0
265FBE:  BNE             loc_265F8E
265FC0:  LDR             R1, =(SL_IID_ENGINE_ptr - 0x265FCC)
265FC2:  MOV             R2, R4
265FC4:  LDR.W           R0, [R2],#4
265FC8:  ADD             R1, PC; SL_IID_ENGINE_ptr
265FCA:  LDR             R3, [R0]
265FCC:  LDR             R1, [R1]; SL_IID_ENGINE
265FCE:  LDR             R3, [R3,#0xC]
265FD0:  LDR             R1, [R1]
265FD2:  BLX             R3
265FD4:  CBZ             R0, loc_266002
265FD6:  LDR             R1, =(LogLevel_ptr - 0x265FDC)
265FD8:  ADD             R1, PC; LogLevel_ptr
265FDA:  LDR             R1, [R1]; LogLevel
265FDC:  LDR             R1, [R1]
265FDE:  CBZ             R1, loc_266002
265FE0:  SUBS            R0, #1
265FE2:  CMP             R0, #0xF
265FE4:  BHI             loc_26603A
265FE6:  LDR             R1, =(off_661DF0 - 0x265FEC); "Preconditions violated" ...
265FE8:  ADD             R1, PC; off_661DF0
265FEA:  LDR.W           R1, [R1,R0,LSL#2]
265FEE:  B               loc_26603E
265FF0:  LDR             R1, =(aUnknownErrorCo - 0x265FF6); "Unknown error code"
265FF2:  ADD             R1, PC; "Unknown error code"
265FF4:  LDR             R0, =(aEe - 0x266000); "(EE)"
265FF6:  ADR             R3, aEngineRealize; "engine->Realize"
265FF8:  LDR             R2, =(aCProjectsOswra_34+0x60 - 0x266002); "%s: %s\n"
265FFA:  STR             R1, [SP,#0x18+var_18]
265FFC:  ADD             R0, PC; "(EE)"
265FFE:  ADD             R2, PC; "%s: %s\n"
266000:  B               loc_265F88
266002:  CMP             R0, #0
266004:  BNE             loc_265F8E
266006:  LDR             R0, [R4,#4]
266008:  ADD.W           R8, R4, #8
26600C:  MOVS            R2, #0
26600E:  MOVS            R3, #0
266010:  LDR             R1, [R0]
266012:  LDR.W           R12, [R1,#0x1C]
266016:  MOVS            R1, #0
266018:  STR             R1, [SP,#0x18+var_18]
26601A:  MOV             R1, R8
26601C:  BLX             R12
26601E:  CBZ             R0, loc_26604C
266020:  LDR             R1, =(LogLevel_ptr - 0x266026)
266022:  ADD             R1, PC; LogLevel_ptr
266024:  LDR             R1, [R1]; LogLevel
266026:  LDR             R1, [R1]
266028:  CBZ             R1, loc_26604C
26602A:  SUBS            R0, #1
26602C:  CMP             R0, #0xF
26602E:  BHI             loc_266078
266030:  LDR             R1, =(off_661DF0 - 0x266036); "Preconditions violated" ...
266032:  ADD             R1, PC; off_661DF0
266034:  LDR.W           R1, [R1,R0,LSL#2]
266038:  B               loc_26607C
26603A:  LDR             R1, =(aUnknownErrorCo - 0x266040); "Unknown error code"
26603C:  ADD             R1, PC; "Unknown error code"
26603E:  LDR             R0, =(aEe - 0x26604A); "(EE)"
266040:  ADR             R3, aEngineGetinter; "engine->GetInterface"
266042:  LDR             R2, =(aCProjectsOswra_34+0x60 - 0x26604C); "%s: %s\n"
266044:  STR             R1, [SP,#0x18+var_18]
266046:  ADD             R0, PC; "(EE)"
266048:  ADD             R2, PC; "%s: %s\n"
26604A:  B               loc_265F88
26604C:  CMP             R0, #0
26604E:  BNE             loc_265F8E
266050:  LDR.W           R0, [R8]
266054:  LDR             R1, [R0]
266056:  LDR             R2, [R1]
266058:  MOVS            R1, #0
26605A:  BLX             R2
26605C:  CBZ             R0, loc_26608A
26605E:  LDR             R1, =(LogLevel_ptr - 0x266064)
266060:  ADD             R1, PC; LogLevel_ptr
266062:  LDR             R1, [R1]; LogLevel
266064:  LDR             R1, [R1]
266066:  CBZ             R1, loc_26608A
266068:  SUBS            R0, #1
26606A:  CMP             R0, #0xF
26606C:  BHI             loc_2660A6
26606E:  LDR             R1, =(off_661DF0 - 0x266074); "Preconditions violated" ...
266070:  ADD             R1, PC; off_661DF0
266072:  LDR.W           R1, [R1,R0,LSL#2]
266076:  B               loc_2660AA
266078:  LDR             R1, =(aUnknownErrorCo - 0x26607E); "Unknown error code"
26607A:  ADD             R1, PC; "Unknown error code"
26607C:  LDR             R0, =(aEe - 0x266088); "(EE)"
26607E:  ADR             R3, aEngineCreateou; "engine->CreateOutputMix"
266080:  LDR             R2, =(aCProjectsOswra_34+0x60 - 0x26608A); "%s: %s\n"
266082:  STR             R1, [SP,#0x18+var_18]
266084:  ADD             R0, PC; "(EE)"
266086:  ADD             R2, PC; "%s: %s\n"
266088:  B               loc_265F88
26608A:  CMP             R0, #0
26608C:  BNE.W           loc_265F8E
266090:  MOV             R0, R6; char *
266092:  BLX             j_strdup
266096:  MOV             R1, #0x161B0
26609E:  STR             R4, [R5,R1]
2660A0:  STR             R0, [R5,#0x24]
2660A2:  MOVS            R0, #0
2660A4:  B               loc_265FB4
2660A6:  LDR             R1, =(aUnknownErrorCo - 0x2660AC); "Unknown error code"
2660A8:  ADD             R1, PC; "Unknown error code"
2660AA:  LDR             R0, =(aEe - 0x2660B6); "(EE)"
2660AC:  ADR             R3, aOutputmixReali; "outputMix->Realize"
2660AE:  LDR             R2, =(aCProjectsOswra_34+0x60 - 0x2660B8); "%s: %s\n"
2660B0:  STR             R1, [SP,#0x18+var_18]
2660B2:  ADD             R0, PC; "(EE)"
2660B4:  ADD             R2, PC; "%s: %s\n"
2660B6:  B               loc_265F88
