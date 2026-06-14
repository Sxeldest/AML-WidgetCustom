; =========================================================
; Game Engine Function: _ZN12CMenuManager20ProcessPCMenuOptionsEah
; Address            : 0x435FBC - 0x436426
; =========================================================

435FBC:  PUSH            {R4-R7,LR}
435FBE:  ADD             R7, SP, #0xC
435FC0:  PUSH.W          {R8}
435FC4:  LDR.W           R3, =(aScreens_ptr - 0x435FD4)
435FC8:  MOV             R5, R0
435FCA:  LDRSB.W         R2, [R5,#0x121]
435FCE:  MOVS            R6, #0xE2
435FD0:  ADD             R3, PC; aScreens_ptr
435FD2:  LDR             R0, [R5,#0x38]; this
435FD4:  LDR             R3, [R3]; "FEP_STA" ...
435FD6:  SMLABB.W        R3, R2, R6, R3
435FDA:  ADD.W           R6, R0, R0,LSL#3
435FDE:  ADD.W           R3, R3, R6,LSL#1
435FE2:  LDRB            R3, [R3,#0xA]
435FE4:  SUBS            R6, R3, #6; switch 80 cases
435FE6:  CMP             R6, #0x4F ; 'O'
435FE8:  BHI.W           def_435FF0; jumptable 00435FF0 default case, cases 10-23,25-36,64,65,70,72,73
435FEC:  MOV.W           R8, #1
435FF0:  TBH.W           [PC,R6,LSL#1]; switch jump
435FF4:  DCW 0x6F; jump table for switch statement
435FF6:  DCW 0x76
435FF8:  DCW 0x7E
435FFA:  DCW 0x87
435FFC:  DCW 0x92
435FFE:  DCW 0x92
436000:  DCW 0x92
436002:  DCW 0x92
436004:  DCW 0x92
436006:  DCW 0x92
436008:  DCW 0x92
43600A:  DCW 0x92
43600C:  DCW 0x92
43600E:  DCW 0x92
436010:  DCW 0x92
436012:  DCW 0x92
436014:  DCW 0x92
436016:  DCW 0x92
436018:  DCW 0x95
43601A:  DCW 0x92
43601C:  DCW 0x92
43601E:  DCW 0x92
436020:  DCW 0x92
436022:  DCW 0x92
436024:  DCW 0x92
436026:  DCW 0x92
436028:  DCW 0x92
43602A:  DCW 0x92
43602C:  DCW 0x92
43602E:  DCW 0x92
436030:  DCW 0x92
436032:  DCW 0x9E
436034:  DCW 0xA8
436036:  DCW 0xB3
436038:  DCW 0xBD
43603A:  DCW 0xC7
43603C:  DCW 0xD1
43603E:  DCW 0xDB
436040:  DCW 0xE6
436042:  DCW 0xF9
436044:  DCW 0x105
436046:  DCW 0x6B
436048:  DCW 0x114
43604A:  DCW 0x127
43604C:  DCW 0x12F
43604E:  DCW 0x136
436050:  DCW 0x13D
436052:  DCW 0x144
436054:  DCW 0x14B
436056:  DCW 0x152
436058:  DCW 0x159
43605A:  DCW 0x15C
43605C:  DCW 0x16E
43605E:  DCW 0x6B
436060:  DCW 0x174
436062:  DCW 0x67
436064:  DCW 0x6B
436066:  DCW 0x1A4
436068:  DCW 0x92
43606A:  DCW 0x92
43606C:  DCW 0x1AA
43606E:  DCW 0x1B9
436070:  DCW 0x1C0
436072:  DCW 0x1C7
436074:  DCW 0x92
436076:  DCW 0x50
436078:  DCW 0x92
43607A:  DCW 0x92
43607C:  DCW 0x50
43607E:  DCW 0x50
436080:  DCW 0x50
436082:  DCW 0x50
436084:  DCW 0x50
436086:  DCW 0x50
436088:  DCW 0x50
43608A:  DCW 0x50
43608C:  DCW 0x50
43608E:  DCW 0x1CA
436090:  DCW 0x1CE
436092:  DCW 0x6B
436094:  LDR.W           R0, =(_ZN14MobileSettings8settingsE_ptr - 0x4360A0); jumptable 00435FF0 cases 71,74-82
436098:  SUB.W           R1, R3, #0x47 ; 'G'
43609C:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
43609E:  LDR             R0, [R0]; MobileSettings::settings ...
4360A0:  ADD.W           R0, R0, R1,LSL#5
4360A4:  LDR.W           R2, [R0,#8]!
4360A8:  LDR             R3, [R0,#0xC]
4360AA:  ADDS            R6, R2, #1
4360AC:  STR             R6, [R0]
4360AE:  CMP             R2, R3
4360B0:  BLT             loc_4360C2; jumptable 00435FF0 case 61
4360B2:  LDR.W           R2, =(_ZN14MobileSettings8settingsE_ptr - 0x4360BA)
4360B6:  ADD             R2, PC; _ZN14MobileSettings8settingsE_ptr
4360B8:  LDR             R2, [R2]; MobileSettings::settings ...
4360BA:  ADD.W           R1, R2, R1,LSL#5
4360BE:  LDR             R1, [R1,#0x10]
4360C0:  STR             R1, [R0]
4360C2:  BLX             j__Z17Menu_SaveSettingsv; jumptable 00435FF0 case 61
4360C6:  MOV.W           R8, #1
4360CA:  MOV             R0, R8; jumptable 00435FF0 cases 47,59,62,85
4360CC:  POP.W           {R8}
4360D0:  POP             {R4-R7,PC}
4360D2:  MOVW            R0, #0x1AAE; jumptable 00435FF0 case 6
4360D6:  MOV.W           R8, #1
4360DA:  STRB.W          R8, [R5,R0]
4360DE:  B               loc_4360CA; jumptable 00435FF0 cases 47,59,62,85
4360E0:  LDRB.W          R0, [R5,#0x94]; jumptable 00435FF0 case 7
4360E4:  CMP             R0, #1
4360E6:  MOV             R0, R5
4360E8:  ITE EQ
4360EA:  MOVEQ           R1, #0x29 ; ')'
4360EC:  MOVNE           R1, #0x28 ; '('
4360EE:  B               loc_4362D6
4360F0:  MOVS            R4, #0; jumptable 00435FF0 case 8
4360F2:  MOV             R0, R5; this
4360F4:  MOVS            R1, #0x27 ; '''; signed __int8
4360F6:  STRB.W          R4, [R5,#0x7B]
4360FA:  BLX             j__ZN12CMenuManager17SwitchToNewScreenEa; CMenuManager::SwitchToNewScreen(signed char)
4360FE:  STR             R4, [R5,#0x54]
436100:  B               loc_4360C6
436102:  MOV.W           R8, #1; jumptable 00435FF0 case 9
436106:  MOV             R0, R5; this
436108:  MOVS            R1, #0x27 ; '''; signed __int8
43610A:  STRB.W          R8, [R5,#0x7B]
43610E:  BLX             j__ZN12CMenuManager17SwitchToNewScreenEa; CMenuManager::SwitchToNewScreen(signed char)
436112:  MOVS            R0, #0
436114:  STR             R0, [R5,#0x54]
436116:  B               loc_4360CA; jumptable 00435FF0 cases 47,59,62,85
436118:  MOV.W           R8, #0; jumptable 00435FF0 default case, cases 10-23,25-36,64,65,70,72,73
43611C:  B               loc_4360CA; jumptable 00435FF0 cases 47,59,62,85
43611E:  LDRB.W          R0, [R5,#0x2F]; jumptable 00435FF0 case 24
436122:  MOVS            R1, #0
436124:  CMP             R0, #0
436126:  IT EQ
436128:  MOVEQ           R1, #1
43612A:  STRB.W          R1, [R5,#0x2F]
43612E:  B               loc_4360C2; jumptable 00435FF0 case 61
436130:  LDRB.W          R0, [R5,#0x48]; jumptable 00435FF0 case 37
436134:  MOV.W           R8, #1
436138:  CMP             R0, #0
43613A:  BEQ             loc_4360CA; jumptable 00435FF0 cases 47,59,62,85
43613C:  STRB.W          R8, [R5,#0xB7]
436140:  MOVS            R0, #0
436142:  B               loc_4361D4
436144:  LDRB.W          R0, [R5,#0x48]; jumptable 00435FF0 case 38
436148:  MOV.W           R8, #1
43614C:  CMP             R0, #1
43614E:  BEQ             loc_4360CA; jumptable 00435FF0 cases 47,59,62,85
436150:  STRB.W          R8, [R5,#0xB7]
436154:  STRB.W          R8, [R5,#0x48]
436158:  B               loc_4361D8
43615A:  LDRB.W          R0, [R5,#0x48]; jumptable 00435FF0 case 39
43615E:  MOV.W           R8, #1
436162:  CMP             R0, #2
436164:  BEQ             loc_4360CA; jumptable 00435FF0 cases 47,59,62,85
436166:  MOVS            R0, #2
436168:  STRB.W          R8, [R5,#0xB7]
43616C:  B               loc_4361D4
43616E:  LDRB.W          R0, [R5,#0x48]; jumptable 00435FF0 case 40
436172:  MOV.W           R8, #1
436176:  CMP             R0, #3
436178:  BEQ             loc_4360CA; jumptable 00435FF0 cases 47,59,62,85
43617A:  STRB.W          R8, [R5,#0xB7]
43617E:  MOVS            R0, #3
436180:  B               loc_4361D4
436182:  LDRB.W          R0, [R5,#0x48]; jumptable 00435FF0 case 41
436186:  MOV.W           R8, #1
43618A:  CMP             R0, #4
43618C:  BEQ             loc_4360CA; jumptable 00435FF0 cases 47,59,62,85
43618E:  STRB.W          R8, [R5,#0xB7]
436192:  MOVS            R0, #4
436194:  B               loc_4361D4
436196:  LDRB.W          R0, [R5,#0x48]; jumptable 00435FF0 case 42
43619A:  MOV.W           R8, #1
43619E:  CMP             R0, #5
4361A0:  BEQ             loc_4360CA; jumptable 00435FF0 cases 47,59,62,85
4361A2:  STRB.W          R8, [R5,#0xB7]
4361A6:  MOVS            R0, #5
4361A8:  B               loc_4361D4
4361AA:  LDRB.W          R0, [R5,#0x48]; jumptable 00435FF0 case 43
4361AE:  MOV.W           R8, #1
4361B2:  CMP             R0, #6
4361B4:  BEQ.W           loc_4360CA; jumptable 00435FF0 cases 47,59,62,85
4361B8:  STRB.W          R8, [R5,#0xB7]
4361BC:  MOVS            R0, #6
4361BE:  B               loc_4361D4
4361C0:  LDRB.W          R0, [R5,#0x48]; jumptable 00435FF0 case 44
4361C4:  MOV.W           R8, #1
4361C8:  CMP             R0, #7
4361CA:  BEQ.W           loc_4360CA; jumptable 00435FF0 cases 47,59,62,85
4361CE:  STRB.W          R8, [R5,#0xB7]
4361D2:  MOVS            R0, #7
4361D4:  STRB.W          R0, [R5,#0x48]
4361D8:  MOV             R0, R5; this
4361DA:  MOVS            R1, #0; bool
4361DC:  BLX             j__ZN12CMenuManager33InitialiseChangedLanguageSettingsEb; CMenuManager::InitialiseChangedLanguageSettings(bool)
4361E0:  BLX             j__Z17Menu_SaveSettingsv; Menu_SaveSettings(void)
4361E4:  B               loc_4360CA; jumptable 00435FF0 cases 47,59,62,85
4361E6:  LDR             R0, =(g_fx_ptr - 0x4361EC); jumptable 00435FF0 case 45
4361E8:  ADD             R0, PC; g_fx_ptr
4361EA:  LDR             R0, [R0]; g_fx ; this
4361EC:  BLX             j__ZN4Fx_c12GetFxQualityEv; Fx_c::GetFxQuality(void)
4361F0:  CMP             R0, #3
4361F2:  BNE.W           loc_4363DC
4361F6:  LDR             R0, =(g_fx_ptr - 0x4361FE)
4361F8:  MOVS            R1, #0
4361FA:  ADD             R0, PC; g_fx_ptr
4361FC:  B               loc_43641E
4361FE:  LDRB.W          R0, [R5,#0xAD]; jumptable 00435FF0 case 46
436202:  CMP             R0, #0
436204:  BEQ.W           loc_4360C6
436208:  LDRB.W          R0, [R5,#0x88]
43620C:  EOR.W           R0, R0, #1
436210:  STRB.W          R0, [R5,#0x88]
436214:  UXTB            R0, R0; int
436216:  BLX             j__Z22RwTextureSetMipmappingi; RwTextureSetMipmapping(int)
43621A:  B               loc_4360C2; jumptable 00435FF0 case 61
43621C:  MOVW            R1, #0x1AD8; jumptable 00435FF0 case 48
436220:  MOV.W           R8, #1
436224:  STRB.W          R8, [R5,R1]
436228:  MOVW            R1, #0x1AD0
43622C:  STR             R0, [R5,R1]
43622E:  MOVW            R0, #0x1ACC
436232:  MOVW            R1, #0x101
436236:  STRH            R1, [R5,R0]
436238:  ADD.W           R0, R5, #0x24 ; '$'
43623C:  STR.W           R0, [R5,#0xB8]
436240:  B               loc_4360CA; jumptable 00435FF0 cases 47,59,62,85
436242:  LDR             R0, =(MousePointerStateHelper_ptr - 0x436248); jumptable 00435FF0 case 49
436244:  ADD             R0, PC; MousePointerStateHelper_ptr
436246:  LDR             R0, [R0]; MousePointerStateHelper
436248:  LDRB            R1, [R0,#(byte_98F0F5 - 0x98F0F4)]
43624A:  EOR.W           R1, R1, #1
43624E:  STRB            R1, [R0,#(byte_98F0F5 - 0x98F0F4)]
436250:  B               loc_4360C2; jumptable 00435FF0 case 61
436252:  LDRB.W          R0, [R5,#0x75]; jumptable 00435FF0 case 50
436256:  EOR.W           R0, R0, #1
43625A:  STRB.W          R0, [R5,#0x75]
43625E:  B               loc_4360C2; jumptable 00435FF0 case 61
436260:  LDRB.W          R0, [R5,#0x76]; jumptable 00435FF0 case 51
436264:  EOR.W           R0, R0, #1
436268:  STRB.W          R0, [R5,#0x76]
43626C:  B               loc_4360C2; jumptable 00435FF0 case 61
43626E:  LDRB.W          R0, [R5,#0x77]; jumptable 00435FF0 case 52
436272:  EOR.W           R0, R0, #1
436276:  STRB.W          R0, [R5,#0x77]
43627A:  B               loc_4360C2; jumptable 00435FF0 case 61
43627C:  LDRB.W          R0, [R5,#0x78]; jumptable 00435FF0 case 53
436280:  EOR.W           R0, R0, #1
436284:  STRB.W          R0, [R5,#0x78]
436288:  B               loc_4360C2; jumptable 00435FF0 case 61
43628A:  LDRB.W          R0, [R5,#0x79]; jumptable 00435FF0 case 54
43628E:  EOR.W           R0, R0, #1
436292:  STRB.W          R0, [R5,#0x79]
436296:  B               loc_4360C2; jumptable 00435FF0 case 61
436298:  LDRB.W          R0, [R5,#0x7A]; jumptable 00435FF0 case 55
43629C:  EOR.W           R0, R0, #1
4362A0:  STRB.W          R0, [R5,#0x7A]
4362A4:  B               loc_4360C2; jumptable 00435FF0 case 61
4362A6:  MOV             R0, R5; jumptable 00435FF0 case 56
4362A8:  MOVS            R1, #0x2C ; ','
4362AA:  B               loc_4362D6
4362AC:  BLX             j__Z13IsPlayingGamev; jumptable 00435FF0 case 57
4362B0:  CMP             R0, #0
4362B2:  BNE.W           loc_4360C6
4362B6:  MOVS            R0, #byte_9; this
4362B8:  MOVS            R1, #1; int
4362BA:  MOVS            R6, #9
4362BC:  MOV.W           R8, #1
4362C0:  BLX             j__ZN19CGenericGameStorage18CheckSlotDataValidEib; CGenericGameStorage::CheckSlotDataValid(int,bool)
4362C4:  CMP             R0, #1
4362C6:  BNE.W           loc_4360CA; jumptable 00435FF0 cases 47,59,62,85
4362CA:  LDR             R0, =(gMobileMenu_ptr - 0x4362D0)
4362CC:  ADD             R0, PC; gMobileMenu_ptr
4362CE:  B               loc_4363C4
4362D0:  MOV             R0, R5; jumptable 00435FF0 case 58
4362D2:  MOV             R1, #0xFFFFFFFE; signed __int8
4362D6:  BLX             j__ZN12CMenuManager17SwitchToNewScreenEa; CMenuManager::SwitchToNewScreen(signed char)
4362DA:  B               loc_4360C6
4362DC:  LDR             R0, =(aScreens_ptr - 0x4362E4); jumptable 00435FF0 case 60
4362DE:  MOVS            R4, #0xE2
4362E0:  ADD             R0, PC; aScreens_ptr
4362E2:  LDR             R6, [R0]; "FEP_STA" ...
4362E4:  SMLABB.W        R0, R2, R4, R6
4362E8:  LDRSB.W         R1, [R0,#0x38]; signed __int8
4362EC:  MOV             R0, R5; this
4362EE:  BLX             j__ZN12CMenuManager21SetDefaultPreferencesEa; CMenuManager::SetDefaultPreferences(signed char)
4362F2:  LDRSB.W         R0, [R5,#0x121]
4362F6:  SMLABB.W        R0, R0, R4, R6
4362FA:  LDRB.W          R0, [R0,#0x38]
4362FE:  CMP             R0, #0x25 ; '%'
436300:  BNE             loc_43630C
436302:  LDR             R0, =(ControlsManager_ptr - 0x436308)
436304:  ADD             R0, PC; ControlsManager_ptr
436306:  LDR             R0, [R0]; ControlsManager ; this
436308:  BLX             j__ZN24CControllerConfigManager14ReinitControlsEv; CControllerConfigManager::ReinitControls(void)
43630C:  BLX             j__Z17Menu_SaveSettingsv; Menu_SaveSettings(void)
436310:  LDR             R0, =(aScreens_ptr - 0x43631A)
436312:  LDRSB.W         R1, [R5,#0x121]
436316:  ADD             R0, PC; aScreens_ptr
436318:  LDR             R0, [R0]; "FEP_STA" ...
43631A:  SMLABB.W        R0, R1, R4, R0
43631E:  LDRSB.W         R1, [R0,#0x38]; signed __int8
436322:  MOV             R0, R5; this
436324:  BLX             j__ZN12CMenuManager17SwitchToNewScreenEa; CMenuManager::SwitchToNewScreen(signed char)
436328:  MOVW            R0, #0x1AB0
43632C:  MOV.W           R1, #0x12C
436330:  STR             R1, [R5,R0]
436332:  MOVW            R0, #0x1ADC
436336:  MOVS            R1, #2
436338:  STR             R1, [R5,R0]
43633A:  B               loc_4360C6
43633C:  LDRB.W          R0, [R5,#0x94]; jumptable 00435FF0 case 63
436340:  CMP             R0, #0
436342:  BNE.W           loc_4360C6
436346:  B               loc_4360C2; jumptable 00435FF0 case 61
436348:  LDRB.W          R0, [R5,#0x74]; jumptable 00435FF0 case 66
43634C:  UXTAB.W         R0, R0, R1
436350:  TST.W           R0, #0x80
436354:  IT NE
436356:  MOVNE           R0, #2
436358:  SXTB            R1, R0
43635A:  CMP             R1, #2
43635C:  IT GT
43635E:  MOVGT           R0, #0
436360:  STRB.W          R0, [R5,#0x74]
436364:  B               loc_4360C2; jumptable 00435FF0 case 61
436366:  LDRB.W          R0, [R5,#0x89]; jumptable 00435FF0 case 67
43636A:  EOR.W           R0, R0, #1
43636E:  STRB.W          R0, [R5,#0x89]
436372:  B               loc_4360C2; jumptable 00435FF0 case 61
436374:  LDRB.W          R0, [R5,#0xAC]; jumptable 00435FF0 case 68
436378:  EOR.W           R0, R0, #1
43637C:  STRB.W          R0, [R5,#0xAC]
436380:  B               loc_4360C2; jumptable 00435FF0 case 61
436382:  BLX             j__ZN14CAdjustableHUD6ToggleEv; jumptable 00435FF0 case 69
436386:  B               loc_4360C6
436388:  LDR             R0, =(byte_61CD7E - 0x43638E); jumptable 00435FF0 case 83
43638A:  ADD             R0, PC; byte_61CD7E ; char *
43638C:  BLX             j__Z17OS_ServiceRateAppPKc; OS_ServiceRateApp(char const*)
436390:  LDR             R0, =(WasDoingResumeBeforeRate_ptr - 0x43639A); jumptable 00435FF0 case 84
436392:  LDRB.W          R1, [R5,#0x122]
436396:  ADD             R0, PC; WasDoingResumeBeforeRate_ptr
436398:  STRB.W          R1, [R5,#0x121]
43639C:  LDR             R0, [R0]; WasDoingResumeBeforeRate
43639E:  LDRB            R0, [R0]
4363A0:  CBZ             R0, loc_4363D4
4363A2:  BLX             j__Z13IsPlayingGamev; IsPlayingGame(void)
4363A6:  CMP             R0, #0
4363A8:  BNE.W           loc_4360C6
4363AC:  MOVS            R0, #byte_9; this
4363AE:  MOVS            R1, #1; int
4363B0:  MOVS            R6, #9
4363B2:  MOV.W           R8, #1
4363B6:  BLX             j__ZN19CGenericGameStorage18CheckSlotDataValidEib; CGenericGameStorage::CheckSlotDataValid(int,bool)
4363BA:  CMP             R0, #1
4363BC:  BNE.W           loc_4360CA; jumptable 00435FF0 cases 47,59,62,85
4363C0:  LDR             R0, =(gMobileMenu_ptr - 0x4363C6)
4363C2:  ADD             R0, PC; gMobileMenu_ptr
4363C4:  LDR             R0, [R0]; gMobileMenu
4363C6:  MOV.W           R8, #1
4363CA:  STR             R6, [R0,#(dword_6E00BC - 0x6E006C)]
4363CC:  MOVS            R0, #0xD
4363CE:  STRB.W          R0, [R5,#0x121]
4363D2:  B               loc_4360CA; jumptable 00435FF0 cases 47,59,62,85
4363D4:  MOV             R0, R5; this
4363D6:  BLX             j__ZN12CMenuManager29DoSettingsBeforeStartingAGameEv; CMenuManager::DoSettingsBeforeStartingAGame(void)
4363DA:  B               loc_4360C6
4363DC:  LDR             R0, =(g_fx_ptr - 0x4363E2)
4363DE:  ADD             R0, PC; g_fx_ptr
4363E0:  LDR             R0, [R0]; g_fx ; this
4363E2:  BLX             j__ZN4Fx_c12GetFxQualityEv; Fx_c::GetFxQuality(void)
4363E6:  CMP             R0, #2
4363E8:  BNE             loc_4363F2
4363EA:  LDR             R0, =(g_fx_ptr - 0x4363F2)
4363EC:  MOVS            R1, #3
4363EE:  ADD             R0, PC; g_fx_ptr
4363F0:  B               loc_43641E
4363F2:  LDR             R0, =(g_fx_ptr - 0x4363F8)
4363F4:  ADD             R0, PC; g_fx_ptr
4363F6:  LDR             R0, [R0]; g_fx ; this
4363F8:  BLX             j__ZN4Fx_c12GetFxQualityEv; Fx_c::GetFxQuality(void)
4363FC:  CMP             R0, #1
4363FE:  BNE             loc_436408
436400:  LDR             R0, =(g_fx_ptr - 0x436408)
436402:  MOVS            R1, #2
436404:  ADD             R0, PC; g_fx_ptr
436406:  B               loc_43641E
436408:  LDR             R0, =(g_fx_ptr - 0x43640E)
43640A:  ADD             R0, PC; g_fx_ptr
43640C:  LDR             R0, [R0]; g_fx ; this
43640E:  BLX             j__ZN4Fx_c12GetFxQualityEv; Fx_c::GetFxQuality(void)
436412:  CMP             R0, #0
436414:  BNE.W           loc_4360C2; jumptable 00435FF0 case 61
436418:  LDR             R0, =(g_fx_ptr - 0x436420)
43641A:  MOVS            R1, #1
43641C:  ADD             R0, PC; g_fx_ptr
43641E:  LDR             R0, [R0]; g_fx
436420:  BLX             j__ZN4Fx_c12SetFxQualityE11FxQuality_e; Fx_c::SetFxQuality(FxQuality_e)
436424:  B               loc_4360C2; jumptable 00435FF0 case 61
