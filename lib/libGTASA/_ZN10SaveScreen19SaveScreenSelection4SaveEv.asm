; =========================================================
; Game Engine Function: _ZN10SaveScreen19SaveScreenSelection4SaveEv
; Address            : 0x2A82B0 - 0x2A846C
; =========================================================

2A82B0:  PUSH            {R4-R7,LR}
2A82B2:  ADD             R7, SP, #0xC
2A82B4:  PUSH.W          {R11}
2A82B8:  MOV             R5, R0
2A82BA:  LDR             R0, =(SaveGameStateType_ptr - 0x2A82C2)
2A82BC:  LDR             R1, =(PcSaveHelper_ptr - 0x2A82C4)
2A82BE:  ADD             R0, PC; SaveGameStateType_ptr
2A82C0:  ADD             R1, PC; PcSaveHelper_ptr
2A82C2:  LDR             R2, [R0]; SaveGameStateType
2A82C4:  LDR             R0, [R1]; PcSaveHelper ; this
2A82C6:  MOVS            R1, #6
2A82C8:  STR             R1, [R2]
2A82CA:  MOVS            R2, #0; bool
2A82CC:  LDRSB.W         R1, [R5,#8]!; CGenericGameStorage *
2A82D0:  BLX             j__ZN8C_PcSave8SaveSlotEab; C_PcSave::SaveSlot(signed char,bool)
2A82D4:  MOV             R6, R0
2A82D6:  LDR             R0, [R5]
2A82D8:  ORR.W           R0, R0, #1
2A82DC:  CMP             R0, #7
2A82DE:  BNE             loc_2A8354
2A82E0:  LDR             R0, =(UseCloudSaves_ptr - 0x2A82E6)
2A82E2:  ADD             R0, PC; UseCloudSaves_ptr
2A82E4:  LDR             R0, [R0]; UseCloudSaves
2A82E6:  LDRB            R0, [R0]
2A82E8:  CBZ             R0, loc_2A8354
2A82EA:  MOVS            R0, #0x58 ; 'X'; unsigned int
2A82EC:  BLX             _Znwj; operator new(uint)
2A82F0:  LDR             R1, =(aFetSg_0 - 0x2A82FA); "FET_SG"
2A82F2:  MOVS            R2, #0; bool
2A82F4:  MOV             R4, R0
2A82F6:  ADD             R1, PC; "FET_SG"
2A82F8:  BLX             j__ZN16CharSelectScreenC2EPKcb; CharSelectScreen::CharSelectScreen(char const*,bool)
2A82FC:  LDR             R0, =(gMobileMenu_ptr - 0x2A8306)
2A82FE:  LDR             R1, =(_ZTV15CloudWaitScreen_ptr - 0x2A8308)
2A8300:  LDR             R2, =(_ZN10SaveScreen19SaveScreenSelection8SaveDoneEPv_ptr - 0x2A830A)
2A8302:  ADD             R0, PC; gMobileMenu_ptr
2A8304:  ADD             R1, PC; _ZTV15CloudWaitScreen_ptr
2A8306:  ADD             R2, PC; _ZN10SaveScreen19SaveScreenSelection8SaveDoneEPv_ptr
2A8308:  LDR             R6, [R0]; gMobileMenu
2A830A:  LDR             R0, [R1]; `vtable for'CloudWaitScreen ...
2A830C:  ADR             R1, aFeszWr; "FESZ_WR"
2A830E:  STR             R1, [R4,#0x44]
2A8310:  LDR             R1, [R2]; SaveScreen::SaveScreenSelection::SaveDone(void *)
2A8312:  ADDS            R0, #8
2A8314:  STRD.W          R1, R5, [R4,#0x48]
2A8318:  STR             R0, [R4]
2A831A:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
2A831E:  STRD.W          R0, R1, [R4,#0x50]
2A8322:  LDR             R0, [R6,#(dword_6E0090 - 0x6E006C)]
2A8324:  CMP             R0, #0
2A8326:  BEQ             loc_2A8340
2A8328:  LDR             R1, =(gMobileMenu_ptr - 0x2A8330)
2A832A:  LDR             R2, [R4]
2A832C:  ADD             R1, PC; gMobileMenu_ptr
2A832E:  LDR             R1, [R1]; gMobileMenu
2A8330:  LDR             R2, [R2,#0x14]
2A8332:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
2A8334:  ADD.W           R0, R1, R0,LSL#2
2A8338:  LDR.W           R1, [R0,#-4]
2A833C:  MOV             R0, R4
2A833E:  BLX             R2
2A8340:  LDR             R0, =(gMobileMenu_ptr - 0x2A8346)
2A8342:  ADD             R0, PC; gMobileMenu_ptr
2A8344:  LDR             R0, [R0]; gMobileMenu
2A8346:  LDR             R0, [R0,#(dword_6E0098 - 0x6E006C)]
2A8348:  CMP             R0, #0
2A834A:  BEQ.W           loc_2A845E
2A834E:  LDR             R0, =(gMobileMenu_ptr - 0x2A8354)
2A8350:  ADD             R0, PC; gMobileMenu_ptr
2A8352:  B               loc_2A8458
2A8354:  MOVS            R0, #0x50 ; 'P'; unsigned int
2A8356:  BLX             _Znwj; operator new(uint)
2A835A:  LDR             R1, =(aFetSg_0 - 0x2A8364); "FET_SG"
2A835C:  MOVS            R2, #1; bool
2A835E:  MOV             R4, R0
2A8360:  ADD             R1, PC; "FET_SG"
2A8362:  BLX             j__ZN16CharSelectScreenC2EPKcb; CharSelectScreen::CharSelectScreen(char const*,bool)
2A8366:  CBZ             R6, loc_2A83E2
2A8368:  LDR             R0, =(_ZTV8OkScreen_ptr - 0x2A8372)
2A836A:  MOVS            R5, #0
2A836C:  LDR             R1, =(_ZN10SaveScreen19SaveScreenSelection10SaveFailedEPv_ptr - 0x2A8376)
2A836E:  ADD             R0, PC; _ZTV8OkScreen_ptr
2A8370:  LDR             R2, =(aFesSvf - 0x2A837A); "FES_SVF"
2A8372:  ADD             R1, PC; _ZN10SaveScreen19SaveScreenSelection10SaveFailedEPv_ptr
2A8374:  LDR             R0, [R0]; `vtable for'OkScreen ...
2A8376:  ADD             R2, PC; "FES_SVF"
2A8378:  LDR             R1, [R1]; SaveScreen::SaveScreenSelection::SaveFailed(void *)
2A837A:  ADDS            R0, #8
2A837C:  STRD.W          R2, R1, [R4,#0x44]
2A8380:  STR             R5, [R4,#0x4C]
2A8382:  STR             R0, [R4]
2A8384:  MOVS            R0, #0x10; unsigned int
2A8386:  BLX             _Znwj; operator new(uint)
2A838A:  MOV             R1, R0; SelectScreen::MenuSelection *
2A838C:  LDR             R0, =(_ZTVN12SelectScreen15ActionSelectionE_ptr - 0x2A8394)
2A838E:  LDR             R2, =(_ZN8OkScreen6OkFuncEP12SelectScreeni_ptr - 0x2A8398)
2A8390:  ADD             R0, PC; _ZTVN12SelectScreen15ActionSelectionE_ptr
2A8392:  LDR             R3, =(aFemOk - 0x2A839C); "FEM_OK"
2A8394:  ADD             R2, PC; _ZN8OkScreen6OkFuncEP12SelectScreeni_ptr
2A8396:  LDR             R0, [R0]; `vtable for'SelectScreen::ActionSelection ...
2A8398:  ADD             R3, PC; "FEM_OK"
2A839A:  LDR             R2, [R2]; OkScreen::OkFunc(SelectScreen *,int)
2A839C:  ADDS            R0, #8
2A839E:  STRD.W          R0, R3, [R1]
2A83A2:  MOV             R0, R4; this
2A83A4:  STRD.W          R2, R5, [R1,#8]
2A83A8:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
2A83AC:  LDR             R0, =(gMobileMenu_ptr - 0x2A83B2)
2A83AE:  ADD             R0, PC; gMobileMenu_ptr
2A83B0:  LDR             R0, [R0]; gMobileMenu
2A83B2:  LDR             R0, [R0,#(dword_6E0090 - 0x6E006C)]
2A83B4:  CMP             R0, #0
2A83B6:  BEQ             loc_2A83D0
2A83B8:  LDR             R1, =(gMobileMenu_ptr - 0x2A83C0)
2A83BA:  LDR             R2, [R4]
2A83BC:  ADD             R1, PC; gMobileMenu_ptr
2A83BE:  LDR             R1, [R1]; gMobileMenu
2A83C0:  LDR             R2, [R2,#0x14]
2A83C2:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
2A83C4:  ADD.W           R0, R1, R0,LSL#2
2A83C8:  LDR.W           R1, [R0,#-4]
2A83CC:  MOV             R0, R4
2A83CE:  BLX             R2
2A83D0:  LDR             R0, =(gMobileMenu_ptr - 0x2A83D6)
2A83D2:  ADD             R0, PC; gMobileMenu_ptr
2A83D4:  LDR             R0, [R0]; gMobileMenu
2A83D6:  LDR             R0, [R0,#(dword_6E0098 - 0x6E006C)]
2A83D8:  CMP             R0, #0
2A83DA:  BEQ             loc_2A845E
2A83DC:  LDR             R0, =(gMobileMenu_ptr - 0x2A83E2)
2A83DE:  ADD             R0, PC; gMobileMenu_ptr
2A83E0:  B               loc_2A8458
2A83E2:  LDR             R0, =(_ZTV8OkScreen_ptr - 0x2A83EC)
2A83E4:  MOVS            R5, #0
2A83E6:  LDR             R1, =(_ZN10SaveScreen19SaveScreenSelection8SaveDoneEPv_ptr - 0x2A83F0)
2A83E8:  ADD             R0, PC; _ZTV8OkScreen_ptr
2A83EA:  LDR             R2, =(aFesSsc - 0x2A83F4); "FES_SSC"
2A83EC:  ADD             R1, PC; _ZN10SaveScreen19SaveScreenSelection8SaveDoneEPv_ptr
2A83EE:  LDR             R0, [R0]; `vtable for'OkScreen ...
2A83F0:  ADD             R2, PC; "FES_SSC"
2A83F2:  LDR             R1, [R1]; SaveScreen::SaveScreenSelection::SaveDone(void *)
2A83F4:  ADDS            R0, #8
2A83F6:  STRD.W          R2, R1, [R4,#0x44]
2A83FA:  STR             R5, [R4,#0x4C]
2A83FC:  STR             R0, [R4]
2A83FE:  MOVS            R0, #0x10; unsigned int
2A8400:  BLX             _Znwj; operator new(uint)
2A8404:  MOV             R1, R0; SelectScreen::MenuSelection *
2A8406:  LDR             R0, =(_ZTVN12SelectScreen15ActionSelectionE_ptr - 0x2A840E)
2A8408:  LDR             R2, =(_ZN8OkScreen6OkFuncEP12SelectScreeni_ptr - 0x2A8412)
2A840A:  ADD             R0, PC; _ZTVN12SelectScreen15ActionSelectionE_ptr
2A840C:  LDR             R3, =(aFemOk - 0x2A8416); "FEM_OK"
2A840E:  ADD             R2, PC; _ZN8OkScreen6OkFuncEP12SelectScreeni_ptr
2A8410:  LDR             R0, [R0]; `vtable for'SelectScreen::ActionSelection ...
2A8412:  ADD             R3, PC; "FEM_OK"
2A8414:  LDR             R2, [R2]; OkScreen::OkFunc(SelectScreen *,int)
2A8416:  ADDS            R0, #8
2A8418:  STRD.W          R0, R3, [R1]
2A841C:  MOV             R0, R4; this
2A841E:  STRD.W          R2, R5, [R1,#8]
2A8422:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
2A8426:  LDR             R0, =(gMobileMenu_ptr - 0x2A842C)
2A8428:  ADD             R0, PC; gMobileMenu_ptr
2A842A:  LDR             R0, [R0]; gMobileMenu
2A842C:  LDR             R0, [R0,#(dword_6E0090 - 0x6E006C)]
2A842E:  CMP             R0, #0
2A8430:  BEQ             loc_2A844A
2A8432:  LDR             R1, =(gMobileMenu_ptr - 0x2A843A)
2A8434:  LDR             R2, [R4]
2A8436:  ADD             R1, PC; gMobileMenu_ptr
2A8438:  LDR             R1, [R1]; gMobileMenu
2A843A:  LDR             R2, [R2,#0x14]
2A843C:  LDR             R1, [R1,#(dword_6E0094 - 0x6E006C)]
2A843E:  ADD.W           R0, R1, R0,LSL#2
2A8442:  LDR.W           R1, [R0,#-4]
2A8446:  MOV             R0, R4
2A8448:  BLX             R2
2A844A:  LDR             R0, =(gMobileMenu_ptr - 0x2A8450)
2A844C:  ADD             R0, PC; gMobileMenu_ptr
2A844E:  LDR             R0, [R0]; gMobileMenu
2A8450:  LDR             R0, [R0,#(dword_6E0098 - 0x6E006C)]
2A8452:  CBZ             R0, loc_2A845E
2A8454:  LDR             R0, =(gMobileMenu_ptr - 0x2A845A)
2A8456:  ADD             R0, PC; gMobileMenu_ptr
2A8458:  LDR             R0, [R0]; gMobileMenu ; this
2A845A:  BLX             j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
2A845E:  LDR             R0, =(gMobileMenu_ptr - 0x2A8464)
2A8460:  ADD             R0, PC; gMobileMenu_ptr
2A8462:  LDR             R0, [R0]; gMobileMenu
2A8464:  STR             R4, [R0,#(dword_6E0098 - 0x6E006C)]
2A8466:  POP.W           {R11}
2A846A:  POP             {R4-R7,PC}
