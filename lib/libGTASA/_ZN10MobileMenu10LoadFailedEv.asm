; =========================================================
; Game Engine Function: _ZN10MobileMenu10LoadFailedEv
; Address            : 0x29B408 - 0x29B486
; =========================================================

29B408:  PUSH            {R4-R7,LR}
29B40A:  ADD             R7, SP, #0xC
29B40C:  PUSH.W          {R11}
29B410:  MOV             R4, R0
29B412:  MOVS            R6, #0
29B414:  STRB.W          R6, [R4,#0x55]
29B418:  BLX             j__ZN10MobileMenu4LoadEv; MobileMenu::Load(void)
29B41C:  MOVS            R0, #0x50 ; 'P'; unsigned int
29B41E:  BLX             _Znwj; operator new(uint)
29B422:  LDR             R1, =(aFetLg_0 - 0x29B42C); "FET_LG"
29B424:  MOVS            R2, #1; bool
29B426:  MOV             R5, R0
29B428:  ADD             R1, PC; "FET_LG"
29B42A:  BLX             j__ZN16CharSelectScreenC2EPKcb; CharSelectScreen::CharSelectScreen(char const*,bool)
29B42E:  LDR             R0, =(_ZTV8OkScreen_ptr - 0x29B436)
29B430:  LDR             R1, =(_Z17Menu_LoadFailedOKPv_ptr - 0x29B43A)
29B432:  ADD             R0, PC; _ZTV8OkScreen_ptr
29B434:  LDR             R2, =(aFesLce - 0x29B43E); "FES_LCE"
29B436:  ADD             R1, PC; _Z17Menu_LoadFailedOKPv_ptr
29B438:  LDR             R0, [R0]; `vtable for'OkScreen ...
29B43A:  ADD             R2, PC; "FES_LCE"
29B43C:  LDR             R1, [R1]; Menu_LoadFailedOK(void *)
29B43E:  ADDS            R0, #8
29B440:  STR             R0, [R5]
29B442:  MOVS            R0, #0x10; unsigned int
29B444:  STRD.W          R2, R1, [R5,#0x44]
29B448:  STR             R6, [R5,#0x4C]
29B44A:  BLX             _Znwj; operator new(uint)
29B44E:  MOV             R1, R0; SelectScreen::MenuSelection *
29B450:  LDR             R0, =(_ZTVN12SelectScreen15ActionSelectionE_ptr - 0x29B458)
29B452:  LDR             R2, =(_ZN8OkScreen6OkFuncEP12SelectScreeni_ptr - 0x29B45C)
29B454:  ADD             R0, PC; _ZTVN12SelectScreen15ActionSelectionE_ptr
29B456:  LDR             R3, =(aFemOk - 0x29B460); "FEM_OK"
29B458:  ADD             R2, PC; _ZN8OkScreen6OkFuncEP12SelectScreeni_ptr
29B45A:  LDR             R0, [R0]; `vtable for'SelectScreen::ActionSelection ...
29B45C:  ADD             R3, PC; "FEM_OK"
29B45E:  LDR             R2, [R2]; OkScreen::OkFunc(SelectScreen *,int)
29B460:  ADDS            R0, #8
29B462:  STRD.W          R0, R3, [R1]
29B466:  MOV             R0, R5; this
29B468:  STRD.W          R2, R6, [R1,#8]
29B46C:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
29B470:  STRB            R6, [R5,#0xC]
29B472:  LDR             R0, [R4,#0x2C]
29B474:  CMP             R0, #0
29B476:  ITT NE
29B478:  MOVNE           R0, R4; this
29B47A:  BLXNE           j__ZN10MobileMenu14ProcessPendingEv; MobileMenu::ProcessPending(void)
29B47E:  STR             R5, [R4,#0x2C]
29B480:  POP.W           {R11}
29B484:  POP             {R4-R7,PC}
