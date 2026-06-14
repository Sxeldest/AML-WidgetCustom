; =========================================================
; Game Engine Function: _ZN14CRunningScript25ProcessCommands2300To2399Ei
; Address            : 0x33AD6C - 0x33C4D0
; =========================================================

33AD6C:  PUSH            {R4-R7,LR}
33AD6E:  ADD             R7, SP, #0xC
33AD70:  PUSH.W          {R8-R10}
33AD74:  VPUSH           {D8-D10}
33AD78:  SUB             SP, SP, #0x60; float
33AD7A:  MOV             R9, R0
33AD7C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x33AD86)
33AD80:  MOV             R6, R1
33AD82:  ADD             R0, PC; __stack_chk_guard_ptr
33AD84:  LDR             R0, [R0]; __stack_chk_guard
33AD86:  LDR             R0, [R0]
33AD88:  STR             R0, [SP,#0x90+var_34]
33AD8A:  SUBW            R0, R6, #0x8FC; switch 100 cases
33AD8E:  CMP             R0, #0x63 ; 'c'
33AD90:  BHI.W           def_33AD9A; jumptable 0033AD9A default case
33AD94:  MOVS            R5, #0
33AD96:  MOV.W           R4, #0xFFFFFFFF
33AD9A:  TBH.W           [PC,R0,LSL#1]; switch jump
33AD9E:  DCW 0xB50; jump table for switch statement
33ADA0:  DCW 0x90
33ADA2:  DCW 0xA0
33ADA4:  DCW 0xB1
33ADA6:  DCW 0xE2
33ADA8:  DCW 0x107
33ADAA:  DCW 0xB50
33ADAC:  DCW 0xB50
33ADAE:  DCW 0x11C
33ADB0:  DCW 0x137
33ADB2:  DCW 0x156
33ADB4:  DCW 0x170
33ADB6:  DCW 0x189
33ADB8:  DCW 0x1A3
33ADBA:  DCW 0xB50
33ADBC:  DCW 0xB50
33ADBE:  DCW 0x1BC
33ADC0:  DCW 0x1CA
33ADC2:  DCW 0x1CE
33ADC4:  DCW 0x1DD
33ADC6:  DCW 0x1F5
33ADC8:  DCW 0xB50
33ADCA:  DCW 0x20D
33ADCC:  DCW 0x22E
33ADCE:  DCW 0x24A
33ADD0:  DCW 0x24E
33ADD2:  DCW 0x252
33ADD4:  DCW 0x275
33ADD6:  DCW 0x28C
33ADD8:  DCW 0x2AB
33ADDA:  DCW 0x2CF
33ADDC:  DCW 0xB50
33ADDE:  DCW 0x2D5
33ADE0:  DCW 0x304
33ADE2:  DCW 0x33D
33ADE4:  DCW 0x375
33ADE6:  DCW 0x38E
33ADE8:  DCW 0xB50
33ADEA:  DCW 0x3B8
33ADEC:  DCW 0x3D5
33ADEE:  DCW 0x3E5
33ADF0:  DCW 0x3F6
33ADF2:  DCW 0x3FE
33ADF4:  DCW 0xB50
33ADF6:  DCW 0x415
33ADF8:  DCW 0x43B
33ADFA:  DCW 0xB50
33ADFC:  DCW 0x472
33ADFE:  DCW 0xB50
33AE00:  DCW 0xB50
33AE02:  DCW 0x4A0
33AE04:  DCW 0x4BE
33AE06:  DCW 0x4D3
33AE08:  DCW 0x4E8
33AE0A:  DCW 0xB50
33AE0C:  DCW 0x4FD
33AE0E:  DCW 0x50C
33AE10:  DCW 0xB50
33AE12:  DCW 0x525
33AE14:  DCW 0x54F
33AE16:  DCW 0xB50
33AE18:  DCW 0x5DA
33AE1A:  DCW 0x5F9
33AE1C:  DCW 0x623
33AE1E:  DCW 0xB50
33AE20:  DCW 0x642
33AE22:  DCW 0x657
33AE24:  DCW 0xB50
33AE26:  DCW 0x65D
33AE28:  DCW 0x680
33AE2A:  DCW 0x6A3
33AE2C:  DCW 0xB50
33AE2E:  DCW 0x6AF
33AE30:  DCW 0x6CD
33AE32:  DCW 0x6E3
33AE34:  DCW 0x706
33AE36:  DCW 0x725
33AE38:  DCW 0x745
33AE3A:  DCW 0x767
33AE3C:  DCW 0x7E7
33AE3E:  DCW 0x805
33AE40:  DCW 0x832
33AE42:  DCW 0x850
33AE44:  DCW 0x86E
33AE46:  DCW 0x88C
33AE48:  DCW 0x8A0
33AE4A:  DCW 0x8A5
33AE4C:  DCW 0x8B6
33AE4E:  DCW 0x8C0
33AE50:  DCW 0x8C9
33AE52:  DCW 0x8D0
33AE54:  DCW 0x8D8
33AE56:  DCW 0x64
33AE58:  DCW 0x64
33AE5A:  DCW 0x64
33AE5C:  DCW 0x8FB
33AE5E:  DCW 0x91A
33AE60:  DCW 0x962
33AE62:  DCW 0x97B
33AE64:  DCW 0x999
33AE66:  MOV             R0, R9; jumptable 0033AD9A cases 2392-2394
33AE68:  MOVS            R1, #3; __int16
33AE6A:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33AE6E:  LDR.W           R0, =(ScriptParams_ptr - 0x33AE76)
33AE72:  ADD             R0, PC; ScriptParams_ptr
33AE74:  LDR             R0, [R0]; ScriptParams
33AE76:  LDR.W           R8, [R0,#(dword_81A910 - 0x81A908)]
33AE7A:  VLDR            S16, [R0]
33AE7E:  VLDR            S18, [R0,#4]
33AE82:  MOVW            R0, #0x959
33AE86:  VMOV            S20, R8
33AE8A:  CMP             R6, R0
33AE8C:  STR.W           R8, [SP,#0x90+var_60]
33AE90:  BEQ.W           loc_33C10C
33AE94:  MOVW            R0, #0x958
33AE98:  CMP             R6, R0
33AE9A:  BNE.W           loc_33C11A
33AE9E:  LDR.W           R0, =(MI_PICKUP_CAMERA_ptr - 0x33AEAA)
33AEA2:  MOV.W           R1, #0x3F800000; unsigned __int16
33AEA6:  ADD             R0, PC; MI_PICKUP_CAMERA_ptr
33AEA8:  LDR             R0, [R0]; MI_PICKUP_CAMERA
33AEAA:  LDRH            R6, [R0]
33AEAC:  MOVS            R0, #dword_E8; this
33AEAE:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
33AEB2:  MOVS            R4, #0x14
33AEB4:  B.W             loc_33C130
33AEB8:  MOVS            R5, #0xFF; jumptable 0033AD9A default case
33AEBA:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33AEBE:  MOV             R0, R9; jumptable 0033AD9A case 2301
33AEC0:  MOVS            R1, #1; __int16
33AEC2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33AEC6:  LDR.W           R0, =(ScriptParams_ptr - 0x33AECE)
33AECA:  ADD             R0, PC; ScriptParams_ptr
33AECC:  LDR             R0, [R0]; ScriptParams
33AECE:  LDR             R0, [R0]
33AED0:  CMP             R0, #0
33AED2:  IT NE
33AED4:  MOVNE           R0, #(stderr+1); this
33AED6:  BLX             j__ZN12CPostEffects22ScriptHeatHazeFXSwitchEb; CPostEffects::ScriptHeatHazeFXSwitch(bool)
33AEDA:  B.W             loc_33C43C
33AEDE:  LDR.W           R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x33AEE8); jumptable 0033AD9A case 2302
33AEE2:  MOVS            R5, #0
33AEE4:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
33AEE6:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
33AEE8:  LDR.W           R0, [R0,#(dword_6F3A1C - 0x6F3794)]; this
33AEEC:  CBZ             R0, loc_33AEF8
33AEEE:  BLX             j__ZN15CWidgetHelpText20GetNumQueuedMessagesEv; CWidgetHelpText::GetNumQueuedMessages(void)
33AEF2:  CMP             R0, #0
33AEF4:  IT GT
33AEF6:  MOVGT           R5, #1
33AEF8:  MOV             R0, R9
33AEFA:  MOV             R1, R5
33AEFC:  B.W             loc_33C280
33AF00:  MOV             R0, R9; jumptable 0033AD9A case 2303
33AF02:  MOVS            R1, #2; __int16
33AF04:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33AF08:  LDR.W           R0, =(ScriptParams_ptr - 0x33AF10)
33AF0C:  ADD             R0, PC; ScriptParams_ptr
33AF0E:  LDR             R0, [R0]; ScriptParams
33AF10:  LDR             R1, [R0]
33AF12:  CMP             R1, #0
33AF14:  BLT.W           loc_33C188
33AF18:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33AF24)
33AF1C:  UXTB            R3, R1
33AF1E:  LSRS            R1, R1, #8
33AF20:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33AF22:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
33AF24:  LDR             R0, [R0]; CPools::ms_pObjectPool
33AF26:  LDR             R2, [R0,#4]
33AF28:  LDRB            R2, [R2,R1]
33AF2A:  CMP             R2, R3
33AF2C:  BNE.W           loc_33C188
33AF30:  MOV.W           R2, #0x1A4
33AF34:  LDR             R0, [R0]
33AF36:  MLA.W           R0, R1, R2, R0
33AF3A:  CMP             R0, #0
33AF3C:  BEQ.W           loc_33C188
33AF40:  LDR.W           R1, =(ScriptParams_ptr - 0x33AF4C)
33AF44:  LDRSB.W         R0, [R0,#0x14C]; this
33AF48:  ADD             R1, PC; ScriptParams_ptr
33AF4A:  LDR             R1, [R1]; ScriptParams
33AF4C:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]; int
33AF4E:  ORR.W           R1, R2, #1
33AF52:  CMP             R1, #0x39 ; '9'
33AF54:  BNE.W           loc_33C4C6
33AF58:  MOV             R1, R2; int
33AF5A:  BLX             j__ZN7CDarkel22CheckDamagedWeaponTypeEii; CDarkel::CheckDamagedWeaponType(int,int)
33AF5E:  B.W             loc_33C27C
33AF62:  MOV             R0, R9; jumptable 0033AD9A case 2304
33AF64:  MOVS            R1, #1; __int16
33AF66:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33AF6A:  LDR.W           R0, =(ScriptParams_ptr - 0x33AF72)
33AF6E:  ADD             R0, PC; ScriptParams_ptr
33AF70:  LDR             R0, [R0]; ScriptParams
33AF72:  LDR             R1, [R0]
33AF74:  CMP             R1, #0
33AF76:  BLT.W           loc_33C43C
33AF7A:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33AF86)
33AF7E:  UXTB            R3, R1
33AF80:  LSRS            R1, R1, #8
33AF82:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33AF84:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
33AF86:  LDR             R0, [R0]; CPools::ms_pObjectPool
33AF88:  LDR             R2, [R0,#4]
33AF8A:  LDRB            R2, [R2,R1]
33AF8C:  CMP             R2, R3
33AF8E:  BNE.W           loc_33C43C
33AF92:  MOV.W           R2, #0x1A4
33AF96:  LDR             R0, [R0]
33AF98:  MLA.W           R0, R1, R2, R0
33AF9C:  MOVS            R5, #0
33AF9E:  CMP             R0, #0
33AFA0:  ITT NE
33AFA2:  MOVNE           R1, #0xFF
33AFA4:  STRBNE.W        R1, [R0,#0x14C]
33AFA8:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33AFAC:  MOV             R0, R9; jumptable 0033AD9A case 2305
33AFAE:  MOVS            R1, #2; __int16
33AFB0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33AFB4:  LDR.W           R0, =(ScriptParams_ptr - 0x33AFC0)
33AFB8:  MOVS            R4, #0
33AFBA:  MOVS            R5, #0
33AFBC:  ADD             R0, PC; ScriptParams_ptr
33AFBE:  LDR             R1, [R0]; ScriptParams
33AFC0:  LDRD.W          R0, R1, [R1]; int
33AFC4:  CMP             R1, #0
33AFC6:  IT EQ
33AFC8:  MOVEQ           R4, #1
33AFCA:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
33AFCE:  STRB.W          R4, [R0,#0x132]
33AFD2:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33AFD6:  MOV             R0, R9; jumptable 0033AD9A case 2308
33AFD8:  MOVS            R1, #1; __int16
33AFDA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33AFDE:  LDR.W           R0, =(ScriptParams_ptr - 0x33AFEC)
33AFE2:  ADD             R5, SP, #0x90+var_5C
33AFE4:  LDR.W           R1, =(HudColour_ptr - 0x33AFEE)
33AFE8:  ADD             R0, PC; ScriptParams_ptr
33AFEA:  ADD             R1, PC; HudColour_ptr
33AFEC:  LDR             R4, [R0]; ScriptParams
33AFEE:  MOV             R0, R5; this
33AFF0:  LDR             R1, [R1]; HudColour ; unsigned __int8
33AFF2:  LDRB            R2, [R4]
33AFF4:  BLX             j__ZN11CHudColours7GetRGBAEh; CHudColours::GetRGBA(uchar)
33AFF8:  VLD1.32         {D16[0]}, [R5@32]
33AFFC:  VMOVL.U8        Q8, D16
33B000:  VMOVL.U16       Q8, D16
33B004:  VST1.32         {D16-D17}, [R4]
33B008:  B.W             loc_33C4C0
33B00C:  MOV             R0, R9; jumptable 0033AD9A case 2309
33B00E:  MOVS            R1, #2; __int16
33B010:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B014:  LDR.W           R0, =(ScriptParams_ptr - 0x33B01C)
33B018:  ADD             R0, PC; ScriptParams_ptr
33B01A:  LDR             R0, [R0]; ScriptParams
33B01C:  LDR             R1, [R0]
33B01E:  CMP             R1, #0
33B020:  BLT.W           loc_33C18C
33B024:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33B030)
33B028:  UXTB            R3, R1
33B02A:  LSRS            R1, R1, #8
33B02C:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33B02E:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
33B030:  LDR             R0, [R0]; CPools::ms_pObjectPool
33B032:  LDR             R2, [R0,#4]
33B034:  LDRB            R2, [R2,R1]
33B036:  CMP             R2, R3
33B038:  BNE.W           loc_33C18C
33B03C:  MOV.W           R2, #0x1A4
33B040:  LDR             R0, [R0]
33B042:  MLA.W           R0, R1, R2, R0
33B046:  B.W             loc_33C18E
33B04A:  MOV             R0, R9; jumptable 0033AD9A case 2310
33B04C:  MOVS            R1, #2; __int16
33B04E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B052:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33B064)
33B056:  MOV.W           R3, #0x1A4
33B05A:  LDR.W           R0, =(ScriptParams_ptr - 0x33B066)
33B05E:  MOVS            R5, #0
33B060:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33B062:  ADD             R0, PC; ScriptParams_ptr
33B064:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
33B066:  LDR             R0, [R0]; ScriptParams
33B068:  LDRD.W          R2, R0, [R0]
33B06C:  LDR             R1, [R1]; CPools::ms_pObjectPool
33B06E:  LSRS            R2, R2, #8
33B070:  LDR             R1, [R1]
33B072:  MLA.W           R1, R2, R3, R1
33B076:  STR.W           R0, [R1,#0x90]
33B07A:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33B07E:  MOV             R0, R9; jumptable 0033AD9A case 2311
33B080:  MOVS            R1, #1; __int16
33B082:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B086:  LDR.W           R0, =(ScriptParams_ptr - 0x33B096)
33B08A:  MOV.W           R3, #0x1A4
33B08E:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33B098)
33B092:  ADD             R0, PC; ScriptParams_ptr
33B094:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33B096:  LDR             R0, [R0]; ScriptParams
33B098:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
33B09A:  LDR             R2, [R0]
33B09C:  LDR             R1, [R1]; CPools::ms_pObjectPool
33B09E:  LSRS            R2, R2, #8
33B0A0:  LDR             R1, [R1]
33B0A2:  MLA.W           R1, R2, R3, R1
33B0A6:  LDR.W           R1, [R1,#0x90]
33B0AA:  STR             R1, [R0]
33B0AC:  B.W             loc_33C434
33B0B0:  MOV             R0, R9; jumptable 0033AD9A case 2312
33B0B2:  MOVS            R1, #2; __int16
33B0B4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B0B8:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33B0CA)
33B0BC:  MOV.W           R3, #0x1A4
33B0C0:  LDR.W           R0, =(ScriptParams_ptr - 0x33B0CC)
33B0C4:  MOVS            R5, #0
33B0C6:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33B0C8:  ADD             R0, PC; ScriptParams_ptr
33B0CA:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
33B0CC:  LDR             R0, [R0]; ScriptParams
33B0CE:  LDRD.W          R2, R0, [R0]
33B0D2:  LDR             R1, [R1]; CPools::ms_pObjectPool
33B0D4:  LSRS            R2, R2, #8
33B0D6:  LDR             R1, [R1]
33B0D8:  MLA.W           R1, R2, R3, R1
33B0DC:  STR.W           R0, [R1,#0x94]
33B0E0:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33B0E4:  MOV             R0, R9; jumptable 0033AD9A case 2313
33B0E6:  MOVS            R1, #1; __int16
33B0E8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B0EC:  LDR.W           R0, =(ScriptParams_ptr - 0x33B0FC)
33B0F0:  MOV.W           R3, #0x1A4
33B0F4:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33B0FE)
33B0F8:  ADD             R0, PC; ScriptParams_ptr
33B0FA:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33B0FC:  LDR             R0, [R0]; ScriptParams
33B0FE:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
33B100:  LDR             R2, [R0]
33B102:  LDR             R1, [R1]; CPools::ms_pObjectPool
33B104:  LSRS            R2, R2, #8
33B106:  LDR             R1, [R1]
33B108:  MLA.W           R1, R2, R3, R1
33B10C:  LDR.W           R1, [R1,#0x94]
33B110:  STR             R1, [R0]
33B112:  B.W             loc_33C434
33B116:  ADD             R5, SP, #0x90+var_40; jumptable 0033AD9A case 2316
33B118:  MOV             R0, R9; this
33B11A:  MOVS            R2, #8; unsigned __int8
33B11C:  MOV             R1, R5; char *
33B11E:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33B122:  MOV             R0, R5; char *
33B124:  MOVS            R1, #2
33B126:  BLX             j__ZN9CTheZones29FindZoneByLabelAndReturnIndexEPc9eZoneType; CTheZones::FindZoneByLabelAndReturnIndex(char *,eZoneType)
33B12A:  BLX             j__ZN9CGangWars31SetSpecificZoneToTriggerGangWarEi; CGangWars::SetSpecificZoneToTriggerGangWar(int)
33B12E:  B.W             loc_33C43C
33B132:  BLX             j__ZN9CGangWars34ClearSpecificZonesToTriggerGangWarEv; jumptable 0033AD9A case 2317
33B136:  B.W             loc_33C43C
33B13A:  MOV             R0, R9; jumptable 0033AD9A case 2318
33B13C:  MOVS            R1, #2; __int16
33B13E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B142:  LDR.W           R0, =(ScriptParams_ptr - 0x33B14A)
33B146:  ADD             R0, PC; ScriptParams_ptr
33B148:  LDR             R0, [R0]; ScriptParams
33B14A:  LDRSB.W         R1, [R0,#(dword_81A90C - 0x81A908)]; unsigned __int8
33B14E:  LDRB            R0, [R0]; this
33B150:  BLX             j__ZN11CMenuSystem17SetActiveMenuItemEha; CMenuSystem::SetActiveMenuItem(uchar,signed char)
33B154:  B.W             loc_33C43C
33B158:  MOV             R0, R9; jumptable 0033AD9A case 2319
33B15A:  MOVS            R1, #1; __int16
33B15C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B160:  LDR.W           R0, =(ScriptParams_ptr - 0x33B16C)
33B164:  LDR.W           R2, =(_ZN11CTheScripts15StreamedScriptsE_ptr - 0x33B16E)
33B168:  ADD             R0, PC; ScriptParams_ptr
33B16A:  ADD             R2, PC; _ZN11CTheScripts15StreamedScriptsE_ptr
33B16C:  LDR             R4, [R0]; ScriptParams
33B16E:  LDR             R0, [R2]; this
33B170:  LDRSH.W         R1, [R4]; __int16
33B174:  BLX             j__ZN16CStreamedScripts35GetProperIndexFromIndexUsedByScriptEs; CStreamedScripts::GetProperIndexFromIndexUsedByScript(short)
33B178:  STR             R0, [R4]
33B17A:  MOVW            R1, #0x6676; int
33B17E:  ADD             R0, R1; this
33B180:  BLX             j__ZN10CStreaming28SetMissionDoesntRequireModelEi; CStreaming::SetMissionDoesntRequireModel(int)
33B184:  B.W             loc_33C43C
33B188:  MOV             R0, R9; jumptable 0033AD9A case 2320
33B18A:  MOVS            R1, #1; __int16
33B18C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B190:  LDR.W           R0, =(ScriptParams_ptr - 0x33B19C)
33B194:  LDR.W           R2, =(_ZN11CTheScripts15StreamedScriptsE_ptr - 0x33B19E)
33B198:  ADD             R0, PC; ScriptParams_ptr
33B19A:  ADD             R2, PC; _ZN11CTheScripts15StreamedScriptsE_ptr
33B19C:  LDR             R4, [R0]; ScriptParams
33B19E:  LDR             R0, [R2]; this
33B1A0:  LDRSH.W         R1, [R4]; __int16
33B1A4:  BLX             j__ZN16CStreamedScripts35GetProperIndexFromIndexUsedByScriptEs; CStreamedScripts::GetProperIndexFromIndexUsedByScript(short)
33B1A8:  STR             R0, [R4]
33B1AA:  MOVW            R1, #0x6676; int
33B1AE:  ADD             R0, R1; this
33B1B0:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
33B1B4:  B.W             loc_33C43C
33B1B8:  MOV             R0, R9; jumptable 0033AD9A case 2322
33B1BA:  MOVS            R1, #3; __int16
33B1BC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B1C0:  LDR.W           R0, =(ScriptParams_ptr - 0x33B1CC)
33B1C4:  LDR.W           R1, =(_ZN11CTheScripts13MessageCentreE_ptr - 0x33B1D6)
33B1C8:  ADD             R0, PC; ScriptParams_ptr
33B1CA:  LDR.W           R2, =(_ZN11CTheScripts12MessageWidthE_ptr - 0x33B1D8)
33B1CE:  LDR.W           R3, =(_ZN11CTheScripts21bUseMessageFormattingE_ptr - 0x33B1DC)
33B1D2:  ADD             R1, PC; _ZN11CTheScripts13MessageCentreE_ptr
33B1D4:  ADD             R2, PC; _ZN11CTheScripts12MessageWidthE_ptr
33B1D6:  LDR             R0, [R0]; ScriptParams
33B1D8:  ADD             R3, PC; _ZN11CTheScripts21bUseMessageFormattingE_ptr
33B1DA:  LDR             R1, [R1]; CTheScripts::MessageCentre ...
33B1DC:  LDRD.W          R6, R5, [R0]
33B1E0:  LDR             R2, [R2]; CTheScripts::MessageWidth ...
33B1E2:  LDR             R3, [R3]; CTheScripts::bUseMessageFormatting ...
33B1E4:  CMP             R6, #0
33B1E6:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
33B1E8:  STRH            R5, [R1]; CTheScripts::MessageCentre
33B1EA:  MOV.W           R5, #0
33B1EE:  STRH            R0, [R2]; CTheScripts::MessageWidth
33B1F0:  IT NE
33B1F2:  MOVNE           R6, #1
33B1F4:  STRB            R6, [R3]; CTheScripts::bUseMessageFormatting
33B1F6:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33B1FA:  MOV             R0, R9; jumptable 0033AD9A case 2323
33B1FC:  MOVS            R1, #1; __int16
33B1FE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B202:  LDR.W           R0, =(ScriptParams_ptr - 0x33B20E)
33B206:  LDR.W           R2, =(_ZN11CTheScripts15StreamedScriptsE_ptr - 0x33B210)
33B20A:  ADD             R0, PC; ScriptParams_ptr
33B20C:  ADD             R2, PC; _ZN11CTheScripts15StreamedScriptsE_ptr
33B20E:  LDR             R4, [R0]; ScriptParams
33B210:  LDR             R5, [R2]; CTheScripts::StreamedScripts ...
33B212:  LDRSH.W         R1, [R4]; __int16
33B216:  MOV             R0, R5; this
33B218:  BLX             j__ZN16CStreamedScripts35GetProperIndexFromIndexUsedByScriptEs; CStreamedScripts::GetProperIndexFromIndexUsedByScript(short)
33B21C:  MOV             R1, R0; int
33B21E:  MOV             R0, R5; this
33B220:  STR             R1, [R4]
33B222:  BLX             j__ZN16CStreamedScripts22StartNewStreamedScriptEi; CStreamedScripts::StartNewStreamedScript(int)
33B226:  MOV             R1, R0; CRunningScript *
33B228:  MOV             R0, R9; this
33B22A:  BLX             j__ZN14CRunningScript35ReadParametersForNewlyStartedScriptEPS_; CRunningScript::ReadParametersForNewlyStartedScript(CRunningScript*)
33B22E:  B.W             loc_33C43C
33B232:  MOV             R0, R9; jumptable 0033AD9A case 2324
33B234:  MOVS            R1, #1
33B236:  B.W             loc_33BA50
33B23A:  BLX             j__ZN8CWeather30SetWeatherToAppropriateTypeNowEv; jumptable 0033AD9A case 2325
33B23E:  B.W             loc_33C43C
33B242:  MOV             R0, R9; jumptable 0033AD9A case 2326
33B244:  MOVS            R1, #2; __int16
33B246:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B24A:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33B25C)
33B24E:  MOV.W           R3, #0x1A4
33B252:  LDR.W           R0, =(ScriptParams_ptr - 0x33B25E)
33B256:  MOVS            R5, #0
33B258:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33B25A:  ADD             R0, PC; ScriptParams_ptr
33B25C:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
33B25E:  LDR             R0, [R0]; ScriptParams
33B260:  LDRD.W          R2, R0, [R0]
33B264:  CMP             R0, #0
33B266:  LDR             R1, [R1]; CPools::ms_pObjectPool
33B268:  MOV.W           R2, R2,LSR#8
33B26C:  LDR             R1, [R1]
33B26E:  MLA.W           R1, R2, R3, R1
33B272:  LDR.W           R2, [R1,#0x144]
33B276:  BIC.W           R3, R2, #0x40000
33B27A:  IT NE
33B27C:  ORRNE.W         R3, R2, #0x40000
33B280:  STR.W           R3, [R1,#0x144]
33B284:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33B288:  ADD             R5, SP, #0x90+var_40; jumptable 0033AD9A case 2327
33B28A:  MOV             R0, R9; this
33B28C:  MOVS            R2, #8; unsigned __int8
33B28E:  MOV             R1, R5; char *
33B290:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33B294:  MOV             R0, R9; this
33B296:  MOVS            R1, #1; __int16
33B298:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B29C:  LDR.W           R0, =(ScriptParams_ptr - 0x33B2A4)
33B2A0:  ADD             R0, PC; ScriptParams_ptr
33B2A2:  LDR             R0, [R0]; ScriptParams
33B2A4:  LDR             R1, [R0]
33B2A6:  MOV             R0, R5; this
33B2A8:  CMP             R1, #0
33B2AA:  IT NE
33B2AC:  MOVNE           R1, #(stderr+1); char *
33B2AE:  BLX             j__ZN11CAudioZones15SwitchAudioZoneEPcb; CAudioZones::SwitchAudioZone(char *,bool)
33B2B2:  B.W             loc_33C43C
33B2B6:  MOV             R0, R9; jumptable 0033AD9A case 2328
33B2B8:  MOVS            R1, #2; __int16
33B2BA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B2BE:  LDR.W           R0, =(ScriptParams_ptr - 0x33B2C6)
33B2C2:  ADD             R0, PC; ScriptParams_ptr
33B2C4:  LDR             R0, [R0]; ScriptParams
33B2C6:  LDR             R1, [R0]
33B2C8:  CMP             R1, #0
33B2CA:  BLT.W           loc_33C1A4
33B2CE:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33B2DA)
33B2D2:  UXTB            R3, R1
33B2D4:  LSRS            R1, R1, #8
33B2D6:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33B2D8:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33B2DA:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33B2DC:  LDR             R2, [R0,#4]
33B2DE:  LDRB            R2, [R2,R1]
33B2E0:  CMP             R2, R3
33B2E2:  BNE.W           loc_33C1A4
33B2E6:  MOVW            R2, #0xA2C
33B2EA:  LDR             R0, [R0]
33B2EC:  MLA.W           R1, R1, R2, R0
33B2F0:  B.W             loc_33C1A6
33B2F4:  MOV             R0, R9; jumptable 0033AD9A case 2329
33B2F6:  MOVS            R1, #2; __int16
33B2F8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B2FC:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33B30E)
33B300:  MOVW            R3, #0xA2C
33B304:  LDR.W           R0, =(ScriptParams_ptr - 0x33B310)
33B308:  MOVS            R5, #0
33B30A:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33B30C:  ADD             R0, PC; ScriptParams_ptr
33B30E:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33B310:  LDR             R0, [R0]; ScriptParams
33B312:  LDRD.W          R2, R0, [R0]
33B316:  CMP             R0, #0
33B318:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33B31A:  MOV.W           R2, R2,LSR#8
33B31E:  LDR             R1, [R1]
33B320:  MLA.W           R1, R2, R3, R1
33B324:  LDR.W           R2, [R1,#0x42C]
33B328:  IT NE
33B32A:  MOVNE           R0, #1
33B32C:  BIC.W           R2, R2, #0x40 ; '@'
33B330:  ORR.W           R0, R2, R0,LSL#6
33B334:  STR.W           R0, [R1,#0x42C]
33B338:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33B33C:  MOV             R0, R9; jumptable 0033AD9A case 2330
33B33E:  MOVS            R1, #2; unsigned __int8
33B340:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
33B344:  B.W             loc_33C43C
33B348:  MOV             R0, R9; jumptable 0033AD9A case 2332
33B34A:  MOVS            R1, #5; __int16
33B34C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B350:  LDR.W           R0, =(ScriptParams_ptr - 0x33B35E)
33B354:  ADD.W           R8, SP, #0x90+var_5C
33B358:  MOVS            R2, #8; unsigned __int8
33B35A:  ADD             R0, PC; ScriptParams_ptr
33B35C:  LDR             R0, [R0]; ScriptParams
33B35E:  LDRD.W          R4, R6, [R0]
33B362:  LDR             R1, [R0,#(dword_81A910 - 0x81A908)]
33B364:  STR             R1, [SP,#0x90+var_60]
33B366:  MOV             R1, R8; char *
33B368:  LDR             R5, [R0,#(dword_81A918 - 0x81A908)]
33B36A:  VLDR            S16, [R0,#0xC]
33B36E:  MOV             R0, R9; this
33B370:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33B374:  LDR             R0, [SP,#0x90+var_60]
33B376:  CMP             R5, #0
33B378:  STRD.W          R4, R6, [SP,#0x90+var_6C]
33B37C:  MOV.W           R4, #0xFFFFFFFF
33B380:  STR             R0, [SP,#0x90+var_64]
33B382:  BEQ.W           loc_33C38E
33B386:  CMP.W           R5, #0xFFFFFFFF
33B38A:  BGT.W           loc_33C392
33B38E:  LDR.W           R0, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x33B398)
33B392:  NEGS            R1, R5
33B394:  ADD             R0, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
33B396:  RSB.W           R1, R1, R1,LSL#3
33B39A:  LDR             R0, [R0]; CTheScripts::UsedObjectArray ...
33B39C:  ADD.W           R0, R0, R1,LSL#2
33B3A0:  LDR             R5, [R0,#0x18]
33B3A2:  B.W             loc_33C392
33B3A6:  MOV             R0, R9; jumptable 0033AD9A case 2333
33B3A8:  MOVS            R1, #6; __int16
33B3AA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B3AE:  LDR.W           R0, =(ScriptParams_ptr - 0x33B3BE)
33B3B2:  MOVS            R4, #1
33B3B4:  LDR.W           R6, =(ThePaths_ptr - 0x33B3C0)
33B3B8:  MOVS            R5, #0
33B3BA:  ADD             R0, PC; ScriptParams_ptr
33B3BC:  ADD             R6, PC; ThePaths_ptr
33B3BE:  LDR             R0, [R0]; ScriptParams
33B3C0:  VLDR            S2, [R0]
33B3C4:  VLDR            S6, [R0,#0xC]
33B3C8:  VLDR            S4, [R0,#4]
33B3CC:  VLDR            S10, [R0,#0x10]
33B3D0:  VMIN.F32        D4, D1, D3
33B3D4:  VMAX.F32        D1, D1, D3
33B3D8:  VLDR            S0, [R0,#8]
33B3DC:  VMIN.F32        D3, D2, D5
33B3E0:  VMAX.F32        D2, D2, D5
33B3E4:  VMOV            R1, S8; float
33B3E8:  VMOV            R2, S2; float
33B3EC:  VLDR            S2, [R0,#0x14]
33B3F0:  VMOV            R3, S6; float
33B3F4:  LDR             R0, [R6]; ThePaths ; this
33B3F6:  VMAX.F32        D3, D0, D1
33B3FA:  STRD.W          R5, R4, [SP,#0x90+var_84]; bool
33B3FE:  VMIN.F32        D0, D0, D1
33B402:  STR             R4, [SP,#0x90+var_7C]; bool
33B404:  VSTR            S4, [SP,#0x90+var_90]
33B408:  VSTR            S0, [SP,#0x90+var_8C]
33B40C:  VSTR            S6, [SP,#0x90+var_88]
33B410:  BLX             j__ZN9CPathFind20SwitchRoadsOffInAreaEffffffbbb; CPathFind::SwitchRoadsOffInArea(float,float,float,float,float,float,bool,bool,bool)
33B414:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33B418:  MOV             R0, R9; jumptable 0033AD9A case 2334
33B41A:  MOVS            R1, #6; __int16
33B41C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B420:  LDR.W           R0, =(ScriptParams_ptr - 0x33B430)
33B424:  MOVS            R4, #1
33B426:  LDR.W           R6, =(ThePaths_ptr - 0x33B432)
33B42A:  MOVS            R5, #0
33B42C:  ADD             R0, PC; ScriptParams_ptr
33B42E:  ADD             R6, PC; ThePaths_ptr
33B430:  LDR             R0, [R0]; ScriptParams
33B432:  VLDR            S0, [R0]
33B436:  VLDR            S6, [R0,#0xC]
33B43A:  VLDR            S2, [R0,#4]
33B43E:  VLDR            S10, [R0,#0x10]
33B442:  VMIN.F32        D4, D0, D3
33B446:  VMAX.F32        D0, D0, D3
33B44A:  VLDR            S4, [R0,#8]
33B44E:  VMIN.F32        D3, D1, D5
33B452:  VMAX.F32        D1, D1, D5
33B456:  VMOV            R1, S8; float
33B45A:  VMOV            R2, S0; float
33B45E:  VLDR            S0, [R0,#0x14]
33B462:  VMOV            R3, S6; float
33B466:  LDR             R0, [R6]; ThePaths ; this
33B468:  VMAX.F32        D3, D2, D0
33B46C:  STRD.W          R5, R4, [SP,#0x90+var_84]; bool
33B470:  VMIN.F32        D0, D2, D0
33B474:  VSTR            S2, [SP,#0x90+var_90]
33B478:  VSTR            S0, [SP,#0x90+var_8C]
33B47C:  VSTR            S6, [SP,#0x90+var_88]
33B480:  BLX             j__ZN9CPathFind23SwitchPedRoadsOffInAreaEffffffbb; CPathFind::SwitchPedRoadsOffInArea(float,float,float,float,float,float,bool,bool)
33B484:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33B488:  MOV             R0, R9; jumptable 0033AD9A case 2335
33B48A:  MOVS            R1, #1; __int16
33B48C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B490:  LDR.W           R0, =(ScriptParams_ptr - 0x33B4A0)
33B494:  MOVW            R3, #0xA2C
33B498:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33B4A2)
33B49C:  ADD             R0, PC; ScriptParams_ptr
33B49E:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33B4A0:  LDR             R0, [R0]; ScriptParams
33B4A2:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33B4A4:  LDR             R2, [R0]
33B4A6:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33B4A8:  LSRS            R2, R2, #8
33B4AA:  LDR             R1, [R1]
33B4AC:  MLA.W           R1, R2, R3, R1
33B4B0:  LDR.W           R1, [R1,#0x9E0]
33B4B4:  STR             R1, [R0]
33B4B6:  B.W             loc_33C434
33B4BA:  MOV             R0, R9; jumptable 0033AD9A case 2336
33B4BC:  MOVS            R1, #8; __int16
33B4BE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B4C2:  LDR.W           R0, =(ScriptParams_ptr - 0x33B4CE)
33B4C6:  ADD.W           R12, SP, #0x90+var_5C
33B4CA:  ADD             R0, PC; ScriptParams_ptr
33B4CC:  LDR             R1, [R0]; ScriptParams
33B4CE:  LDRD.W          R2, R6, [R1]
33B4D2:  LDRD.W          R5, R0, [R1,#(dword_81A910 - 0x81A908)]
33B4D6:  LDRD.W          R3, R4, [R1,#(dword_81A918 - 0x81A908)]
33B4DA:  STM.W           R12, {R0,R3,R4}
33B4DE:  VLDR            S0, [R1,#0x18]
33B4E2:  LDR.W           R0, =(TheCamera_ptr - 0x33B4F4)
33B4E6:  VCVT.F32.S32    S0, S0
33B4EA:  STRD.W          R2, R6, [SP,#0x90+var_6C]
33B4EE:  LDR             R2, [R1,#(dword_81A924 - 0x81A908)]
33B4F0:  ADD             R0, PC; TheCamera_ptr
33B4F2:  STR             R5, [SP,#0x90+var_64]
33B4F4:  ADD             R1, SP, #0x90+var_5C; CVector *
33B4F6:  CMP             R2, #0
33B4F8:  LDR             R0, [R0]; TheCamera ; this
33B4FA:  IT NE
33B4FC:  MOVNE           R2, #1
33B4FE:  STR             R2, [SP,#0x90+var_90]; bool
33B500:  ADD             R2, SP, #0x90+var_6C; CVector *
33B502:  VMOV            R3, S0; float
33B506:  BLX             j__ZN7CCamera17VectorTrackLinearEP7CVectorS1_fb; CCamera::VectorTrackLinear(CVector *,CVector *,float,bool)
33B50A:  B.W             loc_33C43C
33B50E:  MOV             R0, R9; jumptable 0033AD9A case 2338
33B510:  MOVS            R1, #4; __int16
33B512:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B516:  LDR.W           R0, =(ScriptParams_ptr - 0x33B522)
33B51A:  LDR.W           R6, =(TheCamera_ptr - 0x33B524)
33B51E:  ADD             R0, PC; ScriptParams_ptr
33B520:  ADD             R6, PC; TheCamera_ptr
33B522:  LDR             R0, [R0]; ScriptParams
33B524:  VLDR            S0, [R0,#8]
33B528:  VCVT.F32.S32    S0, S0
33B52C:  LDRD.W          R1, R2, [R0]; float
33B530:  LDR             R5, [R0,#(dword_81A914 - 0x81A908)]
33B532:  LDR             R0, [R6]; TheCamera ; this
33B534:  CMP             R5, #0
33B536:  IT NE
33B538:  MOVNE           R5, #1
33B53A:  STR             R5, [SP,#0x90+var_90]; bool
33B53C:  VMOV            R3, S0; float
33B540:  BLX             j__ZN7CCamera7LerpFOVEfffb; CCamera::LerpFOV(float,float,float,bool)
33B544:  B.W             loc_33C43C
33B548:  MOV             R0, R9; jumptable 0033AD9A case 2339
33B54A:  MOVS            R1, #1; __int16
33B54C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B550:  LDR.W           R0, =(ScriptParams_ptr - 0x33B558)
33B554:  ADD             R0, PC; ScriptParams_ptr
33B556:  LDR             R0, [R0]; ScriptParams
33B558:  LDR             R0, [R0]
33B55A:  CMP             R0, #0
33B55C:  IT NE
33B55E:  MOVNE           R0, #(stderr+1); this
33B560:  BLX             j__ZN6CPlane19SwitchAmbientPlanesEb; CPlane::SwitchAmbientPlanes(bool)
33B564:  B.W             loc_33C43C
33B568:  MOV             R0, R9; jumptable 0033AD9A case 2340
33B56A:  MOVS            R1, #2; __int16
33B56C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B570:  LDR.W           R0, =(ScriptParams_ptr - 0x33B578)
33B574:  ADD             R0, PC; ScriptParams_ptr
33B576:  LDR             R1, [R0]; ScriptParams
33B578:  LDRD.W          R0, R1, [R1]; bool
33B57C:  CMP             R0, #0
33B57E:  IT NE
33B580:  MOVNE           R0, #(stderr+1); this
33B582:  BLX             j__ZN12CPostEffects26ScriptDarknessFilterSwitchEbi; CPostEffects::ScriptDarknessFilterSwitch(bool,int)
33B586:  B.W             loc_33C43C
33B58A:  LDR.W           R0, =(TheCamera_ptr - 0x33B592); jumptable 0033AD9A case 2341
33B58E:  ADD             R0, PC; TheCamera_ptr
33B590:  LDR             R0, [R0]; TheCamera ; this
33B592:  BLX             j__ZN7CCamera30InitialiseScriptableComponentsEv; CCamera::InitialiseScriptableComponents(void)
33B596:  B.W             loc_33C43C
33B59A:  MOV             R0, R9; jumptable 0033AD9A case 2342
33B59C:  MOVS            R1, #1; __int16
33B59E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B5A2:  LDR.W           R0, =(ScriptParams_ptr - 0x33B5AE)
33B5A6:  LDR.W           R2, =(_ZN11CTheScripts15StreamedScriptsE_ptr - 0x33B5B0)
33B5AA:  ADD             R0, PC; ScriptParams_ptr
33B5AC:  ADD             R2, PC; _ZN11CTheScripts15StreamedScriptsE_ptr
33B5AE:  LDR             R4, [R0]; ScriptParams
33B5B0:  LDR             R5, [R2]; CTheScripts::StreamedScripts ...
33B5B2:  LDRSH.W         R1, [R4]; __int16
33B5B6:  MOV             R0, R5; this
33B5B8:  BLX             j__ZN16CStreamedScripts35GetProperIndexFromIndexUsedByScriptEs; CStreamedScripts::GetProperIndexFromIndexUsedByScript(short)
33B5BC:  ADD.W           R0, R5, R0,LSL#5
33B5C0:  LDRB            R0, [R0,#4]
33B5C2:  STR             R0, [R4]
33B5C4:  B.W             loc_33C434
33B5C8:  MOV             R0, R9; jumptable 0033AD9A case 2344
33B5CA:  MOVS            R1, #3; __int16
33B5CC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B5D0:  LDR.W           R0, =(ScriptParams_ptr - 0x33B5DC)
33B5D4:  LDR.W           R2, =(_ZN11CTheScripts15StreamedScriptsE_ptr - 0x33B5DE)
33B5D8:  ADD             R0, PC; ScriptParams_ptr
33B5DA:  ADD             R2, PC; _ZN11CTheScripts15StreamedScriptsE_ptr
33B5DC:  LDR             R4, [R0]; ScriptParams
33B5DE:  LDR             R0, [R2]; this
33B5E0:  LDRSH.W         R1, [R4]; __int16
33B5E4:  BLX             j__ZN16CStreamedScripts35GetProperIndexFromIndexUsedByScriptEs; CStreamedScripts::GetProperIndexFromIndexUsedByScript(short)
33B5E8:  MOV             R1, R0; __int16
33B5EA:  LDR.W           R0, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x33B5F6)
33B5EE:  LDRH            R3, [R4,#(dword_81A910 - 0x81A908)]; unsigned __int16
33B5F0:  MOVS            R6, #0
33B5F2:  ADD             R0, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
33B5F4:  LDRSH.W         R2, [R4,#(dword_81A90C - 0x81A908)]; __int16
33B5F8:  STR             R1, [R4]
33B5FA:  MOVT            R6, #0xBF80
33B5FE:  LDR             R0, [R0]; this
33B600:  MOV.W           R4, #0xFFFFFFFF
33B604:  MOVS            R5, #0
33B606:  STRD.W          R5, R4, [SP,#0x90+var_90]; signed __int8
33B60A:  STR             R6, [SP,#0x90+var_88]; float
33B60C:  BLX             j__ZN17CScriptsForBrains17AddNewScriptBrainEsstaaf; CScriptsForBrains::AddNewScriptBrain(short,short,ushort,signed char,signed char,float)
33B610:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33B614:  MOV             R0, R9; jumptable 0033AD9A case 2345
33B616:  MOVS            R1, #5; __int16
33B618:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B61C:  LDR.W           R0, =(ScriptParams_ptr - 0x33B628)
33B620:  LDR.W           R2, =(_ZN11CTheScripts15StreamedScriptsE_ptr - 0x33B62A)
33B624:  ADD             R0, PC; ScriptParams_ptr
33B626:  ADD             R2, PC; _ZN11CTheScripts15StreamedScriptsE_ptr
33B628:  LDR             R4, [R0]; ScriptParams
33B62A:  LDR             R0, [R2]; this
33B62C:  LDRSH.W         R1, [R4]; __int16
33B630:  BLX             j__ZN16CStreamedScripts35GetProperIndexFromIndexUsedByScriptEs; CStreamedScripts::GetProperIndexFromIndexUsedByScript(short)
33B634:  MOV             R1, R0; __int16
33B636:  LDR             R0, [R4,#(dword_81A90C - 0x81A908)]
33B638:  STR             R1, [R4]
33B63A:  CMP.W           R0, #0xFFFFFFFF
33B63E:  BGT             loc_33B654
33B640:  LDR.W           R2, =(_ZN11CTheScripts15UsedObjectArrayE_ptr - 0x33B64A)
33B644:  NEGS            R0, R0
33B646:  ADD             R2, PC; _ZN11CTheScripts15UsedObjectArrayE_ptr
33B648:  RSB.W           R0, R0, R0,LSL#3
33B64C:  LDR             R2, [R2]; CTheScripts::UsedObjectArray ...
33B64E:  ADD.W           R0, R2, R0,LSL#2
33B652:  LDR             R0, [R0,#0x18]
33B654:  LDR.W           R2, =(ScriptParams_ptr - 0x33B660)
33B658:  LDR.W           R6, =(_ZN11CTheScripts16ScriptsForBrainsE_ptr - 0x33B662)
33B65C:  ADD             R2, PC; ScriptParams_ptr
33B65E:  ADD             R6, PC; _ZN11CTheScripts16ScriptsForBrainsE_ptr
33B660:  LDR             R2, [R2]; ScriptParams
33B662:  VLDR            S0, [R2,#0xC]
33B666:  LDRH            R3, [R2,#(dword_81A910 - 0x81A908)]; unsigned __int16
33B668:  LDRSB.W         R5, [R2,#(dword_81A918 - 0x81A908)]
33B66C:  SXTH            R2, R0; __int16
33B66E:  LDR             R0, [R6]; this
33B670:  MOVS            R6, #1
33B672:  VSTR            S0, [SP,#0x90+var_88]
33B676:  STRD.W          R6, R5, [SP,#0x90+var_90]; signed __int8
33B67A:  BLX             j__ZN17CScriptsForBrains17AddNewScriptBrainEsstaaf; CScriptsForBrains::AddNewScriptBrain(short,short,ushort,signed char,signed char,float)
33B67E:  B.W             loc_33C43C
33B682:  MOV             R0, R9; jumptable 0033AD9A case 2347
33B684:  MOVS            R1, #2; __int16
33B686:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B68A:  LDR.W           R0, =(ScriptParams_ptr - 0x33B694)
33B68E:  MOVS            R1, #8; int
33B690:  ADD             R0, PC; ScriptParams_ptr
33B692:  LDR             R4, [R0]; ScriptParams
33B694:  LDR             R0, [R4]; this
33B696:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
33B69A:  LDR.W           R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x33B6A6)
33B69E:  MOV.W           R2, #0x2D4
33B6A2:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
33B6A4:  LDR             R1, [R1]; CPedGroups::ms_groups ...
33B6A6:  MLA.W           R0, R0, R2, R1
33B6AA:  LDR             R1, [R4,#(dword_81A90C - 0x81A908)]; int
33B6AC:  ADDS            R0, #8; this
33B6AE:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
33B6B2:  CMP             R0, #0
33B6B4:  BEQ.W           loc_33C3FA
33B6B8:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33B6C0)
33B6BC:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33B6BE:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33B6C0:  LDR             R1, [R1]; CPools::ms_pPedPool
33B6C2:  LDRD.W          R2, R1, [R1]
33B6C6:  SUBS            R0, R0, R2
33B6C8:  MOV             R2, #0xBED87F3B
33B6D0:  ASRS            R0, R0, #2
33B6D2:  MULS            R0, R2
33B6D4:  LDRB            R1, [R1,R0]
33B6D6:  ORR.W           R0, R1, R0,LSL#8
33B6DA:  B.W             loc_33C3FE
33B6DE:  MOV             R0, R9; jumptable 0033AD9A case 2350
33B6E0:  MOVS            R1, #3; __int16
33B6E2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B6E6:  LDR.W           R0, =(ScriptParams_ptr - 0x33B6EE)
33B6EA:  ADD             R0, PC; ScriptParams_ptr
33B6EC:  LDR             R0, [R0]; ScriptParams
33B6EE:  VLDR            S2, [R0]
33B6F2:  VLDR            S0, [R0,#4]
33B6F6:  LDR             R0, [R0,#(dword_81A910 - 0x81A908)]
33B6F8:  CMP             R0, #0
33B6FA:  BEQ.W           loc_33C408
33B6FE:  VMOV            R0, S2; this
33B702:  MOVS            R2, #0
33B704:  VMOV            R1, S0; float
33B708:  MOVS            R3, #(stderr+1)
33B70A:  STRD.W          R3, R2, [SP,#0x90+var_90]; float *
33B70E:  ADD             R3, SP, #0x90+var_60; float
33B710:  MOVS            R2, #0; float
33B712:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
33B716:  B.W             loc_33C41E
33B71A:  MOV             R0, R9; jumptable 0033AD9A case 2351
33B71C:  MOVS            R1, #1; __int16
33B71E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B722:  LDR.W           R0, =(ScriptParams_ptr - 0x33B730)
33B726:  MOVS            R5, #0
33B728:  LDR.W           R1, =(TheCamera_ptr - 0x33B732)
33B72C:  ADD             R0, PC; ScriptParams_ptr
33B72E:  ADD             R1, PC; TheCamera_ptr
33B730:  LDR             R0, [R0]; ScriptParams
33B732:  LDR             R1, [R1]; TheCamera
33B734:  LDR             R0, [R0]
33B736:  CMP             R0, #0
33B738:  IT NE
33B73A:  MOVNE           R0, #1
33B73C:  STRB.W          R0, [R1,#(byte_952C1F - 0x951FA8)]
33B740:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33B744:  MOV             R0, R9; jumptable 0033AD9A case 2352
33B746:  MOVS            R1, #1; __int16
33B748:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B74C:  LDR.W           R0, =(ScriptParams_ptr - 0x33B75A)
33B750:  MOVS            R5, #0
33B752:  LDR.W           R1, =(TheCamera_ptr - 0x33B75C)
33B756:  ADD             R0, PC; ScriptParams_ptr
33B758:  ADD             R1, PC; TheCamera_ptr
33B75A:  LDR             R0, [R0]; ScriptParams
33B75C:  LDR             R1, [R1]; TheCamera
33B75E:  LDR             R0, [R0]
33B760:  CMP             R0, #0
33B762:  IT NE
33B764:  MOVNE           R0, #1
33B766:  STRB.W          R0, [R1,#(byte_952C1E - 0x951FA8)]
33B76A:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33B76E:  MOV             R0, R9; jumptable 0033AD9A case 2353
33B770:  MOVS            R1, #1; __int16
33B772:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B776:  LDR.W           R0, =(ScriptParams_ptr - 0x33B784)
33B77A:  MOVS            R5, #0
33B77C:  LDR.W           R1, =(TheCamera_ptr - 0x33B786)
33B780:  ADD             R0, PC; ScriptParams_ptr
33B782:  ADD             R1, PC; TheCamera_ptr
33B784:  LDR             R0, [R0]; ScriptParams
33B786:  LDR             R1, [R1]; TheCamera
33B788:  LDR             R0, [R0]
33B78A:  CMP             R0, #0
33B78C:  IT NE
33B78E:  MOVNE           R0, #1
33B790:  STRB.W          R0, [R1,#(byte_952C1D - 0x951FA8)]
33B794:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33B798:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x33B7A4); jumptable 0033AD9A case 2355
33B79C:  LDR.W           R1, =(TheCamera_ptr - 0x33B7A6)
33B7A0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
33B7A2:  ADD             R1, PC; TheCamera_ptr
33B7A4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
33B7A6:  VLDR            S0, [R0]
33B7AA:  LDR             R0, [R1]; TheCamera
33B7AC:  VCVT.F32.U32    S0, S0
33B7B0:  ADDW            R0, R0, #0xC48
33B7B4:  B               loc_33B7D2
33B7B6:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x33B7C2); jumptable 0033AD9A case 2356
33B7BA:  LDR.W           R1, =(TheCamera_ptr - 0x33B7C4)
33B7BE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
33B7C0:  ADD             R1, PC; TheCamera_ptr
33B7C2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
33B7C4:  VLDR            S0, [R0]
33B7C8:  LDR             R0, [R1]; TheCamera
33B7CA:  VCVT.F32.U32    S0, S0
33B7CE:  ADDW            R0, R0, #0xBE8
33B7D2:  VLDR            S2, [R0]
33B7D6:  MOVS            R1, #0
33B7D8:  MOVS            R5, #0
33B7DA:  VCMPE.F32       S2, S0
33B7DE:  VMRS            APSR_nzcv, FPSCR
33B7E2:  IT GE
33B7E4:  MOVGE           R1, #1
33B7E6:  B               loc_33BFCA
33B7E8:  MOV             R0, R9; jumptable 0033AD9A case 2358
33B7EA:  MOVS            R1, #8; __int16
33B7EC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B7F0:  LDR.W           R0, =(ScriptParams_ptr - 0x33B7FC)
33B7F4:  ADD.W           R12, SP, #0x90+var_5C
33B7F8:  ADD             R0, PC; ScriptParams_ptr
33B7FA:  LDR             R1, [R0]; ScriptParams
33B7FC:  LDRD.W          R2, R6, [R1]
33B800:  LDRD.W          R5, R0, [R1,#(dword_81A910 - 0x81A908)]
33B804:  LDRD.W          R3, R4, [R1,#(dword_81A918 - 0x81A908)]
33B808:  STM.W           R12, {R0,R3,R4}
33B80C:  VLDR            S0, [R1,#0x18]
33B810:  LDR.W           R0, =(TheCamera_ptr - 0x33B822)
33B814:  VCVT.F32.S32    S0, S0
33B818:  STRD.W          R2, R6, [SP,#0x90+var_6C]
33B81C:  LDR             R2, [R1,#(dword_81A924 - 0x81A908)]
33B81E:  ADD             R0, PC; TheCamera_ptr
33B820:  STR             R5, [SP,#0x90+var_64]
33B822:  ADD             R1, SP, #0x90+var_5C; CVector *
33B824:  CMP             R2, #0
33B826:  LDR             R0, [R0]; TheCamera ; this
33B828:  IT NE
33B82A:  MOVNE           R2, #1
33B82C:  STR             R2, [SP,#0x90+var_90]; bool
33B82E:  ADD             R2, SP, #0x90+var_6C; CVector *
33B830:  VMOV            R3, S0; float
33B834:  BLX             j__ZN7CCamera16VectorMoveLinearEP7CVectorS1_fb; CCamera::VectorMoveLinear(CVector *,CVector *,float,bool)
33B838:  B.W             loc_33C43C
33B83C:  MOV             R0, R9; jumptable 0033AD9A case 2359
33B83E:  MOVS            R1, #4; __int16
33B840:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B844:  LDR.W           R0, =(ScriptParams_ptr - 0x33B850)
33B848:  ADD             R6, SP, #0x90+var_40
33B84A:  MOVS            R2, #8; unsigned __int8
33B84C:  ADD             R0, PC; ScriptParams_ptr
33B84E:  MOV             R1, R6; char *
33B850:  LDR             R0, [R0]; ScriptParams
33B852:  VLD1.32         {D8-D9}, [R0]
33B856:  MOV             R0, R9; this
33B858:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33B85C:  LDR.W           R1, =(aPedDummy+4 - 0x33B86C); "DUMMY"
33B860:  MOVS            R5, #0
33B862:  MOV             R0, R6; char *
33B864:  STRB.W          R5, [SP,#0x90+var_5C]
33B868:  ADD             R1, PC; "DUMMY"
33B86A:  BLX             strcasecmp
33B86E:  CMP             R0, #0
33B870:  ITTT NE
33B872:  ADDNE.W         R0, SP, #0x90+var_5C; char *
33B876:  ADDNE.W         R1, SP, #0x90+var_40; char *
33B87A:  BLXNE           strcpy
33B87E:  MOV             R0, R9; this
33B880:  MOVS            R1, #1; __int16
33B882:  MOV.W           R8, #1
33B886:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B88A:  LDR.W           R0, =(RsGlobal_ptr - 0x33B898)
33B88E:  MOVS            R3, #0; unsigned __int8
33B890:  VLDR            S4, =448.0
33B894:  ADD             R0, PC; RsGlobal_ptr
33B896:  VLDR            S6, =640.0
33B89A:  LDR.W           R1, =(ScriptParams_ptr - 0x33B8A4)
33B89E:  LDR             R0, [R0]; RsGlobal
33B8A0:  ADD             R1, PC; ScriptParams_ptr
33B8A2:  VLDR            S2, [R0,#8]
33B8A6:  VLDR            S0, [R0,#4]
33B8AA:  VCVT.F32.S32    S2, S2
33B8AE:  LDR.W           R0, =(_ZN11CTheScripts32NumberOfIntroRectanglesThisFrameE_ptr - 0x33B8BC)
33B8B2:  VCVT.F32.S32    S0, S0
33B8B6:  LDR             R1, [R1]; ScriptParams
33B8B8:  ADD             R0, PC; _ZN11CTheScripts32NumberOfIntroRectanglesThisFrameE_ptr
33B8BA:  LDR.W           R10, [R0]; CTheScripts::NumberOfIntroRectanglesThisFrame ...
33B8BE:  LDR.W           R0, =(_ZN11CTheScripts15IntroRectanglesE_ptr - 0x33B8D0)
33B8C2:  LDR.W           R9, [R1]
33B8C6:  MOVS            R1, #2
33B8C8:  VDIV.F32        S9, S2, S4
33B8CC:  ADD             R0, PC; _ZN11CTheScripts15IntroRectanglesE_ptr
33B8CE:  LDRH.W          R2, [R10]; CTheScripts::NumberOfIntroRectanglesThisFrame
33B8D2:  LDR             R6, [R0]; CTheScripts::IntroRectangles ...
33B8D4:  RSB.W           R0, R2, R2,LSL#4
33B8D8:  MOVS            R2, #0; unsigned __int8
33B8DA:  STR.W           R1, [R6,R0,LSL#2]
33B8DE:  ADD.W           R0, R6, R0,LSL#2
33B8E2:  MOVS            R1, #0; unsigned __int8
33B8E4:  STRH            R4, [R0,#6]
33B8E6:  STR             R5, [R0,#0x18]
33B8E8:  ADDS            R0, #8
33B8EA:  VDIV.F32        S8, S0, S6
33B8EE:  VMOV.F32        S10, S8
33B8F2:  VMOV.F32        S11, S9
33B8F6:  VMUL.F32        Q8, Q4, Q2
33B8FA:  VST1.32         {D16-D17}, [R0]
33B8FE:  MOVS            R0, #0xBE
33B900:  STR             R0, [SP,#0x90+var_90]; unsigned __int8
33B902:  ADD             R0, SP, #0x90+var_6C; this
33B904:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
33B908:  LDRH.W          R0, [R10]; CTheScripts::NumberOfIntroRectanglesThisFrame
33B90C:  LDRB.W          R1, [SP,#0x90+var_6C]
33B910:  RSB.W           R0, R0, R0,LSL#4
33B914:  ADD.W           R0, R6, R0,LSL#2
33B918:  STRB            R1, [R0,#0x1C]
33B91A:  LDRB.W          R1, [SP,#0x90+var_6C+1]
33B91E:  STRB            R1, [R0,#0x1D]
33B920:  LDRB.W          R1, [SP,#0x90+var_6C+2]
33B924:  STRB            R1, [R0,#0x1E]
33B926:  LDRB.W          R1, [SP,#0x90+var_6C+3]
33B92A:  STRB            R1, [R0,#0x1F]
33B92C:  ADDS            R0, #0x20 ; ' '; char *
33B92E:  ADD             R1, SP, #0x90+var_5C; char *
33B930:  BLX             strcpy
33B934:  LDRH.W          R0, [R10]; CTheScripts::NumberOfIntroRectanglesThisFrame
33B938:  RSB.W           R1, R0, R0,LSL#4
33B93C:  ADDS            R0, #1
33B93E:  ADD.W           R1, R6, R1,LSL#2
33B942:  STRD.W          R8, R9, [R1,#0x34]
33B946:  STRB.W          R5, [R1,#0x2A]
33B94A:  STRH.W          R0, [R10]; CTheScripts::NumberOfIntroRectanglesThisFrame
33B94E:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33B952:  MOV             R0, R9; jumptable 0033AD9A case 2361
33B954:  MOVS            R1, #8; __int16
33B956:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B95A:  LDR.W           R0, =(ScriptParams_ptr - 0x33B962)
33B95E:  ADD             R0, PC; ScriptParams_ptr
33B960:  LDR             R0, [R0]; ScriptParams
33B962:  LDR             R1, [R0]
33B964:  CMP             R1, #0
33B966:  BLT.W           loc_33C1D4
33B96A:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33B976)
33B96E:  UXTB            R3, R1
33B970:  LSRS            R1, R1, #8
33B972:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33B974:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33B976:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33B978:  LDR             R2, [R0,#4]
33B97A:  LDRB            R2, [R2,R1]
33B97C:  CMP             R2, R3
33B97E:  BNE.W           loc_33C1D4
33B982:  MOVW            R2, #0xA2C
33B986:  LDR             R0, [R0]
33B988:  MLA.W           R0, R1, R2, R0
33B98C:  B.W             loc_33C1D6
33B990:  ADD             R5, SP, #0x90+var_40; jumptable 0033AD9A case 2362
33B992:  MOV             R0, R9; this
33B994:  MOVS            R2, #8; unsigned __int8
33B996:  MOV             R1, R5; char *
33B998:  BLX             j__ZN14CRunningScript23ReadTextLabelFromScriptEPch; CRunningScript::ReadTextLabelFromScript(char *,uchar)
33B99C:  MOV             R0, R9; this
33B99E:  MOVS            R1, #1; __int16
33B9A0:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B9A4:  MOV             R0, R5; this
33B9A6:  BLX             j__ZN8CGarages15FindGarageIndexEPc; CGarages::FindGarageIndex(char *)
33B9AA:  CMP             R0, R4
33B9AC:  BLE.W           loc_33C43C
33B9B0:  LDR.W           R1, =(_ZN8CGarages8aGaragesE_ptr - 0x33B9C0)
33B9B4:  MOVS            R3, #0xD8
33B9B6:  LDR.W           R2, =(ScriptParams_ptr - 0x33B9C2)
33B9BA:  MOVS            R5, #0
33B9BC:  ADD             R1, PC; _ZN8CGarages8aGaragesE_ptr
33B9BE:  ADD             R2, PC; ScriptParams_ptr
33B9C0:  LDR             R1, [R1]; CGarages::aGarages ...
33B9C2:  SMLABB.W        R0, R0, R3, R1
33B9C6:  LDR             R1, [R2]; ScriptParams
33B9C8:  LDR             R1, [R1]
33B9CA:  LDRB.W          R2, [R0,#0x4E]
33B9CE:  CMP             R1, #0
33B9D0:  IT NE
33B9D2:  MOVNE           R1, #1
33B9D4:  AND.W           R2, R2, #0x7F
33B9D8:  ORR.W           R1, R2, R1,LSL#7
33B9DC:  STRB.W          R1, [R0,#0x4E]
33B9E0:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33B9E4:  MOV             R0, R9; jumptable 0033AD9A case 2363
33B9E6:  MOVS            R1, #2; __int16
33B9E8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33B9EC:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33B9FC)
33B9F0:  MOVW            R3, #0x7CC
33B9F4:  LDR.W           R0, =(ScriptParams_ptr - 0x33B9FE)
33B9F8:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33B9FA:  ADD             R0, PC; ScriptParams_ptr
33B9FC:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33B9FE:  LDR             R0, [R0]; ScriptParams
33BA00:  LDRD.W          R2, R0, [R0]
33BA04:  CMP             R0, #0
33BA06:  LDR             R1, [R1]; CPools::ms_pPedPool
33BA08:  MOV.W           R2, R2,LSR#8
33BA0C:  LDR             R1, [R1]
33BA0E:  MLA.W           R1, R2, R3, R1
33BA12:  LDR.W           R2, [R1,#0x490]
33BA16:  IT NE
33BA18:  MOVNE           R0, #1
33BA1A:  LSRS            R2, R2, #1
33BA1C:  BFI.W           R0, R2, #1, #0x1F
33BA20:  B               loc_33BBA2
33BA22:  MOV             R0, R9; jumptable 0033AD9A case 2365
33BA24:  MOVS            R1, #1; __int16
33BA26:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BA2A:  LDR.W           R0, =(ScriptParams_ptr - 0x33BA38)
33BA2E:  MOVS            R5, #0
33BA30:  LDR.W           R1, =(TheCamera_ptr - 0x33BA3A)
33BA34:  ADD             R0, PC; ScriptParams_ptr
33BA36:  ADD             R1, PC; TheCamera_ptr
33BA38:  LDR             R0, [R0]; ScriptParams
33BA3A:  LDR             R1, [R1]; TheCamera
33BA3C:  LDR             R0, [R0]
33BA3E:  CMP             R0, #0
33BA40:  IT NE
33BA42:  MOVNE           R0, #1
33BA44:  STRB.W          R0, [R1,#(byte_952C20 - 0x951FA8)]
33BA48:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33BA4C:  MOV             R0, R9; jumptable 0033AD9A case 2366
33BA4E:  MOVS            R1, #2; __int16
33BA50:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BA54:  B.W             loc_33C43C
33BA58:  MOV             R0, R9; jumptable 0033AD9A case 2368
33BA5A:  MOVS            R1, #2; __int16
33BA5C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BA60:  LDR.W           R0, =(ScriptParams_ptr - 0x33BA6A)
33BA64:  MOVS            R1, #8; int
33BA66:  ADD             R0, PC; ScriptParams_ptr
33BA68:  LDR             R0, [R0]; ScriptParams
33BA6A:  LDR             R0, [R0]; this
33BA6C:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
33BA70:  CMP             R0, #7
33BA72:  BHI.W           loc_33C43C
33BA76:  LDR.W           R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x33BA88)
33BA7A:  MOV.W           R3, #0x2D4
33BA7E:  LDR.W           R2, =(ScriptParams_ptr - 0x33BA8A)
33BA82:  MOVS            R5, #0
33BA84:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
33BA86:  ADD             R2, PC; ScriptParams_ptr
33BA88:  LDR             R1, [R1]; CPedGroups::ms_groups ...
33BA8A:  MLA.W           R0, R0, R3, R1
33BA8E:  LDR             R1, [R2]; ScriptParams
33BA90:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
33BA92:  CMP             R1, #0
33BA94:  IT NE
33BA96:  MOVNE           R1, #1
33BA98:  STRB            R1, [R0,#4]
33BA9A:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33BA9E:  MOV             R0, R9; jumptable 0033AD9A case 2369
33BAA0:  MOVS            R1, #2; __int16
33BAA2:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BAA6:  LDR.W           R0, =(ScriptParams_ptr - 0x33BAB0)
33BAAA:  MOVS            R1, #2; int
33BAAC:  ADD             R0, PC; ScriptParams_ptr
33BAAE:  LDR             R0, [R0]; ScriptParams
33BAB0:  LDR             R0, [R0]; this
33BAB2:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
33BAB6:  CMP             R0, #0
33BAB8:  BLT.W           loc_33C43C
33BABC:  LDR.W           R1, =(ScriptParams_ptr - 0x33BACE)
33BAC0:  RSB.W           R0, R0, R0,LSL#5
33BAC4:  LDR.W           R2, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x33BAD0)
33BAC8:  MOVS            R5, #0
33BACA:  ADD             R1, PC; ScriptParams_ptr
33BACC:  ADD             R2, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
33BACE:  LDR             R1, [R1]; ScriptParams
33BAD0:  LDR             R2, [R2]; CTheScripts::ScriptSearchLightArray ...
33BAD2:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
33BAD4:  ADD.W           R0, R2, R0,LSL#2
33BAD8:  CMP             R1, #0
33BADA:  IT NE
33BADC:  MOVNE           R1, #1
33BADE:  STRB            R1, [R0,#1]
33BAE0:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33BAE4:  MOV             R0, R9; jumptable 0033AD9A case 2370
33BAE6:  MOVS            R1, #1; __int16
33BAE8:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BAEC:  LDR.W           R0, =(ScriptParams_ptr - 0x33BAF4)
33BAF0:  ADD             R0, PC; ScriptParams_ptr
33BAF2:  LDR             R0, [R0]; ScriptParams
33BAF4:  LDR             R0, [R0]; this
33BAF6:  BLX             j__ZN9CShopping15HasPlayerBoughtEj; CShopping::HasPlayerBought(uint)
33BAFA:  B               loc_33C27C
33BAFC:  MOV             R0, R9; jumptable 0033AD9A case 2372
33BAFE:  MOVS            R1, #1; __int16
33BB00:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BB04:  LDR.W           R0, =(ScriptParams_ptr - 0x33BB0C)
33BB08:  ADD             R0, PC; ScriptParams_ptr
33BB0A:  LDR             R0, [R0]; ScriptParams
33BB0C:  LDR             R1, [R0]
33BB0E:  CMP             R1, #0
33BB10:  BLT.W           loc_33C20A
33BB14:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33BB20)
33BB18:  UXTB            R3, R1
33BB1A:  LSRS            R1, R1, #8
33BB1C:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33BB1E:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33BB20:  LDR             R0, [R0]; CPools::ms_pPedPool
33BB22:  LDR             R2, [R0,#4]
33BB24:  LDRB            R2, [R2,R1]
33BB26:  CMP             R2, R3
33BB28:  BNE.W           loc_33C20A
33BB2C:  MOVW            R2, #0x7CC
33BB30:  LDR             R0, [R0]
33BB32:  MLA.W           R1, R1, R2, R0
33BB36:  B               loc_33C20C
33BB38:  MOV             R0, R9; jumptable 0033AD9A case 2373
33BB3A:  MOVS            R1, #1; __int16
33BB3C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BB40:  LDR.W           R0, =(ScriptParams_ptr - 0x33BB50)
33BB44:  MOV.W           R3, #0x194
33BB48:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x33BB52)
33BB4C:  ADD             R0, PC; ScriptParams_ptr
33BB4E:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
33BB50:  LDR             R0, [R0]; ScriptParams
33BB52:  LDR             R1, [R1]; CWorld::Players ...
33BB54:  LDR             R2, [R0]
33BB56:  MLA.W           R1, R2, R3, R1
33BB5A:  LDRB.W          R1, [R1,#0x150]
33BB5E:  STR             R1, [R0]
33BB60:  B.W             loc_33C434
33BB64:  MOV             R0, R9; jumptable 0033AD9A case 2374
33BB66:  MOVS            R1, #2; __int16
33BB68:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BB6C:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33BB7C)
33BB70:  MOVW            R3, #0x7CC
33BB74:  LDR.W           R0, =(ScriptParams_ptr - 0x33BB7E)
33BB78:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33BB7A:  ADD             R0, PC; ScriptParams_ptr
33BB7C:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33BB7E:  LDR             R0, [R0]; ScriptParams
33BB80:  LDRD.W          R2, R0, [R0]
33BB84:  CMP             R0, #0
33BB86:  LDR             R1, [R1]; CPools::ms_pPedPool
33BB88:  MOV.W           R2, R2,LSR#8
33BB8C:  LDR             R1, [R1]
33BB8E:  MLA.W           R1, R2, R3, R1
33BB92:  LDR.W           R2, [R1,#0x490]
33BB96:  IT NE
33BB98:  MOVNE           R0, #1
33BB9A:  BIC.W           R2, R2, #4
33BB9E:  ORR.W           R0, R2, R0,LSL#2
33BBA2:  STR.W           R0, [R1,#0x490]
33BBA6:  B.W             loc_33C43C
33BBAA:  MOV             R0, R9; jumptable 0033AD9A case 2375
33BBAC:  MOVS            R1, #2; __int16
33BBAE:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BBB2:  LDR.W           R0, =(ScriptParams_ptr - 0x33BBBC)
33BBB6:  MOVS            R5, #0
33BBB8:  ADD             R0, PC; ScriptParams_ptr
33BBBA:  LDR             R0, [R0]; ScriptParams
33BBBC:  LDR             R0, [R0]
33BBBE:  CMP             R0, #0
33BBC0:  BLT.W           loc_33C21A
33BBC4:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33BBD0)
33BBC8:  UXTB            R3, R0
33BBCA:  LSRS            R0, R0, #8
33BBCC:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33BBCE:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33BBD0:  LDR             R1, [R1]; CPools::ms_pPedPool
33BBD2:  LDR             R2, [R1,#4]
33BBD4:  LDRB            R2, [R2,R0]
33BBD6:  CMP             R2, R3
33BBD8:  BNE.W           loc_33C21A
33BBDC:  MOVW            R2, #0x7CC
33BBE0:  LDR             R1, [R1]
33BBE2:  MLA.W           R0, R0, R2, R1
33BBE6:  B               loc_33C21C
33BBE8:  MOV             R0, R9; jumptable 0033AD9A case 2376
33BBEA:  MOVS            R1, #5; __int16
33BBEC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BBF0:  LDR.W           R0, =(ScriptParams_ptr - 0x33BBFA)
33BBF4:  MOVS            R5, #0
33BBF6:  ADD             R0, PC; ScriptParams_ptr
33BBF8:  LDR             R0, [R0]; ScriptParams
33BBFA:  LDRD.W          R3, R1, [R0]; int
33BBFE:  LDRD.W          R6, R2, [R0,#(dword_81A910 - 0x81A908)]; int
33BC02:  VLDR            S0, [R0,#0x10]
33BC06:  MOVS            R0, #1
33BC08:  STRD.W          R3, R1, [SP,#0x90+var_78]
33BC0C:  STR             R5, [SP,#0x90+var_7C]; int
33BC0E:  STR             R6, [SP,#0x90+var_70]
33BC10:  VSTR            S0, [SP,#0x90+var_80]
33BC14:  STRD.W          R1, R6, [SP,#0x90+var_90]; int
33BC18:  MOVS            R1, #0; int
33BC1A:  STRD.W          R5, R0, [SP,#0x90+var_88]; int
33BC1E:  MOVS            R0, #0; int
33BC20:  BLX             j__ZN10CExplosion12AddExplosionEP7CEntityS1_14eExplosionType7CVectorjhfh; CExplosion::AddExplosion(CEntity *,CEntity *,eExplosionType,CVector,uint,uchar,float,uchar)
33BC24:  B.W             loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33BC28:  MOV             R0, R9; jumptable 0033AD9A case 2377
33BC2A:  MOVS            R1, #2; __int16
33BC2C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BC30:  LDR.W           R0, =(ScriptParams_ptr - 0x33BC38)
33BC34:  ADD             R0, PC; ScriptParams_ptr
33BC36:  LDR             R0, [R0]; ScriptParams
33BC38:  LDR             R1, [R0,#(dword_81A90C - 0x81A908)]
33BC3A:  CMP             R1, #0
33BC3C:  BLT.W           loc_33C240
33BC40:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33BC4C)
33BC44:  UXTB            R3, R1
33BC46:  LSRS            R1, R1, #8
33BC48:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33BC4A:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33BC4C:  LDR             R0, [R0]; CPools::ms_pPedPool
33BC4E:  LDR             R2, [R0,#4]
33BC50:  LDRB            R2, [R2,R1]
33BC52:  CMP             R2, R3
33BC54:  BNE.W           loc_33C240
33BC58:  MOVW            R2, #0x7CC
33BC5C:  LDR             R0, [R0]
33BC5E:  MLA.W           R2, R1, R2, R0
33BC62:  B               loc_33C242
33BC64:  DCFS 448.0
33BC68:  DCFS 640.0
33BC6C:  MOV             R0, R9; jumptable 0033AD9A case 2378
33BC6E:  MOVS            R1, #2; __int16
33BC70:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BC74:  LDR.W           R0, =(ScriptParams_ptr - 0x33BC7C)
33BC78:  ADD             R0, PC; ScriptParams_ptr
33BC7A:  LDR             R0, [R0]; ScriptParams
33BC7C:  LDRH            R1, [R0,#(dword_81A90C - 0x81A908)]; int
33BC7E:  LDR             R0, [R0]; this
33BC80:  BLX             j__ZN8CPickups17UpdateMoneyPerDayEit; CPickups::UpdateMoneyPerDay(int,ushort)
33BC84:  B               loc_33C43C
33BC86:  ALIGN 4
33BC88:  DCD __stack_chk_guard_ptr - 0x33AD86
33BC8C:  DCD ScriptParams_ptr - 0x33AE76
33BC90:  DCD MI_PICKUP_CAMERA_ptr - 0x33AEAA
33BC94:  DCD ScriptParams_ptr - 0x33AECE
33BC98:  DCD _ZN15CTouchInterface10m_pWidgetsE_ptr - 0x33AEE8
33BC9C:  DCD ScriptParams_ptr - 0x33AF10
33BCA0:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x33AF24
33BCA4:  DCD ScriptParams_ptr - 0x33AF4C
33BCA8:  DCD ScriptParams_ptr - 0x33AF72
33BCAC:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x33AF86
33BCB0:  DCD ScriptParams_ptr - 0x33AFC0
33BCB4:  DCD ScriptParams_ptr - 0x33AFEC
33BCB8:  DCD HudColour_ptr - 0x33AFEE
33BCBC:  DCD ScriptParams_ptr - 0x33B01C
33BCC0:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x33B030
33BCC4:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x33B064
33BCC8:  DCD ScriptParams_ptr - 0x33B066
33BCCC:  DCD ScriptParams_ptr - 0x33B096
33BCD0:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x33B098
33BCD4:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x33B0CA
33BCD8:  DCD ScriptParams_ptr - 0x33B0CC
33BCDC:  DCD ScriptParams_ptr - 0x33B0FC
33BCE0:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x33B0FE
33BCE4:  DCD ScriptParams_ptr - 0x33B14A
33BCE8:  DCD ScriptParams_ptr - 0x33B16C
33BCEC:  DCD _ZN11CTheScripts15StreamedScriptsE_ptr - 0x33B16E
33BCF0:  DCD ScriptParams_ptr - 0x33B19C
33BCF4:  DCD _ZN11CTheScripts15StreamedScriptsE_ptr - 0x33B19E
33BCF8:  DCD ScriptParams_ptr - 0x33B1CC
33BCFC:  DCD _ZN11CTheScripts13MessageCentreE_ptr - 0x33B1D6
33BD00:  DCD _ZN11CTheScripts12MessageWidthE_ptr - 0x33B1D8
33BD04:  DCD _ZN11CTheScripts21bUseMessageFormattingE_ptr - 0x33B1DC
33BD08:  DCD ScriptParams_ptr - 0x33B20E
33BD0C:  DCD _ZN11CTheScripts15StreamedScriptsE_ptr - 0x33B210
33BD10:  DCD _ZN6CPools14ms_pObjectPoolE_ptr - 0x33B25C
33BD14:  DCD ScriptParams_ptr - 0x33B25E
33BD18:  DCD ScriptParams_ptr - 0x33B2A4
33BD1C:  DCD ScriptParams_ptr - 0x33B2C6
33BD20:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33B2DA
33BD24:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33B30E
33BD28:  DCD ScriptParams_ptr - 0x33B310
33BD2C:  DCD ScriptParams_ptr - 0x33B35E
33BD30:  DCD _ZN11CTheScripts15UsedObjectArrayE_ptr - 0x33B398
33BD34:  DCD ScriptParams_ptr - 0x33B3BE
33BD38:  DCD ThePaths_ptr - 0x33B3C0
33BD3C:  DCD ScriptParams_ptr - 0x33B430
33BD40:  DCD ThePaths_ptr - 0x33B432
33BD44:  DCD ScriptParams_ptr - 0x33B4A0
33BD48:  DCD _ZN6CPools15ms_pVehiclePoolE_ptr - 0x33B4A2
33BD4C:  DCD ScriptParams_ptr - 0x33B4CE
33BD50:  DCD TheCamera_ptr - 0x33B4F4
33BD54:  DCD ScriptParams_ptr - 0x33B522
33BD58:  DCD TheCamera_ptr - 0x33B524
33BD5C:  DCFS 3.1416
33BD60:  DCFS 180.0
33BD64:  DCFS -100.0
33BD68:  DCD ScriptParams_ptr - 0x33B558
33BD6C:  MOV             R0, R9; jumptable 0033AD9A case 2379
33BD6E:  MOVS            R1, #1; __int16
33BD70:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BD74:  LDR.W           R0, =(ScriptParams_ptr - 0x33BD7C)
33BD78:  ADD             R0, PC; ScriptParams_ptr
33BD7A:  LDR             R0, [R0]; ScriptParams
33BD7C:  LDR             R1, [R0]
33BD7E:  CMP             R1, #0
33BD80:  BLT.W           loc_33C25C
33BD84:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33BD90)
33BD88:  UXTB            R3, R1
33BD8A:  LSRS            R1, R1, #8
33BD8C:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33BD8E:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33BD90:  LDR             R0, [R0]; CPools::ms_pPedPool
33BD92:  LDR             R2, [R0,#4]
33BD94:  LDRB            R2, [R2,R1]
33BD96:  CMP             R2, R3
33BD98:  BNE.W           loc_33C25C
33BD9C:  MOVW            R2, #0x7CC
33BDA0:  LDR             R0, [R0]
33BDA2:  MLA.W           R4, R1, R2, R0
33BDA6:  B               loc_33C25E
33BDA8:  MOV             R0, R9; jumptable 0033AD9A case 2380
33BDAA:  MOVS            R1, #1; __int16
33BDAC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BDB0:  LDR.W           R0, =(ScriptParams_ptr - 0x33BDC0)
33BDB4:  MOVW            R2, #0x7CC
33BDB8:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33BDC2)
33BDBC:  ADD             R0, PC; ScriptParams_ptr
33BDBE:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33BDC0:  LDR             R0, [R0]; ScriptParams
33BDC2:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33BDC4:  LDR             R0, [R0]
33BDC6:  LDR             R1, [R1]; CPools::ms_pPedPool
33BDC8:  LSRS            R0, R0, #8
33BDCA:  LDR             R1, [R1]
33BDCC:  MLA.W           R0, R0, R2, R1
33BDD0:  LDR.W           R0, [R0,#0x794]
33BDD4:  CMP             R0, #0
33BDD6:  BEQ.W           loc_33C4C0
33BDDA:  LDR             R1, [R0,#0x38]
33BDDC:  CMP             R1, #0
33BDDE:  BEQ.W           loc_33C480
33BDE2:  VLDR            S2, [R0,#0x2C]
33BDE6:  VLDR            S0, =3.1416
33BDEA:  LDRD.W          R3, R2, [R0,#0x20]
33BDEE:  ADDS            R0, #0x28 ; '('
33BDF0:  VMUL.F32        S0, S2, S0
33BDF4:  VLDR            S2, =180.0
33BDF8:  VDIV.F32        S0, S0, S2
33BDFC:  VMOV            R1, S0
33BE00:  B               loc_33C4B0
33BE02:  MOV             R0, R9; jumptable 0033AD9A case 2381
33BE04:  MOVS            R1, #1; __int16
33BE06:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BE0A:  LDR.W           R0, =(ScriptParams_ptr - 0x33BE12)
33BE0E:  ADD             R0, PC; ScriptParams_ptr
33BE10:  LDR             R0, [R0]; ScriptParams
33BE12:  LDR             R1, [R0]
33BE14:  CMP             R1, #0
33BE16:  BLT.W           loc_33C276
33BE1A:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33BE26)
33BE1E:  UXTB            R3, R1
33BE20:  LSRS            R1, R1, #8
33BE22:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33BE24:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33BE26:  LDR             R0, [R0]; CPools::ms_pPedPool
33BE28:  LDR             R2, [R0,#4]
33BE2A:  LDRB            R2, [R2,R1]
33BE2C:  CMP             R2, R3
33BE2E:  BNE.W           loc_33C276
33BE32:  MOVW            R2, #0x7CC
33BE36:  LDR             R0, [R0]
33BE38:  MLA.W           R0, R1, R2, R0
33BE3C:  B               loc_33C278
33BE3E:  MOV             R0, R9; jumptable 0033AD9A case 2382
33BE40:  MOVS            R1, #2; __int16
33BE42:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BE46:  LDR.W           R0, =(ScriptParams_ptr - 0x33BE4E)
33BE4A:  ADD             R0, PC; ScriptParams_ptr
33BE4C:  LDR             R0, [R0]; ScriptParams
33BE4E:  LDR             R1, [R0]
33BE50:  CMP             R1, #0
33BE52:  BLT.W           loc_33C286
33BE56:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33BE62)
33BE5A:  UXTB            R3, R1
33BE5C:  LSRS            R1, R1, #8
33BE5E:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33BE60:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33BE62:  LDR             R0, [R0]; CPools::ms_pPedPool
33BE64:  LDR             R2, [R0,#4]
33BE66:  LDRB            R2, [R2,R1]
33BE68:  CMP             R2, R3
33BE6A:  BNE.W           loc_33C286
33BE6E:  MOVW            R2, #0x7CC
33BE72:  LDR             R0, [R0]
33BE74:  MLA.W           R0, R1, R2, R0
33BE78:  B               loc_33C288
33BE7A:  MOV             R0, R9; jumptable 0033AD9A case 2383
33BE7C:  MOVS            R1, #1; __int16
33BE7E:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BE82:  LDR.W           R0, =(ScriptParams_ptr - 0x33BE8A)
33BE86:  ADD             R0, PC; ScriptParams_ptr
33BE88:  LDR             R0, [R0]; ScriptParams
33BE8A:  LDR             R1, [R0]
33BE8C:  CMP             R1, #0
33BE8E:  BLT.W           loc_33C298
33BE92:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33BE9E)
33BE96:  UXTB            R3, R1
33BE98:  LSRS            R1, R1, #8
33BE9A:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
33BE9C:  LDR             R0, [R0]; CPools::ms_pPedPool ...
33BE9E:  LDR             R0, [R0]; CPools::ms_pPedPool
33BEA0:  LDR             R2, [R0,#4]
33BEA2:  LDRB            R2, [R2,R1]
33BEA4:  CMP             R2, R3
33BEA6:  BNE.W           loc_33C298
33BEAA:  MOVW            R2, #0x7CC
33BEAE:  LDR             R0, [R0]
33BEB0:  MLA.W           R0, R1, R2, R0
33BEB4:  B               loc_33C29A
33BEB6:  MOV             R0, R9; jumptable 0033AD9A case 2384
33BEB8:  MOVS            R1, #4; __int16
33BEBA:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BEBE:  LDR.W           R0, =(ScriptParams_ptr - 0x33BECC)
33BEC2:  ADD.W           R12, SP, #0x90+var_78
33BEC6:  MOVS            R5, #0
33BEC8:  ADD             R0, PC; ScriptParams_ptr
33BECA:  LDR             R3, [R0]; ScriptParams
33BECC:  LDM             R3, {R0-R3}
33BECE:  STM.W           R12, {R0-R2}
33BED2:  STRD.W          R5, R5, [SP,#0x90+var_90]
33BED6:  STR             R5, [SP,#0x90+var_88]
33BED8:  BLX             j__ZN10CGameLogic9SetUpSkipE7CVectorfbP8CVehicleb; CGameLogic::SetUpSkip(CVector,float,bool,CVehicle *,bool)
33BEDC:  B               loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33BEDE:  MOVS            R0, #0; jumptable 0033AD9A case 2385
33BEE0:  MOVS            R5, #0
33BEE2:  BLX             j__ZN10CGameLogic9ClearSkipEb; CGameLogic::ClearSkip(bool)
33BEE6:  B               loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33BEE8:  MOV             R0, R9; jumptable 0033AD9A case 2386
33BEEA:  MOVS            R1, #1; __int16
33BEEC:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BEF0:  LDR.W           R0, =(ScriptParams_ptr - 0x33BEFC)
33BEF4:  LDR.W           R2, =(AudioEngine_ptr - 0x33BEFE)
33BEF8:  ADD             R0, PC; ScriptParams_ptr
33BEFA:  ADD             R2, PC; AudioEngine_ptr
33BEFC:  LDR             R0, [R0]; ScriptParams
33BEFE:  LDRSH.W         R1, [R0]; __int16
33BF02:  LDR             R0, [R2]; AudioEngine ; this
33BF04:  BLX             j__ZN12CAudioEngine16PreloadBeatTrackEs; CAudioEngine::PreloadBeatTrack(short)
33BF08:  B               loc_33C43C
33BF0A:  LDR.W           R0, =(AudioEngine_ptr - 0x33BF12); jumptable 0033AD9A case 2387
33BF0E:  ADD             R0, PC; AudioEngine_ptr
33BF10:  LDR             R0, [R0]; AudioEngine ; this
33BF12:  BLX             j__ZN12CAudioEngine18GetBeatTrackStatusEv; CAudioEngine::GetBeatTrackStatus(void)
33BF16:  LDR.W           R1, =(ScriptParams_ptr - 0x33BF1E)
33BF1A:  ADD             R1, PC; ScriptParams_ptr
33BF1C:  B               loc_33C402
33BF1E:  LDR.W           R0, =(AudioEngine_ptr - 0x33BF2A); jumptable 0033AD9A case 2388
33BF22:  MOVS            R1, #0; unsigned __int8
33BF24:  MOVS            R5, #0
33BF26:  ADD             R0, PC; AudioEngine_ptr
33BF28:  LDR             R0, [R0]; AudioEngine ; this
33BF2A:  BLX             j__ZN12CAudioEngine22PlayPreloadedBeatTrackEh; CAudioEngine::PlayPreloadedBeatTrack(uchar)
33BF2E:  B               loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33BF30:  LDR.W           R0, =(AudioEngine_ptr - 0x33BF38); jumptable 0033AD9A case 2389
33BF34:  ADD             R0, PC; AudioEngine_ptr
33BF36:  LDR             R0, [R0]; AudioEngine ; this
33BF38:  BLX             j__ZN12CAudioEngine13StopBeatTrackEv; CAudioEngine::StopBeatTrack(void)
33BF3C:  B               loc_33C43C
33BF3E:  LDR.W           R0, =(ScriptParams_ptr - 0x33BF46); jumptable 0033AD9A case 2390
33BF42:  ADD             R0, PC; ScriptParams_ptr ; this
33BF44:  LDR             R4, [R0]; ScriptParams
33BF46:  BLX             j__ZN6CStats27FindMaxNumberOfGroupMembersEv; CStats::FindMaxNumberOfGroupMembers(void)
33BF4A:  STR             R0, [R4]
33BF4C:  B               loc_33C434
33BF4E:  MOV             R0, R9; jumptable 0033AD9A case 2391
33BF50:  MOVS            R1, #2; __int16
33BF52:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BF56:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33BF68)
33BF5A:  MOVW            R3, #0xA2C
33BF5E:  LDR.W           R0, =(ScriptParams_ptr - 0x33BF6A)
33BF62:  MOVS            R5, #0
33BF64:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33BF66:  ADD             R0, PC; ScriptParams_ptr
33BF68:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
33BF6A:  LDR             R0, [R0]; ScriptParams
33BF6C:  LDRD.W          R2, R0, [R0]
33BF70:  CMP             R0, #0
33BF72:  LDR             R1, [R1]; CPools::ms_pVehiclePool
33BF74:  MOV.W           R2, R2,LSR#8
33BF78:  LDR             R1, [R1]
33BF7A:  MLA.W           R1, R2, R3, R1
33BF7E:  LDR.W           R2, [R1,#0x430]
33BF82:  IT NE
33BF84:  MOVNE           R0, #1
33BF86:  BIC.W           R2, R2, #0x40000
33BF8A:  ORR.W           R0, R2, R0,LSL#18
33BF8E:  STR.W           R0, [R1,#0x430]
33BF92:  B               loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33BF94:  MOV             R0, R9; jumptable 0033AD9A case 2395
33BF96:  MOVS            R1, #1; __int16
33BF98:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BF9C:  LDR.W           R0, =(ScriptParams_ptr - 0x33BFAE)
33BFA0:  MOV.W           R2, #0x1A4
33BFA4:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33BFB0)
33BFA8:  MOVS            R5, #0
33BFAA:  ADD             R0, PC; ScriptParams_ptr
33BFAC:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33BFAE:  LDR             R0, [R0]; ScriptParams
33BFB0:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
33BFB2:  LDR             R0, [R0]
33BFB4:  LDR             R1, [R1]; CPools::ms_pObjectPool
33BFB6:  LSRS            R0, R0, #8
33BFB8:  LDR             R1, [R1]
33BFBA:  MLA.W           R0, R0, R2, R1
33BFBE:  MOVS            R1, #0
33BFC0:  LDR             R0, [R0,#0x1C]
33BFC2:  TST.W           R0, #0x40004
33BFC6:  IT EQ
33BFC8:  MOVEQ           R1, #1; unsigned __int8
33BFCA:  MOV             R0, R9; this
33BFCC:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
33BFD0:  B               loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33BFD2:  MOV             R0, R9; jumptable 0033AD9A case 2396
33BFD4:  MOVS            R1, #0xC; __int16
33BFD6:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33BFDA:  LDR.W           R0, =(ScriptParams_ptr - 0x33BFE2)
33BFDE:  ADD             R0, PC; ScriptParams_ptr
33BFE0:  LDR             R0, [R0]; ScriptParams
33BFE2:  ADD.W           LR, R0, #8
33BFE6:  LDRD.W          R6, R5, [R0]
33BFEA:  LDM.W           LR, {R4,R12,LR}
33BFEE:  LDRD.W          R8, R1, [R0,#(dword_81A91C - 0x81A908)]; float
33BFF2:  LDRD.W          R2, R3, [R0,#(dword_81A924 - 0x81A908)]; float
33BFF6:  VLDR            S4, [R0,#0x2C]
33BFFA:  VLDR            S0, [R0,#0x24]
33BFFE:  VLDR            S2, [R0,#0x28]
33C002:  MOV.W           R0, #0x3F800000
33C006:  STR             R6, [SP,#0x90+var_78]
33C008:  STRD.W          R5, R4, [SP,#0x90+var_74]
33C00C:  STRD.W          R12, LR, [SP,#0x90+var_6C]
33C010:  VSTR            S4, [SP,#0x90+var_84]
33C014:  STR             R0, [SP,#0x90+var_88]; float
33C016:  ADD             R0, SP, #0x90+var_5C; this
33C018:  VSTR            S0, [SP,#0x90+var_90]
33C01C:  STR.W           R8, [SP,#0x90+var_64]
33C020:  VSTR            S2, [SP,#0x90+var_8C]
33C024:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
33C028:  LDR.W           R1, =(g_fx_ptr - 0x33C03A)
33C02C:  MOVW            R2, #0x999A
33C030:  MOVS            R6, #0
33C032:  MOVT            R2, #0x3F99
33C036:  ADD             R1, PC; g_fx_ptr
33C038:  MOVT            R6, #0xBF80
33C03C:  MOVS            R5, #0
33C03E:  LDR             R1, [R1]; g_fx
33C040:  LDR             R3, [R1,#(dword_820540 - 0x820520)]
33C042:  MOV             R1, #0x3F19999A
33C04A:  STRD.W          R0, R6, [SP,#0x90+var_90]; int
33C04E:  STRD.W          R2, R1, [SP,#0x90+var_88]; float
33C052:  ADD             R1, SP, #0x90+var_78; int
33C054:  ADD             R2, SP, #0x90+var_6C; int
33C056:  MOV             R0, R3; int
33C058:  MOVS            R3, #0; int
33C05A:  STR             R5, [SP,#0x90+var_80]; int
33C05C:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
33C060:  B               loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33C062:  MOV             R0, R9; jumptable 0033AD9A case 2397
33C064:  MOVS            R1, #1; __int16
33C066:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33C06A:  LDR.W           R0, =(ScriptParams_ptr - 0x33C07A)
33C06E:  MOVW            R2, #0x7CC
33C072:  LDR.W           R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33C07C)
33C076:  ADD             R0, PC; ScriptParams_ptr
33C078:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33C07A:  LDR             R0, [R0]; ScriptParams
33C07C:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33C07E:  LDR             R0, [R0]
33C080:  LDR             R1, [R1]; CPools::ms_pPedPool
33C082:  LSRS            R0, R0, #8
33C084:  LDR             R1, [R1]
33C086:  MLA.W           R0, R0, R2, R1
33C08A:  LDR.W           R0, [R0,#0x490]
33C08E:  UBFX.W          R1, R0, #3, #1
33C092:  B               loc_33C27E
33C094:  MOV             R0, R9; jumptable 0033AD9A case 2398
33C096:  MOVS            R1, #4; __int16
33C098:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33C09C:  LDR.W           R0, =(ScriptParams_ptr - 0x33C0A4)
33C0A0:  ADD             R0, PC; ScriptParams_ptr
33C0A2:  LDR             R0, [R0]; ScriptParams
33C0A4:  LDR             R1, [R0]
33C0A6:  CMP             R1, #0
33C0A8:  BLT.W           loc_33C2A0
33C0AC:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33C0B8)
33C0B0:  UXTB            R3, R1
33C0B2:  LSRS            R1, R1, #8
33C0B4:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33C0B6:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33C0B8:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33C0BA:  LDR             R2, [R0,#4]
33C0BC:  LDRB            R2, [R2,R1]
33C0BE:  CMP             R2, R3
33C0C0:  BNE.W           loc_33C2A0
33C0C4:  MOVW            R2, #0xA2C
33C0C8:  LDR             R0, [R0]
33C0CA:  MLA.W           R4, R1, R2, R0
33C0CE:  B               loc_33C2A2
33C0D0:  MOV             R0, R9; jumptable 0033AD9A case 2399
33C0D2:  MOVS            R1, #2; __int16
33C0D4:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
33C0D8:  LDR.W           R0, =(ScriptParams_ptr - 0x33C0E0)
33C0DC:  ADD             R0, PC; ScriptParams_ptr
33C0DE:  LDR             R0, [R0]; ScriptParams
33C0E0:  LDR             R1, [R0]
33C0E2:  CMP             R1, #0
33C0E4:  BLT.W           loc_33C2EC
33C0E8:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x33C0F4)
33C0EC:  UXTB            R3, R1
33C0EE:  LSRS            R1, R1, #8
33C0F0:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
33C0F2:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
33C0F4:  LDR             R0, [R0]; CPools::ms_pVehiclePool
33C0F6:  LDR             R2, [R0,#4]
33C0F8:  LDRB            R2, [R2,R1]
33C0FA:  CMP             R2, R3
33C0FC:  BNE.W           loc_33C2EC
33C100:  MOVW            R2, #0xA2C
33C104:  LDR             R0, [R0]
33C106:  MLA.W           R0, R1, R2, R0
33C10A:  B               loc_33C2EE
33C10C:  LDR.W           R0, =(MI_HORSESHOE_ptr - 0x33C114)
33C110:  ADD             R0, PC; MI_HORSESHOE_ptr
33C112:  LDR             R0, [R0]; MI_HORSESHOE
33C114:  LDRH            R6, [R0]
33C116:  MOVS            R0, #0xF2
33C118:  B               loc_33C126
33C11A:  LDR.W           R0, =(MI_OYSTER_ptr - 0x33C122)
33C11E:  ADD             R0, PC; MI_OYSTER_ptr
33C120:  LDR             R0, [R0]; MI_OYSTER
33C122:  LDRH            R6, [R0]
33C124:  MOVS            R0, #elf_hash_nbucket; this
33C126:  MOV.W           R1, #0x3F800000; unsigned __int16
33C12A:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
33C12E:  MOVS            R4, #3
33C130:  VLDR            S0, =-100.0
33C134:  VCMPE.F32       S20, S0
33C138:  VMRS            APSR_nzcv, FPSCR
33C13C:  BGT             loc_33C15E
33C13E:  VMOV            R0, S16; this
33C142:  VMOV            R1, S18; float
33C146:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
33C14A:  VMOV.F32        S0, #0.5
33C14E:  VMOV            S2, R0
33C152:  VADD.F32        S0, S2, S0
33C156:  VMOV            R8, S0
33C15A:  VSTR            S0, [SP,#0x90+var_60]
33C15E:  VMOV            R0, S16
33C162:  MOVS            R5, #0
33C164:  VMOV            R1, S18
33C168:  UXTB            R2, R4
33C16A:  STRD.W          R2, R5, [SP,#0x90+var_90]
33C16E:  MOV             R2, R8
33C170:  MOV             R3, R6
33C172:  STRD.W          R5, R5, [SP,#0x90+var_88]
33C176:  STR             R5, [SP,#0x90+var_80]
33C178:  BLX             j__ZN8CPickups14GenerateNewOneE7CVectorjhjjbPc; CPickups::GenerateNewOne(CVector,uint,uchar,uint,uint,bool,char *)
33C17C:  LDR.W           R1, =(ScriptParams_ptr - 0x33C184)
33C180:  ADD             R1, PC; ScriptParams_ptr
33C182:  LDR             R1, [R1]; ScriptParams
33C184:  STR             R0, [R1]
33C186:  B               loc_33C236
33C188:  MOVS            R1, #0
33C18A:  B               loc_33C27E
33C18C:  MOVS            R0, #0; this
33C18E:  LDR.W           R1, =(ScriptParams_ptr - 0x33C196)
33C192:  ADD             R1, PC; ScriptParams_ptr
33C194:  LDR             R1, [R1]; ScriptParams
33C196:  LDR             R1, [R1,#(dword_81A90C - 0x81A908)]
33C198:  CMP             R1, #0
33C19A:  BEQ.W           loc_33C460
33C19E:  BLX             j__ZN7CObject8LockDoorEv; CObject::LockDoor(void)
33C1A2:  B               loc_33C43C
33C1A4:  MOVS            R1, #0
33C1A6:  LDR.W           R0, [R1,#0x430]
33C1AA:  LDR.W           R2, [R1,#0x42C]
33C1AE:  ADDW            R1, R1, #0x42C
33C1B2:  TST.W           R0, #0x200
33C1B6:  BNE.W           loc_33C36E
33C1BA:  LDR.W           R3, =(ScriptParams_ptr - 0x33C1C6)
33C1BE:  BIC.W           R2, R2, #0x10
33C1C2:  ADD             R3, PC; ScriptParams_ptr
33C1C4:  LDR             R3, [R3]; ScriptParams
33C1C6:  LDR             R3, [R3,#(dword_81A90C - 0x81A908)]
33C1C8:  CMP             R3, #0
33C1CA:  IT NE
33C1CC:  MOVNE           R3, #1
33C1CE:  ORR.W           R2, R2, R3,LSL#4
33C1D2:  B               loc_33C372
33C1D4:  MOVS            R0, #0
33C1D6:  LDR.W           R1, =(ScriptParams_ptr - 0x33C1DE)
33C1DA:  ADD             R1, PC; ScriptParams_ptr
33C1DC:  LDR             R1, [R1]; ScriptParams
33C1DE:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]
33C1E0:  CMP             R2, #0
33C1E2:  BLT.W           loc_33C30E
33C1E6:  LDR.W           R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x33C1F2)
33C1EA:  UXTB            R6, R2
33C1EC:  LSRS            R2, R2, #8
33C1EE:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
33C1F0:  LDR             R1, [R1]; CPools::ms_pObjectPool ...
33C1F2:  LDR             R1, [R1]; CPools::ms_pObjectPool
33C1F4:  LDR             R3, [R1,#4]
33C1F6:  LDRB            R3, [R3,R2]
33C1F8:  CMP             R3, R6
33C1FA:  BNE.W           loc_33C30E
33C1FE:  MOV.W           R3, #0x1A4
33C202:  LDR             R1, [R1]
33C204:  MLA.W           R1, R2, R3, R1
33C208:  B               loc_33C310
33C20A:  MOVS            R1, #0; CPed *
33C20C:  LDR.W           R0, =(TheCamera_ptr - 0x33C214)
33C210:  ADD             R0, PC; TheCamera_ptr
33C212:  LDR             R0, [R0]; TheCamera ; this
33C214:  BLX             j__ZN7CCamera57SetCameraDirectlyInFrontForFollowPed_ForAPed_CamOnAStringEP4CPed; CCamera::SetCameraDirectlyInFrontForFollowPed_ForAPed_CamOnAString(CPed *)
33C218:  B               loc_33C43C
33C21A:  MOVS            R0, #0; this
33C21C:  LDR             R1, =(ScriptParams_ptr - 0x33C228)
33C21E:  MOVS            R2, #0; unsigned int
33C220:  MOV.W           R3, #0x3F800000; float
33C224:  ADD             R1, PC; ScriptParams_ptr
33C226:  LDR             R4, [R1]; ScriptParams
33C228:  LDRH            R1, [R4,#(dword_81A90C - 0x81A908)]; unsigned __int16
33C22A:  STRD.W          R5, R5, [SP,#0x90+var_90]; unsigned __int8
33C22E:  STR             R5, [SP,#0x90+var_88]; unsigned __int8
33C230:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
33C234:  STR             R0, [R4]
33C236:  MOV             R0, R9; this
33C238:  MOVS            R1, #1; __int16
33C23A:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
33C23E:  B               loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33C240:  MOVS            R2, #0; CPed *
33C242:  LDR             R0, =(ScriptParams_ptr - 0x33C24A)
33C244:  LDR             R1, =(AudioEngine_ptr - 0x33C24C)
33C246:  ADD             R0, PC; ScriptParams_ptr
33C248:  ADD             R1, PC; AudioEngine_ptr
33C24A:  LDR             R0, [R0]; ScriptParams
33C24C:  LDR             R3, [R0]
33C24E:  LDR             R0, [R1]; AudioEngine ; this
33C250:  ADD.W           R1, R3, #0xFF
33C254:  UXTB            R1, R1; unsigned __int8
33C256:  BLX             j__ZN12CAudioEngine23AttachMissionAudioToPedEhP4CPed; CAudioEngine::AttachMissionAudioToPed(uchar,CPed *)
33C25A:  B               loc_33C43C
33C25C:  B               loc_33C47E
33C25E:  MOV             R0, R9; this
33C260:  MOVS            R1, #2; unsigned __int8
33C262:  BLX             j__ZN14CRunningScript26GetPointerToScriptVariableEh; CRunningScript::GetPointerToScriptVariable(uchar)
33C266:  LDR.W           R1, [R4,#0x794]; char *
33C26A:  CMP             R1, #0
33C26C:  BEQ.W           loc_33C47A
33C270:  BLX             strcpy
33C274:  B               loc_33C43C
33C276:  MOVS            R0, #0; this
33C278:  BLX             j__ZN4CPed13GetPedTalkingEv; CPed::GetPedTalking(void)
33C27C:  MOV             R1, R0; unsigned __int8
33C27E:  MOV             R0, R9; this
33C280:  BLX             j__ZN14CRunningScript17UpdateCompareFlagEh; CRunningScript::UpdateCompareFlag(uchar)
33C284:  B               loc_33C43C
33C286:  MOVS            R0, #0; this
33C288:  LDR             R1, =(ScriptParams_ptr - 0x33C28E)
33C28A:  ADD             R1, PC; ScriptParams_ptr
33C28C:  LDR             R1, [R1]; ScriptParams
33C28E:  LDRSH.W         R1, [R1,#(dword_81A90C - 0x81A908)]; __int16
33C292:  BLX             j__ZN4CPed16DisablePedSpeechEs; CPed::DisablePedSpeech(short)
33C296:  B               loc_33C43C
33C298:  MOVS            R0, #0; this
33C29A:  BLX             j__ZN4CPed15EnablePedSpeechEv; CPed::EnablePedSpeech(void)
33C29E:  B               loc_33C43C
33C2A0:  MOVS            R4, #0
33C2A2:  LDR             R0, =(ScriptParams_ptr - 0x33C2A8)
33C2A4:  ADD             R0, PC; ScriptParams_ptr
33C2A6:  LDR             R0, [R0]; ScriptParams
33C2A8:  LDRD.W          R6, R5, [R0,#(dword_81A90C - 0x81A908)]
33C2AC:  LDR             R0, [R0,#(dword_81A914 - 0x81A908)]
33C2AE:  CMP             R6, #5
33C2B0:  VMOV            S0, R0
33C2B4:  VCVT.F32.S32    S0, S0
33C2B8:  BGT             loc_33C378
33C2BA:  CMP             R0, #0
33C2BC:  BLT             loc_33C2D2
33C2BE:  VMOV            R1, S0; float
33C2C2:  ADD.W           R0, R6, R6,LSL#1
33C2C6:  ADD.W           R0, R4, R0,LSL#3
33C2CA:  ADDW            R0, R0, #0x5CC; this
33C2CE:  BLX             j__ZN5CDoor4OpenEf; CDoor::Open(float)
33C2D2:  ADDW            R0, R4, #0x5B4
33C2D6:  MOV             R1, R6
33C2D8:  MOV             R2, R5
33C2DA:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
33C2DE:  MOV             R0, R4
33C2E0:  MOV             R1, R6
33C2E2:  MOVS            R2, #0
33C2E4:  MOVS            R5, #0
33C2E6:  BLX             j__ZN11CAutomobile13SetDoorDamageE6eDoorsb; CAutomobile::SetDoorDamage(eDoors,bool)
33C2EA:  B               loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33C2EC:  MOVS            R0, #0
33C2EE:  LDR             R1, =(ScriptParams_ptr - 0x33C2F4)
33C2F0:  ADD             R1, PC; ScriptParams_ptr
33C2F2:  LDR             R1, [R1]; ScriptParams
33C2F4:  LDR             R2, [R1,#(dword_81A90C - 0x81A908)]
33C2F6:  CMP             R2, #6
33C2F8:  ADD.W           R3, R2, R2,LSL#1
33C2FC:  ADD.W           R3, R0, R3,LSL#3
33C300:  ADD.W           R0, R0, #0x720
33C304:  IT LT
33C306:  ADDWLT          R0, R3, #0x5CC
33C30A:  LDR             R0, [R0,#0xC]
33C30C:  B               loc_33C404
33C30E:  MOVS            R1, #0
33C310:  LDR             R2, =(ScriptParams_ptr - 0x33C31E)
33C312:  ADD.W           R12, SP, #0x90+var_78
33C316:  VLDR            S0, =3.1416
33C31A:  ADD             R2, PC; ScriptParams_ptr
33C31C:  VLDR            S8, =180.0
33C320:  LDR             R6, [R2]; ScriptParams
33C322:  VLDR            S2, [R6,#0x14]
33C326:  VLDR            S4, [R6,#0x18]
33C32A:  VLDR            S6, [R6,#0x1C]
33C32E:  VMUL.F32        S2, S2, S0
33C332:  VMUL.F32        S4, S4, S0
33C336:  ADDS            R6, #8
33C338:  VMUL.F32        S0, S6, S0
33C33C:  LDM             R6, {R2,R3,R6}
33C33E:  STM.W           R12, {R2,R3,R6}
33C342:  VDIV.F32        S2, S2, S8
33C346:  VDIV.F32        S4, S4, S8
33C34A:  VDIV.F32        S0, S0, S8
33C34E:  VSTR            S2, [SP,#0x90+var_6C]
33C352:  VSTR            S4, [SP,#0x90+var_68]
33C356:  VSTR            S2, [SP,#0x90+var_8C]
33C35A:  VSTR            S4, [SP,#0x90+var_88]
33C35E:  VSTR            S0, [SP,#0x90+var_84]
33C362:  VSTR            S0, [SP,#0x90+var_64]
33C366:  STR             R6, [SP,#0x90+var_90]
33C368:  BLX             j__ZN9CPhysical20AttachEntityToEntityEP7CEntity7CVectorS2_; CPhysical::AttachEntityToEntity(CEntity *,CVector,CVector)
33C36C:  B               loc_33C43C
33C36E:  BIC.W           R2, R2, #0x10
33C372:  STRD.W          R2, R0, [R1]
33C376:  B               loc_33C43C
33C378:  ADD.W           R4, R4, #0x720
33C37C:  CMP             R0, #0
33C37E:  ITTT GE
33C380:  VMOVGE          R1, S0; float
33C384:  MOVGE           R0, R4; this
33C386:  BLXGE           j__ZN5CDoor4OpenEf; CDoor::Open(float)
33C38A:  STRB            R5, [R4,#0xB]
33C38C:  B               loc_33C43C
33C38E:  MOV.W           R5, #0xFFFFFFFF
33C392:  VMOV            R1, S16; CVector *
33C396:  ADD             R3, SP, #0x90+var_78
33C398:  MOVS            R0, #0
33C39A:  ADD             R2, SP, #0x90+var_40
33C39C:  STR             R0, [SP,#0x90+var_78]
33C39E:  STR             R0, [SP,#0x90+var_40]
33C3A0:  STRD.W          R8, R0, [SP,#0x90+var_90]; int
33C3A4:  STRD.W          R0, R3, [SP,#0x90+var_88]; bool
33C3A8:  ADD             R0, SP, #0x90+var_6C; this
33C3AA:  STR             R2, [SP,#0x90+var_80]; C2dEffect **
33C3AC:  MOV             R2, R5; float
33C3AE:  MOVS            R3, #5; int
33C3B0:  BLX             j__ZN17CAttractorScanner25GetClosestAttractorOfTypeERK7CVectorfiiPKcbPK9C2dEffectRPS5_RP7CEntity; CAttractorScanner::GetClosestAttractorOfType(CVector const&,float,int,int,char const*,bool,C2dEffect const*,C2dEffect*&,CEntity *&)
33C3B4:  LDR             R0, =(ScriptParams_ptr - 0x33C3BC)
33C3B6:  LDR             R1, [SP,#0x90+var_78]
33C3B8:  ADD             R0, PC; ScriptParams_ptr
33C3BA:  CMP             R1, #0
33C3BC:  LDR             R0, [R0]; ScriptParams
33C3BE:  STR             R4, [R0]
33C3C0:  BEQ             loc_33C434
33C3C2:  BLX             j__Z22GetPedAttractorManagerv; GetPedAttractorManager(void)
33C3C6:  LDR             R2, [SP,#0x90+var_40]
33C3C8:  LDR             R1, [SP,#0x90+var_78]
33C3CA:  BLX             j__ZN20CPedAttractorManager17GetPedUsingEffectEPK9C2dEffectPK7CEntity; CPedAttractorManager::GetPedUsingEffect(C2dEffect const*,CEntity const*)
33C3CE:  CBZ             R0, loc_33C434
33C3D0:  LDR             R1, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x33C3D6)
33C3D2:  ADD             R1, PC; _ZN6CPools11ms_pPedPoolE_ptr
33C3D4:  LDR             R1, [R1]; CPools::ms_pPedPool ...
33C3D6:  LDR             R1, [R1]; CPools::ms_pPedPool
33C3D8:  LDRD.W          R2, R1, [R1]
33C3DC:  SUBS            R0, R0, R2
33C3DE:  MOV             R2, #0xBED87F3B
33C3E6:  ASRS            R0, R0, #2
33C3E8:  MULS            R0, R2
33C3EA:  LDR             R2, =(ScriptParams_ptr - 0x33C3F0)
33C3EC:  ADD             R2, PC; ScriptParams_ptr
33C3EE:  LDR             R2, [R2]; ScriptParams
33C3F0:  LDRB            R1, [R1,R0]
33C3F2:  ORR.W           R0, R1, R0,LSL#8
33C3F6:  STR             R0, [R2]
33C3F8:  B               loc_33C434
33C3FA:  MOV.W           R0, #0xFFFFFFFF
33C3FE:  LDR             R1, =(ScriptParams_ptr - 0x33C404)
33C400:  ADD             R1, PC; ScriptParams_ptr
33C402:  LDR             R1, [R1]; ScriptParams
33C404:  STR             R0, [R1]
33C406:  B               loc_33C434
33C408:  VMOV            R0, S2; this
33C40C:  MOVS            R2, #0
33C40E:  VMOV            R1, S0; float
33C412:  ADD             R3, SP, #0x90+var_60; float
33C414:  STRD.W          R2, R2, [SP,#0x90+var_90]; float *
33C418:  MOVS            R2, #0; float
33C41A:  BLX             j__ZN11CWaterLevel20GetWaterLevelNoWavesEfffPfS0_S0_; CWaterLevel::GetWaterLevelNoWaves(float,float,float,float *,float *,float *)
33C41E:  CMP             R0, #0
33C420:  ITTT EQ
33C422:  MOVEQ           R0, #0
33C424:  MOVTEQ          R0, #0xC47A
33C428:  STREQ           R0, [SP,#0x90+var_60]
33C42A:  LDR             R0, =(ScriptParams_ptr - 0x33C432)
33C42C:  LDR             R1, [SP,#0x90+var_60]
33C42E:  ADD             R0, PC; ScriptParams_ptr
33C430:  LDR             R0, [R0]; ScriptParams
33C432:  STR             R1, [R0]
33C434:  MOV             R0, R9; this
33C436:  MOVS            R1, #1; __int16
33C438:  BLX             j__ZN14CRunningScript15StoreParametersEs; CRunningScript::StoreParameters(short)
33C43C:  MOVS            R5, #0
33C43E:  LDR             R0, =(__stack_chk_guard_ptr - 0x33C446); jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33C440:  LDR             R1, [SP,#0x90+var_34]
33C442:  ADD             R0, PC; __stack_chk_guard_ptr
33C444:  LDR             R0, [R0]; __stack_chk_guard
33C446:  LDR             R0, [R0]
33C448:  SUBS            R0, R0, R1
33C44A:  ITTTT EQ
33C44C:  SXTBEQ          R0, R5
33C44E:  ADDEQ           SP, SP, #0x60 ; '`'
33C450:  VPOPEQ          {D8-D10}
33C454:  POPEQ.W         {R8-R10}
33C458:  IT EQ
33C45A:  POPEQ           {R4-R7,PC}
33C45C:  BLX             __stack_chk_fail
33C460:  LDR             R2, [R0,#0x44]
33C462:  MOVS            R5, #0
33C464:  LDR             R1, [R0]
33C466:  STRD.W          R5, R5, [R0,#0x54]
33C46A:  BIC.W           R2, R2, #0xC
33C46E:  STR             R5, [R0,#0x5C]
33C470:  STR             R2, [R0,#0x44]
33C472:  LDR             R2, [R1,#0x14]
33C474:  MOVS            R1, #1
33C476:  BLX             R2
33C478:  B               loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33C47A:  MOVS            R5, #0
33C47C:  STRB            R5, [R0]
33C47E:  B               loc_33C43E; jumptable 0033AD9A cases 2300,2306,2307,2314,2315,2321,2331,2337,2343,2346,2348,2349,2354,2357,2360,2364,2367,2371
33C480:  VLDR            S0, [R0,#8]
33C484:  VMOV.F32        S8, #0.5
33C488:  VLDR            S4, [R0,#0x10]
33C48C:  MOVS            R1, #0
33C48E:  VLDR            S2, [R0,#0xC]
33C492:  VLDR            S6, [R0,#0x14]
33C496:  VADD.F32        S0, S0, S4
33C49A:  ADDS            R0, #0x18
33C49C:  VADD.F32        S2, S2, S6
33C4A0:  VMUL.F32        S0, S0, S8
33C4A4:  VMUL.F32        S2, S2, S8
33C4A8:  VMOV            R3, S0
33C4AC:  VMOV            R2, S2
33C4B0:  LDR             R6, =(ScriptParams_ptr - 0x33C4B8)
33C4B2:  LDR             R0, [R0]
33C4B4:  ADD             R6, PC; ScriptParams_ptr
33C4B6:  LDR             R6, [R6]; ScriptParams
33C4B8:  STRD.W          R3, R2, [R6]
33C4BC:  STRD.W          R0, R1, [R6,#(dword_81A910 - 0x81A908)]
33C4C0:  MOV             R0, R9
33C4C2:  MOVS            R1, #4
33C4C4:  B               loc_33C438
33C4C6:  MOVS            R1, #0
33C4C8:  CMP             R2, R0
33C4CA:  IT EQ
33C4CC:  MOVEQ           R1, #1
33C4CE:  B               loc_33C27E
