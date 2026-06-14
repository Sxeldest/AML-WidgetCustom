; =========================================================
; Game Engine Function: _ZN10SaveScreen19SaveScreenSelection11HandleInputEP12SelectScreenf
; Address            : 0x2A8110 - 0x2A825A
; =========================================================

2A8110:  PUSH            {R4-R7,LR}
2A8112:  ADD             R7, SP, #0xC
2A8114:  PUSH.W          {R11}
2A8118:  MOV             R4, R0
2A811A:  MOVS            R0, #0x40 ; '@'
2A811C:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2A8120:  CMP             R0, #1
2A8122:  BNE             loc_2A812C
2A8124:  MOVS            R0, #0x40 ; '@'
2A8126:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
2A812A:  CBNZ            R0, loc_2A8148
2A812C:  LDR             R0, =(lastDevice_ptr - 0x2A8134)
2A812E:  LDR             R1, =(gMobileMenu_ptr - 0x2A8136)
2A8130:  ADD             R0, PC; lastDevice_ptr
2A8132:  ADD             R1, PC; gMobileMenu_ptr
2A8134:  LDR             R0, [R0]; lastDevice
2A8136:  LDR             R1, [R1]; gMobileMenu
2A8138:  LDR             R0, [R0]
2A813A:  ADD.W           R0, R1, R0,LSL#2
2A813E:  LDR.W           R0, [R0,#0x90]
2A8142:  CMP             R0, #0
2A8144:  BNE.W           loc_2A8254
2A8148:  LDR             R0, [R4,#8]
2A814A:  ORR.W           R0, R0, #1
2A814E:  CMP             R0, #7
2A8150:  BNE             loc_2A8164
2A8152:  LDR             R0, =(UseCloudSaves_ptr - 0x2A8158)
2A8154:  ADD             R0, PC; UseCloudSaves_ptr
2A8156:  LDR             R0, [R0]; UseCloudSaves
2A8158:  LDRB            R0, [R0]
2A815A:  CBZ             R0, loc_2A8164
2A815C:  BLX             j__Z18IsSCCloudAvailablev; IsSCCloudAvailable(void)
2A8160:  CMP             R0, #1
2A8162:  BNE             loc_2A8254
2A8164:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
2A8168:  CBNZ            R0, loc_2A817C
2A816A:  LDR             R0, =(AudioEngine_ptr - 0x2A8178)
2A816C:  MOVS            R1, #1; int
2A816E:  MOVS            R2, #0; float
2A8170:  MOV.W           R3, #0x3F800000; float
2A8174:  ADD             R0, PC; AudioEngine_ptr
2A8176:  LDR             R0, [R0]; AudioEngine ; this
2A8178:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
2A817C:  LDR             R0, =(_ZN19CGenericGameStorage8ms_SlotsE_ptr - 0x2A8184)
2A817E:  LDR             R1, [R4,#8]
2A8180:  ADD             R0, PC; _ZN19CGenericGameStorage8ms_SlotsE_ptr
2A8182:  LDR             R0, [R0]; CGenericGameStorage::ms_Slots ...
2A8184:  LDR.W           R0, [R0,R1,LSL#2]
2A8188:  CBZ             R0, loc_2A8198
2A818A:  MOV             R0, R4; this
2A818C:  POP.W           {R11}
2A8190:  POP.W           {R4-R7,LR}
2A8194:  B.W             j_j__ZN10SaveScreen19SaveScreenSelection4SaveEv; j_SaveScreen::SaveScreenSelection::Save(void)
2A8198:  MOVS            R0, #0x54 ; 'T'; unsigned int
2A819A:  BLX             _Znwj; operator new(uint)
2A819E:  LDR             R1, =(aFetSg_0 - 0x2A81A8); "FET_SG"
2A81A0:  MOVS            R2, #1; bool
2A81A2:  MOV             R5, R0
2A81A4:  ADD             R1, PC; "FET_SG"
2A81A6:  BLX             j__ZN16CharSelectScreenC2EPKcb; CharSelectScreen::CharSelectScreen(char const*,bool)
2A81AA:  LDR             R0, =(_ZTV11YesNoScreen_ptr - 0x2A81B4)
2A81AC:  ADR             R2, aFeszQo; "FESZ_QO"
2A81AE:  LDR             R1, =(_ZN10SaveScreen19SaveScreenSelection11ConfirmSaveEPv_ptr - 0x2A81B8)
2A81B0:  ADD             R0, PC; _ZTV11YesNoScreen_ptr
2A81B2:  STR             R2, [R5,#0x44]
2A81B4:  ADD             R1, PC; _ZN10SaveScreen19SaveScreenSelection11ConfirmSaveEPv_ptr
2A81B6:  STR             R4, [R5,#0x4C]
2A81B8:  LDR             R0, [R0]; `vtable for'YesNoScreen ...
2A81BA:  MOVS            R4, #0
2A81BC:  LDR             R1, [R1]; SaveScreen::SaveScreenSelection::ConfirmSave(void *)
2A81BE:  STR             R4, [R5,#0x50]
2A81C0:  ADDS            R0, #8
2A81C2:  STR             R1, [R5,#0x48]
2A81C4:  STR             R0, [R5]
2A81C6:  BLX             j__Z19CachePlayerControlsv; CachePlayerControls(void)
2A81CA:  MOVS            R0, #0x10; unsigned int
2A81CC:  BLX             _Znwj; operator new(uint)
2A81D0:  MOV             R1, R0; SelectScreen::MenuSelection *
2A81D2:  LDR             R0, =(_ZTVN12SelectScreen15ActionSelectionE_ptr - 0x2A81DA)
2A81D4:  LDR             R2, =(_ZN11YesNoScreen6NoFuncEP12SelectScreeni_ptr - 0x2A81DE)
2A81D6:  ADD             R0, PC; _ZTVN12SelectScreen15ActionSelectionE_ptr
2A81D8:  LDR             R3, =(aFemNo - 0x2A81E2); "FEM_NO"
2A81DA:  ADD             R2, PC; _ZN11YesNoScreen6NoFuncEP12SelectScreeni_ptr
2A81DC:  LDR             R0, [R0]; `vtable for'SelectScreen::ActionSelection ...
2A81DE:  ADD             R3, PC; "FEM_NO"
2A81E0:  LDR             R2, [R2]; YesNoScreen::NoFunc(SelectScreen *,int)
2A81E2:  ADD.W           R6, R0, #8
2A81E6:  MOV             R0, R5; this
2A81E8:  STRD.W          R6, R3, [R1]
2A81EC:  STRD.W          R2, R4, [R1,#8]
2A81F0:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
2A81F4:  MOVS            R0, #0x10; unsigned int
2A81F6:  BLX             _Znwj; operator new(uint)
2A81FA:  MOV             R1, R0; SelectScreen::MenuSelection *
2A81FC:  LDR             R0, =(_ZN11YesNoScreen7YesFuncEP12SelectScreeni_ptr - 0x2A8204)
2A81FE:  LDR             R2, =(aFemYes - 0x2A8206); "FEM_YES"
2A8200:  ADD             R0, PC; _ZN11YesNoScreen7YesFuncEP12SelectScreeni_ptr
2A8202:  ADD             R2, PC; "FEM_YES"
2A8204:  LDR             R0, [R0]; YesNoScreen::YesFunc(SelectScreen *,int)
2A8206:  STRD.W          R6, R2, [R1]
2A820A:  STRD.W          R0, R4, [R1,#8]
2A820E:  MOV             R0, R5; this
2A8210:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
2A8214:  LDR             R0, =(gMobileMenu_ptr - 0x2A821A)
2A8216:  ADD             R0, PC; gMobileMenu_ptr
2A8218:  LDR             R0, [R0]; gMobileMenu
2A821A:  LDR             R0, [R0,#(dword_6E0090 - 0x6E006C)]
2A821C:  CMP             R0, #0
2A821E:  BEQ             loc_2A8238
2A8220:  LDR             R1, =(gMobileMenu_ptr - 0x2A8228)
2A8222:  LDR             R2, [R5]
2A8224:  ADD             R1, PC; gMobileMenu_ptr
2A8226:  LDR             R1, [R1]; gMobileMenu
2A8228:  LDR             R2, [R2,#0x14]
2A822A:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
2A822C:  ADD.W           R0, R1, R0,LSL#2
2A8230:  LDR.W           R1, [R0,#-4]
2A8234:  MOV             R0, R5
2A8236:  BLX             R2
2A8238:  LDR             R0, =(gMobileMenu_ptr - 0x2A823E)
2A823A:  ADD             R0, PC; gMobileMenu_ptr
2A823C:  LDR             R0, [R0]; gMobileMenu
2A823E:  LDR             R0, [R0,#(dword_6E0098 - 0x6E006C)]
2A8240:  CBZ             R0, loc_2A824C
2A8242:  LDR             R0, =(gMobileMenu_ptr - 0x2A8248)
2A8244:  ADD             R0, PC; gMobileMenu_ptr
2A8246:  LDR             R0, [R0]; gMobileMenu ; this
2A8248:  BLX             j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
2A824C:  LDR             R0, =(gMobileMenu_ptr - 0x2A8252)
2A824E:  ADD             R0, PC; gMobileMenu_ptr
2A8250:  LDR             R0, [R0]; gMobileMenu
2A8252:  STR             R5, [R0,#(dword_6E0098 - 0x6E006C)]
2A8254:  POP.W           {R11}
2A8258:  POP             {R4-R7,PC}
